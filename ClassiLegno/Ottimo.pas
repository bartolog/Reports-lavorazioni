unit Ottimo;

interface

// info versione : 21/05/2017

uses classes, contnrs, sysutils, Windows, dialogs, USchedeLavTypes;

type
  TBis_Numero = 0 .. 9;
  PDima = ^TDima;

  TDima = record

    x: integer; // dim. x del pezzo
    y: integer; // dim. y del pezzo
    q: integer; // quantita' ottenuta dagli schemi
    r: integer; // quantita' richiesta
    q_residua: integer;
    // quantità residua serve nella ripartizione della qta del pacco
    // altre dime con la stessa misura
    codice: string[50]; // codice della dima in archivio
    cliente: string;
    modello: string; // modello
    descrizione: string; // è la descrizione del pezzo
    lavorazione: string; // eventuale lavorazione successiva
    versioni: string; // lista delle versioni e qta agganciate
    Nota: string; // Informazioni aggiuntive
    // dal codice estre il codice parte (putroppo il codice rappresenta l'etichetta di produzione : AnnoProgCliModBis+ProgressivoXmodello)
    function GetPartCode: string;
  end;

  PTaglio = ^TTaglio;

  TTaglio = record
    Tipo: Char;
    Quota: Double;
    Ripetizioni: integer;

  end;

  TTipoCommessa = (tpTroncatrice, tpSezionatrice);
  TTipoLama = (tlLamaY, tlLamaX);

  PPezzoSchema = ^TPezzoSchema;

  TPezzoSchema = record
    iDima: Word;
    Qta: Word;
  end;

  TListaPezzi = class(TObject)
  private
    FLista: TList;
    function GetPezzo(index: integer): PPezzoSchema;
    procedure SetPezzo(index: integer; p: PPezzoSchema);
    function GetCount: integer;
  protected

  public
    constructor Create;
    destructor Destroy; override;
    procedure AggiungiPezzo(p: PPezzoSchema);
    property Lista[index: integer]: PPezzoSchema read GetPezzo
      write SetPezzo; default;
    property Count: integer read GetCount;
  published

  end;

  TSchemaTaglio = class
  private
    FPx: integer; // dimensione X del pannello
    FPy: integer; // dimensione  Y del pannello
    FPz: Double; // dimensione Z del pannello
    Fmateriale: string; // descrizione materiale
    FNpannelli: integer; // numero di pannelli
    FTagli: TList; // Lista dei tagli
    FNtagli: integer; // Numero di tagli
    FPretaglio: Boolean; // vero se c'è un pretaglio
    FPRuotato: Boolean; // vero se il pretaglio è ruotato;
    FQuotaPretaglio: Double; // quota del pretaglio se c'è
    FSpeedY: Double; // velocita' lama y mt/min
    FSpeedX: Double; // velocita' lama X mt/min
    FSpeedSpY: Double; // velocita' lama spintore y mt/min
    FSpeedSpX: Double; // velocita' lama spintore x mt/min
    FSpeedPretaglio: Double; // velocità lama pretaglio
    FSpeedSpPretaglio: Double; // velocità spintore pretaglio
    FPacco: integer;
    // E' il pacco massimo che la macchina puo' teoricamente tagliare
    FTipoCommessa: TTipoCommessa;
    FTempoxPacco: Double;
    // è il tempo espresso in min. che la macchina impiega x impacchettare
    // prima del taglio
    FIncPercXTaglioDiff: Double;
    // E' una percentuale di incremento tempo per ogni taglio differenziato.
    FPezzi: TListaPezzi;
    FNPezzi: integer;
    FNschemaMacchina: integer;
    procedure FillListaPezzi;
    function GetPezzo(index: integer): TPezzoSchema;

  protected
    function GetTaglio(index: integer): TTaglio;
  public
    // il costruttore di questa classe accetta la lista dei pannelli
    // la stringa che rappresenta la lista di taglio

    constructor Create(FTipoComm: TTipoCommessa; ListaPannelli: TList;
      Sq: string);
    destructor Destroy; override;

    function TotQuotaY: Double;
    function TotQuotaX: Double;
    function NumTagli(Tipo: Char): integer;
    function TagliDifferenziati: integer;
    function MqNetto: Double;
    function MqLordo: Double;
    function McNetto: Double;
    function McLordo: Double;
    function PathCut(L: TTipoLama): Double;
    function Sfrido: Double;
    function PezziXSchema: integer;
    function TempoTaglio: Double; // resituisce il tempo di taglio in minuti
    function GetZTagliString: string;
    // restiutuisce una stringa con i tagli e le ripetizioni
    // per ordinare in base agli schemi esportati per la macchina

    property TipoCommessa: TTipoCommessa read FTipoCommessa write FTipoCommessa;
    property SpeedY: Double read FSpeedY write FSpeedY;
    property SpeedX: Double read FSpeedX write FSpeedX;
    property SpeedSpY: Double read FSpeedSpY write FSpeedSpY;
    property SpeedSpX: Double read FSpeedSpX write FSpeedSpX;
    property SpeedPretaglio: Double read FSpeedPretaglio write FSpeedPretaglio;
    property SpeedSpPretaglio: Double read FSpeedSpPretaglio
      write FSpeedSpPretaglio;
    property Pacco: integer read FPacco;
    property Pannello_Dim_X: integer read FPx write FPx;
    property Pannello_Dim_Y: integer read FPy write FPy;
    property Pannello_Dim_Z: Double read FPz write FPz;
    property Materiale: string read Fmateriale write Fmateriale;
    property Num_pannelli: integer read FNpannelli write FNpannelli;
    property Tagli[index: integer]: TTaglio read GetTaglio;
    property Num_Tagli: integer read FNtagli;
    property Pretaglio: Boolean read FPretaglio;
    property Ruotato: Boolean read FPRuotato;
    property QuotaPretaglio: Double read FQuotaPretaglio;
    property TempoxPacco: Double read FTempoxPacco write FTempoxPacco;
    property IncPercXTaglioDiff: Double read FIncPercXTaglioDiff
      write FIncPercXTaglioDiff;
    property Pezzi[index: integer]: TPezzoSchema read GetPezzo;
    property NPezzi: integer read FNPezzi;
    property NSchemaMacchina: integer read FNschemaMacchina;

  end;

  TCommessaOttimo = class
  private
    FNome: string; // nome della commessa
    FPrg: string; // numero del programma
    FBis: TBis_Numero; // numero di bis della commessa di produzione
    FSchemi: TobjectList; // lista degli schemi  di taglio
    FNSchemi: integer; // Numero di schemi
    FTipo: TTipoCommessa;
    Fmateriale: string;
    FSpessore: Double;
    FDime: TList; // lista delle dime  tagliate
    FNDime: integer; // Numero elementi (dime) da tagliare
    FDataCommessa: TDateTime; // Data di creazione della commessa
    FFilehash: string;
    Fls: TStringList; // lista stringhe schemi di taglio per la macchina
    FPathOutSchemiMacchina: string; // percorso schemi letti dalla macchina

  protected
    function GetSchema(index: integer): TSchemaTaglio;
    function GetDima(index: integer): PDima;
    procedure SetDima(index: integer; d: PDima);
    function GetStringCuts(index: integer): string;

  public

    constructor Create(NomeCommessa: TFileName);
    destructor Destroy; override;

    function TotalePannelli: integer;
    function GetNdimeMancanti: integer;
    procedure OrdinaPerSchemiMacchina;
    // ordina gli schemi  così come saranno letti dalla
    // macchina
    function GetDimaByCode(aCode: string): PDima;
    function GetDimaByPart(aPart: string): PDima;

    function GetModelli(lstNomiClient: TStringList): string;
    function GetProgramma: string;
    function GetTotMQNEtto: Double;
    function GetMaterialeCompleto: string;


    // ********** interfaccia ISCHEMA *************
