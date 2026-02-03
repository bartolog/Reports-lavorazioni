object DMGO: TDMGO
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object GOConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3307
    Database = 'arc_fal'
    Username = 'bartolo'
    Server = 'Server2021'
    LoginPrompt = False
    Left = 168
    Top = 152
    EncryptedPassword = '9DFF9EFF8DFF8BFF90FF93FF90FF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 264
    Top = 152
  end
  object qryMateriali: TUniQuery
    Connection = GOConnection
    SQL.Strings = (
      'SELECT CODICE , DESCRIZIONE1 FROM ART'
      'WHERE  TIN_CODICE = 2 AND LENGTH(trim(TIN_CODICE)) = 1;')
    Left = 168
    Top = 248
  end
  object dsMateriali: TUniDataSource
    DataSet = qryMateriali
    Left = 272
    Top = 248
  end
end
