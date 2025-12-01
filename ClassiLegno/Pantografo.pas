unit Pantografo;


interface

uses SysUtils, Classes, Windows;

type

  PElemento = ^TElemento;
  TElemento = record
    codice: string[15];
    Qta: integer;
    Area: Double;
    Perimetro: Double;
    Etichetta: string; // etichetta di produzione
  end;

  TReportSchemaPant = class
  private
    FPath: string;
    FNomeSchema: string;
    FPercorsoFresa: Double;
    FPrg: Integer;
    FAnnoPrg: Integer;
    FPannelli: Integer;
    FSfrido: double;
    FMateriale: string;
    FDimXPannello: Integer;
    FDimYPannello: Integer;
    FSpessore: Double;
    Fdata: TDateTime;
    FOrario: TDateTime;
    FSecondiDiTaglio: Integer;
    FTipo: integer;
    FDime: TList;
    FNElem: Integer;
    FNoperazioni: integer;
    FNFori: integer;
    FTOp: double; // secondi per ogni operazione es. cambio utensile...
    FTFori: double; // secondi per ogni foro
    FSpeed: Double; // espressa in metri al min.
    FBis: integer;
    FTipoPant: integer; // 0 = SCM ; 1 = Routech

  protected
    function GetElem(index: integer): TElemento;
    function GetMaxpannelli: integer;

  public
    constructor Create(FileName: TFileName);
    destructor Destroy; override;
    function GetHash : string;
    function Materiale_Lordo: Double;
    function Materiale_Netto: Double;
    function TempoMacchina: Double;
    function PezziPerSchema: Integer;
    property GetName: string read FNomeSchema;
    property PercorsoFresa: Double read FPercorsoFresa;
    property Programma: Integer read FPrg;
    property Pannelli: Integer read FPannelli;
    property Materiale: string read FMateriale;
    property DimXPannello: Integer read FDimXPannello;
    property DimYPannello: Integer read FDimYPannello;
    property Spessore: Double read FSpessore;
    property Data: TDateTime read FData;
    property Orario: TDateTime read FOrario;
    property Sfrido: Double read FSfrido;
    property TempoTaglio: Integer read FSecondiDiTaglio;
    property Tipo: integer read FTipo;
    property NElem: integer read FNElem;
    property Elementi[index: integer]: TElemento read GetElem;
    property NumOp: integer read FNOperazioni;
    property NumFori: integer read FNFori;
    property Sec_Fori: double read FTFori write FTFori;
    property Sec_Op: double read FTOp write FTOp;
    property Speed: double read FSpeed write FSpeed;
    property Bis: integer read FBis write FBis default 0;
    property PantografoTipo: integer read FTipoPant write FTipoPant default 0;
    property AnnoPrg: integer read FAnnoPrg;
    property Path: string read FPath;
    property MaxPannelli: Integer read GetMaxPannelli;

  end;



implementation



function GetFileDate(TheFileName: string): TDateTime;
var
  FHandle: integer;
begin
  FHandle := FileOpen(TheFileName, 0);
  try
    Result := FileDateToDateTime(FileGetDate(FHandle));
  finally
    FileClose(FHandle);
  end;
end;


constructor TReportSchemaPant.Create(FileName: TFileName);
var
  t: textfile;
  l, dt: string;
  e: PElemento;
  y, m, d: word;
