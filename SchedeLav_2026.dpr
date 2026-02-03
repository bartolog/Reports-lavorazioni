program SchedeLav_2026;

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
  EBase,
  ExceptionLog7,
  {$ENDIF EurekaLog}
  Vcl.Forms,
  UMain in 'UMain.pas' {MainForm},
  UDM in 'UDM.pas' {DM: TDataModule},
  USchemiIncompleti in 'USchemiIncompleti.pas' {frmSchemiIncompleti},
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
  UDMGO in 'UDMGO.pas' {DMGO: TDataModule},
  UDDTInterface in '..\DDTPallets2\UDDTInterface.pas',
  UGestGoContainer in '..\DDTPallets2\UGestGoContainer.pas' {GestGoContainer: TDataModule},
  UGestionaleParams in '..\DDTPallets2\UGestionaleParams.pas' {dlgGoParams},
  UMagClasses in 'UMagClasses.pas',
  Ottimo in 'D:\Users\Bartolo\Documents\Embarcadero\Studio\Projects\Schede Lavorazione 2023\ClassiLegno\Ottimo.pas',
  UTilities in 'UTilities.pas';

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
  Application.CreateForm(TdlgGoParams, dlgGoParams);
  Application.CreateForm(TGestGoContainer, GestGoContainer);
  Application.Run;
end.


