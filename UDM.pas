unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, DASQLMonitor,
  UniSQLMonitor, UniDacVcl,    MySQLUniProvider,    MemDS,
     UTRVCursal, USchedeLavTypes, UniProvider;

type

  TDM = class(TDataModule)
    tblSchedeLav: TUniTable;
    connFal_Fusti: TUniConnection;
    tblRigheScheda: TUniTable;
    srcRigheScheda: TUniDataSource;
    srcSchedeLav: TUniDataSource;
    tblSchedeLavIdScheda: TLongWordField;
    tblSchedeLavidOperaio: TLongWordField;
    tblSchedeLavData: TDateField;
    tblSchedeLavidMacchina: TLongWordField;
    tblSchedeLavCodiceLavorazione: TStringField;
    tblSchedeLavTurno: TStringField;
    tblSchedeLavStato: TStringField;
    tblOperatori: TUniTable;
    tblMacchine: TUniTable;
    tblLavorazioni: TUniTable;
    tblSchedeLavOperatore: TStringField;
    tblSchedeLavMacchina: TStringField;
    tblSchedeLavLavorazione: TStringField;
    tblSchedeLavOrario_Inizio: TStringField;
    tblSchedeLavOrario_fine: TStringField;
    tblRigheSchedaIdScheda: TLongWordField;
    tblRigheSchedaRiga: TLongWordField;
    tblRigheSchedaidSchema: TLongWordField;
    tblSchemi: TUniTable;
    tblDetailSchema: TUniTable;
    srcSchemi: TUniDataSource;
    srcDetailSchema: TUniDataSource;
    tblRigheSchedaNomeSchema: TStringField;
    tblRigheSchedaMateriale: TStringField;
    tblRigheSchedaPanelXdim: TSmallintField;
    tblRigheSchedaPanelYDim: TSmallintField;
    tblRigheSchedaSpessore: TSmallintField;
    tblSchemiidSchema: TLongWordField;
    tblSchemiNome: TStringField;
    tblSchemiHash: TStringField;
    tblSchemiNSchema: TByteField;
    tblSchemiMateriale: TStringField;
    tblSchemiDim_X_Pannello: TIntegerField;
    tblSchemiDim_Y_Pannello: TIntegerField;
    tblSchemiDim_Z_Pannello: TIntegerField;
    tblSchemiNum_Pannelli: TIntegerField;
    tblSchemiCodice_Lavorazione: TStringField;
    tblSchemiModelli: TMemoField;
    tblDetailSchemaidSchema: TLongWordField;
    tblDetailSchemaLabel_Parte: TStringField;
    qryShowSchemiIncompleti: TUniQuery;
    srcSchemiIncompleti: TUniDataSource;
    srcMacchine: TUniDataSource;
    tblSchemiIdMacchina: TLongWordField;
    tblSchemiSfrido: TFloatField;
    tblSchemiPathFresa: TFloatField;
    tblDetailSchemaQta: TLongWordField;
    tblRigheSchedaQta: TIntegerField;
    MyConnectDialog1: TUniConnectDialog;
    tblSchemiTempoTaglio: TFloatField;
    tblRigheSchedaTempoTaglio: TFloatField;
    tblSchemiPacco: TIntegerField;
    tblRigheSchedaPacco: TIntegerField;
    tblRigheSchedaDurataSchema: TFloatField;
    qryTotaleMin: TUniQuery;
    srcTotaleMin: TUniDataSource;
    qryTotaleMinTotMin: TFloatField;
    qryTotaleMinNextRiga: TLargeintField;
    qryTotQtaInRighe: TUniQuery;
    tblClienti: TUniTable;
    tblRigheSchedaPrgModels: TStringField;
    tblSchemiNettoMQ: TFloatField;
    tblRigheSchedaData_Commessa: TStringField;
    srcFermiMacchina: TUniDataSource;
    qryMaxNumNotaSchedaLav: TUniQuery;
    tblRigheSchedaNteste: TSmallintField;
    tblSchemiNTeste: TSmallintField;
    qryFindLabel: TUniQuery;
    qrySetLxTavole: TUniQuery;
    qryRigheScheda: TUniQuery;
    dsRighescheda: TUniDataSource;
    MySQLMonitor1: TUniSQLMonitor;
    qryRigheSchedaIdScheda: TLongWordField;
    qryRigheSchedaRiga: TLongWordField;
    qryRigheSchedaidSchema: TLongWordField;
    qryRigheSchedaQta: TIntegerField;
    qryRigheSchedaNome: TStringField;
    qryRigheSchedaDim_X_Pannello: TIntegerField;
    qryRigheSchedaDim_Y_Pannello: TIntegerField;
    qryRigheSchedaDim_Z_Pannello: TIntegerField;
    qryRigheSchedaNum_Pannelli: TIntegerField;
    qryRigheSchedaPacco: TIntegerField;
    qryRigheSchedaModelli: TMemoField;
    cmdInsertSchema: TUniSQL;
    qryNextRiga: TUniQuery;
    qrySelectParts: TUniQuery;
    dsSelectParts: TUniDataSource;
    qrySelectPartsLabel: TStringField;
    qrySelectPartsNome_Schema: TStringField;
    qrySelectPartsTag: TIntegerField;
    qrySelectPartsCodice: TStringField;
    qrySelectPartsDescrizione: TStringField;
    qrySelectPartsMateriale: TStringField;
    qrySelectPartsz: TFloatField;
    qrySelectPartsx: TIntegerField;
    qrySelectPartsy: TIntegerField;
    qrySelectPartsAlphaCamFile: TStringField;
    qrySelectPartsNote: TStringField;
    qrySelectPartsnfasi: TLargeintField;
    qrySelectPartsTipoMateriale: TStringField;
    qrySelectPartslavorazioni: TMemoField;
    qrySelectPartsVersioni: TMemoField;
    qrySelectPartsQTA: TFloatField;
    cmdCreateSchema: TUniSQL;
    qryGetIdSchema: TUniQuery;
    cmdInsDetailSchema: TUniSQL;
    qryRigheSchedaNSchema: TByteField;
    qryRigheSchedaMateriale: TStringField;
    qryRigheSchedanTeste: TSmallintField;
    qryRigheSchedaEseguito_Start: TDateTimeField;
    qryRigheSchedaEseguito_End: TDateTimeField;
    tblSchedeLavNumOperatori: TShortintField;
    MySQLUniProvider1: TMySQLUniProvider;
    tblRigheSchedaCodiceMatGo: TStringField;
    qryRigheSchedaCodiceMatGo: TStringField;
    tblfermimacchina: TUniTable;
    tblfermimacchinaidScheda: TLargeintField;
    tblfermimacchinaNumNota: TSmallintField;
    tblfermimacchinaStart: TStringField;
    tblfermimacchinaEnd: TStringField;
    tblfermimacchinaNota: TStringField;
    tblfermimacchinaTipo: TStringField;
    qryGetMatGoByIdScheda: TUniQuery;
    cmdSetGOCoordinate: TUniSQL;
    procedure tblSchedeLavNewRecord(DataSet: TDataSet);
    procedure tblSchedeLavTurnoChange(Sender: TField);
    procedure tblSchedeLavMacchinaChange(Sender: TField);
    procedure tblSchedeLavAfterOpen(DataSet: TDataSet);
    procedure tblRigheSchedaAfterOpen(DataSet: TDataSet);
    procedure tblSchemiAfterOpen(DataSet: TDataSet);
    procedure tblSchedeLavAfterScroll(DataSet: TDataSet);
    procedure tblRigheSchedaNewRecord(DataSet: TDataSet);
    procedure tblSchedeLavAfterPost(DataSet: TDataSet);
    procedure tblRigheSchedaTempoTaglioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblRigheSchedaCalcFields(DataSet: TDataSet);
    procedure tblRigheSchedaAfterDelete(DataSet: TDataSet);
    procedure tblRigheSchedaQtaValidate(Sender: TField);
    procedure tblRigheSchedaAfterScroll(DataSet: TDataSet);
    procedure tblRigheSchedaAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tblSchedeLavAfterClose(DataSet: TDataSet);
    procedure tblFermiMacchina_oldNewRecord(DataSet: TDataSet);
    procedure tblFermiMacchina_oldAfterPost(DataSet: TDataSet);
    procedure tblFermiMacchina_oldStartValidate(Sender: TField);
    procedure tblFermiMacchina_oldAfterDelete(DataSet: TDataSet);
    procedure qrySelectPartslavorazioniGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    NRIGA: Integer; // VALORE RIGA PER LE VOCI DELLA SCHEDA
    QtaRiga: Integer; // il valore corrente della qta della riga corrente
    FIdMacchina: SmallInt;
    v: TFieldNotifyEvent;
    FOnSchedeScrolling: TNotifyEvent;

  public
    { Public declarations }

    lstClients: TStringList;
    property OnSchedeScrolling: TNotifyEvent read FOnSchedeScrolling
      write FOnSchedeScrolling;
    procedure AttivaValidateOnQta;
    procedure DisattivaValidateOnQta;
    procedure DisattivaGrigliaRigheScheda;
    procedure AttivaGrigliaRigheScheda;
    procedure AddSchema(aIdScheda, aIdschema, aQta: Largeint);
    procedure AggiornaDettaglio;
    function RegistraSchemiTroncatrice(ListaSchemiTroncatrice
      : TSchemiTRV): Boolean;
    procedure RegistraSchema(aSchema: Ischema);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

