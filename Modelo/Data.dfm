object DM: TDM
  OldCreateOrder = False
  Height = 512
  Width = 1244
  object Session1: TSession
    NetFileDir = '%TEMP%'
    SessionName = 'Sesao1'
    Left = 766
    Top = 9
  end
  object JaeAdmin: TDatabase
    AliasName = 'AcwebTESTE12345'
    DatabaseName = 'JaeAdmin'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME='
      'ODBC DSN=AcwebTESTE12345'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'SQLQRYMODE='
      'LANGDRIVER='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'PASSWORD=')
    SessionName = 'Sesao1'
    Left = 718
    Top = 9
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    ContentsEncodingCompress = []
    NivelLog = 0
    WebService = wsRepublicaVirtual
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 532
    Top = 14
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 584
    Top = 14
  end
  object DSEsteira: TDataSource
    AutoEdit = False
    DataSet = TEsteira
    Left = 448
    Top = 74
  end
  object dsTAcesso: TDataSource
    DataSet = TAcesso
    Left = 281
    Top = 125
  end
  object dsParam: TDataSource
    DataSet = TParam
    Left = 281
    Top = 237
  end
  object FDTransaction1: TFDTransaction
    Connection = BDConexao
    Left = 127
    Top = 16
  end
  object qrSql5: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 298
  end
  object qrSql1: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 74
  end
  object qrSql2: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 125
  end
  object qrSql3: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 181
  end
  object qrSql4: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 237
  end
  object TParam: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ZPARAM'
      '')
    Left = 216
    Top = 237
  end
  object TModulo: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select Tag, Visualizar From zModulo Where Tipo = '#39'X'#39)
    Left = 216
    Top = 293
  end
  object TAcesso: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ZACESSO ORDER BY DESCRICAO')
    Left = 216
    Top = 126
  end
  object TEmpresa: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM EMPRESA'
      '')
    Left = 216
    Top = 74
    object TEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TEmpresaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 41
    end
    object TEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 41
    end
    object TEmpresaCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Origin = 'CIDADECOD'
    end
    object TEmpresaCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Origin = 'CIDADEDES'
      Size = 30
    end
    object TEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 31
    end
    object TEmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 3
    end
    object TEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object TEmpresaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 21
    end
    object TEmpresaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 21
    end
    object TEmpresaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 31
    end
    object TEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 11
    end
    object TEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 76
    end
    object TEmpresaENDGERAL: TStringField
      FieldName = 'ENDGERAL'
      Origin = 'ENDGERAL'
      Size = 101
    end
    object TEmpresaFOLDER: TStringField
      FieldName = 'FOLDER'
      Origin = 'FOLDER'
      Size = 76
    end
    object TEmpresaSENHADES: TStringField
      FieldName = 'SENHADES'
      Origin = 'SENHADES'
      Size = 151
    end
    object TEmpresaANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 5
    end
    object TEmpresaMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 3
    end
    object TEmpresaLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object TEmpresaPROTECAO: TStringField
      FieldName = 'PROTECAO'
      Origin = 'PROTECAO'
      Size = 2
    end
    object TEmpresaLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object TEmpresaBANINS: TStringField
      FieldName = 'BANINS'
      Origin = 'BANINS'
    end
    object TEmpresaBANAGE: TStringField
      FieldName = 'BANAGE'
      Origin = 'BANAGE'
      Size = 6
    end
    object TEmpresaBANCTA: TStringField
      FieldName = 'BANCTA'
      Origin = 'BANCTA'
      Size = 13
    end
    object TEmpresaBANDES: TStringField
      FieldName = 'BANDES'
      Origin = 'BANDES'
      Size = 30
    end
    object TEmpresaBANCVE: TStringField
      FieldName = 'BANCVE'
      Origin = 'BANCVE'
    end
    object TEmpresaBANCTR: TStringField
      FieldName = 'BANCTR'
      Origin = 'BANCTR'
      Size = 10
    end
    object TEmpresaSIMPLES: TStringField
      FieldName = 'SIMPLES'
      Origin = 'SIMPLES'
      Size = 1
    end
    object TEmpresaNSU: TIntegerField
      FieldName = 'NSU'
      Origin = 'NSU'
    end
    object TEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 120
    end
    object TEmpresaCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
      Size = 50
    end
    object TEmpresaCONTADORCRC: TStringField
      FieldName = 'CONTADORCRC'
      Origin = 'CONTADORCRC'
      Size = 10
    end
    object TEmpresaCODCIDIBGE: TIntegerField
      FieldName = 'CODCIDIBGE'
      Origin = 'CODCIDIBGE'
    end
    object TEmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object TEmpresaTPREGIME: TStringField
      FieldName = 'TPREGIME'
      Origin = 'TPREGIME'
      Size = 1
    end
    object TEmpresaTRIBUTO1: TBCDField
      FieldName = 'TRIBUTO1'
      Origin = 'TRIBUTO1'
      Precision = 18
    end
    object TEmpresaTRIBUTO2: TBCDField
      FieldName = 'TRIBUTO2'
      Origin = 'TRIBUTO2'
      Precision = 18
    end
    object TEmpresaTRIBUTO3: TBCDField
      FieldName = 'TRIBUTO3'
      Origin = 'TRIBUTO3'
      Precision = 18
    end
    object TEmpresaICMS_CREDITO: TStringField
      FieldName = 'ICMS_CREDITO'
      Origin = 'ICMS_CREDITO'
      Size = 1
    end
    object TEmpresaICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Origin = 'ICMS_CREDPER'
      Precision = 18
    end
    object TEmpresaSERVICOPER: TBCDField
      FieldName = 'SERVICOPER'
      Origin = 'SERVICOPER'
      Precision = 18
    end
    object TEmpresaIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object TEmpresaWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Origin = 'WEBLOCAL'
      Size = 50
    end
    object TEmpresaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TEmpresaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BDConexao: TFDConnection
    Params.Strings = (
      'Database=c:\acwagro\basedados\teste\BDFrutis.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=24.152.37.101'
      'CharacterSet=WIN1252'
      'Port=3060'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    TxOptions.AutoStop = False
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 56
    Top = 16
  end
  object TClassif: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM CLASSIF WHERE LANC = -1')
    Left = 400
    Top = 125
  end
  object TClassifMer: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM CLASSIFM WHERE LANC = -1')
    Left = 449
    Top = 125
  end
  object TExiste: TFDTable
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.UpdateTableName = 'ESTEIRAC000'
    TableName = 'ESTEIRAC000'
    Left = 360
    Top = 74
  end
  object qrSqlCommit: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 127
    Top = 181
  end
  object qrSqlBus: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 127
    Top = 74
  end
  object qrSqlTra: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 127
    Top = 125
  end
  object TEsteira: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvEDelete, uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ESTEIRAC000 order by LANC')
    Left = 402
    Top = 74
  end
  object TImpres: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ZIMPR'
      '')
    Left = 216
    Top = 181
  end
  object dsImpress: TDataSource
    DataSet = TImpres
    Left = 281
    Top = 181
  end
  object dsEmpresa: TDataSource
    DataSet = TEmpresa
    Left = 281
    Top = 74
  end
  object TCadNota: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * from CadNota')
    Left = 400
    Top = 181
  end
  object TConfig: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * from NFE_Config')
    Left = 400
    Top = 237
    object TConfigREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object TConfigCER_CAMINHO: TStringField
      FieldName = 'CER_CAMINHO'
      Origin = 'CER_CAMINHO'
      Size = 100
    end
    object TConfigCER_SENHA: TStringField
      FieldName = 'CER_SENHA'
      Origin = 'CER_SENHA'
    end
    object TConfigCER_NUMSERIE: TStringField
      FieldName = 'CER_NUMSERIE'
      Origin = 'CER_NUMSERIE'
      Size = 100
    end
    object TConfigGER_DANFE: TStringField
      FieldName = 'GER_DANFE'
      Origin = 'GER_DANFE'
      Size = 1
    end
    object TConfigGER_FORMAEMISSAO: TStringField
      FieldName = 'GER_FORMAEMISSAO'
      Origin = 'GER_FORMAEMISSAO'
      Size = 1
    end
    object TConfigGER_LOGOMARCA: TStringField
      FieldName = 'GER_LOGOMARCA'
      Origin = 'GER_LOGOMARCA'
      Size = 100
    end
    object TConfigGER_SALVAR: TStringField
      FieldName = 'GER_SALVAR'
      Origin = 'GER_SALVAR'
      Size = 100
    end
    object TConfigGER_PATHSALVAR: TStringField
      FieldName = 'GER_PATHSALVAR'
      Origin = 'GER_PATHSALVAR'
      Size = 100
    end
    object TConfigWEB_UF: TStringField
      FieldName = 'WEB_UF'
      Origin = 'WEB_UF'
      Size = 2
    end
    object TConfigWEB_AMBIENTE: TStringField
      FieldName = 'WEB_AMBIENTE'
      Origin = 'WEB_AMBIENTE'
      Size = 1
    end
    object TConfigWEB_VISUALIZAR: TStringField
      FieldName = 'WEB_VISUALIZAR'
      Origin = 'WEB_VISUALIZAR'
      Size = 1
    end
    object TConfigPRX_HOST: TStringField
      FieldName = 'PRX_HOST'
      Origin = 'PRX_HOST'
      Size = 100
    end
    object TConfigPRX_PORTA: TStringField
      FieldName = 'PRX_PORTA'
      Origin = 'PRX_PORTA'
      Size = 10
    end
    object TConfigPROX_USER: TStringField
      FieldName = 'PROX_USER'
      Origin = 'PROX_USER'
      Size = 30
    end
    object TConfigPROX_PASS: TStringField
      FieldName = 'PROX_PASS'
      Origin = 'PROX_PASS'
    end
    object TConfigEML_HOST: TStringField
      FieldName = 'EML_HOST'
      Origin = 'EML_HOST'
      Size = 100
    end
    object TConfigEML_PORT: TStringField
      FieldName = 'EML_PORT'
      Origin = 'EML_PORT'
      Size = 10
    end
    object TConfigEML_USER: TStringField
      FieldName = 'EML_USER'
      Origin = 'EML_USER'
      Size = 50
    end
    object TConfigEML_PASS: TStringField
      FieldName = 'EML_PASS'
      Origin = 'EML_PASS'
      Size = 30
    end
    object TConfigEML_ASSUNTO: TStringField
      FieldName = 'EML_ASSUNTO'
      Origin = 'EML_ASSUNTO'
      Size = 120
    end
    object TConfigEML_SSL: TStringField
      FieldName = 'EML_SSL'
      Origin = 'EML_SSL'
      Size = 1
    end
    object TConfigCER_VALIDADE: TSQLTimeStampField
      FieldName = 'CER_VALIDADE'
      Origin = 'CER_VALIDADE'
    end
    object TConfigCER_SSLLIB: TIntegerField
      FieldName = 'CER_SSLLIB'
      Origin = 'CER_SSLLIB'
    end
    object TConfigCER_CRYPTLIB: TIntegerField
      FieldName = 'CER_CRYPTLIB'
      Origin = 'CER_CRYPTLIB'
    end
    object TConfigCER_HTTPLIB: TIntegerField
      FieldName = 'CER_HTTPLIB'
      Origin = 'CER_HTTPLIB'
    end
    object TConfigCER_XMLSIGNLIB: TIntegerField
      FieldName = 'CER_XMLSIGNLIB'
      Origin = 'CER_XMLSIGNLIB'
    end
    object TConfigWEB_SSLTYPE: TIntegerField
      FieldName = 'WEB_SSLTYPE'
      Origin = 'WEB_SSLTYPE'
    end
    object TConfigGER_VERSAO: TIntegerField
      FieldName = 'GER_VERSAO'
      Origin = 'GER_VERSAO'
    end
    object TConfigGER_PATSCHEMAS: TStringField
      FieldName = 'GER_PATSCHEMAS'
      Origin = 'GER_PATSCHEMAS'
      Size = 100
    end
    object TConfigMGM_SUP: TIntegerField
      FieldName = 'MGM_SUP'
      Origin = 'MGM_SUP'
    end
    object TConfigMGM_INF: TIntegerField
      FieldName = 'MGM_INF'
      Origin = 'MGM_INF'
    end
    object TConfigMGM_ESQ: TIntegerField
      FieldName = 'MGM_ESQ'
      Origin = 'MGM_ESQ'
    end
    object TConfigMGM_DIR: TIntegerField
      FieldName = 'MGM_DIR'
      Origin = 'MGM_DIR'
    end
    object TConfigEML_TLS: TStringField
      FieldName = 'EML_TLS'
      Origin = 'EML_TLS'
      Size = 1
    end
    object TConfigSMTP_HOST: TStringField
      FieldName = 'SMTP_HOST'
      Origin = 'SMTP_HOST'
      Size = 50
    end
    object TConfigSMTP_PORTA: TStringField
      FieldName = 'SMTP_PORTA'
      Origin = 'SMTP_PORTA'
      Size = 10
    end
    object TConfigSMTP_USER: TStringField
      FieldName = 'SMTP_USER'
      Origin = 'SMTP_USER'
      Size = 50
    end
    object TConfigSMTP_PASS: TStringField
      FieldName = 'SMTP_PASS'
      Origin = 'SMTP_PASS'
    end
    object TConfigSMTP_USERNAME: TStringField
      FieldName = 'SMTP_USERNAME'
      Origin = 'SMTP_USERNAME'
    end
    object TConfigREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TConfigREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
