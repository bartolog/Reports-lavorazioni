unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ComCtrls, Vcl.ExtCtrls, cxContainer, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.DBCtrls, cxDBNavigator,
  Vcl.Menus, frxClass, frxDBSet, cxLabel, cxDBLabel,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Buttons, RzStatus,
  UNewCursalTypes, cxLocalization, cxFilterControl, dxAlertWindow, Vcl.AppEvnts,
  cxCustomData, cxFilter, cxData, dxDateRanges, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxScrollbarAnnotations, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSContainerLnk, dxPSCore, dxPScxCommon,
  cxButtons, dxSkinWXI, Vcl.WinXCtrls, frxSmartMemo, frCoreClasses,
  dxUIAClasses, cxDBLookupComboBox, UDMGO, UGestionaleParams, UDDTInterface,
  UGestGoContainer, UMagClasses;

type

  TipoTroncatrice = (ttTRV2200 = 14, ttTRSI7500E);

  TMainForm = class(TForm)
    stb1: TStatusBar;
    pmSchemi: TPopupMenu;
    Aggiungischema1: TMenuItem;
    dlgOpen1: TOpenDialog;
    Scheminoncompletati1: TMenuItem;
    frxReportTroncSezio: TfrxReport;
    frxSchedeLav: TfrxDBDataset;
    frxRigheScheda: TfrxDBDataset;
    Stampa1: TMenuItem;
    Pantografo1: TMenuItem;
    roncatrice1: TMenuItem;
    Sezionatrice1: TMenuItem;
    actManager1: TActionManager;
    cxImageList1: TcxImageList;
    actCaricaPantReport: TAction;
    actTroncatrice: TAction;
    actSezionatrice: TAction;
    RzVersionInfo1: TRzVersionInfo;
    frxReportPanto: TfrxReport;
    cxLocalizer1: TcxLocalizer;
    actReadTotals: TAction;
    Leggitotali1: TMenuItem;
    dxAlertWindowManager1: TdxAlertWindowManager;
    imgList32: TcxImageList;
    actsButtons: TActionManager;
    actFermiMacchina: TAction;
    ApplicationEvents1: TApplicationEvents;
    UsrDataOrderAndFilter: TfrxUserDataSet;
    frxReport1: TfrxReport;
    Stampacomeingriglia1: TMenuItem;
    actChangeLxTavole: TAction;
    Cambialunghezzatavola1: TMenuItem;
    PageControl1: TPageControl;
    tsGriglia: TTabSheet;
    tsScheda: TTabSheet;
    pnlTesta: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cmbOperatori: TDBLookupComboBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cmbMacchina: TDBLookupComboBox;
    cmbLavorazione: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    dbcmbTurno: TDBComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBLabel1: TcxDBLabel;
    btnImpostazioni: TBitBtn;
    BitBtn1: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    grSchedeDBTableView1: TcxGridDBTableView;
    grSchedeLevel1: TcxGridLevel;
    grSchede: TcxGrid;
    grSchedeDBTableView1Data: TcxGridDBColumn;
    grSchedeDBTableView1idMacchina: TcxGridDBColumn;
    grSchedeDBTableView1CodiceLavorazione: TcxGridDBColumn;
    grSchedeDBTableView1Turno: TcxGridDBColumn;
    grSchedeDBTableView1Stato: TcxGridDBColumn;
    grSchedeDBTableView1Operatore: TcxGridDBColumn;
    grSchedeDBTableView1Macchina: TcxGridDBColumn;
    grSchedeDBTableView1Lavorazione: TcxGridDBColumn;
    grSchedeDBTableView1Orario_Inizio: TcxGridDBColumn;
    grSchedeDBTableView1Orario_fine: TcxGridDBColumn;
    actSelectParts: TAction;
    actSelectParts1: TMenuItem;
    grDatiGrid1DBTableView2: TcxGridDBTableView;
    V1: TMenuItem;
    frxRigheDettaglioParti: TfrxDBDataset;
    frxReportDettaglioParti: TfrxReport;
    actImpostazioni: TAction;
    actLoadSquadra: TAction;
    actLoadSquadra1: TMenuItem;
    grDatiGrid1DBTableView2Riga: TcxGridDBColumn;
    grDatiGrid1DBTableView2Qta: TcxGridDBColumn;
    grDatiGrid1DBTableView2Nome: TcxGridDBColumn;
    grDatiGrid1DBTableView2Modelli: TcxGridDBColumn;
    frxReport2: TfrxReport;
    fod1: TFileOpenDialog;
    cxGrid1DBTableView2: TcxGridDBTableView;
    colGrid1DBTableView2Qta: TcxGridDBColumn;
    colGrid1DBTableView2Nome: TcxGridDBColumn;
    colGrid1DBTableView2Modelli: TcxGridDBColumn;
    grdGrid1Level3: TcxGridLevel;
    grdGrid1DBTableView3: TcxGridDBTableView;
    grdGrid1DBTableView3Qta: TcxGridDBColumn;
    grdGrid1DBTableView3Nome: TcxGridDBColumn;
    grdGrid1DBTableView3Modelli: TcxGridDBColumn;
    grdGrid1DBTableView3Riga: TcxGridDBColumn;
    cxGrid1DBTableView1IdScheda: TcxGridDBColumn;
    cxGrid1DBTableView1Riga: TcxGridDBColumn;
    cxGrid1DBTableView1NSchema: TcxGridDBColumn;
    cxGrid1DBTableView1idSchema: TcxGridDBColumn;
    cxGrid1DBTableView1Qta: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Dim_X_Pannello: TcxGridDBColumn;
    cxGrid1DBTableView1Dim_Y_Pannello: TcxGridDBColumn;
    cxGrid1DBTableView1Dim_Z_Pannello: TcxGridDBColumn;
    cxGrid1DBTableView1Num_Pannelli: TcxGridDBColumn;
    cxGrid1DBTableView1Pacco: TcxGridDBColumn;
    cxGrid1DBTableView1Modelli: TcxGridDBColumn;
    cxGrid1DBTableView1Materiale: TcxGridDBColumn;
    sr1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    esc1: TcxEditStyleController;
    actFastLoadPantografo: TAction;
    FastPantografo1: TMenuItem;
    ActivityIndicator1: TActivityIndicator;
    pnlButtons: TPanel;
    navSchede: TcxDBNavigator;
    cxButton1: TcxButton;
    btnFermiMacchina: TcxButton;
    cxGridViewRepository1: TcxGridViewRepository;
    imgListNavigator: TcxImageList;
    cxGrid1DBTableView1nTeste: TcxGridDBColumn;
    cxGrid1DBTableView1Eseguito_Start: TcxGridDBColumn;
    cxGrid1DBTableView1Eseguito_End: TcxGridDBColumn;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label17: TLabel;
    dxComponentPrinter1: TdxComponentPrinter;
    PrintGrid1: TdxGridReportLink;
    cxGrid1DBTableView1CodiceMatGo: TcxGridDBColumn;
    cxButton2: TcxButton;
    actScaricaMatPrima: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Scheminoncompletati1Click(Sender: TObject);
    procedure Stampa1Click(Sender: TObject);
    procedure roncatrice1Click(Sender: TObject);
    procedure Sezionatrice1Click(Sender: TObject);
    procedure actTroncatriceExecute(Sender: TObject);
    procedure actSezionatriceExecute(Sender: TObject);
    procedure actCaricaPantReportExecute(Sender: TObject);
    procedure actCaricaPantReportUpdate(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawColumnHeader
      (Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    // procedure actReadTotalsExecute(Sender: TObject);
    procedure actReadTotalsUpdate(Sender: TObject);
    procedure dxAlertWindowManager1Click(Sender: TObject;
      AAlertWindow: TdxAlertWindow);
    procedure actFermiMacchinaExecute(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure UsrDataOrderAndFilterFirst(Sender: TObject);
    procedure UsrDataOrderAndFilterNext(Sender: TObject);
    procedure UsrDataOrderAndFilterCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure UsrDataOrderAndFilterNewGetValue(Sender: TObject;
      const VarName: string; var Value: Variant);
    procedure Stampacomeingriglia1Click(Sender: TObject);
    procedure actChangeLxTavoleUpdate(Sender: TObject);
    procedure actChangeLxTavoleExecute(Sender: TObject);
    procedure tsSchedaShow(Sender: TObject);
    procedure actSelectPartsExecute(Sender: TObject);
    procedure V1Click(Sender: TObject);
    function frxReportDettaglioPartiUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure actImpostazioniExecute(Sender: TObject);
    procedure actLoadSquadraExecute(Sender: TObject);

    procedure actFastLoadPantografoExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actScaricaMatPrimaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    r: integer;

    procedure GetAlphaGeoPreview(const APicViewName, aFileName: string);
    procedure CaricaCommessaOttimo(f: string);

    // Function GetTRSI7500Totals(const nc: string;
    // var tt: PTotaliNewCursal): Boolean;

    procedure ApriSchedeLav;

    // procedure CaricaDatiNuovaCursal(aFolder: string; IdMacchina: Smallint);

    // Function GetNumTavAndTotMeters(const nc: string; var tt: PTotaliNewCursal)
    // : Boolean; overload;
    //
    // function GetNumTavAndTotMeters(const Data: string; const nc: string;
    // var tt: PTotaliNewCursal): Boolean; overload;

    // Function GetModelliFromListaEtichette(aLabelsList,
    // aClientsList: TStringList): string;

    procedure HandleDatasetScroll(Sender: TObject);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  UDM, UalphacamReport, USchemiIncompleti, Ottimo, UImpostazioni, System.Types,
  System.IOUtils, UNotifications, UfrmFermiMacchina, dxCore,
  UTRSITotali, USelectParts, AlphaCamPreviewUnit, UTRVCursal, USchemaPantografo,
  USchedeLavTypes, System.Threading;

{$R *.dfm}

function ExtractInnerFolder(const APath: string): string;
var
  InnerFolder: string;
begin
  InnerFolder := ExtractFileName(APath);
  // Extract the filename (including any extension)
  InnerFolder := ChangeFileExt(InnerFolder, '');
  // Remove the file extension if it exists
  Result := InnerFolder;
end;

procedure TMainForm.GetAlphaGeoPreview(const APicViewName, aFileName: string);
var
  Pic: TfrxPictureView;
  Stream: TStream;

  m: TMetafile;
begin
  Pic := TfrxPictureView(frxReport1.findobject(APicViewName));
  if (not Assigned(Pic)) or (not Pic.ClassType.InheritsFrom(TfrxPictureView))
  then
    Exit;

  m := TMetafile.Create;

  try
    AlphaCamPreviewUnit.FMetaFileBackColor := clWhite;
    if LoadAlphaCamPreviewIntoMetaFile(aFileName, m) = 0 then
    begin
      Stream := TMemoryStream.Create;

      try

        m.SaveToStream(Stream);
        Stream.Position := 0;

        Pic.LoadPictureFromStream(Stream);
        Pic.Visible := true;
      finally
        Stream.Free
      end;
    end
    else

      Pic.Visible := False;
  finally
    m.Free;
  end;
end;

// function GetFolderDate(Folder: string): TDateTime;
// var
// Rec: TSearchRec;
// Found: integer;
// Date: TDateTime;
// begin
// if Folder[Length(Folder)] = '\' then
// Delete(Folder, Length(Folder), 1);
// Result := 0;
// Found := FindFirst(Folder, faDirectory, Rec);
// try
// if Found = 0 then
// begin
// Date := FileDateToDateTime(Rec.Time);
// Result := Date;
// end;
// finally
// FindClose(Rec);
// end;
// end;

function TestLabelCongruenza(anno, settimana, alabel,
  CodiceDima: string): Boolean;
var
  y, s: Word;
  c, c1: string;
begin

  Result := true;
  c := alabel;
  Delete(c, 1, 8); // elimina anno,prog. lettera-cliente , modello e bis
  // c = tag della dima
  c1 := CodiceDima;
  Delete(c1, 1, Pos(c1, '_'));

  Result := (Result) and (Length(alabel) < 13);
  // l'etichetta non può superare 12 caratteri

  Result := (Result) and (Trim(c1) = Trim(c));
  // il nuomero di tag deve coincidere

  y := anno.ToInteger; // il numero anno e settimana devono coincidere
  s := settimana.ToInteger;
  Result := (Result) and (Ord(alabel[1]) - 32 = (y mod 100));
  // confronta l'anno
  Result := (Result) and (s = Ord(alabel[2]) - 32); // confronta la settimana

end;

function InvertDate(aDate: TDate): string;
var
  y, m, d: Word;
begin
  DecodeDate(aDate, y, m, d);
  Result := Format('%d-%2.2d-%2.2d', [y, m, d]);

end;

procedure TMainForm.actImpostazioniExecute(Sender: TObject);
begin
  with frmImpostazioni do
  begin
    ShowModal;
    if DataSchedeLavChanged then
      ApriSchedeLav;

  end;
end;

procedure TMainForm.actFastLoadPantografoExecute(Sender: TObject);
var
  r: Ischema;
  // f: TFileName;
  t: Itask;

begin
  // inserimento veloce schemi pantografo
  with dlgOpen1 do
  begin
    Options := Options + [ofAllowMultiSelect];

    if execute() then
    begin
      t := Ttask.Create(
        procedure
        var
          f: TFileName;
          msg: string;
          IsThereErrors: Boolean;
        begin
          TThread.Synchronize(TThread.Current,
            procedure
            begin

              cxGrid1DBTableView1.BeginUpdate()  ;
               ActivityIndicator1.Animate := true;
            end);

          try
            msg := 'Ci sono errori su i seguenti schemi : ';
            IsThereErrors := False;
            for f in files do
            begin

              try
                r := TSchemaPantografo.Create(f,
                  vartostr(cmbLavorazione.KeyValue), cmbMacchina.KeyValue);
                dm.RegistraSchema(r);
              except
                on E: Exception do
                begin
                  IsThereErrors := true;
                  msg := msg + #13#10 + E.Message;
                  TThread.Synchronize(TThread.Current,
                    procedure
                    begin

                      ActivityIndicator1.Update
                    end);
                  Continue

                end;
              end;

            end;
            TThread.Synchronize(TThread.Current,
              procedure
              begin
                cxGrid1DBTableView1.EndUpdate;

                if not IsThereErrors then
                  showmessage('Operazione effettuata con successo')
                else
                  showmessage(msg);

              end);

          finally
            TThread.Synchronize(TThread.Current,
              procedure
              begin
                ActivityIndicator1.Animate := False;
                grSchedeDBTableView1.EndUpdate();
                dm.qryRigheScheda.Refresh;

              end);
          end;

        end);

      t.Start;

    end;
  end;

end;

procedure TMainForm.actLoadSquadraExecute(Sender: TObject);
  function GetModelli(anArray: array of string): string;
  var
    i: integer;
  begin
    Result := '';
    for i := 0 to High(anArray) - 2 do
      Result := anArray[i] + '_' + Result;

    Result := Copy(Result, 1, Length(Result) - 1);

  end;

var
  t: TextFile;
  l: string;
  a: TArray<string>;
  f: TFileName;
begin

  // carica file squadratrice
  with dlgOpen1, dm do
  begin
    Options := Options + [TOpenOption.ofAllowMultiSelect];
    if not execute then
      Abort;
    grDatiGrid1DBTableView2.BeginUpdate;
    try
      for f in files do
      begin
        // crea testata schema
        connFal_Fusti.StartTransaction;

        try
          a := ExtractFileName(f).Split(['_']);

          cmdCreateSchema.ParamByName('p_Nome').AsString := ExtractFileName(f);
          cmdCreateSchema.ParamByName('p_Hash').AsString :=
            DateToStr(TFile.GetCreationTime(f));
          cmdCreateSchema.ParamByName('p_NSchema').AsInteger := 1;
          cmdCreateSchema.ParamByName('p_IdMacchina').AsInteger := 17;

          // idmacchina squadratrice
          cmdCreateSchema.ParamByName('p_Materiale').AsString := a[High(a) - 1];
          // estrae il materiale in coda al nome del file
          cmdCreateSchema.ParamByName('p_Dim_Z_Pannello').AsInteger :=
            Trunc(a[High(a)].ToDouble);
          // estrae il materiale in coda al nome del file
          cmdCreateSchema.ParamByName('P_NTeste').AsInteger := 1;
          cmdCreateSchema.ParamByName('p_Num_Pannelli').AsInteger := 1;
          cmdCreateSchema.ParamByName('p_Codice_Lavorazione').AsString := '02';
          cmdCreateSchema.ParamByName('p_Modelli').AsString := GetModelli(a);
          cmdCreateSchema.execute;
          // ottiene l'idschema
          qryGetIdSchema.Close;
          qryGetIdSchema.ParamByName('p_Nome').AsString := ExtractFileName(f);
          qryGetIdSchema.ParamByName('p_hash').AsString :=
            DateToStr(TFile.GetCreationTime(f));
          qryGetIdSchema.ParamByName('P_NSchema').AsInteger := 1;
          qryGetIdSchema.ParamByName('P_IdMacchina').AsInteger := 17;

          qryGetIdSchema.Open;

          // crea dettaglio schema
          AssignFile(t, f);
          Reset(t);

          try
            while not Eof(t) do
            begin
              readln(t, l);
              a := l.Split([#9]);

              cmdInsDetailSchema.ParamByName('p_idSchema').AsInteger :=
                qryGetIdSchema.Fields[0].AsInteger;
              cmdInsDetailSchema.ParamByName('p_Label_Parte').AsString := a[0];

              cmdInsDetailSchema.ParamByName('p_Qta').AsInteger :=
                a[1].ToInteger();
              cmdInsDetailSchema.execute

            end;
            // inserimento in scheda
            qryNextRiga.Close;
            qryNextRiga.ParamByName('P_IDSCHEDA').Value :=
              tblSchedeLavIdScheda.Value;
            qryNextRiga.Open;

            cmdInsertSchema.ParamByName('P_IdScheda').Value :=
              tblSchedeLavIdScheda.Value;
            cmdInsertSchema.ParamByName('P_Riga').AsInteger :=
              qryNextRiga.Fields[0].Value;
            cmdInsertSchema.ParamByName('P_idSchema').AsInteger :=
              qryGetIdSchema.Fields[0].AsInteger;
            cmdInsertSchema.ParamByName('P_Qta').AsInteger := 1;
            cmdInsertSchema.execute;

            connFal_Fusti.Commit;

          finally
            CloseFile(t);

            dm.tblRigheScheda.Open;
            // DM.tblRigheScheda.Refresh;

          end;

        except
          on E: Exception do
            connFal_Fusti.Rollback
        end;
      end;

    finally
      grDatiGrid1DBTableView2.EndUpdate;
      qryRigheScheda.Refresh
    end;
  end;
end;

procedure TMainForm.actCaricaPantReportExecute(Sender: TObject);
// var
// r: TAlphacamReport;
// i, j, QtotSchema, QParte: integer;
// s: string;
// p: integer; // pacco materiale per macchina
// c: integer; // cicli
// // v: TFieldNotifyEvent;
// a: TArray<String>;

begin
  // Lettura del file di report di uno schema
  // Memorizzazione nella tabella schemi e dettaglio schema
  // Inserimento dell'idschema nella riga della scheda di lavorazione

  // with dlgOpen1 do
  // begin
  // Options := Options + [ofAllowMultiSelect];
  //
  // if execute() then
  // begin
  // // v := DM.tblRigheSchedaQta.OnValidate;
  // // DM.tblRigheSchedaQta.OnValidate := nil;
  // dm.tblRigheScheda.DisableControls;
  // try
  //
  // for s in files do
  // begin
  //
  // r := TAlphacamReport.Create(s);
  // try
  // // inserimento nel database dello schema
  // // aggiunta di una riga nella scheda con inserimento dell'idschema appena
  // with dm do
  // begin
  // qryFindLabel.Active := False;
  //
  // if cmbMacchina.KeyValue = 6 then
  // p := frmImpostazioni.ListaPacchiR500.Values
  // [r.GetMaterialeCompleto].ToInteger();
  // if cmbMacchina.KeyValue = 7 then
  // p := frmImpostazioni.ListaPacchiSCM.Values
  // [r.GetMaterialeCompleto].ToInteger();
  // if cmbMacchina.KeyValue = 8 then
  // p := frmImpostazioni.ListaPacchiGreda.Values
  // [r.GetMaterialeCompleto].ToInteger();
  //
  // tblSchemi.Append;
  // tblSchemiNome.Value := Copy(r.Nome, 1, Length(r.Nome) - 1);
  // tblSchemiModelli.Value := r.GetModelli(dm.lstClients);
  // tblSchemiNettoMQ.Value := r.GetTotMqNetto;
  // tblSchemiHash.Value := r.GetHashData;
  // tblSchemiNSchema.Value := 1;
  // tblSchemiMateriale.Value := r.Materiale;
  // tblSchemiDim_X_Pannello.Value := r.Plx;
  // tblSchemiDim_Y_Pannello.Value := r.Ply;
  // tblSchemiDim_Z_Pannello.Value := r.Spessore.ToInteger;
  // tblSchemiNum_Pannelli.Value := r.Pannelli;
  // tblSchemiIdMacchina.Value := cmbMacchina.KeyValue;
  // tblSchemiCodice_Lavorazione.Value := cmbLavorazione.KeyValue;
  // tblSchemiSfrido.Value := r.SfridoP;
  // tblSchemiPathFresa.Value := r.FresaPath.ToDouble;
  // tblSchemiTempoTaglio.Value := r.Durata.ToDouble();
  // tblSchemiNTeste.Value := r.Teste;
  //
  // tblSchemiPacco.Value := p;
  // //
  // // try
  // try
  // tblSchemi.Post;
  // except
  // tblSchemi.Cancel;
  // raise Exception.Create('Duplicate entry');
  //
  // end;
  //
  // for i := 0 to r.ReportGeos.Count - 1 do
  // begin
  //
  // // test production label : una funzione che testi la
  // // congruenza col numnero di programma. L'etichetta
  // // non deve essere vuota e essere congruente col numero di programma
  //
  // a := r.ReportGeos[i].OrderedLabel.Split([#9]);
  //
  // if Length(a) mod 2 = 0 then
  // begin
  // j := 0;
  //
  // QtotSchema := r.GetQtaGeo(i);
  // while (j < High(a)) and (QtotSchema > 0) do
  // begin
  // QParte := a[j + 1].ToInteger;
  // if QParte <= QtotSchema then
  // begin
  //
  // tblDetailSchema.Append;
  //
  // tblDetailSchemaLabel_Parte.Value := a[j];
  // tblDetailSchemaQta.Value := QParte;
  // tblDetailSchema.Post;
  // QtotSchema := QtotSchema - QParte;
  // end
  // else
  // begin
  // tblDetailSchema.Append;
  //
  // tblDetailSchemaLabel_Parte.Value := a[j];
  // tblDetailSchemaQta.Value := QtotSchema;
  // tblDetailSchema.Post;
  // QtotSchema := 0;
  //
  // end;
  //
  // Inc(j, 2);
  // end;
  //
  // end
  // else
  //
  // begin // se non c'è la ripartizione su + etichette: assegna tutto all'unica etichetta presente
  //
  // if (r.ReportGeos[i].PLabel <> '') and
  // (TestLabelCongruenza(r.anno, r.Programma,
  // r.ReportGeos[i].PLabel, r.ReportGeos[i].Codice)) then
  // begin
  // tblDetailSchema.Append;
  //
  // tblDetailSchemaLabel_Parte.Value := r.ReportGeos[i].PLabel;
  // tblDetailSchemaQta.Value := r.ReportGeos[i].Qta * r.Pannelli
  // * r.Teste;
  // tblDetailSchema.Post
  // end
  // else // qui ci sono problemi sull'etichetta (es. vuota o la sua composizione non è corretta )
  // // cerca di recuperare l'etichetta dal database basandosi sull'anno e programma
  // // dello schema
  // begin
  // // recuperare le etichette da database
  // if not qryFindLabel.Active then
  // begin
  // qryFindLabel.Params[0].Value := r.anno;
  // qryFindLabel.Params[1].Value := r.Programma.ToInteger;
  // qryFindLabel.Active := true;
  //
  // end;
  //
  // tblDetailSchema.Append;
  //
  // tblDetailSchemaLabel_Parte.AsVariant :=
  // qryFindLabel.Lookup('codice', r.ReportGeos[i].Codice,
  //
  // 'Label');
  //
  // r.ReportGeos[i].PLabel := '';
  // if tblDetailSchemaLabel_Parte.IsNull then
  // tblDetailSchemaLabel_Parte.AsVariant :=
  // 'NA_' + r.ReportGeos[i].Codice
  //
  // else
  // r.ReportGeos[i].PLabel :=
  // tblDetailSchemaLabel_Parte.Value;
  //
  // tblDetailSchemaQta.Value := r.ReportGeos[i].Qta * r.Pannelli
  // * r.Teste;
  // tblDetailSchema.Post
  //
  // end;
  //
  // // ;
  //
  // end;
  // // se sono state rietichettate le geometrie
  // end;
  // if qryFindLabel.Active then
  // begin
  // tblSchemi.Edit;
  // tblSchemiModelli.Value := r.GetModelli(dm.lstClients);
  // tblSchemi.Post;
  //
  // end;
  //
  // AddSchema(tblSchedeLavIdScheda.Value, tblSchemiidSchema.Value,
  // tblSchemiNum_Pannelli.Value);
  //
  // end;
  //
  // finally
  // r.Free;
  //
  // end;
  // end;
  // finally
  // dm.tblRigheScheda.EnableControls;
  // dm.tblSchedeLav.Refresh;
  // // DM.tblRigheSchedaQta.OnValidate := v;
  // dm.AggiornaDettaglio;
  // end;
  //
  // end;
  //
  // end;
end;

procedure TMainForm.actCaricaPantReportUpdate(Sender: TObject);
begin
  with (Sender as TAction) do

    case tag of
      1:
        Enabled := dm.tblSchedeLavCodiceLavorazione.Value = '01';

      2:
        Enabled := dm.tblSchedeLavCodiceLavorazione.Value = '02';

      3:
        Enabled := dm.tblSchedeLavCodiceLavorazione.Value = '03';

    end;
end;

procedure TMainForm.actChangeLxTavoleExecute(Sender: TObject);
var
  i: integer;
  RecIdx: integer;
  ColIdx: integer;
  s: string;
  Plx: integer;

  OutputVal: Variant;
begin

  if not InputQuery('Cambio luncghezza tavola',
    'Inserisci la lunghezza della tavola', s) then
    Exit;
  Plx := s.ToInteger();

  with cxGrid1DBTableView1 do
  begin

    for i := 0 to Controller.SelectedRecordCount - 1 do
    begin

      RecIdx := Controller.SelectedRecords[i].RecordIndex;
      // Gets the column index of the Description field
      ColIdx := DataController.GetItemByFieldName('IdSchema').Index;
      // Obtains the value of the required field
      OutputVal := DataController.Values[RecIdx, ColIdx];
      // Test output
      VarCast(OutputVal, OutputVal, varString);

      s := s + ',' + OutputVal;
    end;
    System.Delete(s, 1, 1);
    // elimina virgola di testa

    s := 'WHERE idSchema in (' + s + ')';

    dm.qrySetLxTavole.Macros[0].Value := s;
    dm.qrySetLxTavole.Params[0].Value := Plx;
    dm.qrySetLxTavole.execute;

    dm.tblSchemi.Refresh;
    dm.tblRigheScheda.Refresh;
  end;
end;

procedure TMainForm.actChangeLxTavoleUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := dm.tblSchedeLavidMacchina.Value = 14;
end;

procedure TMainForm.actFermiMacchinaExecute(Sender: TObject);
begin
  frmFermiMacchina.ShowModal
end;

procedure TMainForm.Action1Execute(Sender: TObject);
var
  MatQta: Double;
begin
  // todo :
  // ottenere i codici della materia prima dalla query (qryGetMatGoByIdScheda)
  // creare una lista :  TMateriePrime = Tlist<IDDTItem>;
  // dove ogni elemento viene creato dalla classe :
  // TMat_Prima ( Create(aCode, adescr: string; aQta: double; aIdMacchina: Integer;
  // aDataScheda: Tdate); )
  // chiamare la procedura REGISTRADDT(TDDT_SCPR.Create(aListMat: TMateriePrime);
  // del modulo (UgestGOContainer)

  with dm.qryGetMatGoByIdScheda, dm do
  begin
    Close;
    ParamByName('P_IDScheda').Value := tblSchedeLavIdScheda.Value;
    Open;
    var
    aMatList := TMateriePrime.Create;
    while not Eof do
    begin

      MatQta := FieldByName('TMQ').AsFloat;

      if (FieldByName('Materiale').AsString = 'abete') or
        (FieldByName('Materiale').AsString = 'faggio')

      then

        MatQta := FieldByName('TMC').AsFloat;

      aMatList.Add(TMat_Prima.Create(FieldByName('CodiceMatGO').AsString,
        FieldByName('Descrizione').AsString, MatQta,
        tblSchedeLavidMacchina.AsInteger, tblSchedeLavData.AsDateTime

        ));

      next
    end;

    with GestGoContainer do
      RegistraDDT(TDDT_SCPR.Create(aMatList));

  end;

end;

procedure TMainForm.actScaricaMatPrimaExecute(Sender: TObject);
var
  MatQta: Double;
begin
  // todo :
  // ottenere i codici della materia prima dalla query (qryGetMatGoByIdScheda)
  // creare una lista :  TMateriePrime = Tlist<IDDTItem>;
  // dove ogni elemento viene creato dalla classe :
  // TMat_Prima ( Create(aCode, adescr: string; aQta: double; aIdMacchina: Integer;
  // aDataScheda: Tdate); )
  // chiamare la procedura REGISTRADDT(TDDT_SCPR.Create(aListMat: TMateriePrime);
  // del modulo (UgestGOContainer)

  with TTaskDialog.Create(nil) do
    try
      MainIcon := tdiWarning;
      Title := 'Materiale magazzino gestionale';
      Text := 'Procedere con lo scarico ?';

      CommonButtons := [];

      with TTaskDialogButtonItem(Buttons.Add) do
      begin
        Caption := 'No';
        ModalResult := mrNo;
      end;

      with TTaskDialogButtonItem(Buttons.Add) do
      begin
        Caption := 'Sì';
        ModalResult := mrYes;
      end;

      execute;

      if ModalResult = mrNo then
        Exit;

    finally
      Free
    end;

  with dm.qryGetMatGoByIdScheda, dm do
  begin
    Close;
    ParamByName('P_IDScheda').Value := tblSchedeLavIdScheda.Value;
    Open;
    var
    aMatList := TMateriePrime.Create;
    try
      while not Eof do
      begin

        MatQta := FieldByName('TMQ').AsFloat;

        if (FieldByName('Materiale').AsString = 'abete') or
          (FieldByName('Materiale').AsString = 'faggio')

        then

          MatQta := FieldByName('TMC').AsFloat;

        aMatList.Add(TMat_Prima.Create(FieldByName('CodiceMatGO').AsString,
          FieldByName('Descrizione').AsString, MatQta,
          tblSchedeLavidMacchina.AsInteger, tblSchedeLavData.AsDateTime

          ));

        next
      end;

      if aMatList.Count > 0 then
      with GestGoContainer do
        RegistraDDT(TDDT_SCPR.Create(aMatList));

      // prima di liberare tutto il dettaglio (dati materie prime)
      // posso regitrare le coordinate doc di go (riga e progressivo)
      // di ritorno  nelle righe della scheda
      for var i in aMatList do
        with dm.cmdSetGOCoordinate do
        begin
          var
          a := i.GetCoordinateGestionale;
          ParamByName('P_RIGA_GO').Value := a[1]; // riga go
          ParamByName('P_progressivo_GO').Value := a[0]; // progressivo GO
          ParamByName('P_IDScheda').Value := tblSchedeLavIdScheda.Value;
          ParamByName('P_CodiceMAtGO').Value := i.CodiceArticolo;
          // codice materiale go
          Execute

        end;

      with TTaskDialog.Create(nil) do
      begin
        try
          Caption := 'Schede lavorazione 2026';
          MainIcon := tdiInformation;
          Title := 'Gestione materiale magazzino';
          Text := format('Operazione eseguita correttamente : %d articoli scaricati',[aMatList.Count]);
          CommonButtons := [tcbOk];
          execute

        finally
          Free
        end;
      end;

    finally
      aMatList.Free
    end;

  end;

end;
// procedure TMainForm.actReadTotalsExecute(Sender: TObject);
//
// var
// b: TBookmark;
// nc: string; // nome commessa
// totals: PTotaliNewCursal;
// ok: Boolean;
// Plx: string;
// FoundErrors: Boolean;
// begin
// // DONE:
// // per ogni schema della scheda corrente
// // prende il nome e cerca nella cartella totali e carica i dati
//
// with DM do
// begin
// b := tblRigheScheda.GetBookmark;
// tblRigheScheda.DisableControls;
// try
// tblRigheScheda.First;
// FoundErrors := False;
// frmNotifications.Memo1.Lines.Clear;
// while not tblRigheScheda.Eof do
// begin
//
// nc := tblRigheSchedaNomeSchema.Value;
//
// ok := False;
//
// if tblRigheSchedaPanelXdim.Value < 0 then
// begin
//
// if TipoTroncatrice(tblSchedeLavidMacchina.AsInteger) = ttTRV2200 then
//
// ok := GetNumTavAndTotMeters(InvertDate(cxDBDateEdit2.Date), nc,
// totals); // (  nc, totals);
//
// if TipoTroncatrice(tblSchedeLavidMacchina.AsInteger) = ttTRSI7500E
// then
// ok := GetTRSI7500Totals(nc, totals)
//
// end;
//
// if ok then
// begin
//
// try
// if tblSchemi.Locate('idSchema', tblRigheSchedaidSchema.Value, [])
// then
// begin
//
// // Plx := Trunc((totals.Totale_Tavole_Mt / totals.Totale_Tavole) *
// // 1000).toString;
//
// tblSchemi.Edit;
// tblSchemiNSchema.Value := 1;
// tblSchemiHash.Value := totals.Data;
//
// // tblSchemiDim_X_Pannello.Value := Plx.ToInteger;
//
// tblSchemiDim_X_Pannello.Value := 4000;
// // tblSchemiDim_X_Pannello.Value  * -1;
// tblSchemiNum_Pannelli.Value := Trunc(totals.Totale_Tavole);
//
// tblSchemiSfrido.Value := totals.Scarto_ott_perc +
// totals.Scarto_ott_perc;
// tblSchemiPathFresa.Value := totals.Totale_tagli;
// tblSchemi.Post;
//
// tblRigheScheda.Edit;
// tblRigheSchedaQta.Value := Trunc(totals.Totale_Tavole);
// tblRigheScheda.Post;
//
// end;
//
// finally
// Dispose(PTotaliNewCursal(totals));
// end;
//
// end;
//
// tblRigheScheda.Next;
//
// end;
//
// finally
// tblRigheScheda.GotoBookmark(b);
// tblRigheScheda.EnableControls;
//
// end;
//
// end;
//
// end;

procedure TMainForm.actReadTotalsUpdate(Sender: TObject);
begin
  with (Sender as TAction) do
  begin
    Enabled := (cmbMacchina.KeyValue = ttTRV2200) or
      (cmbMacchina.KeyValue = ttTRSI7500E);
  end;
end;

procedure TMainForm.actSelectPartsExecute(Sender: TObject);

// presentare la form con le parti selezionate in base al tipo di lavorazione
var

  s: string;
begin

  s := vartostr(cmbLavorazione.KeyValue) + cmbLavorazione.Text;

  // ShowMessage(s);

  dm.qrySelectParts.Macros[0].Value := QuotedStr('%' + s + '%');

  frmSelectParts.fCodlav := cmbLavorazione.KeyValue;
  frmSelectParts.FIdMacchina := cmbMacchina.KeyValue;
  frmSelectParts.ShowModal;
end;

procedure TMainForm.actSezionatriceExecute(Sender: TObject);

begin
  // caricare report (commessa) sezionatrice

  // DM.DisattivaValidateOnQta;
  // DM.DisattivaGrigliaRigheScheda;
  // try
  with dlgOpen1 do
  begin
    if execute() then
    begin

      CaricaCommessaOttimo(filename);
    end;
  end;
  // finally
  // DM.AttivaGrigliaRigheScheda;
  // DM.AttivaValidateOnQta;
  dm.AggiornaDettaglio;
  // end;

end;

procedure TMainForm.actTroncatriceExecute(Sender: TObject);

var
  // s: string;
  // i, j: integer;
  // dirs, fs: TArray<string>;
  // r: TSchemaTRV;
  // ls: TSchemiTRV;
  t: Itask;
begin
  // t := Ttask.Create(
  // procedure begin
  // macchine trv2200 and trsi7500

  if integer(cmbMacchina.KeyValue) in [14, 15] then
  begin

    if not fod1.execute then
      Exit;
    t := Ttask.Create(

      procedure
      var
        s: string;
        i, j: integer;
        dirs, fs: TArray<string>;
        r: TSchemaTRV;
        ls: TSchemiTRV;

        // mmo1.Lines.Assign(fod1.Files);
      begin

        // crea la lista che conterrà gli schemi di tipo troncatrice
        ls := TSchemiTRV.Create(False);
        try
          TThread.Synchronize(TThread.Current,
            procedure
            begin

              cxGrid1DBTableView1.BeginUpdate()
            end);
          ActivityIndicator1.Animate := true;
          // ...per ogni directory principale
          for s in fod1.files do
          begin
            dirs := TDirectory.GetDirectories(s);
            // ottiene le  sottodirectory eg. N1_NATUZZ...
            for i := Low(dirs) to High(dirs) do // cicla nelle sottocartelle
            begin

              // ottiene i files della sottocartella
              fs := TDirectory.GetFiles(dirs[i]);



              // e cicla tra i files per estrarre quelli utili per ottenere la lista parti

              for j := Low(fs) to High(fs) do
              begin
                // il .csv = TRSI7500 and .txt = la lista parti della trv2200
                r := nil;
                if (ExtractFileExt(fs[j]) = '.csv') then
                begin
                  // passa come nome il l'ultima sottocartella
                  r := TSchemaTRV.Create(ExtractInnerFolder(dirs[i]));
                  try
                    // se non ci sono parti allora lo elimino
                    if r.LoadPartsFromFile(fs[j]) = 0 then
                    begin
                      r.Free;
                      r := nil
                    end;
                  except
                    on E: Exception do
                    begin
                      r.Free;
                      r := nil;
                    end;

                  end;

                end;

                if (ExtractFileExt(fs[j]) = '.txt') then
                // trv2200 lista parti
                begin
                  r := TSchemaTRV.Create(ExtractInnerFolder(dirs[i]));
                  try
                    if r.LoadPartsFromFile(fs[j]) = 0 then
                    begin
                      r.Free;
                      r := nil
                    end;
                  except
                    on E: Exception do
                    begin
                      r.Free;
                      r := nil;
                    end;

                  end;
                end;
                if Assigned(r) then
                  if (cmbMacchina.KeyValue = r.TipoTroncatrice) then
                    ls.Add(r) // aggiunge alla lista degli schemi da registrare
                  else
                    r.Free;
              end;

            end;

          end;

          dm.RegistraSchemiTroncatrice(ls);

        finally
          ls.Free;
          TThread.Synchronize(TThread.Current,
            procedure
            begin
              cxGrid1DBTableView1.EndUpdate();
              dm.AggiornaDettaglio;
              ActivityIndicator1.Animate := False
            end)

        end

      end
    // end
    // end
      );
    t.Start
  end
  // end

  else // idMacchina = 10 oldest tronc
  begin
    with dlgOpen1 do
    begin

      if execute() then
      begin

        t := Ttask.Create(

          procedure
          var
            f: TFileName;
          begin
            TThread.Synchronize(TThread.Current,
              procedure
              begin

                cxGrid1DBTableView1.BeginUpdate();
                ActivityIndicator1.Animate := true
              end);

            for f in files do
              CaricaCommessaOttimo(f);

            TThread.Synchronize(TThread.Current,
              procedure
              begin
                cxGrid1DBTableView1.EndUpdate();
                dm.AggiornaDettaglio;
                ActivityIndicator1.Animate := False
              end)
          end);
        t.Start

      end

    end;
  end;
end;

procedure TMainForm.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin

  showmessage(E.Message);
end;

procedure TMainForm.ApriSchedeLav;
var
  y, m, d: Word;
begin
  with dm, frmImpostazioni do
  begin
    tblSchedeLav.Close;

    DecodeDate(cxDateEdit1.Date, y, m, d);
    try
      tblSchedeLav.FilterSQL := Format('data >= ''%d-%d-%d''', [y, m, d]);
    except
      on E: Exception do
      begin
        DecodeDate(now, y, m, d);
        tblSchedeLav.FilterSQL := Format('data >= ''%d-%d-%d''', [y, m, d]);

      end;

    end;
    tblSchedeLav.Open

  end

end;

procedure TMainForm.CaricaCommessaOttimo(f: string);
var
  o: TCommessaOttimo;
  s: TSchemaTaglio;
  i, j: integer;
  prg_models: string;
  p: integer;

begin
  // caricare report (commessa) troncatrice

  o := TCommessaOttimo.Create(f);

  try
    prg_models := o.GetModelli(dm.lstClients);
    for i := 0 to o.Num_Schemi - 1 do
    begin
      s := o.Schemi[i];
      with dm do
      begin

        p := 1;
        if o.Tipo = tpSezionatrice then
          p := frmImpostazioni.ListaPacchiGabbiani.Values
            [o.GetMaterialeCompleto].ToInteger();



        if o.Tipo = tpTroncatrice then
          p := (Trunc(frmImpostazioni.edMaxWidthCursal.Value / s.Pannello_Dim_Y)
            * Trunc(frmImpostazioni.edMaxHeightCursal.Value /
            s.Pannello_Dim_Z));

        tblSchemi.Append;
        tblSchemiNome.AsString := o.NomeCommessa;
        tblSchemiModelli.AsString := prg_models;
        tblSchemiNettoMQ.Value := o.Schemi[i].MqNetto;
        tblSchemiHash.AsDateTime := o.DataCommessa;
        tblSchemiNSchema.Value := i + 1;
        tblSchemiMateriale.AsString := o.Materiale;
        tblSchemiDim_X_Pannello.Value := s.Pannello_Dim_X;
        tblSchemiDim_Y_Pannello.Value := s.Pannello_Dim_Y;
        tblSchemiDim_Z_Pannello.AsFloat := s.Pannello_Dim_Z;
        tblSchemiNum_Pannelli.Value := s.Num_pannelli;
        tblSchemiIdMacchina.Value := cmbMacchina.KeyValue;
        tblSchemiCodice_Lavorazione.AsString := cmbLavorazione.KeyValue;
        tblSchemiSfrido.Value := s.Sfrido;

        tblSchemiPacco.Value := p;

        tblSchemiPathFresa.Value := s.Num_Tagli;
        // try
        try
          tblSchemi.Post;
        except
          on E: Exception do
          begin
            tblSchemi.Cancel;

            // raise Exception.Create(E.Message);

          end;
        end;

        // except
        // on e: Exception do
        // tblSchemi.CancelUpdates;

        // end;

        for j := 0 to s.NPezzi - 1 do
        begin
          if o.Dime[s.Pezzi[j].iDima - 1].Codice <> '' then
          begin

            tblDetailSchema.Append;

            tblDetailSchemaLabel_Parte.Value :=
              o.Dime[s.Pezzi[j].iDima - 1].Codice;
            tblDetailSchemaQta.Value := s.Pezzi[j].Qta * s.Num_pannelli;
            tblDetailSchema.Post
          end;

        end;

        // tblRigheScheda.Append;
        //
        // tblRigheSchedaidSchema.Value := tblSchemiidSchema.Value;
        // tblRigheSchedaQta.Value := tblSchemiNum_Pannelli.Value;
        //
        // tblRigheScheda.Post

        AddSchema(tblSchedeLavIdScheda.Value, tblSchemiidSchema.Value,
          tblSchemiNum_Pannelli.Value);

      end;
    end;

  finally
    o.Free
  end

  // end;
  // end;

end;

// procedure TMainForm.CaricaDatiNuovaCursal(aFolder: string;
// IdMacchina: Smallint);
// var
// p: TArray<string>;
// sl: TStringList;
// // lista delle etichette
// nc: string; // nome della commessa
// Plx, plz, Ply, mat, Qta: string;
// i: integer;
// // tt: Integer;
// totals: PTotaliNewCursal;
// aDir: string;
// v: TFieldNotifyEvent;
// TotalsFound: Boolean;
// models: string;
// TMC: Double;
// // totale Mc Netto dello schema
// FolderDate: TDateTime;
// Tlx: string;
// TotalsTRSI7500E: TTotaliTRSI7500E;
// begin
// // aFolder è la cartella Principale (il modello)
// // ...e bisogna ciclare nelle sottocartelle ( le varie misure
//
// v := DM.tblRigheSchedaQta.OnValidate;
// DM.tblRigheSchedaQta.OnValidate := nil;
// try
//
// for aDir in TDirectory.GetDirectories(aFolder) do
// begin
//
// FolderDate := GetFolderDate(aDir);
// p := aDir.Split(['\']);
/// /      if TipoTroncatrice(IdMacchina) = ttTRV2200 then
/// /      begin
/// /        nc := p[High(p)];
/// /        TotalsFound := GetNumTavAndTotMeters(nc, totals);
/// /      end;
/// /      if TipoTroncatrice(IdMacchina) = ttTRSI7500E then
/// /      begin
/// /
/// /        // se l'ultimo ramo non contiente la sottostring 'TRVBUC'
/// /        // vuol dire che non ci sono i totali e ...
/// /
/// /        TotalsFound := Pos('TRVBUC', p[0]) > 0;
/// /        if not TotalsFound then
/// /          nc := p[High(p)]
/// /        else
/// /        begin
/// /
/// /          nc := p[High(p) - 1];
/// /
/// /          // se non contiene la cartella dei totali allora nc := p[high(p)]
/// /          p := TDirectory.GetFiles(aDir, '*.csv');
/// /
/// /          TotalsTRSI7500E := TTotaliTRSI7500E.Create(p[0]);
/// /          // file csv dei totali
/// /          try
/// /
/// /            New(totals);
/// /            totals.COMMESSA := nc;
/// /            totals.Data := DateToStr(FolderDate);
/// /            totals.Totale_Tavole := TotalsTRSI7500E.Totale_Tavole;
/// /            totals.Totale_Tavole_Mt := TotalsTRSI7500E.Totale_Tavole_Mt;
/// /            totals.Totale_tagli := TotalsTRSI7500E.Totale_tagli;
/// /            totals.Scarto_ott_perc := TotalsTRSI7500E.Scarto_ottenuto_perc;
/// /
/// /          finally
/// /            TotalsTRSI7500E.Free
/// /          end;
/// /        end;
/// /      end;
//
//
//
//
// // raise Exception.Create
// // ('Non è stato possibile trovare il file dei totali');
//
//
// // totale metri diviso totale tavole per avere la lunghezza della tavola
//
// sl := TStringList.Create;
// try
// { DONE : modifica per la cursal TRSI 7500E :
// caricare il file commessa e modificare la funzione che ritorna i modelli.
// serve una funzione che ritorni il nome del file csv contenuto nella cartella
// passata per parametro. eg. GetFileCSV( aFolder : string) -> aCSVFile.
// sl.LoadFromFile(aCSVFile);
// }
//
// if TipoTroncatrice(IdMacchina) = ttTRV2200 then
// sl.LoadFromFile(aDir + '\Labels.txt');
//
// if TipoTroncatrice(IdMacchina) = ttTRSI7500E then
// begin
// if TotalsFound then
//
// p := TDirectory.GetFiles(aFolder, '*.csv')
//
// else
// p := TDirectory.GetFiles(aDir, '*.csv');
//
// sl.LoadFromFile(p[0]);
// sl.Delete(0); // elimina l'intestazione
// for i := 0 to sl.Count - 1 do
// // posiziona la label al primo posto nelle stringhe
// begin
// models := sl[i];
// p := sl[i].Split([';']);
//
// Delete(models, 1, Pos(';', models));
// sl[i] := p[6] + ';' + models;
// end;
// end;
//
// models := GetModelliFromListaEtichette(sl, DM.lstClients);
//
// // carica la lista delle etichette di produzione
// with DM do
// begin
//
// // Tlx := sl[sl.Count-1];    // lunghezza tavola ultima riga del file labels.txt
// TMC := 0;
// for i := 0 to sl.Count - 1 do // ciclo fino alla ultima riga
// // per ogni label(pezzo)
// begin
// { DONE : modifica per la cursal TRSI 7500E :
// splittare in base al carattere ';'
// e valorizzare le variabili successive in modo corretto }
//
// p := sl[i].Split([#9, ';']);
//
// if TipoTroncatrice(IdMacchina) = ttTRSI7500E then
// begin
// Plx := p[1];
// Ply := p[2];
// mat := p[5];
// plz := p[3];
// Qta := p[4];
// end;
// if TipoTroncatrice(IdMacchina) = ttTRV2200 then
// begin
// Plx := p[3];
// Ply := p[4];
// mat := p[5];
// plz := p[6];
// Qta := p[7];
//
// end;
// TMC := TMC + Qta.ToInteger *
// (Plx.ToDouble * 0.001 * Ply.ToDouble * 0.001 *
// plz.ToDouble * 0.001);
//
// if i = 0 then // registra la testata dello schema
// begin
//
// tblSchemi.Append;
// if TotalsFound then
// begin
// // Plx := Trunc((totals.Totale_Tavole_Mt / totals.Totale_Tavole) *
// // 1000).toString;
//
// // Plx := 4000; // è la lunghezza tavola di default
// // purtroppo nel file totali non c'è la lunghezza delle
// // tavole utiolizzate. E purtroppo questo
// // dato è importante per poter scaricare dal magazzino
// // i pannelli (tavole) utilizzati
// tblSchemiNome.Value := totals.COMMESSA;
// tblSchemiNSchema.Value := 1;
// tblSchemiHash.Value := totals.Data;
// tblSchemiPacco.Value := 1;
// tblSchemiMateriale.Value := mat;
// tblSchemiModelli.Value := models;
// tblSchemiNettoMQ.Value := TMC;
// tblSchemiDim_X_Pannello.Value := 4000;
// // tlx.ToInteger; // Plx.ToInteger;
// tblSchemiDim_Y_Pannello.Value := Ply.ToInteger;
// tblSchemiDim_Z_Pannello.AsFloat := plz.ToInteger;
// tblSchemiNum_Pannelli.Value :=
// Trunc(totals.Totale_Tavole_Mt / 4);
// // Trunc(totals.Totale_Tavole);
// tblSchemiIdMacchina.Value := cmbMacchina.KeyValue;
// tblSchemiCodice_Lavorazione.Value := cmbLavorazione.KeyValue;
// tblSchemiSfrido.Value := totals.Scarto_ott_perc +
// totals.Scarto_ott_perc;
// tblSchemiPathFresa.Value := totals.Totale_tagli;
// Dispose(totals);
//
// try
// tblSchemi.Post;
// except
// tblSchemi.Cancel;
// raise Exception.Create('Duplicate entry');
//
// end;
//
// end
// else
// begin
// tblSchemiNome.Value := nc;
// tblSchemiNSchema.Value := 1;
// tblSchemiHash.Value := DateTimeToStr(FolderDate);
// tblSchemiPacco.Value := 1;
// tblSchemiMateriale.Value := mat;
// tblSchemiModelli.Value := models;
// tblSchemiNettoMQ.Value := TMC;
// tblSchemiDim_X_Pannello.Value := -1; // -1 * tlx.ToInteger ;
// tblSchemiDim_Y_Pannello.Value := Ply.ToInteger;
// tblSchemiDim_Z_Pannello.AsFloat := plz.ToInteger;
// tblSchemiNum_Pannelli.Value := 1;
// tblSchemiIdMacchina.Value := cmbMacchina.KeyValue;
// tblSchemiCodice_Lavorazione.Value := cmbLavorazione.KeyValue;
// tblSchemiSfrido.Value := 0;
// tblSchemiPathFresa.Value := -1;
//
// try
// tblSchemi.Post;
// except
// begin
// tblSchemi.Cancel;
// raise Exception.Create('Duplicate entry');
// end;
// end;
//
//
//
//
//
//
// // ...mi dice che i totali non sono stati trovati
// // ...e quindi vanno caricati successivamente a turno chiuso
//
// end;
//
// end; // fine registrazione testata
//
// // registra dettaglio pezzi schema
// tblDetailSchema.Append;
//
// tblDetailSchemaLabel_Parte.Value := p[0];
// tblDetailSchemaQta.Value := Qta.ToInteger;
//
// try
// tblDetailSchema.Post
// except
// tblDetailSchema.Cancel;
//
// end;
//
// end;
//
// // registra la riga della scheda
// tblRigheScheda.Append;
//
// tblRigheSchedaidSchema.Value := tblSchemiidSchema.Value;
// tblRigheSchedaQta.Value := tblSchemiNum_Pannelli.Value;
//
// tblRigheScheda.Post
//
// end;
//
// finally
// sl.Free
// end;
//
// end;
// finally
// DM.tblRigheSchedaQta.OnValidate := v;
// end;
//
// end;

procedure TMainForm.cxGrid1DBTableView1CustomDrawColumnHeader
  (Sender: TcxGridTableView; ACanvas: TcxCanvas;
AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  // ACanvas.Brush.Color := clYellow;
  // ACanvas.FillRect(AViewInfo.Bounds);
  // ACanvas.Rectangle(AViewInfo.Bounds);
  // ACanvas.Font.Style := [fsBold];
  // ACanvas.TextOut(AViewInfo.Bounds.Left + 2, AViewInfo.Bounds.Top + 2,
  // AViewInfo.Text);
  //
  // ADone := True

  // var
  // ABorders: TcxBorders;
  // ASortMarkBounds: TRect;
  // begin
  // ACanvas.FillRect(AViewInfo.Bounds, clYellow);
  // if (AViewInfo.Index < Sender.VisibleItemCount - 1) and
  // (Sender.VisibleItemCount > 1) then
  // ABorders := [bLeft, bTop, bBottom]
  // else
  // ABorders := [bLeft, bTop, bRight, bBottom];
  // ACanvas.DrawComplexFrame(AViewInfo.Bounds, clBlack, clBlack, ABorders, 1);
  // ACanvas.Pen.Color := clBlack;
  // ACanvas.Font.Style := [fsBold];
  // ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextBounds, taCenter,
  // cxClasses.vaCenter, false, True);
  // if AViewInfo.Column.SortOrder <> soNone then
  // begin
  // ASortMarkBounds.Top := AViewInfo.Bounds.Top + 2;
  // ASortMarkBounds.Bottom := AViewInfo.Bounds.Bottom - 5;
  // ASortMarkBounds.Left :=
  // (AViewInfo.Bounds.Left + (AViewInfo.Bounds.Right - AViewInfo.Bounds.Left)
  // div 2) - 4;
  // ASortMarkBounds.Right :=
  // (AViewInfo.Bounds.Left + (AViewInfo.Bounds.Right - AViewInfo.Bounds.Left)
  // div 2) + 4;
  // AViewInfo.LookAndFeelPainter.DrawSortingMark(ACanvas, ASortMarkBounds,
  // AViewInfo.Column.SortOrder = soAscending);
  // end;
  // ADone := True;
  // // end;

end;


// end;

procedure TMainForm.dxAlertWindowManager1Click(Sender: TObject;
AAlertWindow: TdxAlertWindow);
begin
  frmNotifications.Show;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  p: string;
begin

  p := ExtractFilePath(Application.ExeName);

  cxGrid1DBTableView1.StoreToIniFile(p + '\layout_righe1.ini');
  grdGrid1DBTableView3.StoreToIniFile(p + '\layout_righe2.ini');
  grSchedeDBTableView1.StoreToIniFile(p + '\ViewLayoutSchede.ini', true,
    [gsoUseFilter]);
  dm.connFal_Fusti.Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  cxLocalizer1.filename := 'grid6_ita.ini';
  cxLocalizer1.Active := true;
  cxLocalizer1.Locale := 1040;
  // italiano
  PageControl1.ActivePage := tsGriglia;
  dm.OnSchedeScrolling := HandleDatasetScroll;

  with frxReportDettaglioParti do
  begin
    AddFunction
      ('Procedure GetAlphaGeoPreview(const APicViewName , aFileName : string )',
      'MyFunctions', 'Mostra l''anteprima della geometria ');
  end;

end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  if ((Key = Ord('g')) or (Key = Ord('G'))) and (Shift = [ssShift, ssCtrl]) then
    dlgGoParams.ShowModal

end;

procedure TMainForm.FormShow(Sender: TObject);

var
  p: string;
begin

  p := ExtractFilePath(Application.ExeName);

  if RzVersionInfo1.VersionInfoAvailable then
    Caption := 'Schede lavorazione ver.' + RzVersionInfo1.ProductVersion +
      ' -- Server : ' + dm.connFal_Fusti.Server + '  database :' +
      dm.connFal_Fusti.Database;

  ApriSchedeLav;

  cxGrid1DBTableView1.ReStoreFromIniFile(p + '\layout_righe1.ini');
  grdGrid1DBTableView3.ReStoreFromIniFile(p + '\layout_righe2.ini');
  grSchedeDBTableView1.ReStoreFromIniFile(p + '\ViewLayoutSchede.ini', true,
    true, [gsoUseFilter]);

end;

function TMainForm.frxReportDettaglioPartiUserFunction(const MethodName: string;
var Params: Variant): Variant;
begin
  if CompareText(MethodName, 'GetAlphaGeoPreview') = 0 then
    GetAlphaGeoPreview(Params[0], frmImpostazioni.edtPathModelli.Text + '\' +
      Params[1]);
end;

// function TMainForm.GetModelliFromListaEtichette(aLabelsList,
// aClientsList: TStringList): string;
// var
// d: TArray<string>;
// i: integer;
// E, m, m1, m2, m3, c, c1: string;
// cy, cp: Char;
//
// y, p: integer;
// sl: TStringList;
//
// begin
//
// sl := TStringList.Create;
// try
// aLabelsList.Sort;
// // ordina i base alla label (prima parte della stringa )
//
// i := 0;
// while i < aLabelsList.Count do
// begin
// d := aLabelsList[i].Split([#9]);
// E := d[0]; // etichetta
// if Length(E) > 8 then
// // deve essere una etichetta di produzione
// begin
//
// cy := E[1];
// cp := E[2];
// y := 2000 + (Ord(cy) - 32);
// p := Ord(cp) - 32;
// m := p.toString + '/' + y.toString;
//
// sl.Add(m); // aggiunge il programma
// repeat
//
// d := aLabelsList[i].Split([#9]);
// E := d[0]; // etichetta
// c := E[3]; // carattere che distingue il cliente
// m3 := aClientsList.Values[c];
// m3 := Copy(m3, 1, Pos(' ', m3) - 1);
// sl.Add(m3);
// // aggiunge il cliente
// repeat
//
// d := aLabelsList[i].Split([#9]);
// E := d[0]; // etichetta
//
// if E[8] <> '0' then // se c'è bis allora lo prendo
// m2 := Copy(E, 4, 4) + ' (b' + E[8] + ')'
// // 4 caratteri modello e 1 (bis)
// else
// m2 := Copy(E, 4, 4);
//
// if sl.IndexOf(m2) = -1 then
// sl.Add(m2);
// // aggiunta del modello
//
// Inc(i); // incremento indice nella lista
//
// if i < aLabelsList.Count then
// begin
// d := aLabelsList[i].Split([#9]);
//
// E := d[0]; // etichetta
// c1 := E[3];
//
// cy := E[1];
// cp := E[2];
// y := 2000 + (Ord(cy) - 32);
// p := Ord(cp) - 32;
// m1 := p.toString + '/' + y.toString;
// end;
//
// until (i = aLabelsList.Count) or (c <> c1) or (m <> m1);
//
// until (i = aLabelsList.Count) or (m <> m1);
// end
// else
// Inc(i);
//
// end;
// sl.Delimiter := ',';
// Result := sl.DelimitedText;
// finally
// sl.Free
// end;
//
// end;

// function TMainForm.GetNumTavAndTotMeters(const Data: string; const nc: string;
// var tt: PTotaliNewCursal): Boolean;
//
// var
// s: string;
// // l: string;
// // t: TextFile;
// r: string;
//
// // a: Tarray<string>;
//
// begin
//
// Result := False;
//
// r := frmImpostazioni.edtDirTotaliNewCursal.Text;
//
// for s in TDirectory.GetFiles(r, Data + '*.csv',
// TSearchOption.soTopDirectoryOnly) do
// begin
// tt := ReadTotalsNewCursal(s);
// Result := (CompareText(tt.COMMESSA, nc) = 0) and (tt.Totale_Tavole_Mt > 0)
// and (tt.Totale_Tavole > 0);
// if (Result) then
// begin
//
// Exit
//
// end;
// Dispose(tt); // libero la memoria
//
// end;
//
// end;

// function TMainForm.GetTRSI7500Totals(const nc: string;
// var tt: PTotaliNewCursal): Boolean;
// var
// p: TArray<String>;
// t: TTotaliTRSI7500E;
// r: string;
// begin
//
// // carica i totali della commesa
// r := frmImpostazioni.edtDirTotaliNewCursalTRSI7500E.Text + '\' + nc;
//
// try
// p := TDirectory.GetDirectories(r);
//
// except
// Result := False;
// Exit
//
// end;
// Result := Length(p) > 0;
// if not Result then
// begin
// Exit
// // raise Exception.Create('Directory dei totali non trovata');
// end;
// p := TDirectory.GetFiles(p[0], '*.csv');
//
// if Result then
// begin
// t := TTotaliTRSI7500E.Create(p[0]);
//
// try
// New(tt);
// tt.Data := t.Inizio_Barra;
// tt.Totale_Tavole := t.Totale_Tavole;
// tt.Totale_Tavole_Mt := t.Totale_Tavole_Mt;
// tt.Totale_tagli := t.Totale_tagli;
// tt.Scarto_ott_perc := t.Scarto_ottenuto_perc;
// finally
// t.Free
// end;
//
// end;
//
// end;

procedure TMainForm.HandleDatasetScroll(Sender: TObject);
begin
  // aggiorno i campi della griglia in base al tipo di macchina
  V1Click(Sender);

end;



// function TMainForm.GetNumTavAndTotMeters(const nc: string;
// var tt: PTotaliNewCursal): Boolean;
//
// var
// s: string;
// // l: string;
// // t: TextFile;
// r: string;
//
// // a: Tarray<string>;
//
// begin
//
// Result := False;
//
// // il percorso x la TRSi7500 é : percorso_impostazioni+'\'nomecommessa ( nc)
//
// r := frmImpostazioni.edtDirTotaliNewCursal.Text;
//
// for s in TDirectory.GetFiles(r, '*.csv', TSearchOption.soTopDirectoryOnly) do
// begin
//
// tt := ReadTotalsNewCursal(s);
//
// // questo confronto vale solo per la TRV2200
// Result := (CompareText(tt.COMMESSA, nc) = 0) and (tt.Totale_Tavole_Mt > 0)
// and (tt.Totale_Tavole > 0);
// if (Result) then
// begin
//
// Exit
//
// end;
// Dispose(tt); // libero la memoria
//
// end;
//
// end;

procedure TMainForm.roncatrice1Click(Sender: TObject);
begin
  // caricare la commessa "ottimo" della vecchia troncatrice elaborata

end;

procedure TMainForm.Scheminoncompletati1Click(Sender: TObject);
var
  r: integer;
  b: TBookmark;
  // v: TFieldNotifyEvent;

begin
  with dm, frmSchemiIncompleti do
  begin
    r := ShowModal;

    if r = mrCancel then
      Exit;

    dm.tblRigheSchedaQta.OnValidate := nil;
    with grSchemiIncompleti do
    begin

      cxGrid1DBTableView1.BeginUpdate();
      try
        for r := 0 to SelectedRows.Count - 1 do
        begin
          b := SelectedRows[r];
          qryShowSchemiIncompleti.GotoBookmark(b);

          AddSchema(tblSchedeLavIdScheda.Value,
            qryShowSchemiIncompleti.FieldByName('IdSchema').Value,
            qryShowSchemiIncompleti.FieldByName('RemainQta').Value);

        end;
        qryRigheScheda.Refresh

      finally
        cxGrid1DBTableView1.EndUpdate;
      end;
    end;

  end;
end;

procedure TMainForm.Sezionatrice1Click(Sender: TObject);
begin
  // Caricare la commessa della sezionatrice
end;

procedure TMainForm.Stampa1Click(Sender: TObject);
begin
  if cmbMacchina.KeyValue = 17 then
    frxReport2.ShowReport();

  if (cmbMacchina.KeyValue = 9) or (cmbMacchina.KeyValue = 10) or
    (cmbMacchina.KeyValue = 14) then
  begin
    frxReportTroncSezio.ShowReport();
    if (cmbMacchina.KeyValue = 9) then
      cxGrid1DBTableView1.ViewData.Collapse(true)

  end;
  if cmbLavorazione.KeyValue = '01' then
  begin

    frxReportPanto.ShowReport();

  end;

  // if (cmbLavorazione.KeyValue <> '01') and (cmbLavorazione.KeyValue <> '02') and
  // (cmbLavorazione.KeyValue <> '03') then
  // begin
  // frxReportDettaglioParti.ShowReport();
  //
  // end;
end;

procedure TMainForm.Stampacomeingriglia1Click(Sender: TObject);
begin
  // frxReport1.ShowReport();

  PrintGrid1.ReportTitle.TextAlignX := taLeft;
  PrintGrid1.ReportTitle.Text := 'Data : ' + cxDBDateEdit1.Text + ' Turno : ' +
    dbcmbTurno.Text + ' [' + cxDBMaskEdit1.Text + ' ' + cxDBMaskEdit2.Text + ']'
    + #10#13 +

    'Macchina : ' + cmbMacchina.Text + #10#13 + 'Operatore : ' +
    cmbOperatori.Text + #10#13;

  PrintGrid1.Preview()

end;

procedure TMainForm.tsSchedaShow(Sender: TObject);
begin
  // DM.tblRigheScheda.Open
  dm.qryRigheScheda.Open
end;

procedure TMainForm.UsrDataOrderAndFilterCheckEOF(Sender: TObject;
var Eof: Boolean);
begin
  Eof := r = cxGrid1DBTableView1.DataController.FilteredRecordCount;
end;

procedure TMainForm.UsrDataOrderAndFilterFirst(Sender: TObject);
begin
  r := 0;
end;

procedure TMainForm.UsrDataOrderAndFilterNewGetValue(Sender: TObject;
const VarName: string; var Value: Variant);
begin

  with cxGrid1DBTableView1.DataController do
  begin
    if CompareText(VarName, 'NomeSchema') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 3];

    if CompareText(VarName, 'Lx_Panel') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 6];

    if CompareText(VarName, 'Ly_Panel') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 7];

    if CompareText(VarName, 'Spessore') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 8];

    if CompareText(VarName, 'Materiale') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 4];

    if CompareText(VarName, 'NPanels') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 9];

    if CompareText(VarName, 'NTeste') = 0 then
      Value := DisplayTexts[FilteredRecordIndex[r], 16];

  end;

end;

procedure TMainForm.UsrDataOrderAndFilterNext(Sender: TObject);
begin
  Inc(r);
end;

procedure TMainForm.V1Click(Sender: TObject);
begin
  // CAMBIA VISTA SE SI TRATTA DELLA SQUADRATRICE
  cxGrid1Level1.Visible := not(dm.tblSchedeLavidMacchina.Value in [17]);

  grdGrid1Level3.Visible := not cxGrid1Level1.Visible;

  dm.qryMaxNumNotaSchedaLav.Close;
  dm.qryMaxNumNotaSchedaLav.Open;

end;

end.