uses System.Variants, System.Threading;

procedure TDM.AddSchema(aIdScheda, aIdschema, aQta: Largeint);
begin
  // inserisce uno schema nella scheda

  qryNextRiga.Close;
  qryNextRiga.ParamByName('P_IdScheda').Value := aIdScheda;
  qryNextRiga.Open;

  with cmdInsertSchema do
  begin
    ParamByName('P_IdScheda').Value := aIdScheda;
    ParamByName('P_Riga').Value := qryNextRiga.Fields[0].Value;
    ParamByName('P_idSchema').Value := aIdschema;
    ParamByName('P_Qta').Value := aQta;
    Execute;
  end;
  // qryRigheScheda.Refresh
end;

procedure TDM.AggiornaDettaglio;
begin
  qryRigheScheda.Refresh;
end;

procedure TDM.AttivaGrigliaRigheScheda;
begin
  tblRigheScheda.EnableControls
end;

procedure TDM.AttivaValidateOnQta;

begin
  DM.tblRigheSchedaQta.OnValidate := nil;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  v := DM.tblRigheSchedaQta.OnValidate;
  lstClients := TStringList.Create;
  tblClienti.Open;
  while not tblClienti.Eof do
  begin
    lstClients.AddPair(tblClienti.FieldByName('IdOttimoLabel').asstring,
      tblClienti.FieldByName('Nome').asstring);
    tblClienti.Next
  end;
  tblClienti.Close;
  tblSchemi.Open;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  lstClients.Free;
