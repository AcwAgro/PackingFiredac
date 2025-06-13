object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 310
  Width = 788
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
    Left = 36
    Top = 26
  end
  object Session2: TSession
    NetFileDir = '%TEMP%'
    SessionName = 'Sesao2'
    Left = 80
    Top = 26
  end
  object TEsteira: TTable
    Tag = 20
    AfterOpen = TEsteiraAfterOpen
    OnCalcFields = TEsteiraCalcFields
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
      end
      item
        Name = 'DATALANC'
        DataType = ftDateTime
      end
      item
        Name = 'HORALANC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOTELANC'
        DataType = ftInteger
      end
      item
        Name = 'TEXTO1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TEXTO2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TEXTO3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TEXTO4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TEXTO5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TEXTO6'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TEXTO7'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TEXTO8'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TEXTO9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PALET'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO1'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO2'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO3'
        DataType = ftInteger
      end
      item
        Name = 'VALOR1'
        DataType = ftFloat
      end
      item
        Name = 'VALOR2'
        DataType = ftFloat
      end
      item
        Name = 'VALOR3'
        DataType = ftFloat
      end>
    IndexFieldNames = 'LANC'
    StoreDefs = True
    TableName = 'ESTEIRAC000'
    Left = 616
    Top = 74
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
    object TEsteiraEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
    end
    object TEsteiraCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Size = 10
    end
    object TEsteiraDATALANC: TDateTimeField
      FieldName = 'DATALANC'
    end
    object TEsteiraHORALANC: TStringField
      FieldName = 'HORALANC'
      Size = 10
    end
    object TEsteiraLOTELANC: TIntegerField
      FieldName = 'LOTELANC'
    end
    object TEsteiraTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Size = 10
    end
    object TEsteiraTEXTO2: TStringField
      FieldName = 'TEXTO2'
      Size = 10
    end
    object TEsteiraTEXTO3: TStringField
      FieldName = 'TEXTO3'
      Size = 10
    end
    object TEsteiraTEXTO4: TStringField
      FieldName = 'TEXTO4'
    end
    object TEsteiraTEXTO5: TStringField
      FieldName = 'TEXTO5'
      Size = 50
    end
    object TEsteiraTEXTO6: TStringField
      FieldName = 'TEXTO6'
      Size = 50
    end
    object TEsteiraTEXTO7: TStringField
      FieldName = 'TEXTO7'
      Size = 40
    end
    object TEsteiraTEXTO8: TStringField
      FieldName = 'TEXTO8'
      Size = 30
    end
    object TEsteiraTEXTO9: TStringField
      FieldName = 'TEXTO9'
    end
    object TEsteiraPALET: TIntegerField
      FieldName = 'PALET'
    end
    object TEsteiraNUMERO1: TIntegerField
      FieldName = 'NUMERO1'
    end
    object TEsteiraNUMERO2: TIntegerField
      FieldName = 'NUMERO2'
    end
    object TEsteiraNUMERO3: TIntegerField
      FieldName = 'NUMERO3'
    end
    object TEsteiraVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object TEsteiraVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object TEsteiraVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object TEsteiraCAT: TStringField
      FieldKind = fkCalculated
      FieldName = 'CAT'
      Calculated = True
    end
    object TEsteiraTAM: TStringField
      FieldKind = fkCalculated
      FieldName = 'TAM'
      Size = 10
      Calculated = True
    end
  end
  object DSEsteira: TDataSource
    AutoEdit = False
    DataSet = TEsteira
    Left = 664
    Top = 74
  end
  object DSCadProdu: TDataSource
    DataSet = TCadProdu
    Left = 384
    Top = 99
  end
  object Session1: TSession
    NetFileDir = '%TEMP%'
    SessionName = 'Sesao1'
    Left = 76
    Top = 114
  end
  object JaeAdminProd: TDatabase
    AliasName = 'ACWebProducao'
    DatabaseName = 'JaeProducao'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME='
      'ODBC DSN=ACWebProducao'
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
    Left = 36
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
  object TClassif: TTable
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'LANC'
    TableName = 'CLASSIF'
    Left = 392
    Top = 217
  end
  object TClassifMer: TTable
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'LANC'
    TableName = 'CLASSIFM'
    Left = 432
    Top = 217
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
  object TCadEmbal: TTable
    Tag = 20
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    IndexFieldNames = 'CODIGO'
    TableName = 'CADEMBAL'
    Left = 472
    Top = 99
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
  object sqlEsteira: TQuery
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    SQL.Strings = (
      'select * from ESTEIRAC010'
      'order by lanc')
    Left = 490
    Top = 25
    object sqlEsteiraLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEESTEIRA.ESTEIRAC010.LOTE'
    end
    object sqlEsteiraVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VARIECOD'
    end
    object sqlEsteiraESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
      Origin = 'JAEESTEIRA.ESTEIRAC010.ESTEIRA'
    end
    object sqlEsteiraLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.LANC'
      Required = True
    end
    object sqlEsteiraBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEESTEIRA.ESTEIRAC010.BARRA'
      Size = 13
    end
    object sqlEsteiraNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO'
    end
    object sqlEsteiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEESTEIRA.ESTEIRAC010.CODIGO'
    end
    object sqlEsteiraQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEESTEIRA.ESTEIRAC010.QTDE'
    end
    object sqlEsteiraVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VARIEDES'
      Size = 30
    end
    object sqlEsteiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEESTEIRA.ESTEIRAC010.DESCRICAO'
      Size = 50
    end
    object sqlEsteiraQTDEANT: TFloatField
      FieldName = 'QTDEANT'
      Origin = 'JAEESTEIRA.ESTEIRAC010.QTDEANT'
    end
    object sqlEsteiraQTDEATU: TFloatField
      FieldName = 'QTDEATU'
      Origin = 'JAEESTEIRA.ESTEIRAC010.QTDEATU'
    end
    object sqlEsteiraEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'JAEESTEIRA.ESTEIRAC010.EMBALCOD'
    end
    object sqlEsteiraCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Origin = 'JAEESTEIRA.ESTEIRAC010.CALIBREDES'
      Size = 10
    end
    object sqlEsteiraDATALANC: TDateTimeField
      FieldName = 'DATALANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.DATALANC'
    end
    object sqlEsteiraHORALANC: TStringField
      FieldName = 'HORALANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.HORALANC'
      Size = 10
    end
    object sqlEsteiraLOTELANC: TIntegerField
      FieldName = 'LOTELANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.LOTELANC'
    end
    object sqlEsteiraTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO1'
      Size = 10
    end
    object sqlEsteiraTEXTO2: TStringField
      FieldName = 'TEXTO2'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO2'
      Size = 10
    end
    object sqlEsteiraTEXTO3: TStringField
      FieldName = 'TEXTO3'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO3'
      Size = 10
    end
    object sqlEsteiraTEXTO4: TStringField
      FieldName = 'TEXTO4'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO4'
    end
    object sqlEsteiraTEXTO5: TStringField
      FieldName = 'TEXTO5'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO5'
      Size = 50
    end
    object sqlEsteiraTEXTO6: TStringField
      FieldName = 'TEXTO6'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO6'
      Size = 50
    end
    object sqlEsteiraTEXTO7: TStringField
      FieldName = 'TEXTO7'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO7'
      Size = 40
    end
    object sqlEsteiraTEXTO8: TStringField
      FieldName = 'TEXTO8'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO8'
      Size = 30
    end
    object sqlEsteiraTEXTO9: TStringField
      FieldName = 'TEXTO9'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO9'
    end
    object sqlEsteiraPALET: TIntegerField
      FieldName = 'PALET'
      Origin = 'JAEESTEIRA.ESTEIRAC010.PALET'
    end
    object sqlEsteiraNUMERO1: TIntegerField
      FieldName = 'NUMERO1'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO1'
    end
    object sqlEsteiraNUMERO2: TIntegerField
      FieldName = 'NUMERO2'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO2'
    end
    object sqlEsteiraNUMERO3: TIntegerField
      FieldName = 'NUMERO3'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO3'
    end
    object sqlEsteiraVALOR1: TFloatField
      FieldName = 'VALOR1'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VALOR1'
    end
    object sqlEsteiraVALOR2: TFloatField
      FieldName = 'VALOR2'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VALOR2'
    end
    object sqlEsteiraVALOR3: TFloatField
      FieldName = 'VALOR3'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VALOR3'
    end
  end
  object dspEsteira: TDataSetProvider
    DataSet = sqlEsteira
    UpdateMode = upWhereKeyOnly
    Left = 530
    Top = 25
  end
  object cdsEsteira_X: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEsteira'
    AfterOpen = cdsEsteira_XAfterOpen
    OnCalcFields = cdsEsteira_XCalcFields
    Left = 570
    Top = 25
    object cdsEsteira_XLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEESTEIRA.ESTEIRAC010.LOTE'
    end
    object cdsEsteira_XVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VARIECOD'
    end
    object cdsEsteira_XESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
      Origin = 'JAEESTEIRA.ESTEIRAC010.ESTEIRA'
    end
    object cdsEsteira_XLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.LANC'
      Required = True
    end
    object cdsEsteira_XBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEESTEIRA.ESTEIRAC010.BARRA'
      Size = 13
    end
    object cdsEsteira_XNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO'
    end
    object cdsEsteira_XCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEESTEIRA.ESTEIRAC010.CODIGO'
    end
    object cdsEsteira_XQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEESTEIRA.ESTEIRAC010.QTDE'
    end
    object cdsEsteira_XVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VARIEDES'
      Size = 30
    end
    object cdsEsteira_XDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEESTEIRA.ESTEIRAC010.DESCRICAO'
      Size = 50
    end
    object cdsEsteira_XQTDEANT: TFloatField
      FieldName = 'QTDEANT'
      Origin = 'JAEESTEIRA.ESTEIRAC010.QTDEANT'
    end
    object cdsEsteira_XQTDEATU: TFloatField
      FieldName = 'QTDEATU'
      Origin = 'JAEESTEIRA.ESTEIRAC010.QTDEATU'
    end
    object cdsEsteira_XEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'JAEESTEIRA.ESTEIRAC010.EMBALCOD'
    end
    object cdsEsteira_XCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Origin = 'JAEESTEIRA.ESTEIRAC010.CALIBREDES'
      Size = 10
    end
    object cdsEsteira_XDATALANC: TDateTimeField
      FieldName = 'DATALANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.DATALANC'
    end
    object cdsEsteira_XHORALANC: TStringField
      FieldName = 'HORALANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.HORALANC'
      Size = 10
    end
    object cdsEsteira_XLOTELANC: TIntegerField
      FieldName = 'LOTELANC'
      Origin = 'JAEESTEIRA.ESTEIRAC010.LOTELANC'
    end
    object cdsEsteira_XTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO1'
      Size = 10
    end
    object cdsEsteira_XTEXTO2: TStringField
      FieldName = 'TEXTO2'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO2'
      Size = 10
    end
    object cdsEsteira_XTEXTO3: TStringField
      FieldName = 'TEXTO3'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO3'
      Size = 10
    end
    object cdsEsteira_XTEXTO4: TStringField
      FieldName = 'TEXTO4'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO4'
    end
    object cdsEsteira_XTEXTO5: TStringField
      FieldName = 'TEXTO5'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO5'
      Size = 50
    end
    object cdsEsteira_XTEXTO6: TStringField
      FieldName = 'TEXTO6'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO6'
      Size = 50
    end
    object cdsEsteira_XTEXTO7: TStringField
      FieldName = 'TEXTO7'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO7'
      Size = 40
    end
    object cdsEsteira_XTEXTO8: TStringField
      FieldName = 'TEXTO8'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO8'
      Size = 30
    end
    object cdsEsteira_XTEXTO9: TStringField
      FieldName = 'TEXTO9'
      Origin = 'JAEESTEIRA.ESTEIRAC010.TEXTO9'
    end
    object cdsEsteira_XPALET: TIntegerField
      FieldName = 'PALET'
      Origin = 'JAEESTEIRA.ESTEIRAC010.PALET'
    end
    object cdsEsteira_XNUMERO1: TIntegerField
      FieldName = 'NUMERO1'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO1'
    end
    object cdsEsteira_XNUMERO2: TIntegerField
      FieldName = 'NUMERO2'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO2'
    end
    object cdsEsteira_XNUMERO3: TIntegerField
      FieldName = 'NUMERO3'
      Origin = 'JAEESTEIRA.ESTEIRAC010.NUMERO3'
    end
    object cdsEsteira_XVALOR1: TFloatField
      FieldName = 'VALOR1'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VALOR1'
    end
    object cdsEsteira_XVALOR2: TFloatField
      FieldName = 'VALOR2'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VALOR2'
    end
    object cdsEsteira_XVALOR3: TFloatField
      FieldName = 'VALOR3'
      Origin = 'JAEESTEIRA.ESTEIRAC010.VALOR3'
    end
    object cdsEsteira_XCAT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CAT'
    end
    object cdsEsteira_XTAM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TAM'
      Size = 10
    end
  end
  object TEsteiraRel: TTable
    Tag = 20
    OnCalcFields = TEsteiraRelCalcFields
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
      end
      item
        Name = 'DATALANC'
        DataType = ftDateTime
      end
      item
        Name = 'HORALANC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOTELANC'
        DataType = ftInteger
      end
      item
        Name = 'TEXTO1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TEXTO2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TEXTO3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TEXTO4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TEXTO5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TEXTO6'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TEXTO7'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TEXTO8'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TEXTO9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PALET'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO1'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO2'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO3'
        DataType = ftInteger
      end
      item
        Name = 'VALOR1'
        DataType = ftFloat
      end
      item
        Name = 'VALOR2'
        DataType = ftFloat
      end
      item
        Name = 'VALOR3'
        DataType = ftFloat
      end>
    IndexFieldNames = 'CODIGO'
    StoreDefs = True
    TableName = 'ESTEIRAC010'
    Left = 616
    Top = 130
    object TEsteiraRelLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object TEsteiraRelVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
    end
    object TEsteiraRelESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
    end
    object TEsteiraRelLANC: TIntegerField
      FieldName = 'LANC'
    end
    object TEsteiraRelBARRA: TStringField
      FieldName = 'BARRA'
      Size = 13
    end
    object TEsteiraRelNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object TEsteiraRelCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TEsteiraRelQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TEsteiraRelVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Size = 30
    end
    object TEsteiraRelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object TEsteiraRelQTDEANT: TFloatField
      FieldName = 'QTDEANT'
    end
    object TEsteiraRelQTDEATU: TFloatField
      FieldName = 'QTDEATU'
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
    object TEsteiraRelTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Size = 10
    end
    object TEsteiraRelTEXTO2: TStringField
      FieldName = 'TEXTO2'
      Size = 10
    end
    object TEsteiraRelTEXTO3: TStringField
      FieldName = 'TEXTO3'
      Size = 10
    end
    object TEsteiraRelCLAS: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLAS'
      Size = 3
      Calculated = True
    end
    object TEsteiraRelLOTELANC: TIntegerField
      FieldName = 'LOTELANC'
    end
  end
end