begin
  Ftipo := 3;
  FTOp := 8;
  FTFori := 4;
  FSpeed := 6;
  // FNomeSchema := extractfilename(FileName);

  FDime := TList.Create;

  assignfile(t, FileName);
  reset(t);

  try
    while not eof(t) do
    begin
      readln(t, l);

       if pos('Schema', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FNomeSchema := trim(l);
      end;


      if pos('Path', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FPath := trim(l);
      end;
      // Estrae percorso fresa
      if pos('Percorso', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FPercorsoFresa := strtofloat(trim(l));
      end;
       // Estrae il numero di BIS
      if pos('Bis', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FBis := strtoInt(trim(l));
      end;

        // Estrae i tipo di pantografo
      if pos('Type', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FTipoPant := strtoInt(trim(l));
      end;
      // Estrae Numero pannelli
      if pos('Fogli', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FPannelli := strtoInt(trim(l));
      end;
      // Estrae Numero Programma
      if pos('Programma', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FPrg := strtoInt(trim(l));
      end;

      // Estrae Materiale
      if pos('Materiale', l) > 0 then
      begin
        delete(l, 1, pos(':', l) + 1);
        FMateriale := trim(copy(l, 1, pos(' ', l)));
        delete(l, 1, pos(' ', l));
        delete(l, 1, pos(' ', l));
        FDimXPannello := strtoint(trim(copy(l, 1, pos('x', l) - 1)));
        delete(l, 1, pos('x', l));
        if pos('x', l) > 0 then

          FDimYPannello := strtoint(trim(copy(l, 1, pos('x', l) - 1)))
        else
          FDimYPannello := strtoint(trim(l));
      end;
      // Estrae lo  Spessore
      if pos('Spessore', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        try
          FSpessore := strtoFloat(trim(l));
        except on EConvertError do
          begin
            delete(l, pos('mm', lowercase(l)), 2);
            FSpessore := strtoInt(trim(l));

          end;
        end;

      end;
      // Estrae la data
      if pos('Data', l) > 0 then
      begin
        delete(l, 1, pos(':', l) + 1);
        dt := trim(l);


       Fdata := StrToDateTime(dt);

        delete(l, 1, pos(' ', l));
        FOrario := strtotime(trim(l));
           // FData := Fdata+FOrario ;    // la data completa di ore

        decodedate(FDAta, y, m, d);
        FAnnoPrg := y;

      end;
      // Estrae lo sfrido
      if pos('Sfrido', l) > 0 then
      begin
        delete(l, 1, pos('Mq', l) + 2);
        delete(l, 1, pos(' ', l));
        FSfrido := strtofloat(trim(copy(l, 1, pos('%', l) - 1)));


      end;
         // estrazione del tempo macchina
      if l[1] = 'T' then
      begin
        delete(l, 1, pos(':', l));
        FsecondiDiTaglio := strtoint(trim(copy(l, 1, pos('min', l) - 1))) * 60;
        delete(l, 1, pos('min', l) + 4);
        FsecondiDiTaglio := FsecondiDiTaglio + strtoint(trim(copy(l, 1, pos('sec', l) - 1)));

      end;
         // estrazione della numero fori contenuto nello schema
      if pos('Fori', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FNFori := strtoint(trim(l));
      end;
         // estrazione della numero fori contenuto nello schema
      if pos('Fori', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FNFori := strtoint(trim(l));
      end;
         // estrazione della numero fori contenuto nello schema
      if pos('Operazioni', l) > 0 then
      begin
        delete(l, 1, pos(':', l));
        FNOperazioni := strtoint(trim(l));
      end;


      if pos('=', l) > 0 then
      begin

        if pos('interno', l) > 0 then
          continue;

           // repeat

        new(e);
        e.Area := 0;
        e.Perimetro := 0;
        e^.codice := trim(copy(l, 1, pos('=', l) - 1));
        delete(l, 1, pos('=', l) + 1);
        if pos('$', l) = 0 then
        begin
          e^.qta := strtoint(trim(l))
        end
        else begin
          e^.qta := strtoint(trim(copy(l, 1, pos('$', l) - 1)));
          delete(l, 1, pos('$', l));
          e^.Area := strtoFloat(trim(copy(l, 1, pos('$', l) - 1)));
          delete(l, 1, pos('$', l));

          try
          // con etichetta di produzione in coda al perimetro
            e^.Perimetro := strtoFloat(trim(copy(l, 1, pos('$', l) - 1)));
            delete(l, 1, pos('$', l));
            e^.Etichetta := trim(l);
          except on err: EConvertError do
              e^.Perimetro := strtoFloat(trim(l)); // senza etichetta

          end;


        end;
        e^.Qta := e^.Qta div FPannelli;
        FDime.Add(e);

        //    until (eof(t)) or (pos('=', l) = 0);
        while not eof(t) do
        begin
          readln(t, l);
          new(e);
          e.Area := 0;
          e.Perimetro := 0;
          e^.codice := trim(copy(l, 1, pos('=', l) - 1));
          delete(l, 1, pos('=', l) + 1);
          if pos('$', l) = 0 then
          begin
            e^.qta := strtoint(trim(l))
          end
          else begin
            e^.qta := strtoint(trim(copy(l, 1, pos('$', l) - 1)));
            delete(l, 1, pos('$', l));
            e^.Area := strtoFloat(trim(copy(l, 1, pos('$', l) - 1)));
            delete(l, 1, pos('$', l));
            try
          // con etichetta di produzione in coda al perimetro
              e^.Perimetro := strtoFloat(trim(copy(l, 1, pos('$', l) - 1)));
              delete(l, 1, pos('$', l));
              e^.Etichetta := trim(l);
            except on err: EConvertError do
                e^.Perimetro := strtoFloat(trim(l)); // senza etichetta

            end;
            delete(l, 1, pos('$', l));
            e^.Etichetta := trim(l);

          end;
          e^.Qta := e^.Qta div FPannelli;
          FDime.Add(e);

        end;
        FNElem := FDime.Count;
      end;

    end; // fine while
  finally
    closefile(t);
  end;
end;

function TReportSchemaPant.Materiale_Lordo: double;
begin
  result := FDimXPannello * 0.001 * FDimYPannello * 0.001;
end;


function TReportSchemaPant.Materiale_Netto: Double;
begin
  result := Materiale_Lordo - Materiale_Lordo * FSfrido * 0.01;
end;

destructor TReportSchemaPant.Destroy;
var
  i: integer;
begin
  inherited Destroy;
  for i := 0 to FNElem - 1 do
    dispose(PElemento(FDime[i]));
  FDime.free;

end;

function TReportSchemaPant.GetElem(index: integer): TElemento;
begin
  result := TElemento(FDime[index]^);
end;

function TReportSchemaPant.GetHash: string;
begin
     result := FNomeSchema+datetostr(Fdata)+timetostr(FOrario);
end;

function TReportSchemaPant.GetMaxpannelli: integer;
begin
  Result := trunc(54 / FSpessore);
    //  il pantografo R500 taglia 4 pannelli da 14mm
  if (fspessore = 14.0) and (FTipoPant = 1) then
    inc(Result);

end;

function TReportSchemaPant.TempoMacchina: Double;
begin
  result := FNOperazioni * FTOp; // ogni op. = 8 sec.
  result := result + FNFori * FTFori; // ogni foro = 4 sec.
  result := result + trunc(FPercorsoFresa / FSpeed) * 60 + frac(FPercorsoFresa / FSpeed) * 60; // velocita' in metri al secondo
  result := result / 60;


end;

function TReportSchemaPant.PezziPerSchema: integer;
var
  i: integer;
begin
  result := 0;
  for i := 0 to FNElem - 1 do
    result := result + TElemento(FDime[i]^).Qta;
  result := result div FPannelli;
end;

end.