end;

procedure TDM.DisattivaGrigliaRigheScheda;
begin
  tblRigheScheda.DisableControls;
end;

procedure TDM.DisattivaValidateOnQta;
begin
  v := DM.tblRigheSchedaQta.OnValidate;
  DM.tblRigheSchedaQta.OnValidate := nil;

end;

procedure TDM.qrySelectPartslavorazioniGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  a: TArray<String>;
  i: Integer;
begin
  a := Sender.asstring.Split(['$', '#']);
  i := Length(a);
  Text := a[i - 2] + ' ' + a[i - 1];
  DisplayText := True;

end;

procedure TDM.RegistraSchema(aSchema: Ischema);

var
  g: TGeoSchema;
  i: Integer;
  lg: TGeosSchema;
begin
  // registra schema

  connFal_Fusti.StartTransaction;
  try
    with cmdCreateSchema do
    begin
      ParamByName('p_Nome').asstring := aSchema.GetNome;
      ParamByName('p_Hash').asstring := aSchema.GetHash;
      ParamByName('p_NSchema').AsInteger := aSchema.GetNumeroSchema;
      ParamByName('p_IdMacchina').AsInteger := aSchema.GetIdMacchina;
      ParamByName('p_nteste').AsInteger := aSchema.GetNumTeste;

      with aSchema.GetPannello do
      begin
        ParamByName('p_Materiale').asstring := Materiale;
        ParamByName('p_Dim_X_Pannello').AsFloat := Dim_X;
        ParamByName('p_Dim_Z_Pannello').AsFloat := Dim_Z;
        ParamByName('p_Dim_Y_Pannello').AsFloat := Dim_Y;
        Free
      end;
      ParamByName('p_Num_Pannelli').AsInteger := aSchema.GetPannelli;
      ParamByName('p_Codice_Lavorazione').asstring :=
        aSchema.GetCodiceLavorazione;
      ParamByName('p_Modelli').asstring := aSchema.GetModelli(lstClients);
      ParamByName('p_Sfrido').AsFloat := aSchema.GetSfrido;
      ParamByName('p_NettoMQ').AsFloat := aSchema.GetNettoMQ;

      ParamByName('P_PathFresa').AsFloat := aSchema.GetPathFresa;
      ParamByName('P_TempoTaglio').AsFloat := aSchema.GetTempoTaglio;
      ParamByName('P_Pacco').AsInteger := aSchema.GetPacco;

      Execute;

    end;
    // ottiene l'id dello schema
    with qryGetIdSchema do
    begin
      Close;
      ParamByName('p_Nome').asstring := aSchema.GetNome;
      ParamByName('p_hash').asstring := aSchema.GetHash;
      ParamByName('P_NSchema').AsInteger := aSchema.GetNumeroSchema;
      ParamByName('P_IdMacchina').AsInteger := aSchema.GetIdMacchina;
      Open;

    end;

    // registra il dettaglio dello schema ( le parti )
    with cmdInsDetailSchema do
    begin
      Params.ValueCount := 500;
      i := 0;
      lg := aSchema.GetGeos;
      try
        for g in lg do
        begin
          if trim(g.Plabel) <> '' then
          begin

            ParamByName('p_idSchema')[i].AsInteger := qryGetIdSchema.Fields[0]
              .AsInteger;
            ParamByName('p_Label_Parte')[i].asstring := g.Plabel;
            ParamByName('p_Qta')[i].AsInteger := g.Qta;

            inc(i);

          end;
        end;
        Execute(i);

        AddSchema(tblSchedeLavIdScheda.Value,
          qryGetIdSchema.Fields[0].AsInteger, aSchema.GetPannelli)

      finally
        lg.Free
      end;
    end;

    connFal_Fusti.Commit;
  except
    on e: Exception do
    begin
      connFal_Fusti.rollback;
      raise Exception.Create(e.Message + ' : ' + aSchema.GetNome);
    end;

  end;
  // end

  // );
  // t.start
