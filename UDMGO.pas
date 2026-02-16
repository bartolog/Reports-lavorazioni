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

uses UGestionaleParams;

{$R *.dfm}

procedure TDMGO.DataModuleCreate(Sender: TObject);
begin

  GOConnection.Connected := false;

  GOConnection.Server := dlgGoParams.GetServer;
  GOConnection.Port := dlgGoParams.GetPort.ToInteger;
  GOConnection.Database := dlgGoParams.GetDatabase;
  GOConnection.Username := dlgGoParams.GetUsername;
  GOConnection.Password := dlgGoParams.GetPassword;
  GOConnection.Open;

  qryMateriali.active := true;

end;

end.
