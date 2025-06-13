object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 290
  Width = 594
  object qrProc1: TQuery
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 176
    Top = 26
  end
  object JaeEsteira: TDatabase
    AliasName = 'ACWebEsteira'
    DatabaseName = 'JaeEsteira'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=C:\JAEINTER\SYSTEMFRUITS\ESTEIRA.MDB')
    SessionName = 'Sesao2'
    Left = 28
    Top = 26
  end
  object Session2: TSession
    NetFileDir = '%TEMP%'
    SessionName = 'Sesao2'
    Left = 68
    Top = 26
  end
  object TEsteira: TTable
    Tag = 20
    AfterOpen = TEsteiraAfterOpen
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    FieldDefs = <
      item
        Name = 'LOTE'
        DataType = ftInteger
      end
      item
        Name = 'VARIECOD'
        DataType = ftInteger
      end
      item
        Name = 'ESTEIRA'
        DataType = ftInteger
      end
      item
        Name = 'LANC'
        DataType = ftInteger
      end
      item
        Name = 'BARRA'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'VARIEDES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTDEANT'
        DataType = ftFloat
      end
      item
        Name = 'QTDEATU'
        DataType = ftFloat
      end
      item
        Name = 'EMBALCOD'
        DataType = ftInteger
      end
      item
        Name = 'CALIBREDES'
        DataType = ftString
        Size = 10
      end>
    IndexFieldNames = 'LANC'
    StoreDefs = True
    TableName = 'ESTEIRAV00L0000'
    Left = 408
    Top = 26
    object TEsteiraLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object TEsteiraVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
    end
    object TEsteiraESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
    end
    object TEsteiraLANC: TIntegerField
      FieldName = 'LANC'
    end
    object TEsteiraBARRA: TStringField
      FieldName = 'BARRA'
      Size = 13
    end
    object TEsteiraNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object TEsteiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TEsteiraQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TEsteiraVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Size = 30
    end
    object TEsteiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object TEsteiraQTDEANT: TFloatField
      FieldName = 'QTDEANT'
    end
    object TEsteiraQTDEATU: TFloatField
      FieldName = 'QTDEATU'
    end
    object TEsteiraTAM: TStringField
      FieldKind = fkCalculated
      FieldName = 'TAM'
      Size = 10
      Calculated = True
    end
    object TEsteiraCAT: TStringField
      FieldKind = fkCalculated
      FieldName = 'CAT'
      Size = 10
      Calculated = True
    end
    object TEsteiraEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
    end
    object TEsteiraCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Size = 10
    end
  end
  object DSEsteira: TDataSource
    AutoEdit = False
    DataSet = TEsteira
    Left = 448
    Top = 26
  end
  object DSCadProdu: TDataSource
    DataSet = TCadProdu
    Left = 384
    Top = 99
  end
  object Session1: TSession
    NetFileDir = '%TEMP%'
    SessionName = 'Sesao1'
    Left = 68
    Top = 114
  end
  object JaeAdminProd: TDatabase
    AliasName = 'ACWebProducao'
    DatabaseName = 'JaeProducao'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME='
      'ODBC DSN=ACWebFruits'
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
      'PASSWORD=acwebdobrasil')
    SessionName = 'Sesao1'
    Left = 28
    Top = 114
  end
  object TEmpresa: TTable
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    TableName = 'EMPRESA'
    Left = 176
    Top = 113
  end
  object TCadCateg: TTable
    Tag = 20
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'CODIGO'
    TableName = 'CADCATEG'
    Left = 312
    Top = 160
  end
  object dsCadCateg: TDataSource
    DataSet = TCadCateg
    Left = 352
    Top = 160
  end
  object TEtiqueta: TTable
    Tag = 20
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'CODIGO'
    TableName = 'ETIQUETA'
    Left = 400
    Top = 160
    object TEtiquetaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object TEtiquetaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object TEtiquetaPESO: TStringField
      FieldName = 'PESO'
      Size = 10
    end
    object TEtiquetaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object TEtiquetaLINHA1: TStringField
      FieldName = 'LINHA1'
      Size = 30
    end
    object TEtiquetaLINHA2: TStringField
      FieldName = 'LINHA2'
      Size = 30
    end
    object TEtiquetaLINHA3: TStringField
      FieldName = 'LINHA3'
      Size = 30
    end
    object TEtiquetaLINHA4: TStringField
      FieldName = 'LINHA4'
      Size = 30
    end
    object TEtiquetaLINHA5: TStringField
      FieldName = 'LINHA5'
      Size = 30
    end
    object TEtiquetaQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object TEtiquetaCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
    object TEtiquetaVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Size = 120
    end
    object TEtiquetaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object TEtiquetaCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Size = 5
    end
    object TEtiquetaBARRA: TStringField
      FieldName = 'BARRA'
      Size = 12
    end
    object TEtiquetaLINHA10: TStringField
      FieldName = 'LINHA10'
    end
    object TEtiquetaLINHA11: TStringField
      FieldName = 'LINHA11'
    end
    object TEtiquetaLINHA12: TStringField
      FieldName = 'LINHA12'
    end
    object TEtiquetaLINHA13: TStringField
      FieldName = 'LINHA13'
    end
    object TEtiquetaID_LANC: TIntegerField
      FieldName = 'ID_LANC'
    end
    object TEtiquetaID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object TEtiquetaWEBLOCALPRO: TStringField
      FieldName = 'WEBLOCALPRO'
      Size = 50
    end
    object TEtiquetaWEBLOCALEMP: TStringField
      FieldName = 'WEBLOCALEMP'
      Size = 50
    end
    object TEtiquetaWEBLOCALCLI: TStringField
      FieldName = 'WEBLOCALCLI'
      Size = 50
    end
    object TEtiquetaWEBQRCODEL1: TStringField
      FieldName = 'WEBQRCODEL1'
      Size = 120
    end
    object TEtiquetaWEBQRCODEL2: TStringField
      FieldName = 'WEBQRCODEL2'
      Size = 120
    end
    object TEtiquetaWEBQRCODEL3: TStringField
      FieldName = 'WEBQRCODEL3'
      Size = 120
    end
    object TEtiquetaWEBQRCODEL4: TStringField
      FieldName = 'WEBQRCODEL4'
      Size = 120
    end
    object TEtiquetaEMPRESADOC: TStringField
      FieldName = 'EMPRESADOC'
      Size = 100
    end
    object TEtiquetaEMPRESAEND: TStringField
      FieldName = 'EMPRESAEND'
      Size = 100
    end
    object TEtiquetaPRODUTORDES: TStringField
      FieldName = 'PRODUTORDES'
      Size = 100
    end
    object TEtiquetaPRODUTORDOC: TStringField
      FieldName = 'PRODUTORDOC'
      Size = 100
    end
    object TEtiquetaPRODUTOREND: TStringField
      FieldName = 'PRODUTOREND'
      Size = 100
    end
  end
  object dsEtiqueta: TDataSource
    DataSet = TEtiqueta
    Left = 440
    Top = 160
  end
  object qrSql1: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 20
    Top = 160
  end
  object qrSql2: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 52
    Top = 160
  end
  object qrSql3: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 84
    Top = 160
  end
  object qrProc2: TQuery
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 216
    Top = 26
  end
  object qrProc3: TQuery
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 256
    Top = 26
  end
  object TExiste: TTable
    Tag = 20
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    IndexFieldNames = 'LANC'
    TableName = 'ESTEIRA'
    Left = 328
    Top = 26
  end
  object dsDados: TDataSource
    Left = 218
    Top = 181
  end
  object qrSqlBus: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    Left = 84
    Top = 210
  end
  object qrSqlTra: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    Left = 44
    Top = 210
  end
  object TCadProdu: TTable
    Tag = 20
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'CODIGO'
    TableName = 'CADPRODU'
    Left = 328
    Top = 99
  end
  object cdsDados: TTable
    Tag = 20
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'CODIGO'
    TableName = 'ETIQUETA'
    Left = 184
    Top = 181
    object cdsDadosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object cdsDadosPESO: TStringField
      FieldName = 'PESO'
      Size = 10
    end
    object cdsDadosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object cdsDadosLINHA1: TStringField
      FieldName = 'LINHA1'
      Size = 30
    end
    object cdsDadosLINHA2: TStringField
      FieldName = 'LINHA2'
      Size = 30
    end
    object cdsDadosLINHA3: TStringField
      FieldName = 'LINHA3'
      Size = 30
    end
    object cdsDadosLINHA4: TStringField
      FieldName = 'LINHA4'
      Size = 30
    end
    object cdsDadosLINHA5: TStringField
      FieldName = 'LINHA5'
      Size = 30
    end
    object cdsDadosQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsDadosCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
    object cdsDadosVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Size = 120
    end
    object cdsDadosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object cdsDadosCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Size = 5
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      Size = 12
    end
    object cdsDadosLINHA10: TStringField
      FieldName = 'LINHA10'
    end
    object cdsDadosLINHA11: TStringField
      FieldName = 'LINHA11'
    end
    object cdsDadosLINHA12: TStringField
      FieldName = 'LINHA12'
    end
    object cdsDadosLINHA13: TStringField
      FieldName = 'LINHA13'
    end
    object cdsDadosID_LANC: TIntegerField
      FieldName = 'ID_LANC'
    end
    object cdsDadosID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object cdsDadosWEBQRCODEL1: TStringField
      FieldName = 'WEBQRCODEL1'
      Size = 120
    end
    object cdsDadosWEBQRCODEL4: TStringField
      FieldName = 'WEBQRCODEL4'
      Size = 120
    end
    object cdsDadosWEBQRCODEL2: TStringField
      FieldName = 'WEBQRCODEL2'
      Size = 120
    end
  end
  object qrSql5: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select *'
      'From CadProdu'
      'Where Codigo=1')
    Left = 116
    Top = 160
  end
end
