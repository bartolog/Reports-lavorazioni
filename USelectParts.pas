unit USelectParts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus;

type
  TfrmSelectParts = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pnl1: TPanel;
    edtAnno: TEdit;
    edtSettimana: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOk: TBitBtn;
    cxGrid1DBTableView1Nome_Schema: TcxGridDBColumn;
    cxGrid1DBTableView1Label: TcxGridDBColumn;
    cxGrid1DBTableView1lavorazioni: TcxGridDBColumn;
    cxGrid1DBTableView1QTA: TcxGridDBColumn;
    cxGrid1DBTableView1Tag: TcxGridDBColumn;
    cxGrid1DBTableView1Codice: TcxGridDBColumn;
    cxGrid1DBTableView1Descrizione: TcxGridDBColumn;
    cxGrid1DBTableView1Materiale: TcxGridDBColumn;
    cxGrid1DBTableView1z: TcxGridDBColumn;
    cxGrid1DBTableView1x: TcxGridDBColumn;
    cxGrid1DBTableView1y: TcxGridDBColumn;
    cxGrid1DBTableView1AlphaCamFile: TcxGridDBColumn;
    cxGrid1DBTableView1Note: TcxGridDBColumn;
    cxGrid1DBTableView1nfasi: TcxGridDBColumn;
    cxGrid1DBTableView1TipoMateriale: TcxGridDBColumn;
    cxGrid1DBTableView1Versioni: TcxGridDBColumn;
    pm1: TPopupMenu;
    I1: TMenuItem;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure I1Click(Sender: TObject);
  private
    { Private declarations }

    function RegistraTestataSchema(Nome, Materiale, CodiceLav: string;
      idMacchina: Integer): Largeint;

    procedure REgistraDettaglioSchema(idSchema, qta: Integer; aLabel: string);
  public
    { Public declarations }
    FCodLav: string;
    FIdMacchina: Integer;
  end;

var
  frmSelectParts: TfrmSelectParts;

implementation

uses
  UDM;

{$R *.dfm}

procedure TfrmSelectParts.btnOkClick(Sender: TObject);
begin
  with DM.qrySelectParts do
  begin

    Close;
    ParamByName('P_Anno').AsString := edtAnno.Text;
    ParamByName('P_Settimana').AsString := edtSettimana.Text;
    Open

  end;
end;

procedure TfrmSelectParts.FormShow(Sender: TObject);
var

  d, m, y: Word;

begin
  DecodeDate(Now, y, m, d);
  edtAnno.Text := y.ToString;
end;

procedure TfrmSelectParts.I1Click(Sender: TObject);
var
  i, r, idS, qta: Integer;
  ns, mt, lbl: string;
begin
  // todo: creare gli schemi fantocci e inserire le parti (labels and quantitá) nel dettaglio schema

  with cxGrid1DBTableView1, cxGrid1DBTableView1.DataController do
  begin
    i := 0;
    while i < GetSelectedCount do
    begin
      // registra intestazione
      r := GetSelectedRowIndex(i);
      ns := Values[ViewData.Rows[r].RecordIndex,
        cxGrid1DBTableView1Nome_Schema.Index];
      mt := Values[ViewData.Rows[r].RecordIndex,
        cxGrid1DBTableView1Materiale.Index];

      idS := RegistraTestataSchema(ns, mt, FCodLav, FIdMacchina);
      repeat
        // registra dettaglio
        lbl := Values[ViewData.Rows[r].RecordIndex,
          cxGrid1DBTableView1Label.Index];
        qta := Values[ViewData.Rows[r].RecordIndex,
          cxGrid1DBTableView1QTA.Index];

        REgistraDettaglioSchema(idS, qta, lbl);
        Inc(i);
        if i < GetSelectedCount then
          r := GetSelectedRowIndex(i);
      until (i = GetSelectedCount) or
        (ns <> Values[ViewData.Rows[r].RecordIndex,
        cxGrid1DBTableView1Nome_Schema.Index]);

    end;

  end;

end;

procedure TfrmSelectParts.REgistraDettaglioSchema(idSchema, qta: Integer;
  aLabel: string);
begin

  with DM.cmdInsDetailSchema do
  begin
    ParamByName('p_idSchema').Value := idSchema;
    ParamByName('p_Label_Parte').Value := aLabel;

    ParamByName('p_Qta').Value := qta;
    execute

  end;

end;

function TfrmSelectParts.RegistraTestataSchema(Nome, Materiale,
  CodiceLav: string; idMacchina: Integer): Largeint;
var
  h: string;
begin

  try
    with DM.cmdCreateSchema do
    begin
      ParamByName('p_Nome').Value := Nome;
      h := DateTimeToStr(Now);
      ParamByName('p_Hash').Value := h;
      ParamByName('p_NSchema').Value := 1;
      ParamByName('p_IdMacchina').Value := idMacchina;
      ParamByName('p_Materiale').Value := Materiale;
      ParamByName('p_Num_Pannelli').Value := 1;
      ParamByName('p_Codice_Lavorazione').Value := CodiceLav;
      execute
    end;

    with DM.qryGetIdSchema do
    begin
      Close;
      ParamByName('p_Nome').Value := Nome;

      ParamByName('p_hash').Value := h;
      ParamByName('p_NSchema').Value := 1;

      Open;
      Result := Fields[0].AsInteger
    end;
  except
    on e: Exception do
      Result := -1

  end;

end;

end.