//
//    function GetNome: string;
//    function GetHash: string;
//    function GetPannello: TPannello;
//    function GetGeos: TGeosSchema;
//    function GetPannelli: Integer;
//    function GetNumTeste: Integer;
//    function GetNumeroSchema: Integer;
//    function GetIdMacchina: Integer;
//    function GetCodiceLavorazione: string;
//    function GetModelli(aMapListClientsAndLetter : TStringList): string;
//    function GetSfrido : Double;
//    function GetNettoMQ : Double;
//    function GetPacco : integer;
//    function GetPathFresa : double;
//    function GetTempoTaglio : double;











    // *********** fine interfaccia ISCHEMA





    property StringTagli[index: integer]: string read GetStringCuts;
    property NomeCommessa: string read FNome;
    property DataCommessa: TDateTime read FDataCommessa;
    property Programma: string read FPrg write FPrg;
    property Bis: TBis_Numero read FBis;
    property Schemi[index: integer]: TSchemaTaglio read GetSchema;
    property Dime[index: integer]: PDima read GetDima write SetDima;
    property Num_Schemi: integer read FNSchemi;
    property Tipo: TTipoCommessa read FTipo;
    property Materiale: string read Fmateriale;
    property Spessore: Double read FSpessore;
    property Ndime: integer read FNDime;
    property filehash: string read FFilehash;
    property PathOutSchemiMacchina: string read FPathOutSchemiMacchina
      write FPathOutSchemiMacchina;

  end;

implementation

type
  PPannello = ^TPannello;

  TPannello = record
    Dim_X: integer;
    Dim_Y: integer;
    Dim_Z: Double;
    descrizione: string;

  end;

function ConfrontaCodiceDime(d1, d2: Pointer): integer;
begin
  Result := CompareText(PDima(d1).codice, PDima(d2).codice);
end;

function SortBySchemiMacchina(p1, p2: Pointer): integer;
begin
  Result := TSchemaTaglio(p1).FNschemaMacchina - TSchemaTaglio(p2)
    .FNschemaMacchina;

end;

destructor TSchemaTaglio.Destroy;
var
  i: integer;
begin
  if assigned(FTagli) then
    for i := 0 to FTagli.Count - 1 do
      Dispose(FTagli[i]);
  FTagli.Free;
  if assigned(FPezzi) then
    for i := 0 to FTagli.Count - 1 do
      Dispose(FPezzi[i]);
  FPezzi.Free;

  inherited Destroy;
end;

procedure TSchemaTaglio.FillListaPezzi;

  function GetIndicePezzo(nPezzo: integer): integer;
  var
    i: integer;
  begin
    Result := -1;
    for i := 0 to FPezzi.Count - 1 do
      if FPezzi[i]^.iDima = nPezzo then
      begin
        Result := i;
        break;
      end;
  end;

var
  i, j: integer;
  p: PPezzoSchema;
begin
  for i := 0 to FNtagli - 1 do
  begin
    if TTaglio(FTagli[i]^).Tipo = 'M' then
    begin

      j := GetIndicePezzo(trunc(TTaglio(FTagli[i]^).Quota));
      if j < 0 then
      begin
        new(p);
        p.iDima := trunc(TTaglio(FTagli[i]^).Quota);
        p.Qta := TTaglio(FTagli[i]^).Ripetizioni;

        FPezzi.AggiungiPezzo(p);
      end
      else
        FPezzi[j].Qta := FPezzi[j].Qta + TTaglio(FTagli[i]^).Ripetizioni;

    end;
  end;
  FNPezzi := FPezzi.Count;
end;

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

constructor TSchemaTaglio.Create(FTipoComm: TTipoCommessa; ListaPannelli: TList;
  Sq: string);
