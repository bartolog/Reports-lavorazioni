unit USchemiIncompleti;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Data.DB, Vcl.DBGrids, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmSchemiIncompleti = class(TForm)
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    grSchemiIncompleti: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmSchemiIncompleti: TfrmSchemiIncompleti;

implementation

uses
  UDM;

{$R *.dfm}

procedure TfrmSchemiIncompleti.FormShow(Sender: TObject);
begin
        with DM do
        begin
          qryShowSchemiIncompleti.Close;
          qryShowSchemiIncompleti.Open;

        end;

end;

end.
