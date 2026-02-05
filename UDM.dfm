object DM: TDM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 617
  Width = 914
  object tblSchedeLav: TUniTable
    TableName = 'schede_di_lavorazione'
    OrderFields = 'Data,Orario_Inizio'
    Connection = connFal_Fusti
    KeyFields = 'idscheda'
    IndexFieldNames = 'Data'
    AfterOpen = tblSchedeLavAfterOpen
    AfterClose = tblSchedeLavAfterClose
    AfterPost = tblSchedeLavAfterPost
    AfterScroll = tblSchedeLavAfterScroll
    OnCalcFields = tblSchedeLavCalcFields
    OnNewRecord = tblSchedeLavNewRecord
    Left = 48
    Top = 80
    object tblSchedeLavIdScheda: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdScheda'
      Origin = 'schede_di_lavorazione.IdScheda'
      Visible = False
    end
    object tblSchedeLavidOperaio: TLongWordField
      FieldName = 'idOperaio'
      Origin = 'schede_di_lavorazione.idOperaio'
      Visible = False
    end
    object tblSchedeLavData: TDateField
      FieldName = 'Data'
      Origin = 'schede_di_lavorazione.Data'
    end
    object tblSchedeLavidMacchina: TLongWordField
      FieldName = 'idMacchina'
      Origin = 'schede_di_lavorazione.idMacchina'
      OnChange = tblSchedeLavMacchinaChange
    end
    object tblSchedeLavCodiceLavorazione: TStringField
      FieldName = 'CodiceLavorazione'
      Origin = 'schede_di_lavorazione.CodiceLavorazione'
      FixedChar = True
      Size = 2
    end
    object tblSchedeLavTurno: TStringField
      FieldName = 'Turno'
      Origin = 'schede_di_lavorazione.Turno'
      OnChange = tblSchedeLavTurnoChange
      Size = 45
    end
    object tblSchedeLavStato: TStringField
      FieldName = 'Stato'
      Origin = 'schede_di_lavorazione.Stato'
      FixedChar = True
      Size = 6
    end
    object tblSchedeLavOperatore: TStringField
      FieldKind = fkLookup
      FieldName = 'Operatore'
      LookupDataSet = tblOperatori
      LookupKeyFields = 'idOperaio'
      LookupResultField = 'Nome'
      KeyFields = 'idOperaio'
      Lookup = True
    end
    object tblSchedeLavMacchina: TStringField
      FieldKind = fkLookup
      FieldName = 'Macchina'
      LookupDataSet = tblMacchine
      LookupKeyFields = 'idMacchina'
      LookupResultField = 'Nome'
      KeyFields = 'idMacchina'
      OnValidate = tblSchedeLavMacchinaChange
      Size = 40
      Lookup = True
    end
    object tblSchedeLavLavorazione: TStringField
      FieldKind = fkLookup
      FieldName = 'Lavorazione'
      LookupDataSet = tblLavorazioni
      LookupKeyFields = 'Codice_lavorazione'
      LookupResultField = 'Descrizione'
      KeyFields = 'CodiceLavorazione'
      Lookup = True
    end
    object tblSchedeLavOrario_Inizio: TStringField
      FieldName = 'Orario_Inizio'
      Origin = 'schede_di_lavorazione.Orario_Inizio'
      FixedChar = True
      Size = 5
    end
    object tblSchedeLavOrario_fine: TStringField
      FieldName = 'Orario_fine'
      Origin = 'schede_di_lavorazione.Orario_fine'
      FixedChar = True
      Size = 5
    end
    object tblSchedeLavNumOperatori: TShortintField
      FieldName = 'NumOperatori'
    end
    object tblSchedeLavOkScarico: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'OkScarico'
      Calculated = True
    end
  end
  object connFal_Fusti: TUniConnection
    ProviderName = 'MySQL'
    Port = 3308
    Database = 'falegnameria_fusti'
    Username = 'bartolo'
    Server = 'localhost'
    Left = 48
    Top = 24
    EncryptedPassword = '9DFF9EFF8DFF8BFF90FF93FF90FF'
  end
  object tblRigheScheda: TUniTable
    TableName = 'righe_scheda_lavorazione'
    Connection = connFal_Fusti
    MasterSource = srcSchedeLav
    MasterFields = 'IdScheda'
    DetailFields = 'IdScheda'
    AutoCalcFields = False
    AfterOpen = tblRigheSchedaAfterOpen
    AfterPost = tblRigheSchedaAfterPost
    AfterDelete = tblRigheSchedaAfterDelete
    AfterScroll = tblRigheSchedaAfterScroll
    OnCalcFields = tblRigheSchedaCalcFields
    OnNewRecord = tblRigheSchedaNewRecord
    Left = 792
    Top = 16
    object tblRigheSchedaIdScheda: TLongWordField
      FieldName = 'IdScheda'
      Origin = 'righe_scheda_lavorazione.IdScheda'
    end
    object tblRigheSchedaRiga: TLongWordField
      FieldName = 'Riga'
      Origin = 'righe_scheda_lavorazione.Riga'
    end
    object tblRigheSchedaNomeSchema: TStringField
      DisplayLabel = 'Schema'
      FieldKind = fkLookup
      FieldName = 'NomeSchema'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Nome'
      KeyFields = 'idSchema'
      Size = 45
      Lookup = True
    end
    object tblRigheSchedaData_Commessa: TStringField
      FieldKind = fkLookup
      FieldName = 'Data_Commessa'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Hash'
      KeyFields = 'idSchema'
      Lookup = True
    end
    object tblRigheSchedaMateriale: TStringField
      FieldKind = fkLookup
      FieldName = 'Materiale'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Materiale'
      KeyFields = 'idSchema'
      Lookup = True
    end
    object tblRigheSchedaidSchema: TLongWordField
      FieldName = 'idSchema'
      Origin = 'righe_scheda_lavorazione.idSchema'
    end
    object tblRigheSchedaPanelXdim: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Lunghezza pannello'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PanelXdim'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Dim_X_Pannello'
      KeyFields = 'idSchema'
      Lookup = True
    end
    object tblRigheSchedaPanelYDim: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Altezza pannello'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PanelYDim'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Dim_Y_Pannello'
      KeyFields = 'idSchema'
      Lookup = True
    end
    object tblRigheSchedaSpessore: TSmallintField
      Alignment = taCenter
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'Spessore'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Dim_Z_Pannello'
      KeyFields = 'idSchema'
      Lookup = True
    end
    object tblRigheSchedaQta: TIntegerField
      FieldName = 'Qta'
      Origin = 'righe_scheda_lavorazione.Qta'
      OnValidate = tblRigheSchedaQtaValidate
    end
    object tblRigheSchedaTempoTaglio: TFloatField
      DisplayLabel = 'Min. di taglio'
      FieldKind = fkLookup
      FieldName = 'TempoTaglio'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'TempoTaglio'
      KeyFields = 'idSchema'
      OnGetText = tblRigheSchedaTempoTaglioGetText
      Lookup = True
    end
    object tblRigheSchedaPacco: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Pacco'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Pacco'
      KeyFields = 'idSchema'
      ReadOnly = True
      Lookup = True
    end
    object tblRigheSchedaDurataSchema: TFloatField
      DisplayLabel = 'Tempo schema'
      FieldKind = fkCalculated
      FieldName = 'DurataSchema'
      OnGetText = tblRigheSchedaTempoTaglioGetText
      Calculated = True
    end
    object tblRigheSchedaPrgModels: TStringField
      DisplayLabel = 'Modelli'
      FieldKind = fkLookup
      FieldName = 'PrgModels'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Modelli'
      KeyFields = 'idSchema'
      Size = 80
      Lookup = True
    end
    object tblRigheSchedaNteste: TSmallintField
      FieldKind = fkLookup
      FieldName = 'Nteste'
      LookupDataSet = tblSchemi
      LookupKeyFields = 'idSchema'
      LookupResultField = 'Nteste'
      KeyFields = 'idSchema'
      Lookup = True
    end
    object tblRigheSchedaCodiceMatGo: TStringField
      FieldName = 'CodiceMatGo'
      Size = 50
    end
  end
  object srcRigheScheda: TUniDataSource
    DataSet = tblRigheScheda
    Left = 800
    Top = 72
  end
  object srcSchedeLav: TUniDataSource
    DataSet = tblSchedeLav
    Left = 48
    Top = 144
  end
  object tblOperatori: TUniTable
    TableName = 'anagrafica_operai'
    Connection = connFal_Fusti
    Left = 632
    Top = 72
  end
  object tblMacchine: TUniTable
    TableName = 'macchine'
    Connection = connFal_Fusti
    Left = 200
    Top = 8
  end
  object tblLavorazioni: TUniTable
    TableName = 'tipi_di_lavorazione'
    Connection = connFal_Fusti
    Left = 328
    Top = 128
  end
  object tblSchemi: TUniTable
    TableName = 'schemi_di_lavorazione'
    Connection = connFal_Fusti
    IndexFieldNames = 'idSchema'
    AfterOpen = tblSchemiAfterOpen
    Left = 744
    Top = 128
    object tblSchemiidSchema: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'idSchema'
      KeyFields = 'idSchema'
      Origin = 'schemi_di_lavorazione.idSchema'
    end
    object tblSchemiNome: TStringField
      FieldName = 'Nome'
      Origin = 'schemi_di_lavorazione.Nome'
      Size = 90
    end
    object tblSchemiHash: TStringField
      FieldName = 'Hash'
      Origin = 'schemi_di_lavorazione.Hash'
      Size = 45
    end
    object tblSchemiNSchema: TByteField
      FieldName = 'NSchema'
      Origin = 'schemi_di_lavorazione.NSchema'
    end
    object tblSchemiMateriale: TStringField
      FieldName = 'Materiale'
      Origin = 'schemi_di_lavorazione.Materiale'
      Size = 45
    end
    object tblSchemiDim_X_Pannello: TIntegerField
      FieldName = 'Dim_X_Pannello'
      Origin = 'schemi_di_lavorazione.Dim_X_Pannello'
    end
    object tblSchemiDim_Y_Pannello: TIntegerField
      FieldName = 'Dim_Y_Pannello'
      Origin = 'schemi_di_lavorazione.Dim_Y_Pannello'
    end
    object tblSchemiDim_Z_Pannello: TIntegerField
      FieldName = 'Dim_Z_Pannello'
      Origin = 'schemi_di_lavorazione.Dim_Z_Pannello'
    end
    object tblSchemiNum_Pannelli: TIntegerField
      FieldName = 'Num_Pannelli'
      Origin = 'schemi_di_lavorazione.Num_Pannelli'
    end
    object tblSchemiCodice_Lavorazione: TStringField
      FieldName = 'Codice_Lavorazione'
      Origin = 'schemi_di_lavorazione.Codice_Lavorazione'
      FixedChar = True
      Size = 2
    end
    object tblSchemiModelli: TMemoField
      FieldName = 'Modelli'
      Origin = 'schemi_di_lavorazione.Modelli'
      BlobType = ftMemo
    end
    object tblSchemiIdMacchina: TLongWordField
      FieldName = 'IdMacchina'
      Origin = 'schemi_di_lavorazione.IdMacchina'
    end
    object tblSchemiSfrido: TFloatField
      FieldName = 'Sfrido'
      Origin = 'schemi_di_lavorazione.Sfrido'
    end
    object tblSchemiPathFresa: TFloatField
      FieldName = 'PathFresa'
      Origin = 'schemi_di_lavorazione.PathFresa'
    end
    object tblSchemiTempoTaglio: TFloatField
      FieldName = 'TempoTaglio'
      Origin = 'schemi_di_lavorazione.TempoTaglio'
    end
    object tblSchemiPacco: TIntegerField
      FieldName = 'Pacco'
      Origin = 'schemi_di_lavorazione.Pacco'
    end
    object tblSchemiNettoMQ: TFloatField
      FieldName = 'NettoMQ'
      Origin = 'schemi_di_lavorazione.NettoMQ'
    end
    object tblSchemiNTeste: TSmallintField
      FieldName = 'NTeste'
      Origin = 'schemi_di_lavorazione.NTeste'
    end
  end
  object tblDetailSchema: TUniTable
    TableName = 'dettagio_schema'
    Connection = connFal_Fusti
    MasterSource = srcSchemi
    MasterFields = 'idSchema'
    DetailFields = 'idSchema'
    Left = 832
    Top = 128
    object tblDetailSchemaidSchema: TLongWordField
      FieldName = 'idSchema'
    end
    object tblDetailSchemaLabel_Parte: TStringField
      FieldName = 'Label_Parte'
      Size = 15
    end
    object tblDetailSchemaQta: TLongWordField
      FieldName = 'Qta'
    end
  end
  object srcSchemi: TUniDataSource
    DataSet = tblSchemi
    Left = 736
    Top = 192
  end
  object srcDetailSchema: TUniDataSource
    DataSet = tblDetailSchema
    Left = 808
    Top = 192
  end
  object qryShowSchemiIncompleti: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO schemi_di_lavorazione'
      '  (idSchema, Num_Pannelli)'
      'VALUES'
      '  (:idSchema, :Num_Pannelli)')
    SQLDelete.Strings = (
      'DELETE FROM schemi_di_lavorazione'
      'WHERE'
      '  idSchema = :Old_idSchema')
    SQLUpdate.Strings = (
      'UPDATE schemi_di_lavorazione'
      'SET'
      '  idSchema = :idSchema, Num_Pannelli = :Num_Pannelli'
      'WHERE'
      '  idSchema = :Old_idSchema')
    SQLLock.Strings = (
      'SELECT * FROM schemi_di_lavorazione'
      'WHERE'
      '  idSchema = :Old_idSchema'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT idSchema, Num_Pannelli FROM schemi_di_lavorazione'
      'WHERE'
      '  idSchema = :idSchema')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM schemi_di_lavorazione')
    DataTypeMap = <
      item
        FieldName = 'RemainQta'
        FieldType = ftInteger
      end>
    Connection = connFal_Fusti
    SQL.Strings = (
      
        'SELECT sdl.idSchema,sdl.Nome,sdl.Materiale, IF(sdl.Num_Pannelli ' +
        '- SUM(  rsl.Qta) is null,sdl.Num_Pannelli,sdl.Num_Pannelli -  SU' +
        'M( rsl.Qta)) as RemainQta  FROM schemi_di_lavorazione sdl'
      '  LEFT JOIN righe_scheda_lavorazione rsl'
      '  ON sdl.idSchema = rsl.idSchema'
      'WHERE '
      '  sdl.CODICE_LAVORAZIONE = :CodiceLavorazione'
      '  AND '
      '  sdl.IdMacchina = :idMacchina '
      '  GROUP BY sdl.idSchema'
      
        '-- Mostra quegli schemi che hanno la quantit'#224' rimanente ( ci'#242' ch' +
        'e sta in scheda meno  il numero di pannelli dello schema)  > 0 '
      
        '-- oppure se il numero di pannelli -1 (non ancora lavorato ) ma ' +
        'solo per la troncatrice TRV220 e TRSI7500'
      ' HAVING RemainQta > 0 ;')
    MasterSource = srcSchedeLav
    Left = 592
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CodiceLavorazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'idMacchina'
        Value = nil
      end>
  end
  object srcSchemiIncompleti: TUniDataSource
    DataSet = qryShowSchemiIncompleti
    Left = 336
    Top = 272
  end
  object srcMacchine: TUniDataSource
    DataSet = tblMacchine
    Left = 344
    Top = 16
  end
  object MyConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 496
    Top = 16
  end
  object qryTotaleMin: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      
        'SELECT IF(MAX(rsl.Riga) IS NULL,0,MAX(rsl.Riga))  as NextRiga , ' +
        '  SUM(IF(MOD(rsl.Qta,sdl1.Pacco) > 0 , rsl.Qta DIV sdl1.Pacco +1' +
        ',  rsl.Qta DIV sdl1.Pacco) * sdl1.TempoTaglio) AS TotMin   FROM ' +
        'schede_di_lavorazione sdl'
      
        '  INNER JOIN righe_scheda_lavorazione rsl ON sdl.IdScheda = rsl.' +
        'IdScheda'
      
        '  INNER JOIN schemi_di_lavorazione sdl1 ON rsl.idSchema = sdl1.i' +
        'dSchema'
      'WHERE sdl.IdScheda = :p_idScheda'
      ' ')
    Left = 824
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_idScheda'
        Value = nil
      end>
    object qryTotaleMinTotMin: TFloatField
      FieldName = 'TotMin'
      OnGetText = tblRigheSchedaTempoTaglioGetText
    end
    object qryTotaleMinNextRiga: TLargeintField
      FieldName = 'NextRiga'
    end
  end
  object srcTotaleMin: TUniDataSource
    DataSet = qryTotaleMin
    Left = 752
    Top = 248
  end
  object qryTotQtaInRighe: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      
        'SELECT rsl.idSchema, sdl.Num_Pannelli,  SUM( rsl.qta) AS TotQta ' +
        'FROM righe_scheda_lavorazione rsl'
      '  INNER JOIN schemi_di_lavorazione sdl'
      '  ON rsl.idSchema = sdl.idSchema'
      ''
      'WHERE rsl.idSchema = :P_IdSchema '
      ''
      ' GROUP BY rsl.idSchema, sdl.Num_Pannelli')
    Left = 384
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_IdSchema'
        Value = nil
      end>
  end
  object tblClienti: TUniTable
    TableName = 'clienti'
    Connection = connFal_Fusti
    Left = 512
    Top = 400
  end
  object srcFermiMacchina: TUniDataSource
    DataSet = tblfermimacchina
    Left = 144
    Top = 216
  end
  object qryMaxNumNotaSchedaLav: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      'select max(NumNota) from fermimacchina'
      'where idScheda = :IdScheda')
    MasterSource = srcSchedeLav
    Left = 496
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdScheda'
        Value = nil
      end>
  end
  object qryFindLabel: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      ''
      'SELECT'
      
        '  CONCAT(CHAR((RIGHT(`c`.`Anno`, 2) + 32)), CHAR((`c`.`Numero_Se' +
        'ttimana` + 32)), `c`.`IdClientXOttimo`, `c`.`Modello`, `c`.`Bis`' +
        ', `df`.`Tag`) AS `Label`,'
      ''
      '  c.cliente,'
      '  c.modello,'
      '  c.Numero_Settimana,'
      '  df.codice,'
      '  c.Anno,'
      '  c.bis,'
      '  df.materiale,'
      '  df.spessore AS '#39'z'#39','
      '  df.Lunghezza AS '#39'x'#39','
      '  df.Larghezza AS '#39'y'#39','
      '  COUNT(DISTINCT df.Codice_lavorazione) AS nfasi,'
      
        '  GROUP_CONCAT( DISTINCT  df.Codice_lavorazione, df.lavorazione,' +
        ' IF(df.Nota IS NULL, '#39#39', df.nota)) AS lavorazioni,'
      '  SUM((vc.Qta * df.Qta)) AS QTA'
      'FROM commesse c'
      '  INNER JOIN voci_commessa vc'
      '    ON c.idCommessa = vc.idCommessa'
      '  INNER JOIN distinte_fusti df'
      '    ON c.Modello = df.Modello'
      '    AND vc.Codice_Fusto = df.codice_fusto'
      '    AND c.Cliente = df.CodiceCliente'
      'WHERE c.Anno = :p_anno'
      'AND CAST(c.Numero_Settimana AS UNSIGNED) = :p_programma'
      '  '
      'GROUP BY Label'
      ''
      'HAVING LAVORAZIONI LIKE '#39'%01TAGLIO PANTOGRAFO%'#39
      ' '
      'ORDER BY materiale, y, z, cliente, modello;')
    Left = 232
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_anno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_programma'
        Value = nil
      end>
  end
  object qrySetLxTavole: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      'UPDATE Schemi_Di_Lavorazione'
      'SET Dim_X_Pannello = :P_Dim_X_Pannello '
      '&Selezione')
    Left = 72
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Dim_X_Pannello'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Selezione'
      end>
  end
  object qryRigheScheda: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM righe_scheda_lavorazione'
      'WHERE'
      '  IdScheda = :Old_IdScheda AND Riga = :Old_Riga')
    SQLUpdate.Strings = (
      'UPDATE righe_scheda_lavorazione'
      'SET'
      '  Qta = :Qta, CodiceMatGo = :CodiceMatGo'
      'WHERE'
      '  IdScheda = :Old_IdScheda AND Riga = :Old_Riga')
    Connection = connFal_Fusti
    SQL.Strings = (
      
        'SELECT rsl.IdScheda, rsl.Riga,sdl.NSchema,  rsl.idSchema,sdl.nTe' +
        'ste, rsl.Qta, sdl.Nome, sdl.Materiale, rsl.CodiceMatGo,  sdl.Dim' +
        '_X_Pannello, sdl.Dim_Y_Pannello, sdl.Dim_Z_Pannello, sdl.Num_Pan' +
        'nelli, sdl.Pacco, sdl.Modelli, sdl.Eseguito_Start,sdl.Eseguito_E' +
        'nd FROM righe_scheda_lavorazione rsl'
      
        'INNER JOIN schemi_di_lavorazione sdl ON rsl.idSchema = sdl.idSch' +
        'ema'
      'WHERE rsl.IdScheda = :idScheda')
    MasterSource = srcSchedeLav
    AfterScroll = tblRigheSchedaAfterScroll
    Left = 272
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idScheda'
        Value = nil
      end>
    object qryRigheSchedaIdScheda: TLongWordField
      FieldName = 'IdScheda'
    end
    object qryRigheSchedaRiga: TLongWordField
      FieldName = 'Riga'
    end
    object qryRigheSchedaNSchema: TByteField
      FieldName = 'NSchema'
    end
    object qryRigheSchedaidSchema: TLongWordField
      FieldName = 'idSchema'
    end
    object qryRigheSchedaQta: TIntegerField
      FieldName = 'Qta'
      OnValidate = tblRigheSchedaQtaValidate
    end
    object qryRigheSchedaNome: TStringField
      FieldName = 'Nome'
      Size = 90
    end
    object qryRigheSchedaMateriale: TStringField
      FieldName = 'Materiale'
      Size = 45
    end
    object qryRigheSchedaDim_X_Pannello: TIntegerField
      FieldName = 'Dim_X_Pannello'
    end
    object qryRigheSchedaDim_Y_Pannello: TIntegerField
      FieldName = 'Dim_Y_Pannello'
    end
    object qryRigheSchedaDim_Z_Pannello: TIntegerField
      FieldName = 'Dim_Z_Pannello'
    end
    object qryRigheSchedaNum_Pannelli: TIntegerField
      FieldName = 'Num_Pannelli'
    end
    object qryRigheSchedaPacco: TIntegerField
      FieldName = 'Pacco'
    end
    object qryRigheSchedaModelli: TMemoField
      FieldName = 'Modelli'
      BlobType = ftMemo
    end
    object qryRigheSchedanTeste: TSmallintField
      FieldName = 'nTeste'
    end
    object qryRigheSchedaEseguito_Start: TDateTimeField
      FieldName = 'Eseguito_Start'
    end
    object qryRigheSchedaEseguito_End: TDateTimeField
      FieldName = 'Eseguito_End'
    end
    object qryRigheSchedaCodiceMatGo: TStringField
      FieldName = 'CodiceMatGo'
      Size = 50
    end
  end
  object dsRighescheda: TUniDataSource
    DataSet = qryRigheScheda
    Left = 384
    Top = 504
  end
  object MySQLMonitor1: TUniSQLMonitor
    Left = 112
    Top = 496
  end
  object cmdInsertSchema: TUniSQL
    Connection = connFal_Fusti
    SQL.Strings = (
      'INSERT INTO righe_scheda_lavorazione'
      '('
      '  IdScheda'
      ' ,Riga'
      ' ,idSchema'
      ''
      ' ,Qta'
      ')'
      'VALUES'
      '('
      '  :P_IdScheda'
      ' ,:P_Riga'
      ' ,:P_idSchema'
      ''
      ' ,:P_Qta'
      ');')
    Left = 816
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_IdScheda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_idSchema'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Qta'
        Value = nil
      end>
  end
  object qryNextRiga: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      
        'SELECT IF (MAX(RIGA) is null,0,MAX(RIGA)) +10 FROM righe_scheda_' +
        'lavorazione'
      'WHERE IDSCHEDA = :P_IDSCHEDA;')
    Left = 512
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_IDSCHEDA'
        Value = nil
      end>
  end
  object qrySelectParts: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      ''
      ''
      ''
      'SELECT'
      
        '  CONCAT(CHAR((RIGHT(`c`.`Anno`, 2) + 32)), CHAR((`c`.`Numero_Se' +
        'ttimana` + 32)), `c`.`IdClientXOttimo`, `c`.`Modello`, `c`.`Bis`' +
        ', `df`.`Tag`) AS `Label`,'
      
        '  CONCAT(c.cliente, '#39'_'#39', c.modello, '#39'_'#39', c.bis, '#39'_'#39',c.note, '#39'_'#39',' +
        ' c.anno, '#39'_'#39', c.Numero_settimana) AS Nome_Schema,'
      ''
      '  --   c.Numero_Settimana,'
      '  --   c.Anno,'
      '  --   c.idCommessa,'
      '  --   c.cliente,'
      '  --   c1.Nome,'
      '  --   c.modello,'
      '  df.Tag,'
      ''
      ''
      '  df.Codice,'
      '  df.Descrizione,'
      '  df.materiale,'
      '  df.Spessore AS '#39'z'#39','
      '  df.Lunghezza AS '#39'x'#39','
      '  df.Larghezza AS '#39'y'#39','
      '  df.AlphaCamFile,'
      '  c.Note,'
      ''
      '  COUNT(DISTINCT df.Codice_lavorazione) AS nfasi,'
      ''
      '  CONCAT(df.Materiale, df.Spessore) AS TipoMateriale,'
      ''
      
        '  GROUP_CONCAT(DISTINCT df.Codice_lavorazione, df.lavorazione,'#39'#' +
        #39', IF(df.Nota IS NULL, '#39#39', df.Nota) ORDER BY df.Codice_lavorazio' +
        'ne SEPARATOR '#39'$'#39') AS lavorazioni,'
      
        '  GROUP_CONCAT(DISTINCT SUBSTRING(df.codice_fusto, 8, 3)) AS Ver' +
        'sioni,'
      
        '  CAST(SUM((vc.Qta * df.Qta)) / IF(COUNT(DISTINCT df.Codice_lavo' +
        'razione) = 0, 1, COUNT(DISTINCT df.Codice_lavorazione)) AS decim' +
        'al(10, 0)) AS QTA'
      'FROM commesse c'
      '  INNER JOIN voci_commessa vc'
      '    ON c.idCommessa = vc.idCommessa'
      '  INNER JOIN distinte_fusti df'
      '    ON c.Modello = df.Modello'
      '    AND vc.Codice_Fusto = df.codice_fusto'
      '    AND c.Cliente = df.CodiceCliente'
      '  INNER JOIN clienti c1'
      '    ON df.CodiceCliente = c1.CodiceCliente'
      'WHERE'
      ''
      'c.idCommessa IN (SELECT'
      '    c2.idCommessa'
      '  FROM commesse c2'
      '  WHERE c2.Anno = :P_anno'
      '  AND c2.Numero_Settimana = :p_settimana)'
      ''
      ''
      ''
      ''
      'GROUP BY Label'
      ''
      ''
      ''
      ''
      ''
      'HAVING nfasi >= 1'
      ''
      ''
      'AND LAVORAZIONI LIKE  &Lavorazione  '
      ''
      ''
      ''
      'ORDER BY Nome_Schema;'
      ''
      '')
    Left = 336
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_anno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_settimana'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Lavorazione'
      end>
    object qrySelectPartsNome_Schema: TStringField
      FieldName = 'Nome_Schema'
      Origin = 'Nome_Schema'
      Size = 237
    end
    object qrySelectPartsLabel: TStringField
      FieldName = 'Label'
      Origin = 'Label'
      Size = 81
    end
    object qrySelectPartslavorazioni: TMemoField
      FieldName = 'lavorazioni'
      Origin = 'lavorazioni'
      OnGetText = qrySelectPartslavorazioniGetText
      BlobType = ftMemo
    end
    object qrySelectPartsQTA: TFloatField
      FieldName = 'QTA'
      Origin = 'QTA'
    end
    object qrySelectPartsTag: TIntegerField
      FieldName = 'Tag'
      Origin = 'distinte_fusti.Tag'
      Visible = False
    end
    object qrySelectPartsCodice: TStringField
      FieldName = 'Codice'
      Origin = 'distinte_fusti.Codice'
      Size = 45
    end
    object qrySelectPartsDescrizione: TStringField
      FieldName = 'Descrizione'
      Origin = 'distinte_fusti.Descrizione'
      Size = 80
    end
    object qrySelectPartsMateriale: TStringField
      FieldName = 'Materiale'
      Origin = 'distinte_fusti.Materiale'
      Size = 45
    end
    object qrySelectPartsz: TFloatField
      FieldName = 'z'
      Origin = 'distinte_fusti.z'
    end
    object qrySelectPartsx: TIntegerField
      FieldName = 'x'
      Origin = 'distinte_fusti.x'
    end
    object qrySelectPartsy: TIntegerField
      FieldName = 'y'
      Origin = 'distinte_fusti.y'
    end
    object qrySelectPartsAlphaCamFile: TStringField
      FieldName = 'AlphaCamFile'
      Origin = 'distinte_fusti.AlphaCamFile'
      Size = 45
    end
    object qrySelectPartsNote: TStringField
      FieldName = 'Note'
      Origin = 'commesse.Note'
      Visible = False
      Size = 120
    end
    object qrySelectPartsnfasi: TLargeintField
      FieldName = 'nfasi'
      Origin = 'nfasi'
      Visible = False
    end
    object qrySelectPartsTipoMateriale: TStringField
      FieldName = 'TipoMateriale'
      Origin = 'TipoMateriale'
      Visible = False
      Size = 57
    end
    object qrySelectPartsVersioni: TMemoField
      FieldName = 'Versioni'
      Origin = 'Versioni'
      Visible = False
      BlobType = ftMemo
    end
  end
  object dsSelectParts: TUniDataSource
    DataSet = qrySelectParts
    Left = 440
    Top = 432
  end
  object cmdCreateSchema: TUniSQL
    Connection = connFal_Fusti
    SQL.Strings = (
      'INSERT INTO schemi_di_lavorazione'
      '('
      ' '
      ' Nome'
      ' ,Hash'
      ' ,NSchema'
      ' ,IdMacchina'
      ' ,Materiale'
      ' ,Dim_X_Pannello'
      ' ,Dim_Z_Pannello'
      ' ,Dim_Y_Pannello'
      ' ,Num_Pannelli'
      ' ,Codice_Lavorazione'
      ' ,Modelli'
      ' , Sfrido '
      ' , NettoMQ'
      ' , NTeste '
      ', PathFresa'
      ',TempoTaglio'
      ',Pacco'
      ''
      '  '
      '  '
      ''
      ')'
      'VALUES'
      '('
      '  :p_Nome'
      ' ,:p_Hash'
      ' ,:p_NSchema'
      ' ,:p_IdMacchina'
      ' ,:p_Materiale'
      '  ,:p_Dim_X_Pannello'
      ' ,:p_Dim_Z_Pannello'
      '  ,:p_Dim_Y_Pannello'
      ' ,:p_Num_Pannelli'
      ' ,:p_Codice_Lavorazione'
      ' ,:p_Modelli '
      ' ,:P_Sfrido '
      ' ,:P_NettoMQ'
      ', :P_NTeste'
      ', :P_PathFresa'
      ',:P_TempoTaglio'
      ',:P_Pacco'
      ''
      ''
      ');')
    Left = 816
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_Nome'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Hash'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_NSchema'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_IdMacchina'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Materiale'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Dim_X_Pannello'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Dim_Z_Pannello'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Dim_Y_Pannello'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Num_Pannelli'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Codice_Lavorazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Modelli'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Sfrido'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_NettoMQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_NTeste'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_PathFresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_TempoTaglio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Pacco'
        Value = nil
      end>
  end
  object qryGetIdSchema: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      'SELECT'
      '  idSchema'
      ''
      'FROM schemi_di_lavorazione'
      
        'WHERE Nome = :p_Nome AND Hash = :p_hash AND NSchema = :P_NSchema' +
        ' AND IDMacchina = :P_IdMacchina'
      ';')
    Left = 328
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_Nome'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_hash'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_NSchema'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_IdMacchina'
        Value = nil
      end>
  end
  object cmdInsDetailSchema: TUniSQL
    Connection = connFal_Fusti
    SQL.Strings = (
      'INSERT INTO dettagio_schema'
      '('
      '  idSchema'
      ' ,Label_Parte'
      ' ,Qta'
      ')'
      'VALUES'
      '('
      '  :p_idSchema'
      ' ,:p_Label_Parte'
      ' ,:p_Qta'
      ');')
    Left = 816
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_idSchema'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Label_Parte'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_Qta'
        Value = nil
      end>
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 200
    Top = 112
  end
  object tblfermimacchina: TUniTable
    TableName = 'fermimacchina'
    Connection = connFal_Fusti
    MasterSource = srcSchedeLav
    MasterFields = 'IdScheda'
    DetailFields = 'idScheda'
    AfterPost = tblFermiMacchina_oldAfterPost
    AfterDelete = tblFermiMacchina_oldAfterDelete
    OnNewRecord = tblFermiMacchina_oldNewRecord
    Left = 48
    Top = 288
    object tblfermimacchinaidScheda: TLargeintField
      FieldName = 'idScheda'
      Required = True
    end
    object tblfermimacchinaNumNota: TSmallintField
      FieldName = 'NumNota'
      Required = True
    end
    object tblfermimacchinaStart: TStringField
      FieldName = 'Start'
      Size = 25
    end
    object tblfermimacchinaEnd: TStringField
      FieldName = 'End'
      Size = 25
    end
    object tblfermimacchinaNota: TStringField
      FieldName = 'Nota'
      Size = 255
    end
    object tblfermimacchinaTipo: TStringField
      FieldName = 'Tipo'
      Size = 12
    end
  end
  object qryGetMatGoByIdScheda: TUniQuery
    Connection = connFal_Fusti
    SQL.Strings = (
      'SELECT'
      '  rsl.IdScheda, '
      '  rsl.CodiceMatGo,'
      '  '
      
        '  sdl1.Materiale,CONCAT(sdl1.Materiale,'#39' '#39',SUBSTR(rsl.CodiceMatG' +
        'o,4)) AS Descrizione,'
      '  '
      
        '  SUM(rsl.Qta * sdl1.Dim_X_Pannello * 0.001 * sdl1.Dim_Y_Pannell' +
        'o * 0.001) AS TMQ,'
      
        '  SUM(rsl.Qta * sdl1.Dim_X_Pannello * 0.001 * sdl1.Dim_Y_Pannell' +
        'o * 0.001 * sdl1.Dim_Z_Pannello * 0.001) AS TMC'
      ' '
      '    '
      ''
      '  '
      'FROM schede_di_lavorazione sdl'
      '  INNER JOIN righe_scheda_lavorazione rsl'
      '    ON sdl.IdScheda = rsl.IdScheda'
      '  INNER JOIN schemi_di_lavorazione sdl1'
      '    ON rsl.idSchema = sdl1.idSchema'
      ''
      'WHERE '
      ''
      ' sdl.IdScheda = :P_IDScheda'
      ' and rsl.CodiceMatGo IS NOT NULL  '
      ' and rsl.Riga_GO is  null'
      ' and rsl.Progressivo_GO is  null'
      ''
      
        'GROUP BY rsl.IdScheda, rsl.CodiceMatGo,  sdl1.Materiale, Descriz' +
        'ione;')
    Left = 680
    Top = 488
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'P_IDScheda'
        Value = 11639
      end>
  end
  object cmdSetGOCoordinate: TUniSQL
    Connection = connFal_Fusti
    SQL.Strings = (
      'UPDATE righe_scheda_lavorazione rsl'
      
        'SET rsl.Riga_Go = :P_RIGA_GO, rsl.Progressivo_Go = :P_progressiv' +
        'o_GO'
      ''
      ''
      
        'WHERE rsl.IdScheda = :P_IDScheda AND rsl.CodiceMatGo = :P_Codice' +
        'MAtGO;')
    Left = 680
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_RIGA_GO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_progressivo_GO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_IDScheda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_CodiceMAtGO'
        Value = nil
      end>
  end
end
