object DM: TDM
  OldCreateOrder = False
  Height = 552
  Width = 616
  object DSEsteira: TDataSource
    AutoEdit = False
    DataSet = TEsteira
    Left = 512
    Top = 82
  end
  object DSCadProdu: TDataSource
    Left = 320
    Top = 82
  end
  object dsCadCateg: TDataSource
    DataSet = TCadCateg
    Left = 320
    Top = 136
  end
  object dsEtiqueta: TDataSource
    DataSet = TEtiqueta
    Left = 320
    Top = 200
  end
  object DSZAcesso: TDataSource
    DataSet = ZAcesso
    Left = 193
    Top = 133
  end
  object dsParam: TDataSource
    DataSet = TParam
    Left = 190
    Top = 242
  end
  object FDTransaction1: TFDTransaction
    Connection = BDConexao
    Left = 127
    Top = 24
  end
  object qrSql5: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 306
  end
  object qrSql1: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 82
  end
  object qrSql2: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 133
  end
  object qrSql3: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 189
  end
  object qrSql4: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 245
  end
  object TParam: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ZPARAM'
      '')
    Left = 128
    Top = 245
  end
  object cdsBDModulo: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ZMODULO ORDER BY TAG')
    Left = 128
    Top = 189
    object cdsBDModuloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 25
    end
    object cdsBDModuloTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object cdsBDModuloGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object cdsBDModuloTAG: TIntegerField
      FieldName = 'TAG'
      Origin = 'TAG'
    end
    object cdsBDModuloEDITAR: TStringField
      FieldName = 'EDITAR'
      Origin = 'EDITAR'
      Size = 120
    end
    object cdsBDModuloEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Origin = 'EXCLUIR'
      Size = 120
    end
    object cdsBDModuloVISUALIZAR: TStringField
      FieldName = 'VISUALIZAR'
      Origin = 'VISUALIZAR'
      Size = 120
    end
    object cdsBDModuloREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object cdsBDModuloREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ZAcesso: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ZACESSO ORDER BY DESCRICAO')
    Left = 128
    Top = 133
    object ZAcessoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object ZAcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object ZAcessoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 10
    end
    object ZAcessoPROG1: TStringField
      FieldName = 'PROG1'
      Origin = 'PROG1'
      Size = 1
    end
    object ZAcessoPROG2: TStringField
      FieldName = 'PROG2'
      Origin = 'PROG2'
      Size = 1
    end
    object ZAcessoPROG3: TStringField
      FieldName = 'PROG3'
      Origin = 'PROG3'
      Size = 1
    end
    object ZAcessoPROG4: TStringField
      FieldName = 'PROG4'
      Origin = 'PROG4'
      Size = 1
    end
    object ZAcessoPROG5: TStringField
      FieldName = 'PROG5'
      Origin = 'PROG5'
      Size = 1
    end
    object ZAcessoPROG6: TStringField
      FieldName = 'PROG6'
      Origin = 'PROG6'
      Size = 1
    end
    object ZAcessoPROG7: TStringField
      FieldName = 'PROG7'
      Origin = 'PROG7'
      Size = 1
    end
    object ZAcessoPROG8: TStringField
      FieldName = 'PROG8'
      Origin = 'PROG8'
      Size = 1
    end
    object ZAcessoPROG9: TStringField
      FieldName = 'PROG9'
      Origin = 'PROG9'
      Size = 1
    end
    object ZAcessoPROG10: TStringField
      FieldName = 'PROG10'
      Origin = 'PROG10'
      Size = 1
    end
    object ZAcessoPROG11: TStringField
      FieldName = 'PROG11'
      Origin = 'PROG11'
      Size = 1
    end
    object ZAcessoPROG12: TStringField
      FieldName = 'PROG12'
      Origin = 'PROG12'
      Size = 1
    end
    object ZAcessoPROG13: TStringField
      FieldName = 'PROG13'
      Origin = 'PROG13'
      Size = 1
    end
    object ZAcessoPROG14: TStringField
      FieldName = 'PROG14'
      Origin = 'PROG14'
      Size = 1
    end
    object ZAcessoPROG15: TStringField
      FieldName = 'PROG15'
      Origin = 'PROG15'
      Size = 1
    end
    object ZAcessoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ZAcessoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object ZAcessoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TEmpresa: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM EMPRESA'
      '')
    Left = 128
    Top = 82
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
    OnRecover = BDConexaoRecover
    Left = 56
    Top = 24
  end
  object TCadProdu: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadprodu where variecod = 1 order by codigo')
    Left = 264
    Top = 82
  end
  object TCadCateg: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from CADCATEG')
    Left = 264
    Top = 136
  end
  object TEtiqueta: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from ETIQUETA')
    Left = 264
    Top = 200
    object TEtiquetaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TEtiquetaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object TEtiquetaPESO: TStringField
      FieldName = 'PESO'
      Origin = 'PESO'
      Size = 10
    end
    object TEtiquetaLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 10
    end
    object TEtiquetaLINHA1: TStringField
      FieldName = 'LINHA1'
      Origin = 'LINHA1'
      Size = 30
    end
    object TEtiquetaLINHA2: TStringField
      FieldName = 'LINHA2'
      Origin = 'LINHA2'
      Size = 30
    end
    object TEtiquetaLINHA3: TStringField
      FieldName = 'LINHA3'
      Origin = 'LINHA3'
      Size = 30
    end
    object TEtiquetaLINHA4: TStringField
      FieldName = 'LINHA4'
      Origin = 'LINHA4'
      Size = 30
    end
    object TEtiquetaLINHA5: TStringField
      FieldName = 'LINHA5'
      Origin = 'LINHA5'
      Size = 30
    end
    object TEtiquetaQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object TEtiquetaCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
    end
    object TEtiquetaVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Origin = 'VARIEDADE'
      Size = 120
    end
    object TEtiquetaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 30
    end
    object TEtiquetaCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
      Size = 5
    end
    object TEtiquetaBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'BARRA'
      Size = 12
    end
    object TEtiquetaLINHA10: TStringField
      FieldName = 'LINHA10'
      Origin = 'LINHA10'
    end
    object TEtiquetaLINHA11: TStringField
      FieldName = 'LINHA11'
      Origin = 'LINHA11'
    end
    object TEtiquetaLINHA12: TStringField
      FieldName = 'LINHA12'
      Origin = 'LINHA12'
    end
    object TEtiquetaLINHA13: TStringField
      FieldName = 'LINHA13'
      Origin = 'LINHA13'
    end
    object TEtiquetaID_LANC: TIntegerField
      FieldName = 'ID_LANC'
      Origin = 'ID_LANC'
    end
    object TEtiquetaID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object TEtiquetaWEBLOCALPRO: TStringField
      FieldName = 'WEBLOCALPRO'
      Origin = 'WEBLOCALPRO'
      Size = 50
    end
    object TEtiquetaWEBLOCALEMP: TStringField
      FieldName = 'WEBLOCALEMP'
      Origin = 'WEBLOCALEMP'
      Size = 50
    end
    object TEtiquetaWEBLOCALCLI: TStringField
      FieldName = 'WEBLOCALCLI'
      Origin = 'WEBLOCALCLI'
      Size = 50
    end
    object TEtiquetaWEBQRCODEL1: TStringField
      FieldName = 'WEBQRCODEL1'
      Origin = 'WEBQRCODEL1'
      Size = 120
    end
    object TEtiquetaWEBQRCODEL2: TStringField
      FieldName = 'WEBQRCODEL2'
      Origin = 'WEBQRCODEL2'
      Size = 120
    end
    object TEtiquetaWEBQRCODEL3: TStringField
      FieldName = 'WEBQRCODEL3'
      Origin = 'WEBQRCODEL3'
      Size = 120
    end
    object TEtiquetaWEBQRCODEL4: TStringField
      FieldName = 'WEBQRCODEL4'
      Origin = 'WEBQRCODEL4'
      Size = 120
    end
    object TEtiquetaEMPRESAEND: TStringField
      FieldName = 'EMPRESAEND'
      Origin = 'EMPRESAEND'
      Size = 100
    end
    object TEtiquetaPRODUTORDES: TStringField
      FieldName = 'PRODUTORDES'
      Origin = 'PRODUTORDES'
      Size = 100
    end
    object TEtiquetaPRODUTORDOC: TStringField
      FieldName = 'PRODUTORDOC'
      Origin = 'PRODUTORDOC'
      Size = 100
    end
    object TEtiquetaEMPRESADOC: TStringField
      FieldName = 'EMPRESADOC'
      Origin = 'EMPRESADOC'
      Size = 100
    end
    object TEtiquetaPRODUTOREND: TStringField
      FieldName = 'PRODUTOREND'
      Origin = 'PRODUTOREND'
      Size = 100
    end
    object TEtiquetaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TEtiquetaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TClassif: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM CLASSIF WHERE LANC = -1')
    Left = 264
    Top = 309
  end
  object TClassifMer: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM CLASSIFM WHERE LANC = -1')
    Left = 320
    Top = 309
  end
  object cdsDados: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from ETIQUETA ')
    Left = 264
    Top = 253
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object cdsDadosPESO: TStringField
      FieldName = 'PESO'
      Origin = 'PESO'
      Size = 10
    end
    object cdsDadosLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 10
    end
    object cdsDadosLINHA1: TStringField
      FieldName = 'LINHA1'
      Origin = 'LINHA1'
      Size = 30
    end
    object cdsDadosLINHA2: TStringField
      FieldName = 'LINHA2'
      Origin = 'LINHA2'
      Size = 30
    end
    object cdsDadosLINHA3: TStringField
      FieldName = 'LINHA3'
      Origin = 'LINHA3'
      Size = 30
    end
    object cdsDadosLINHA4: TStringField
      FieldName = 'LINHA4'
      Origin = 'LINHA4'
      Size = 30
    end
    object cdsDadosLINHA5: TStringField
      FieldName = 'LINHA5'
      Origin = 'LINHA5'
      Size = 30
    end
    object cdsDadosQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsDadosCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
    end
    object cdsDadosVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Origin = 'VARIEDADE'
      Size = 120
    end
    object cdsDadosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 30
    end
    object cdsDadosCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
      Size = 5
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'BARRA'
      Size = 12
    end
    object cdsDadosLINHA10: TStringField
      FieldName = 'LINHA10'
      Origin = 'LINHA10'
    end
    object cdsDadosLINHA11: TStringField
      FieldName = 'LINHA11'
      Origin = 'LINHA11'
    end
    object cdsDadosLINHA12: TStringField
      FieldName = 'LINHA12'
      Origin = 'LINHA12'
    end
    object cdsDadosLINHA13: TStringField
      FieldName = 'LINHA13'
      Origin = 'LINHA13'
    end
    object cdsDadosID_LANC: TIntegerField
      FieldName = 'ID_LANC'
      Origin = 'ID_LANC'
    end
    object cdsDadosID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object cdsDadosWEBLOCALPRO: TStringField
      FieldName = 'WEBLOCALPRO'
      Origin = 'WEBLOCALPRO'
      Size = 50
    end
    object cdsDadosWEBLOCALEMP: TStringField
      FieldName = 'WEBLOCALEMP'
      Origin = 'WEBLOCALEMP'
      Size = 50
    end
    object cdsDadosWEBLOCALCLI: TStringField
      FieldName = 'WEBLOCALCLI'
      Origin = 'WEBLOCALCLI'
      Size = 50
    end
    object cdsDadosWEBQRCODEL1: TStringField
      FieldName = 'WEBQRCODEL1'
      Origin = 'WEBQRCODEL1'
      Size = 120
    end
    object cdsDadosWEBQRCODEL2: TStringField
      FieldName = 'WEBQRCODEL2'
      Origin = 'WEBQRCODEL2'
      Size = 120
    end
    object cdsDadosWEBQRCODEL3: TStringField
      FieldName = 'WEBQRCODEL3'
      Origin = 'WEBQRCODEL3'
      Size = 120
    end
    object cdsDadosWEBQRCODEL4: TStringField
      FieldName = 'WEBQRCODEL4'
      Origin = 'WEBQRCODEL4'
      Size = 120
    end
    object cdsDadosEMPRESAEND: TStringField
      FieldName = 'EMPRESAEND'
      Origin = 'EMPRESAEND'
      Size = 100
    end
    object cdsDadosPRODUTORDES: TStringField
      FieldName = 'PRODUTORDES'
      Origin = 'PRODUTORDES'
      Size = 100
    end
    object cdsDadosPRODUTORDOC: TStringField
      FieldName = 'PRODUTORDOC'
      Origin = 'PRODUTORDOC'
      Size = 100
    end
    object cdsDadosEMPRESADOC: TStringField
      FieldName = 'EMPRESADOC'
      Origin = 'EMPRESADOC'
      Size = 100
    end
    object cdsDadosPRODUTOREND: TStringField
      FieldName = 'PRODUTOREND'
      Origin = 'PRODUTOREND'
      Size = 100
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TEsteiraRel: TFDQuery
    OnCalcFields = TEsteiraRelCalcFields
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM ESTEIRAC010')
    Left = 320
    Top = 253
    object TEsteiraRelLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEsteiraRelLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object TEsteiraRelVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'VARIECOD'
    end
    object TEsteiraRelESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
      Origin = 'ESTEIRA'
    end
    object TEsteiraRelLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object TEsteiraRelBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'BARRA'
      Size = 13
    end
    object TEsteiraRelNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object TEsteiraRelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TEsteiraRelQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object TEsteiraRelVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'VARIEDES'
      Size = 30
    end
    object TEsteiraRelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object TEsteiraRelQTDEANT: TFMTBCDField
      FieldName = 'QTDEANT'
      Origin = 'QTDEANT'
      Precision = 18
      Size = 3
    end
    object TEsteiraRelQTDEATU: TFMTBCDField
      FieldName = 'QTDEATU'
      Origin = 'QTDEATU'
      Precision = 18
      Size = 3
    end
    object TEsteiraRelEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'EMBALCOD'
    end
    object TEsteiraRelDATALANC: TDateField
      FieldName = 'DATALANC'
      Origin = 'DATALANC'
    end
    object TEsteiraRelHORALANC: TStringField
      FieldName = 'HORALANC'
      Origin = 'HORALANC'
      Size = 10
    end
    object TEsteiraRelLOTELANC: TIntegerField
      FieldName = 'LOTELANC'
      Origin = 'LOTELANC'
    end
    object TEsteiraRelTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Origin = 'TEXTO1'
      Size = 10
    end
    object TEsteiraRelTEXTO2: TStringField
      FieldName = 'TEXTO2'
      Origin = 'TEXTO2'
      Size = 10
    end
    object TEsteiraRelTEXTO3: TStringField
      FieldName = 'TEXTO3'
      Origin = 'TEXTO3'
      Size = 10
    end
    object TEsteiraRelTEXTO4: TStringField
      FieldName = 'TEXTO4'
      Origin = 'TEXTO4'
    end
    object TEsteiraRelTEXTO5: TStringField
      FieldName = 'TEXTO5'
      Origin = 'TEXTO5'
      Size = 50
    end
    object TEsteiraRelTEXTO6: TStringField
      FieldName = 'TEXTO6'
      Origin = 'TEXTO6'
      Size = 50
    end
    object TEsteiraRelTEXTO7: TStringField
      FieldName = 'TEXTO7'
      Origin = 'TEXTO7'
      Size = 40
    end
    object TEsteiraRelTEXTO8: TStringField
      FieldName = 'TEXTO8'
      Origin = 'TEXTO8'
      Size = 30
    end
    object TEsteiraRelTEXTO9: TStringField
      FieldName = 'TEXTO9'
      Origin = 'TEXTO9'
    end
    object TEsteiraRelNUMERO1: TIntegerField
      FieldName = 'NUMERO1'
      Origin = 'NUMERO1'
    end
    object TEsteiraRelNUMERO2: TIntegerField
      FieldName = 'NUMERO2'
      Origin = 'NUMERO2'
    end
    object TEsteiraRelNUMERO3: TIntegerField
      FieldName = 'NUMERO3'
      Origin = 'NUMERO3'
    end
    object TEsteiraRelVALOR1: TFMTBCDField
      FieldName = 'VALOR1'
      Origin = 'VALOR1'
      Precision = 18
      Size = 3
    end
    object TEsteiraRelVALOR2: TFMTBCDField
      FieldName = 'VALOR2'
      Origin = 'VALOR2'
      Precision = 18
      Size = 3
    end
    object TEsteiraRelVALOR3: TFMTBCDField
      FieldName = 'VALOR3'
      Origin = 'VALOR3'
      Precision = 18
      Size = 3
    end
    object TEsteiraRelCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Origin = 'CALIBREDES'
      Size = 10
    end
    object TEsteiraRelPALET: TIntegerField
      FieldName = 'PALET'
      Origin = 'PALET'
    end
    object TEsteiraRelTAM: TStringField
      FieldKind = fkCalculated
      FieldName = 'TAM'
      Size = 10
      Calculated = True
    end
    object TEsteiraRelCAT: TStringField
      FieldKind = fkCalculated
      FieldName = 'CAT'
      Size = 10
      Calculated = True
    end
    object TEsteiraRelCLAS: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLAS'
      Size = 3
      Calculated = True
    end
  end
  object TExiste: TFDTable
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.UpdateTableName = 'ESTEIRAC000'
    TableName = 'ESTEIRAC000'
    Left = 424
    Top = 82
  end
  object qrSqlCommit: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 482
  end
  object qrSqlBus: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 365
  end
  object qrSqlTra: TFDQuery
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 56
    Top = 421
  end
  object TEsteira: TFDQuery
    OnCalcFields = TEsteiraCalcFields
    CachedUpdates = True
    Connection = BDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvEDelete, uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From ESTEIRAC000 order by LANC')
    Left = 466
    Top = 82
  end
end