var
  i, ry, rx: integer;
  v: string;
  t: PTaglio;
  stato: integer;
  qp: Double; // quota pretaglio
begin

  ry := 0;
  rx := 0;
  delete(Sq, 1, pos('R', Sq));
  i := strtoint(copy(Sq, 1, pos('P', Sq) - 1)) - 1;
  FPretaglio := false;
  FPRuotato := false;
  FNschemaMacchina := -1;
  FQuotaPretaglio := 0;
  FPx := TPannello(ListaPannelli[i]^).Dim_X;
  FPy := TPannello(ListaPannelli[i]^).Dim_Y;
  FPz := TPannello(ListaPannelli[i]^).Dim_Z;

  FTipoCommessa := FTipoComm;
  // limite pacco e velocità in base alla macchina
  if FTipoCommessa = tpTroncatrice then
  begin
    FSpeedY := 0;
    FSpeedX := 10;
    FSpeedSpY := 0;
    FSpeedSpX := 10;
    FPacco := (300 div FPy) * (trunc(110 / FPz));
  end;

  if FTipoCommessa = tpSezionatrice then
  begin

    FSpeedY := 21.15;
    FSpeedX := 14.30;
    FSpeedSpY := 3;
    FSpeedSpX := 3;
    FSpeedPretaglio := 6;
    FSpeedSpPretaglio := 3;
    FPacco := trunc(90 / FPz);
  end;

  Fmateriale := TPannello(ListaPannelli[i]^).descrizione;
  delete(Sq, 1, pos('P', Sq));
  FNpannelli := strtoint(copy(Sq, 1, pos('X', Sq) - 1));
  delete(Sq, 1, pos('X', Sq));
  v := copy(Sq, 1, pos('Y', Sq) - 1);
  v[pos('.', v)] := ',';
  qp := strtofloat(v);
  delete(Sq, 1, pos('Y', Sq) - 1);
  i := 1;
  v := '';
  FTagli := TList.Create;
  t := nil;
  stato := 0;
  while Sq[i] <> 'F' do
  begin
    if Sq[i] = 'Y' then
    begin
      case stato of
        0:
          begin
            new(t);
            // if FPRuotato then
            // t.Tipo := 'Z'
            // else
            t.Tipo := 'Y';
            inc(stato)
          end;
        1:
          begin
            t.Quota := strtofloat(v);
            v := '';
            case t.Tipo of
              'M':
                begin
                  t.Ripetizioni := rx * ry;
                  FTagli.Add(t);
                  new(t);
                  // if FPRuotato then
                  // t.Tipo := 'Z'
                  // else
                  t.Tipo := 'Y';
                  stato := 1;
                end;
              'X':
                begin
                  // FQuotaPretaglio := t.Quota;
                  // FPRuotato := t.Quota <= 1050.0;
                  FQuotaPretaglio := qp;
                  t.Quota := qp;
                  FPRuotato := FPx - t.Quota <= 1050.0;
                  t.Ripetizioni := 1;
                  FTagli.Add(t);
                  new(t);
                  { if FPRuotato then
                    t.Tipo := 'Z'
                    else }
                  t.Tipo := 'Y';

                  stato := 1;
                end;
            else
              inc(stato)
            end;
          end;

        2:
          begin
            // variazione 24/10/2003
            // if t.Tipo = 'M' then
            // t.Ripetizioni := rx * ry
            // else
            t.Ripetizioni := strtoint(v);

            // if t.Tipo = 'Z' then // prendo le ripetizioni di y
            // rx := t.Ripetizioni;
            v := '';
            FTagli.Add(t);
            new(t);
            { if FPRuotato then
              t.Tipo := 'Z'
              else }
            t.Tipo := 'Y';
            stato := 1
          end;
      end;
    end;

    if Sq[i] = 'B' then // modifica 08/01/2022 per il nuovo
    // programma ottimo sezionatrice
    begin
      while (Sq[i] <> 'Z') do
        inc(i);
      Continue

    end;

    if Sq[i] = 'Z' then
    begin
      case stato of
        0:
          begin
            new(t);
            // if FPRuotato then
            // t.Tipo := 'Y'
            // else
            t.Tipo := 'Z';
            inc(stato)
            // stato = 1
          end;
        1:
          begin
            t.Quota := strtofloat(v);
            v := '';
            case t.Tipo of
              'M':
                begin
                  t.Ripetizioni := rx * ry;
                  FTagli.Add(t);
                  new(t);
                  // if FPRuotato then
                  // t.Tipo := 'Y'
                  // else
                  t.Tipo := 'Z';
                  stato := 1;

                end;

              'X':
                begin
                  // FQuotaPretaglio := t.Quota;
                  // FPRuotato := t.Quota <= 1050.0;
                  FQuotaPretaglio := qp;
                  t.Quota := qp;
                  FPRuotato := FPx - t.Quota <= 1050.0;
                  t.Ripetizioni := 1;
                  FTagli.Add(t);
                  new(t);
                  // if FPRuotato then
                  // t.Tipo := 'Y'
                  // else
                  t.Tipo := 'Z';
                  stato := 1;
                end;
            else
              inc(stato); // stato = 2
            end;
          end;

        2:
          begin

            // variazione 24/10/2003
            // if t.Tipo = 'M' then
            // t.Ripetizioni := rx * ry
            // else
            t.Ripetizioni := strtoint(v);

            if t.Tipo = 'Y' then // prendo le ripetizioni di y
              ry := t.Ripetizioni;
            v := '';
            FTagli.Add(t);
            new(t);
            // if FPRuotato then
            // t.Tipo := 'Y'
            // else
            t.Tipo := 'Z';
            stato := 1
          end;
      end;
    end;

    // pretaglio
    if Sq[i] = 'X' then
    begin
      // variazione del 24/10/2003
      if stato = 1 then // prima era stato = 0
      begin
        t.Quota := strtofloat(v); // l'indice dima
        // t.Quota := qp ;
        t.Ripetizioni := rx * ry; // e ripetizione
        v := '';
        FTagli.Add(t);
        new(t);
        t.Tipo := 'X';
        // inc(stato); prima della variazione
        stato := 1; // variazione
        FPretaglio := True;
        FPRuotato := FPx - t.Quota <= 1050.0;
      end;
    end;

    if (stato > 0) and (Sq[i] in ['0' .. '9', '.']) then
    begin
      if Sq[i] = '.' then
        v := v + ','
      else
        v := v + Sq[i];
    end;
    if Sq[i] = 'N' then
    begin
      if stato = 1 then
      begin
        t.Quota := strtofloat(v);
        v := '';
        inc(stato)
        // stato = 2
      end;
    end;
    if Sq[i] = 'M' then
    begin
      if stato = 2 then
      begin
        t.Ripetizioni := strtoint(v);
        rx := t.Ripetizioni;
        v := '';
        FTagli.Add(t);
        // stato = 0 prima della variazione
        // variazione 24/10/2003
        new(t);
        t.Tipo := 'M';
        stato := 1;
        // fine variazione 24/10/2003
      end;

    end;

    inc(i) // incremento dell'indice
  end;
  t.Quota := strtofloat(v); // indice dima
  t.Ripetizioni := rx * ry;
  FTagli.Add(t);
  FNtagli := FTagli.Count;
  FPezzi := TListaPezzi.Create;
  FillListaPezzi;
  // crea la lista dei pezzi contenuti nello schema nella forma : (indice , qta);

