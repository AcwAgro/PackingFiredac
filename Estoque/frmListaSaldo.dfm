object FListaSaldo: TFListaSaldo
  Left = 228
  Top = 225
  BorderIcons = [biSystemMenu]
  Caption = 'Tabela de pre'#231'o de insumos'
  ClientHeight = 462
  ClientWidth = 696
  Color = 14874583
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PBarra: TPanel
    Left = 0
    Top = 435
    Width = 696
    Height = 27
    Align = alBottom
    Color = 14930883
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 919
    object SB1: TSpeedButton
      Left = 144
      Top = 3
      Width = 90
      Height = 19
      Hint = 'Imprimir Ficha'
      Caption = 'Imprimir'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SB1Click
    end
    object SBP4: TSpeedButton
      Tag = 6
      Left = 9
      Top = 2
      Width = 23
      Height = 23
      Hint = 'Pesquisar... (F7)'
      Flat = True
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9CCB6AC9F786585503472331465230272
        3314855238A67B65D3C0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFDED1CB986D586F371B6E3C23724C397C5744
        7D5E4E745748724C396B402B6E3C239E7561EDDED6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFD3C0B6855238733E237C57448161518161
        517D5E4E7D60518166598A73688A73687F64576C4633875740E0CBC1FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFDED1CB8757407A452A89695988675686
        6655836354826455876E61937E73A4938BAC9C95A4938B937E73724C39875740
        EDDED6FFFFFFFFFFFFFFFFFF0000FFFFFFF9F9F99E756184482A987665987665
        987665987665947463927769998479B2A198C0B4AE000000C0B4AEAC9C95937E
        736C4633A67B65FFFFFFFFFFFFFFFFFF0000FFFFFFCCB6AC84482A9E7561A988
        77B7917EB29586B29586AD9284AE978CBBA9A0C5B9B3000000223068000000C0
        B4AEA4938B7E63566E3C23DDC6BBFFFFFFFFFFFF0000FFFFFFAB836F9B6144B7
        917EC4A493CDAE9FD2B8ABD1BCB1D1BCB1CCBEB6CFC2BC0000002230682C3C85
        374DA9000000AC9C958A7368653D29AB836FFFFFFFFFFFFF0000FFFFFF9B6144
        A67B65C4A493D2B8ABDDC6BBE4D1C80000000000000000000000002230682C3C
        85374DA9000000C0B4AEA4938B876E616C463389543BFFFFFFFFFFFF0000FFFF
        FF944C29B7917ECDAE9FDDC6BBEAD6CC000000A1A1A1A2A2A2AAAAAAB3B3B300
        0000374DA9000000C5B9B3AC9C95937E737A61556F5243723314FFFFFFFFFFFF
        0000FFFFFF8A411DC7A18DD6B6A5E3CEC2000000A1A1A1A1A1A1AAAAAAB3B3B3
        BDBDBDC1C1C1000000CCBEB6B2A198937E737D655974594C745748652302FFFF
        FFFFFFFF0000FFFFFFA45934CA9D86D6B7A8E8D2C6000000A1A1A1AAAAAAB3B3
        B3BDBDBDC1C1C1C2C2C2000000C0B4AEA48E82876E6174594C6F52436F524372
        3314FFFFFFFFFFFF0000FFFFFFBF8264CB997FDFC1B1E9D4CA000000A6A6A6B3
        B3B3CECECEC6C6C6C2C2C2C2C2C2000000C0B0A79984797E6356745748745748
        6C4633985738FFFFFFFFFFFF0000FFFFFFD3A994C58E71DFC1B1EAD6CC000000
        AAAAAAC2C2C2EBEBEBCECECEC2C2C2C2C2C2000000BBA9A0937E737E63567459
        4C7A5C4C733E23B68C76FFFFFFFFFFFF0000FFFFFFE9D4CABF8264DAB6A3E8D2
        C6EDDED6000000BDBDBDC6C6C6C2C2C2C2C2C2000000D0C0B8B2A1989277697D
        60517A5C4C77523F8A411DE0CBC1FFFFFFFFFFFF0000FFFFFFFFFFFFD3A994CB
        997FE4CABCEAD6CCEDDED6000000000000000000000000D9C8BFC3AEA3A48E82
        876E618161517D5E4E733E23B5846CFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F1E3DCCB997FD0A18BE4CABCE8D2C6E9D4CAE7D2C8E0CBC1DDC6BBCCB6ACB295
        86997C6D8969598161517A452A9B6144F1E3DCFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFECD9CFCB997FCB997FDAB6A3DFC1B1DBBCACD6B7A8CDAE9FBA
        9888A98877947463845C487A452A9B6144E7D2C8FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFF1E3DCD3A994BF8264C58E71CA9D86C7A18D
        C7A18DB68C76986D5885503484482AB3836BF1E3DCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D4CAD3A994BF82
        64AD67449E522D985738A4694BB68C76E0CBC1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBP4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 696
    Height = 435
    Align = alClient
    DataSource = dsDados
    FixedColor = 15592935
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    OnColExit = DBGrid1ColExit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Color = 15329769
        Expanded = False
        FieldName = 'CODIGO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 78
        Visible = True
      end
      item
        Color = 15329769
        Expanded = False
        FieldName = 'DESCRICAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 351
        Visible = True
      end
      item
        Color = 15329769
        Expanded = False
        FieldName = 'UNIDADE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Un.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRA'
        Title.Alignment = taCenter
        Title.Caption = 'Compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDA1'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Visible = True
      end>
  end
  object TPesq: TTimer
    Enabled = False
    Interval = 10
    Left = 272
    Top = 8
  end
  object sqlDados: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from cadmerca where grupocod = 3')
    Left = 482
    Top = 238
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADMERCA.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADMERCA.DESCRICAO'
      Size = 50
    end
    object sqlDadosBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEADMIN.CADMERCA.BARRA'
      Size = 13
    end
    object sqlDadosGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'JAEADMIN.CADMERCA.GRUPOCOD'
    end
    object sqlDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.CADMERCA.UNIDADE'
      Size = 2
    end
    object sqlDadosPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.CADMERCA.PESOLIQ'
    end
    object sqlDadosPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.CADMERCA.PESOBRU'
    end
    object sqlDadosCOMPRA: TFloatField
      FieldName = 'COMPRA'
      Origin = 'JAEADMIN.CADMERCA.COMPRA'
    end
    object sqlDadosVENDA1: TFloatField
      FieldName = 'VENDA1'
      Origin = 'JAEADMIN.CADMERCA.VENDA1'
    end
    object sqlDadosQTDEENT: TFloatField
      FieldName = 'QTDEENT'
      Origin = 'JAEADMIN.CADMERCA.QTDEENT'
    end
    object sqlDadosQTDESAI: TFloatField
      FieldName = 'QTDESAI'
      Origin = 'JAEADMIN.CADMERCA.QTDESAI'
    end
    object sqlDadosQTDESAL: TFloatField
      FieldName = 'QTDESAL'
      Origin = 'JAEADMIN.CADMERCA.QTDESAL'
    end
    object sqlDadosGRUPODES: TStringField
      FieldName = 'GRUPODES'
      Origin = 'JAEADMIN.CADMERCA.GRUPODES'
      Size = 30
    end
    object sqlDadosPERVEN: TFloatField
      FieldName = 'PERVEN'
      Origin = 'JAEADMIN.CADMERCA.PERVEN'
    end
    object sqlDadosVENCTO: TDateTimeField
      FieldName = 'VENCTO'
      Origin = 'JAEADMIN.CADMERCA.VENCTO'
    end
    object sqlDadosDESC1: TFloatField
      FieldName = 'DESC1'
      Origin = 'JAEADMIN.CADMERCA.DESC1'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADMERCA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADMERCA.ACESOCOD'
    end
  end
  object dspDados: TDataSetProvider
    DataSet = sqlDados
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 514
    Top = 238
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDados'
    BeforeInsert = cdsDadosBeforeInsert
    Left = 546
    Top = 238
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      Size = 13
    end
    object cdsDadosGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
    end
    object cdsDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object cdsDadosPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
    end
    object cdsDadosPESOBRU: TFloatField
      FieldName = 'PESOBRU'
    end
    object cdsDadosCOMPRA: TFloatField
      FieldName = 'COMPRA'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVENDA1: TFloatField
      FieldName = 'VENDA1'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosQTDEENT: TFloatField
      FieldName = 'QTDEENT'
    end
    object cdsDadosQTDESAI: TFloatField
      FieldName = 'QTDESAI'
    end
    object cdsDadosQTDESAL: TFloatField
      FieldName = 'QTDESAL'
    end
    object cdsDadosGRUPODES: TStringField
      FieldName = 'GRUPODES'
      Size = 30
    end
    object cdsDadosPERVEN: TFloatField
      FieldName = 'PERVEN'
    end
    object cdsDadosVENCTO: TDateTimeField
      FieldName = 'VENCTO'
    end
    object cdsDadosDESC1: TFloatField
      FieldName = 'DESC1'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 578
    Top = 238
  end
  object PopupMenu1: TPopupMenu
    Left = 584
    Top = 152
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
end
