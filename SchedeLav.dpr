program SchedeLav;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
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
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.Title := 'Gestioine rapportini produzione';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmSchemiIncompleti, frmSchemiIncompleti);
  Application.CreateForm(TfrmImpostazioni, frmImpostazioni);
  Application.CreateForm(TfrmNotifications, frmNotifications);
  Application.CreateForm(TfrmFermiMacchina, frmFermiMacchina);
  Application.CreateForm(TfrmSelectParts, frmSelectParts);
  Application.Run;
end.