end;

destructor TCommessaOttimo.Destroy;
var
  i: integer;
begin

  for i := 0 to FDime.Count - 1 do
    Dispose(PDima(FDime[i]));
  FDime.Free;
  FSchemi.Free;
  Fls.Free;
  inherited Destroy;
end;

constructor TCommessaOttimo.Create(NomeCommessa: TFileName);
var
  c: TextFile;
  L: string;
  pannelli: TList;
  // spessore: double;
  p: PPannello;
  ch: Char;
  d: PDima;
  i: integer;
begin
  FDataCommessa := GetFileDate(NomeCommessa);
  FNome := extractFileName(NomeCommessa);

  FFilehash := FNome + datetimetostr(FDataCommessa);
  FFilehash := StringReplace(FFilehash, '/', '', [rfReplaceAll]);
  FFilehash := StringReplace(FFilehash, '.', '', [rfReplaceAll]);
  FFilehash := StringReplace(FFilehash, ' ', '', [rfReplaceAll]);

  AssignFile(c, NomeCommessa);
  FSchemi := TobjectList.Create(True);
  pannelli := TList.Create;
  Fls := TStringList.Create;

  reset(c);
  try
    L := '';
    read(c, ch);
    L := L + ch;
    read(c, ch);
    L := L + ch;
    FDime := TList.Create;

    if not(L = 'F0') then
      raise exception.Create('Non è un commessa di ottimo');

    while not eof(c) do
    begin
      readln(c, L);
      // estrazione del numero di programma
      if pos('%', L) > 0 then
      begin
        delete(L, 1, pos('%', L));
        FPrg := copy(L, 1, pos('%', L) - 1);
        try
          FBis := strtoint(copy(FPrg, 7, 1));
        except
          on e: EConvertError do
            FBis := 0;

        end;
        // delete(Fprg, 7, 1);
        delete(L, 1, pos('%', L));
        Fmateriale := trim(L);
        FTipo := tpTroncatrice;

      end;
      if pos('$', L) > 0 then
      begin
        delete(L, 1, pos('$', L));
        FPrg := trim(copy(L, 1, pos('$', L) - 1));
        FBis := 0; // 0 = dato fittizio non serve!
        // if (Length(Fprg) > 6) and  (copy(FPrg, 7, 1) <> '') and  (FPrg[7] in ['0'..'9']) then
        // FBis := strtoint(copy(FPrg, 7, 1));

        delete(FPrg, 7, 1);
        delete(L, 1, pos('$', L));
        Fmateriale := trim(L);
        FTipo := tpSezionatrice;
      end;
      if copy(L, 1, 2) = 'F1' then
      begin
        delete(L, 1, pos(' ', L));
        L := trim(copy(L, 1, pos(' ', L)));
        if pos('.', L) > 0 then
          L[pos('.', L)] := ',';

        FSpessore := strtofloat(L);
        // estrazione dei pannelli utilizzati
        repeat
          readln(c, L);
          // se la riga di testo non e' vuota
          if L <> '' then
          begin
            new(p);
            p.Dim_X := strtoint(copy(L, 1, pos('.', L) - 1));
            delete(L, 1, pos(' ', L));
            p.Dim_Y := strtoint(copy(L, 1, pos('.', L) - 1));
            p.Dim_Z := FSpessore;
            delete(L, 1, pos(' ', L));
            delete(L, 1, pos(' ', L));
            delete(L, 1, pos(' ', L));
            delete(L, 1, pos(' ', L));
            p.descrizione := format('%dX%dX%f', [p.Dim_X, p.Dim_Y, p.Dim_Z]);
            // copy(l, 1, pos(' ', l) - 1);
            pannelli.Add(p);

          end;

        until (L = '');
      end;
      if copy(L, 1, 2) = 'F2' then
      begin
        readln(c, L);
        while not(trim(L) = '') do
        begin
          new(d); // crea lo spazio in memoria per il record
          L := trim(L);
          d^.x := strtoint(copy(L, 1, pos('.', L) - 1)); // dim x
          delete(L, 1, pos(' ', L));
          L := trim(L);
          d^.y := strtoint(copy(L, 1, pos('.', L) - 1)); // dim y
          delete(L, 1, pos(' ', L));
          L := trim(L);
          d^.r := strtoint(copy(L, 1, pos(' ', L) - 1)); // Q.ta' richiesta
          delete(L, 1, pos(' ', L));
          L := trim(L);
          d^.q := strtoint(copy(L, 1, pos(' ', L) - 1)); // Q.ta' ottenuta
          d^.q_residua := d^.q;
          // qta residua da decrementare man mano che viene stampata l'etichetta
          delete(L, 1, pos(' ', L));
          delete(L, 1, pos(' ', L));
          delete(L, 1, pos(' ', L));
          delete(L, 1, pos(' ', L));
          d^.codice := trim(copy(L, 1, pos(' ', L)));
          // codice della dima in archivio
          // *** modifica per la nuova etichetta di produzione ***
          delete(L, 1, pos(' ', L));
          delete(L, 1, pos(' ', L));
          // nella commessa della sezionatrice c'è un carattere in più prima della 2^ parte della
          // etichetta di produzione
          if self.Tipo = tpSezionatrice then
            delete(L, 1, pos(' ', L));

          // d^.codice := d^.codice + trim(l);      // per un codice dima esteso

          // d^.codice := d^.codice + trim(copy(l, 1, pos(' ', l)));
          // *** fine modifica nuova etichette ***

          FDime.Add(d);

          readln(c, L);
        end;
        FNDime := FDime.Count;
      end;
      // end;
      // inizio lista schemi
      if L = 'F3' then
      begin
        readln(c, L);
        while (not(L = 'E0')) and (not eof(c)) do
        begin
          FSchemi.Add(TSchemaTaglio.Create(FTipo, pannelli, uppercase(L)));
          readln(c, L);
        end;
      end;
    end;
    FNSchemi := FSchemi.Count;
  finally

    closefile(c);
    for i := 0 to pannelli.Count - 1 do
    begin
      PPannello(pannelli[i]).descrizione := '';
      Dispose(pannelli[i]);

    end;

    pannelli.Free;

  end;