end;

function TDM.RegistraSchemiTroncatrice(ListaSchemiTroncatrice
  : TSchemiTRV): Boolean;
var
  s: TSchemaTRV;
//  idMacchina: Integer;
//  i: Integer;
 // idSchema: Cardinal;
 // c: Integer; // conta gli schemi rolled back
begin
  // registra la lista degli schemi delle troncatrici TRV2200 e TRSI7500
  // cicla la lista degli schemi
 // c := 0;
  for s in ListaSchemiTroncatrice do
  begin
    if s.FPArti.Count > 0 then
    begin
      RegistraSchema(s);

    end;
   
  end;
  TThread.Synchronize(TThread.Current,
    procedure
    begin
      qryRigheScheda.Refresh
    end);
end;

procedure TDM.tblFermiMacchina_oldAfterDelete(DataSet: TDataSet);
begin
  qryMaxNumNotaSchedaLav.Refresh;
end;

procedure TDM.tblFermiMacchina_oldAfterPost(DataSet: TDataSet);
begin
  qryMaxNumNotaSchedaLav.Refresh;
end;

procedure TDM.tblFermiMacchina_oldNewRecord(DataSet: TDataSet);
begin
  if qryMaxNumNotaSchedaLav.Fields[0].IsNull then

    tblFermiMacchinaNumNota.Value := 1
  else
    tblFermiMacchinaNumNota.Value := qryMaxNumNotaSchedaLav.Fields[0]
      .AsInteger + 1;

end;

procedure TDM.tblFermiMacchina_oldStartValidate(Sender: TField);
var
  a: TArray<string>;
  h, m: SmallInt;
begin

  a := Sender.asstring.Split([':']);
  h := a[0].ToInteger;
  m := a[1].ToInteger;
  if (not((h >= 0) and (h < 24))) or (not((m >= 0) and (m < 60))) then
    raise Exception.Create('Valore non valido');

end;

procedure TDM.tblRigheSchedaAfterDelete(DataSet: TDataSet);
begin
  tblSchedeLav.Refresh;
end;

procedure TDM.tblRigheSchedaAfterOpen(DataSet: TDataSet);
begin
  tblSchemi.Open;
end;

procedure TDM.tblRigheSchedaAfterPost(DataSet: TDataSet);
begin
  tblSchedeLav.Refresh
end;

procedure TDM.tblRigheSchedaAfterScroll(DataSet: TDataSet);
begin

  if not VarIsNull(DataSet.FieldByName('Qta').Value) then

    QtaRiga := DataSet.FieldByName('Qta').Value
end;

procedure TDM.tblRigheSchedaCalcFields(DataSet: TDataSet);
var
  c: Integer;
