program SchedeLav_2025;

uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  EResourceStrings,
  EDebugJCL,
  EDebugExports,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  ExceptionLog7,
  {$ENDIF EurekaLog}
  Vcl.Forms,
  UMain in 'UMain.pas' {MainForm},
  UDM in 'UDM.pas' {DM: TDataModule},
  USchemiIncompleti in 'USchemiIncompleti.pas' {frmSchemiIncompleti},
  Ottimo in 'ClassiLegno\Ottimo.pas',
  UImpostazioni in 'UImpostazioni.pas' {frmImpostazioni},
  UNewCursalTypes in 'UNewCursalTypes.pas',
  UNotifications in 'UNotifications.pas' {frmNotifications},
  UfrmFermiMacchina in 'UfrmFermiMacchina.pas' {frmFermiMacchina},
  UalphacamReport in '..\NewNeoPiazzati - Senza anteprima\UalphacamReport.pas',
  UTRSITotali in '..\Test classi TRSI7500E\UTRSITotali.pas',
  USelectParts in 'USelectParts.pas' {frmSelectParts},
  AlphaCamPreviewUnit in 'AlphaCamPreviewUnit.pas',
  UTRVCursal in '..\Classi falegnameria Italiana\UTRVCursal.pas',
  USchedeLavTypes in 'USchedeLavTypes.pas',
  USchemaPantografo in 'USchemaPantografo.pas',
  Vcl.Themes,
  Vcl.Styles,
  UDMGO in 'UDMGO.pas' {DMGO: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.Title := 'Gestioine rapportini produzione';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMGO, DMGO);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmImpostazioni, frmImpostazioni);
  Application.CreateForm(TfrmSchemiIncompleti, frmSchemiIncompleti);
  Application.CreateForm(TfrmNotifications, frmNotifications);
  Application.CreateForm(TfrmFermiMacchina, frmFermiMacchina);
  Application.CreateForm(TfrmSelectParts, frmSelectParts);
  Application.Run;
end.