end;

function TCommessaOttimo.GetSchema(index: integer): TSchemaTaglio;
begin
  Result := TSchemaTaglio(FSchemi.Items[index]);
end;

//function TCommessaOttimo.GetSfrido: Double;
//begin
// result :=   self.GetSfrido
//end;

function TCommessaOttimo.GetStringCuts(index: integer): string;
begin
  Result := Fls[index];
end;

//function TCommessaOttimo.GetTempoTaglio: double;
//begin
//    result := GetTempoTaglio
//end;

function TCommessaOttimo.GetTotMQNEtto: Double;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to self.FDime.Count - 1 do
    Result := Result + (PDima(self.FDime[i]).x * PDima(self.FDime[i]).y)
      * 0.000001;

end;

procedure TCommessaOttimo.OrdinaPerSchemiMacchina;
// funzione che passando un file di tipo "output troncatrice" come parametro
// legge i tagli e li restituisce in forma di stringa  es. : 560.000N2768N3
  function GetCutsStringFrom(fn: TFileName): string;
  var
    t: TextFile;
    s: string;
    i: integer;
  begin
    AssignFile(t, fn);
    try
      reset(t);
      Result := '';
      while not eof(t) do
      begin

        readln(t, s);
        // controlla dove c'è un taglio
        i := pos('X', s);
        if i > 0 then
        begin
          // elimina la parte iniziale che non serve
          inc(i);
          delete(s, 1, i);
          // prende la quota
          s := trim(s);
          i := pos(' ', s);
          Result := Result + copy(s, 1, i - 1);
          delete(s, 1, i);
          // prende le ripetizioni
          trim(s);
          i := pos(' ', s);
          Result := Result + copy(s, 1, i - 1);
        end;

      end;
    finally
      closefile(t);
    end;

  end;