begin

  if tblRigheSchedaPacco.Value > 0 then
  begin

    c := tblRigheSchedaQta.Value div tblRigheSchedaPacco.Value;
    if (tblRigheSchedaQta.Value mod tblRigheSchedaPacco.Value) > 0 then
      inc(c);

  end
  else

    c := tblRigheSchedaQta.Value;

  tblRigheSchedaDurataSchema.Value := tblRigheSchedaTempoTaglio.Value * c;
end;

procedure TDM.tblRigheSchedaNewRecord(DataSet: TDataSet);
begin
  inc(NRIGA, 10);
  tblRigheSchedaRiga.Value := NRIGA;

end;

procedure TDM.tblRigheSchedaQtaValidate(Sender: TField);
var
  tq: Integer;
  tr: Integer;
begin
  if Sender.AsInteger < 0 then
    raise Exception.Create('Non puoi inserire un valore negativo');

  with qryTotQtaInRighe do
  begin
    Close;
    Params[0].AsInteger := qryRigheSchedaidSchema.Value;
    Open;

    tq := Sender.AsInteger + (FieldByName('TotQta').AsInteger - QtaRiga);
    tr := FieldByName('Num_Pannelli').AsInteger;
    if tq > tr then
      raise Exception.Create('Il valore supera  la quantità dello schema ');

  end;

end;

procedure TDM.tblRigheSchedaTempoTaglioGetText(Sender: TField; var Text: string;
DisplayText: Boolean);
var
  m, s: Integer;
  // t: string;

begin

  m := Trunc(Sender.AsFloat);
  s := Trunc((Sender.AsFloat - m) * 60);
  Text := Format('%d'' %d" ', [m, s])

end;

procedure TDM.tblSchedeLavAfterClose(DataSet: TDataSet);
begin
  tblRigheScheda.Close;
  tblFermiMacchina.Close;

end;

procedure TDM.tblSchedeLavAfterOpen(DataSet: TDataSet);
begin
  // tblRigheScheda.Open;
  // tblFermiMacchina.Open;
  // qryMaxNumNotaSchedaLav.Open;

end;

procedure TDM.tblSchedeLavAfterPost(DataSet: TDataSet);
begin
  // FIdMacchina := tblSchedeLavidMacchina.Value;
end;

procedure TDM.tblSchedeLavAfterScroll(DataSet: TDataSet);
begin

  // qryTotaleMin.Close;
  // qryTotaleMin.Params[0].Value := tblSchedeLavIdScheda.Value;
  // qryTotaleMin.Open;
  //
  // NRIGA := qryTotaleMinNextRiga.Value; // qryNextRiga.Fields[0].AsInteger;
  // FIdMacchina := tblSchedeLavidMacchina.Value;

  if Assigned(OnSchedeScrolling) then
    FOnSchedeScrolling(Self);
end;

procedure TDM.tblSchedeLavMacchinaChange(Sender: TField);

var
  v: Variant;
begin
  v := tblMacchine.Lookup('IdMacchina', Sender.Value, 'CodiceLavorazione');

  if VarType(v) = varString then

    tblSchedeLavCodiceLavorazione.Value := v

end;

procedure TDM.tblSchedeLavNewRecord(DataSet: TDataSet);
begin
  tblSchedeLavStato.Value := 'APERTA';
  // tblSchedeLavidMacchina.Value := FIdMacchina;

end;

procedure TDM.tblSchedeLavTurnoChange(Sender: TField);
begin
  if Sender.asstring = 'MATTINA' then
  begin
    tblSchedeLavOrario_Inizio.Value := '06:00';
    tblSchedeLavOrario_fine.Value := '14:00';

  end;

  if Sender.asstring = 'POMERIGGIO' then
  begin
    tblSchedeLavOrario_Inizio.Value := '14:00';
    tblSchedeLavOrario_fine.Value := '22:00';

  end;

  if Sender.asstring = 'CENTRALE' then
  begin
    tblSchedeLavOrario_Inizio.Value := '08:00';
    tblSchedeLavOrario_fine.Value := '16:00';

  end;

  if Sender.asstring = 'NOTTE' then
  begin
    tblSchedeLavOrario_Inizio.Value := '22:00';
    tblSchedeLavOrario_fine.Value := '06:00';

  end;

end;

procedure TDM.tblSchemiAfterOpen(DataSet: TDataSet);
begin
  tblDetailSchema.Open
end;

end.
