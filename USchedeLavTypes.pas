unit USchedeLavTypes;


interface
uses
System.Generics.Collections, system.Classes;


type

  TPannello = class
  private
    FMateriale: string;
    FDim_X: Double;
    FDim_Y: Double;
    FDim_Z: Double;

  public

    property Dim_X: Double read FDim_X write FDim_X;
    property Dim_Y: Double read FDim_Y write FDim_Y;
    property Dim_Z: Double read FDim_Z write FDim_Z;
    property Materiale: string read FMateriale write FMateriale;
  end;

  TGeoSchema = class
  private
    FPLabel: string;
    FQta: Integer;
  public

    property Plabel: string read FPLabel write FPLabel;
    property Qta: Integer read FQta write FQta;

  end;

  TGeosSchema = TObjectList<TGeoSchema>;

  ISchema = interface
    ['{900542A5-A990-4E7E-B8AA-9893C577AABB}']
    function GetNome: string;
    function GetHash: string;
    function GetPannello: TPannello;
    function GetGeos: TGeosSchema;
    function GetPannelli: Integer;
    function GetNumTeste: Integer;
    function GetNumeroSchema: Integer;
    function GetIdMacchina: Integer;
    function GetCodiceLavorazione: string;
    function GetModelli(aMapListClientsAndLetter : TStringList): string;
    function GetSfrido : Double;
    function GetNettoMQ : Double;
    function GetPacco : integer;
    function GetPathFresa : double;
    function GetTempoTaglio : double;




  end;





implementation



end.