// fine funzione : GetCutsStringFrom
  procedure FillListNumPanels(var aList: array of string);
  var
    t: TextFile;
    L: string;
    i: integer;
  begin
    AssignFile(t, PathOutSchemiMacchina + '\' + FNome + '.LST');
    reset(t);
    try
      // salta le prime due righe
      readln(t, L);
      readln(t, L);

      i := 0;
      while not eof(t) do
      Begin
        readln(t, L);
        delete(L, 1, pos(' ', L));
        delete(L, 1, pos(' ', L));
        aList[i] := L;
        inc(i)
      End;
    finally
      closefile(t);
    end;

  end;

var
  nomefile: TFileName;
  i: integer;
  p: string;
  vNPanels: array of string;

begin


  // p := 'E:\SCHEMI DA RIORDINARE\OTTIMO\';

  p := PathOutSchemiMacchina + '\';


  // legge tutti i files "nomecommessa" + estensione (nschema)

  // legge la lista per recuperare la qtà di pannelli di ogni schema
  SetLength(vNPanels, FNSchemi);
  try
    FillListNumPanels(vNPanels);

    Fls.Clear;
    for i := 0 to FNSchemi - 1 do
    begin
      nomefile := p + FNome + '.' + format('%.3d', [i + 1]);
      if FileExists(nomefile) then
        Fls.Add(GetCutsStringFrom(nomefile) + vNPanels[i])
      else
        ShowMessage('File non trovato : ' + nomefile);

    end;
    // a  questo punto la lista "sl" contiene gli schemi in ordine di taglio x macchina
    // imposto per ogni schema l'indice della stringa uguale alla tstringa di taglio dello schema
    for i := 0 to FNSchemi - 1 do
    Begin
      // solo se non è stato assegnato allora...
      if Schemi[i].FNschemaMacchina < 0 then
        Schemi[i].FNschemaMacchina := Fls.IndexOf(Schemi[i].GetZTagliString);

      if Schemi[i].FNschemaMacchina = -1 then
        MessageDlg
          (format('Sequenza taglio non trovata : indice %d x la seq. taglio %s',
          [i, Schemi[i].GetZTagliString]), mtWarning, [mbOK], 0);
    end;
    FSchemi.Sort(SortBySchemiMacchina);
  finally
    SetLength(vNPanels, 0);
    vNPanels := nil;
  end;
end;

procedure TCommessaOttimo.SetDima(index: integer; d: PDima);
begin
  PDima(FDime[index])^.x := d^.x;
  PDima(FDime[index])^.y := d^.y;
  PDima(FDime[index])^.q := d^.q;
  PDima(FDime[index])^.r := d^.r;
  PDima(FDime[index])^.q_residua := d^.q_residua;
  PDima(FDime[index])^.codice := d^.codice;
  PDima(FDime[index])^.cliente := d^.cliente;
  PDima(FDime[index])^.descrizione := d^.descrizione;
  PDima(FDime[index])^.lavorazione := d^.lavorazione;
  PDima(FDime[index])^.versioni := d^.versioni;

end;

function TCommessaOttimo.TotalePannelli: integer;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FSchemi.Count - 1 do
  begin
    Result := Result + TSchemaTaglio(FSchemi[i]).Num_pannelli;
  end;
end;

function TSchemaTaglio.GetPezzo(index: integer): TPezzoSchema;
begin
  Result := FPezzi[index]^;
end;

function TSchemaTaglio.GetTaglio(index: integer): TTaglio;
begin
  Result := TTaglio(FTagli[index]^);
end;

function TSchemaTaglio.GetZTagliString: string;

var
  i: integer;
  LastRip: integer;
  LastQuota: Double;
  LastString: string;
begin
  Result := '';

  LastQuota := 0;
  for i := 0 to FNtagli - 1 do
  begin
    with PTaglio(FTagli[i])^ do
    begin
      if Tipo = 'Z' then
      Begin
        if Quota <> LastQuota then
        // se la mis. di taglio cambia allora aggiunge
        begin
          Result := Result + format('%.3fN%d', [Quota, Ripetizioni]);
          LastRip := Ripetizioni
        end
        else
        begin
          Result := StringReplace(Result, LastString,
            format('%.3fN%d', [Quota, Ripetizioni + LastRip]),
            [rfReplaceAll, rfIgnoreCase]);
          LastRip := Ripetizioni + LastRip;
        end;
        // conservo la quota e ripetizioni per eventuali mis.taglio uguali e in successione: es.150N1 + 150N3 = 150N4
        LastQuota := Quota;
        LastString := format('%.3fN%d', [Quota, LastRip]);
      end;
    end;
  end;

  Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
  Result := Result + 'N' + IntToStr(FNpannelli)

end;

function TSchemaTaglio.TagliDifferenziati: integer;
var
  i: integer;
begin
  Result := 0;
  dec(Result, 2); // rifilo e primo taglio vengono esclusi

  if self.Pretaglio then
    dec(Result);

  for i := 0 to FTagli.Count - 1 do
    if TTaglio(FTagli[i]^).Tipo = 'Z' then
      inc(Result);

  inc(Result);

end;

function TSchemaTaglio.NumTagli(Tipo: Char): integer;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FTagli.Count - 1 do
    if TTaglio(FTagli[i]^).Tipo = Tipo then
      inc(Result, TTaglio(FTagli[i]^).Ripetizioni);

  inc(Result);

end;

function TSchemaTaglio.MqNetto: Double;
var
  i: integer;
  Qy: Double;
  Ny: integer;
  // Ok: boolean;
begin
  Result := 0;
  Qy := 0;
  Ny := 0; // ok := true;
  for i := 0 to FTagli.Count - 1 do
  begin
    // il pretaglio ruotato inverte la situazione
    // cioe' le y sono diventate z e le z le y.
    // if (TTaglio(FTagli[i]^).Tipo = 'X') and (FPRuotato) then
    // ok := False;
    // if ok then
    // begin
    if TTaglio(FTagli[i]^).Tipo = 'Y' then
    begin
      Qy := TTaglio(FTagli[i]^).Quota;
      Ny := TTaglio(FTagli[i]^).Ripetizioni
    end;
    if TTaglio(FTagli[i]^).Tipo = 'Z' then
      Result := Result + Qy * TTaglio(FTagli[i]^).Quota * Ny *
        TTaglio(FTagli[i]^).Ripetizioni;
    // end else
    // begin
    // if TTaglio(FTagli[i]^).Tipo = 'Z' then
    // begin
    // Qy := TTaglio(FTagli[i]^).Quota;
    // Ny := TTaglio(FTagli[i]^).Ripetizioni
    // end;
    // if TTaglio(FTagli[i]^).Tipo = 'Y' then
    // result := result + Qy * TTaglio(FTagli[i]^).Quota * Ny * TTaglio(FTagli[i]^).Ripetizioni;
  end;

  // end;
  Result := Result / 1000000;

end;

function TSchemaTaglio.MqLordo: Double;

begin
  Result := (FPx * FPy) / 1000000;
end;

function TSchemaTaglio.PathCut(L: TTipoLama): Double;
var
  i: integer;
  Qy: Double;
  Ny: integer;
begin
  // moltiplica la lunghezza del pannello x il numero di tagli Y
  // result := NumTagli('Y') * Fpx;
  // result := result / 1000  ;
  // se voglio sapere il percorso della lama Y
  Result := 0;
  Qy := 0;
  Ny := 0;
  if L = tlLamaX then
  begin
    // altrimenti azzero e conto la lama X

    for i := 0 to FTagli.Count - 1 do
    begin
      // taglio long.
      if TTaglio(FTagli[i]^).Tipo = 'Y' then
      begin
        Qy := TTaglio(FTagli[i]^).Quota;
        Ny := TTaglio(FTagli[i]^).Ripetizioni;
        Result := Result + Qy;
      end;
      // taglio trasv.
      if TTaglio(FTagli[i]^).Tipo = 'Z' then
        Result := Result + Qy * Ny * TTaglio(FTagli[i]^).Ripetizioni;
    end;
  end;
  if L = tlLamaY then
  begin
    if not FPretaglio then
      Qy := FPx // se non esiste il pretaglio prendo tutta la lunghezza del pannello
    else
      Qy := FQuotaPretaglio; // altrimenti prendo la lunghezz della prima parte
    Result := Qy; // il taglio di rifilo in più rispetto ai tagli in y
    for i := 0 to FTagli.Count - 1 do
    begin
      if TTaglio(FTagli[i]^).Tipo = 'Y' then
        Result := Result + TTaglio(FTagli[i]^).Ripetizioni * Qy;
      if TTaglio(FTagli[i]^).Tipo = 'X' then
        if FPRuotato then
          Qy := FPy
        else
          Qy := FPx - Qy;
    end;
  end;
  Result := Result / 1000
end;

function TSchemaTaglio.Sfrido: Double;
begin
  Result := 100 - (MqNetto / MqLordo) * 100;

end;

function TSchemaTaglio.McLordo: Double;
begin
  Result := MqLordo * FPz * 0.001;
end;

function TSchemaTaglio.McNetto: Double;
begin
  Result := MqNetto * FPz * 0.001;
end;

//function TCommessaOttimo.GetCodiceLavorazione: string;
//begin
//
//end;

function TCommessaOttimo.GetDima(index: integer): PDima;
begin
  Result := PDima(FDime[index]);

end;

function TCommessaOttimo.GetDimaByCode(aCode: string): PDima;
var
  i: integer;
  ok: Boolean;
begin

  Result := nil;
  i := 0;
  ok := false;
  while (i < FDime.Count) and not ok do
  begin
    ok := uppercase(PDima(FDime[i]).codice) = uppercase(aCode);

    inc(i);
  end;
  if ok then
    Result := FDime[i - 1];

end;

function TCommessaOttimo.GetDimaByPart(aPart: string): PDima;
var
  i: integer;
  ok: Boolean;
  pp: string;
begin

  Result := nil;
  i := 0;
  ok := false;
  while (i < FDime.Count) and not ok do
  begin
    pp := PDima(FDime[i]).codice;
    pp := copy(pp, 4, 4) + '_' + copy(pp, 9, length(pp) - 8);
    ok := (pp = uppercase(aPart)) and (PDima(FDime[i]).versioni = '');

    inc(i);
  end;
  if ok then
    Result := FDime[i - 1];

end;

//function TCommessaOttimo.GetGeos: TGeosSchema;
//begin
//
//end;
//
//function TCommessaOttimo.GetHash: string;
//begin
//
//end;
//
//function TCommessaOttimo.GetIdMacchina: Integer;
//begin
//
//end;

function TCommessaOttimo.GetMaterialeCompleto: string;
begin
  Result := Fmateriale + ' ' + FSpessore.ToString;
end;

function TCommessaOttimo.GetModelli(lstNomiClient: TStringList): string;
var
  sl: TStringList;
  d: PDima;
  i: integer;
  c: string;
  m: string;
  y, p: integer;
  cy, cp: AnsiChar;
  aCopyOfDime: TList;
begin

  aCopyOfDime := TList.Create;
  aCopyOfDime.Assign(FDime);
  aCopyOfDime.Sort(ConfrontaCodiceDime);

  sl := TStringList.Create;
  try
    Result := '';
    i := 0;
    while i < aCopyOfDime.Count do
    begin
      d := PDima(aCopyOfDime[i]);
      if length(d.codice) > 8 then // deve essere una etichetta di produzione
      begin

        cy := d.codice[1];
        cp := d.codice[2];
        y := 2000 + (Ord(cy) - 32);
        p := Ord(cp) - 32;
        m := p.ToString + '/' + y.ToString;

        sl.Add(m);
        repeat

          d := PDima(aCopyOfDime[i]);
          c := d.codice[3]; // carattere che distingue il cliente
          m := lstNomiClient.Values[c];
          m := copy(m, 1, pos(' ', m) - 1);
          sl.Add(m);
          repeat

            d := PDima(aCopyOfDime[i]);

            if d.codice[8] <> '0' then // se c'è bis allora lo prendo
              m := copy(d.codice, 4, 4) + ' (b' + d.codice[8] + ')'
              // 4 caratteri modello e 1 (bis)
            else
              m := copy(d.codice, 4, 4);

            if sl.IndexOf(m) = -1 then
              sl.Add(m);

            inc(i);

          until (i = aCopyOfDime.Count) or
            (c <> PDima(aCopyOfDime[i]).codice[3]);

        until (i = aCopyOfDime.Count) or (cy <> PDima(aCopyOfDime[i]).codice[1])
          or (cp <> PDima(aCopyOfDime[i]).codice[2]);
      end
      else
        inc(i);

    end;
    sl.Delimiter := ',';

    sl.QuoteChar := #0; // for higher delphi versions
    Result := sl.DelimitedText;

  finally
    sl.Free;
    aCopyOfDime.Free
  end;

end;

function TCommessaOttimo.GetNdimeMancanti: integer;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FNDime - 1 do
    Result := Result + PDima(FDime[i])^.r - PDima(FDime[i])^.q;

end;

//function TCommessaOttimo.GetNettoMQ: Double;
//begin
//    result := self.GetNettoMQ
//end;
//
//function TCommessaOttimo.GetNome: string;
//begin
//    result := self.NomeCommessa
//end;
//
//function TCommessaOttimo.GetNumeroSchema: Integer;
//begin
//    result := self.FSchemi
//end;
//
//function TCommessaOttimo.GetNumTeste: Integer;
//begin
//
//end;
//
//function TCommessaOttimo.GetPacco: integer;
//begin
//
//end;
//
//function TCommessaOttimo.GetPannelli: Integer;
//begin
//
//end;
//
//function TCommessaOttimo.GetPannello: TPannello;
//begin
//
//end;
//
//function TCommessaOttimo.GetPathFresa: double;
//begin
//
//end;

function TCommessaOttimo.GetProgramma: string;
var
  sl: TStringList;
  d: PDima;
  i: integer;
  y, p: integer;
  s: string;

begin
  sl := TStringList.Create;
  try
    Result := '';
    for i := 0 to Ndime - 1 do
    begin
      d := PDima(FDime[i]);

      s := copy(d.codice, 1, 1);

      y := Ord(s[1]) - 32;

      s := copy(d.codice, 2, 1);

      p := Ord(s[1]) - 32;
      y := 2000 + y;

      s := p.ToString + '/' + y.ToString;
      if sl.IndexOf(s) = -1 then
        sl.Add(s)
    end;

    sl.Delimiter := ',';

    sl.QuoteChar := #0; // for higher delphi versions
    Result := sl.DelimitedText;

  finally
    sl.Free
  end;

end;

function TSchemaTaglio.PezziXSchema: integer;
var
  i, Ny: integer;

begin
  Result := 0;
  Ny := 0;
  for i := 0 to FNtagli - 1 do
  begin
    if TTaglio(FTagli[i]^).Tipo = 'Y' then
      Ny := TTaglio(FTagli[i]^).Ripetizioni;
    if TTaglio(FTagli[i]^).Tipo = 'Z' then
      Result := Result + TTaglio(FTagli[i]^).Ripetizioni * Ny
  end;

end;

function TSchemaTaglio.TempoTaglio: Double;

begin

  Result := 0;

  // nel caso della sezionatrice il tempo viene calcolato nel modo seguente:
  // il percoso lama Y diviso la velocità della lama Y ( mt/min) + il tempo spintore Y +
  // il percoso lama X diviso la velocità della lama X ( mt/min) + il tempo spintore X +
  // il tempo per eseguire il, pretaglio se questo è presente.

  if FTipoCommessa = tpSezionatrice then
  begin
    if self.Pretaglio then
    begin
      Result := (self.PathCut(tlLamaY) / self.FSpeedY) + self.TotQuotaY /
        self.FSpeedSpY + (self.PathCut(tlLamaX) / self.FSpeedX) + self.TotQuotaX
        / self.FSpeedSpX + (FPx * 0.001 - FQuotaPretaglio * 0.001) /
        FSpeedSpPretaglio + (FPy * 0.001) / FSpeedPretaglio;
      Result := Result + FTempoxPacco +
        (self.TagliDifferenziati * Result * FIncPercXTaglioDiff * 0.01)
    end
    else
    begin
      Result := (self.PathCut(tlLamaY) / self.FSpeedY) + self.TotQuotaY /
        self.FSpeedSpY + (self.PathCut(tlLamaX) / self.FSpeedX) + self.TotQuotaX
        / self.FSpeedSpX;

      Result := Result + FTempoxPacco +
        (self.TagliDifferenziati * Result * FIncPercXTaglioDiff * 0.01);
    end;

  end;

  // nel caso della troncatrice il tempo di taglio è calcolato come segue:
  // il parametro FSpeedX accoglie i secondi che la lama impiega a troncare il fascio di tavole;
  // moltiplicando il suddetto parametro per il numero totale dei tagli si ha il tempo totale che la lama
  // impiega per tutti i tagli + il tempo impiegato dallo spintore per spostarsi dal primo taglio all'ultimo.
  if FTipoCommessa = tpTroncatrice then
    Result := self.NumTagli('Z') * self.FSpeedX / 60 + FPx *
      0.001 { trasforma in mt } / self.FSpeedSpX;
end;

function TSchemaTaglio.TotQuotaY: Double;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FTagli.Count - 1 do
    if TTaglio(FTagli[i]^).Tipo = 'Y' then
      Result := Result + TTaglio(FTagli[i]^).Ripetizioni *
        TTaglio(FTagli[i]^).Quota;
  Result := Result * 0.001;
end;

function TSchemaTaglio.TotQuotaX: Double;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FTagli.Count - 1 do
    if TTaglio(FTagli[i]^).Tipo = 'Z' then
      Result := Result + TTaglio(FTagli[i]^).Ripetizioni *
        TTaglio(FTagli[i]^).Quota;

  Result := Result * 0.001;

end;

{ TListaPezzi }

procedure TListaPezzi.AggiungiPezzo(p: PPezzoSchema);
begin
  FLista.Add(Pointer(p));
end;

constructor TListaPezzi.Create;
begin
  inherited;
  FLista := TList.Create;
end;

destructor TListaPezzi.Destroy;
var
  i: integer;
begin
  for i := 0 to FLista.Count - 1 do
    Dispose(FLista[i]);
  FLista.Free;
  inherited;
end;

function TListaPezzi.GetCount: integer;
begin
  Result := FLista.Count;
end;

function TListaPezzi.GetPezzo(index: integer): PPezzoSchema;
begin
  Result := PPezzoSchema(FLista[index]);
end;

procedure TListaPezzi.SetPezzo(index: integer; p: PPezzoSchema);
begin
  if (index >= 0) and (index < FLista.Count) then
  begin
    if assigned(FLista[index]) then
      Dispose(FLista[index]);
    FLista[index] := p;
  end;
end;

{ TDima }

{ TDima }

function TDima.GetPartCode: string;
begin
  Result := copy(self.codice, 4, 4) + '_' + copy(self.codice, 9,
    length(self.codice) - 8);
end;

end.
