unit UNotifications;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmNotifications = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    btnSave: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotifications: TfrmNotifications;

implementation

{$R *.dfm}

procedure TfrmNotifications.btnSaveClick(Sender: TObject);

begin
       with SaveDialog1 do
       begin
         if Execute() then
           Memo1.Lines.SaveToFile(FileName);
       end;
end;

end.
