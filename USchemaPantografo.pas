unit USchemaPantografo;

interface

uses USchedeLavTypes, UalphacamReport, System.SysUtils, System.classes;

type

  TSchemaPantografo = class(TInterfacedObject, ISchema)

  private
    rp: TAlphacamReport;
    FIdMacchina: integer;
    FCodiceLavorazione: string;
    procedure SetCodiceMacchina(aIdMacchina: integer);
    procedure SetCodiceLavorazione(aCodLav: string);

  public
    constructor Create(aAlphaReport: string); overload;
    constructor Create(aAlphaReport, CodiceLav: string;
      IdMacchina: integer); overload;

    destructor Destroy; override;

    property IdMacchina: integer read FIdMacchina write SetCodiceMacchina;
    property CodiceLavorazione: string read FCodiceLavorazione
      write SetCodiceLavorazione;

    function GetNome: string;
    function GetHash: string;
    function GetPannello: TPannello;
    function GetGeos: TGeosSchema;
    function GetPannelli: integer;
    function GetNumTeste: integer;
    function GetNumeroSchema: integer;
    function GetIdMacchina: integer;
    function GetCodiceLavorazione: string;
    function GetModelli(aMapListClientsAndLetter: TStringList): string;
    function GetSfrido: Double;
    function GetNettoMQ: Double;
    function GetPacco: integer;
    function GetPathFresa: Double;
    function GetTempoTaglio: Double;

  end;

implementation

{ TSchemaPantografo }

constructor TSchemaPantografo.Create(aAlphaReport: string);
begin
  Inherited Create;
  rp := TAlphacamReport.Create(aAlphaReport);

end;

constructor TSchemaPantografo.Create(aAlphaReport, CodiceLav: string;
  IdMacchina: integer);
begin
  Inherited Create;
  rp := TAlphacamReport.Create(aAlphaReport);
  FIdMacchina := IdMacchina;
  FCodiceLavorazione := CodiceLav;
end;

destructor TSchemaPantografo.Destroy;
begin
  rp.Free;
  inherited;
end;

function TSchemaPantografo.GetCodiceLavorazione: string;
begin
  result := '01';
end;

function TSchemaPantografo.GetGeos: TGeosSchema;

var
  i, j: integer;
  g: TGeoSchema;
  lbs: TArrayOfLabels;

begin
  result := TGeosSchema.Create;
  for i := 0 to rp.ReportGeos.Count - 1 do
  begin
    lbs := rp.ReportGeos[i].GetPartedQta;


    for j := Low(lbs) to High(lbs) do
    begin
      g := TGeoSchema.Create;

      g.Plabel := lbs[j].L;
      g.Qta := lbs[j].Q * rp.Pannelli * rp.Teste;
      result.Add(g);

    end;

  end;

end;

function TSchemaPantografo.GetHash: string;
begin
  result := rp.GetHashData;
end;

function TSchemaPantografo.GetIdMacchina: integer;
begin
  result := IdMacchina;
end;

function TSchemaPantografo.GetModelli(aMapListClientsAndLetter
  : TStringList): string;
begin
  result := rp.GetModelli(aMapListClientsAndLetter)

end;

function TSchemaPantografo.GetNettoMQ: Double;
begin
  result := rp.GetTotMqNetto;
end;

function TSchemaPantografo.GetNome: string;
var
 l : integer;
begin
  l := Length(rp.Nome);
  result := copy(rp.Nome,1,l-1);
end;

function TSchemaPantografo.GetPacco: integer;
begin
   result := 0
end;

function TSchemaPantografo.GetPannelli: integer;
begin
  result := rp.Pannelli;
end;

function TSchemaPantografo.GetNumeroSchema: integer;
begin
  result := 1
end;

function TSchemaPantografo.GetNumTeste: integer;
begin
  result := rp.Teste;
end;

function TSchemaPantografo.GetPannello: TPannello;

begin
  result := TPannello.Create;

  result.Dim_X := rp.Plx;
  result.Dim_Y := rp.Ply;
  result.Dim_Z := rp.Spessore.ToDouble;
  result.Materiale := rp.Materiale;

end;

function TSchemaPantografo.GetPathFresa: Double;
begin
    result := rp.FresaPath.ToDouble
end;

function TSchemaPantografo.GetSfrido: Double;
begin
  result := rp.SfridoP
end;

function TSchemaPantografo.GetTempoTaglio: Double;
begin
     result :=  rp.Durata.ToDouble
end;

procedure TSchemaPantografo.SetCodiceLavorazione(aCodLav: string);
begin
  FCodiceLavorazione := aCodLav;
end;

procedure TSchemaPantografo.SetCodiceMacchina(aIdMacchina: integer);
begin

  FIdMacchina := aIdMacchina
end;

end.
