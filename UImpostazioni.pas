unit UImpostazioni;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, RzCommon,
  RzForms, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ValEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalc, Vcl.Grids, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtonEdit, RzShellDialogs, dxSkinWXI, dxCore,
  cxDateUtils, cxCalendar, dxCoreGraphics;

type
  TfrmImpostazioni = class(TForm)
    RzRegIniFile1: TRzRegIniFile;
    RzFormState1: TRzFormState;
    RzPropertyStore1: TRzPropertyStore;
    pgc1: TPageControl;
    tsTronTRV2200: TTabSheet;
    tsTroncCursal: TTabSheet;
    tsR500: TTabSheet;
    tsSCM: TTabSheet;
    tsGreda: TTabSheet;
    edtDirTotaliNewCursal: TEdit;
    lblTotali: TLabel;
    btnChooseFolder: TSpeedButton;
    ListaPacchiR500: TValueListEditor;
    ListaPacchiSCM: TValueListEditor;
    ListaPacchiGreda: TValueListEditor;
    TabSheet1: TTabSheet;
    ListaPacchiGabbiani: TValueListEditor;
    edMaxWidthCursal: TcxCalcEdit;
    edMaxHeightCursal: TcxCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    tsTRSI7500E: TTabSheet;
    edtDirTotaliNewCursalTRSI7500E: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    ts1: TTabSheet;
    edtPathModelli: TcxButtonEdit;
    Label4: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label5: TLabel;
    procedure btnChooseFolderClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataSchedeLavChanged : Boolean;

  end;

var
  frmImpostazioni: TfrmImpostazioni;

implementation

{$R *.dfm}

procedure TfrmImpostazioni.btnChooseFolderClick(Sender: TObject);
var
  o: TFileOpenDialog;
begin
  o := TFileOpenDialog.Create(nil);
  try
    o.Options := o.Options + [fdoPickFolders];
    if not(o.Execute) then
      abort;

    if True then

      if pgc1.ActivePage = tsTRSI7500E then
        edtDirTotaliNewCursalTRSI7500E.text := o.FileName
      else

        edtDirTotaliNewCursal.text := o.FileName;

  finally
    o.Free
  end;

end;

procedure TfrmImpostazioni.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var

d : TRzSelectFolderDialog;
begin

  d := TRzSelectFolderDialog.Create(Self);
  try
     if d.Execute then
     begin
          edtPathModelli.Text :=  d.SelectedPathName
     end;
  finally
    d.Free
  end;
end;

procedure TfrmImpostazioni.cxDateEdit1PropertiesChange(Sender: TObject);
begin
      DataSchedeLavChanged := true
end;

procedure TfrmImpostazioni.FormCreate(Sender: TObject);
begin

  RzPropertyStore1.Load;

end;

procedure TfrmImpostazioni.FormDestroy(Sender: TObject);
begin
  RzPropertyStore1.Save;
end;

procedure TfrmImpostazioni.FormShow(Sender: TObject);
begin
     DataSchedeLavChanged := false
end;

end.
