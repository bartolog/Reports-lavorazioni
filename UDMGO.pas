unit UDMGO;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider;

type
  TDMGO = class(TDataModule)
    GOConnection: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    qryMateriali: TUniQuery;
    dsMateriali: TUniDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGO: TDMGO;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMGO.DataModuleCreate(Sender: TObject);
begin
      qryMateriali.active := true

end;

end.
