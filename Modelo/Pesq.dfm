object FPesq: TFPesq
  Left = 535
  Top = 150
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa.'
  ClientHeight = 464
  ClientWidth = 483
  Color = 14930883
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 464
    Align = alClient
    BorderInner = fsLowered
    BorderOuter = fsFlatRounded
    BorderColor = 14273198
    BorderHighlight = clWhite
    BorderShadow = clSilver
    BorderWidth = 3
    Color = 15987699
    GradientColorStyle = gcsCustom
    GradientColorStop = clWhite
    GridXSize = 5
    GridYSize = 5
    TabOrder = 0
    VisualStyle = vsGradient
    object Label2: TLabel
      Left = 7
      Top = 444
      Width = 469
      Height = 13
      Align = alBottom
      Caption = 'N'#186' Item'
      Color = 14273198
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 51
    end
    object Panel2: TPanel
      Left = 7
      Top = 7
      Width = 469
      Height = 49
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 2
        Width = 41
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object SB4: TSpeedButton
        Tag = 12
        Left = 387
        Top = 0
        Width = 82
        Height = 49
        Hint = 'Abre o programa desejado... (F9)'
        Align = alRight
        Caption = ' OK'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D805000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9CCB7ACA0786585503571341565230271
          3415855035A07865D3BFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFDED1CB99705B713415713F25764A357A5644
          7D5E4E7453426B4A3B62382368351A99705BEBDDD6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFD3BFB5835139713F257E5947876A5B8667
          588163547B5F517B5F51775C4E775C4E6B4A3B5E341E835139E0CDC3FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFDED1CB89563D844B2E8D6D5D8C75689D
          7D6D9C8376947A6D8C75688C75688C7568846D627A6256715649623823835139
          EBDDD6FFFFFFFFFFFFFFFFFF0000FFFFFFF9F9F99F7661844B2E9D7D6DA28374
          B09384BAA499BCA99F0000FF000000AD9D95AD9D95A4938B907C727A62567156
          495E341EA77861FFFFFFFFFFFFFFFFFF0000FFFFFFCCB7AC844B2E9F7661B093
          84BFA395CCB7ACD2C4BC0000FF0000FF0000FF000000CABDB6C0B4AEAA9B938F
          7B717A62566B4A3B68351ADEC6BBFFFFFFFFFFFF0000FFFFFFAF836D9B6144B9
          9888C9A694D5BCAFCABDB6CABDB60000FF0000FF0000FF000000CABDB6CABDB6
          C0B4AEA4938B846D6273594C5E341EAF836DFFFFFFFFFFFF0000FFFFFF9B6144
          A77861C2A08ED3B4A3DEC6BBCABDB60000FF0000FF0000FF0000FF0000FF0000
          00CABDB6CABDB6AB9C9489716673594C654131885136FFFFFFFFFFFF0000FFFF
          FF934B27B88D78C9A694D3B4A3E2C7BA0000FF0000FF0000FF0000FF0000FF00
          00FF000000CABDB6C6BAB3AA9B9386706573594C6B4A3B713415FFFFFFFFFFFF
          0000FFFFFF924119C49B86C9A694D9B4A27F7F7F0000FF0000FF000000ECDAD0
          0000FF0000FF0000FF000000C6BAB3A9978F846D6273594B715649652302FFFF
          FFFFFFFF0000FFFFFFA35732C49B86D3AA957F7F7F0000FF000000ECDAD0ECDA
          D0ECDAD0ECDAD00000FF0000FF000000CABDB6AD9D95897166755B4E74534271
          3415FFFFFFFFFFFF0000FFFFFFBD7F60C78E72D5B19FDFBFAEE7CFC3ECDAD0EC
          DAD0ECDAD0ECDAD0ECDAD0D7CBC50000FF0000FF000000B4A2998C75687B5F51
          764A35985737FFFFFFFFFFFF0000FFFFFFD2A791C2886AD9B4A2DFBFAEE7CFC3
          EDDBD1ECDAD0ECDAD0ECDAD0ECDAD0D7CBC5D7CBC50000FF0000FF0000008C75
          68816354713F25B88D78FFFFFFFFFFFF0000FFFFFFE9D5CCBD7F60D3AA95DFBF
          AEE2C7BAE8D2C6ECDAD0ECDAD0E9D5CCE0CDC3D7CBC5D7CBC5CABDB69C837600
          00FF0000007A5644804120E4CCC0FFFFFFFFFFFF0000FFFFFFFFFFFFD3AA95C7
          8E72DDBBA9DFBFAEE3C6B7E4CCC0E4CCC0DEC6BBD5BCAFCCB7ACC3AEA4B5A196
          9C83769C83760000FF0000FF000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          F1E3DCC9957BC9957BDBBAA7DDBBA9DFBFAEDAB9A9D5B19FC9A694B99888AC8F
          819C83769374648667587943289B6144F1E3DCFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFECDAD0C9957BC78E72D2A791D9B4A2D4AF9CC9A694B99888B8
          8D789D7D6D937464865F4B7943289B6144E7D2C8FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFF1E3DCD2A791BD7F60C2886AC9957BC49B86
          C49B86AF836D976952855035844525AF836DF1E3DCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D5CCD2A791BD7F
          60A867469D512B985737A86746B88D78E0CDC3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SB4Click
        ExplicitLeft = 391
        ExplicitTop = 13
        ExplicitHeight = 30
      end
      object lblMarcar: TLabel
        Left = 8
        Top = 35
        Width = 41
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Edit1: TEdit
        Left = 8
        Top = 16
        Width = 373
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 56
      Width = 469
      Height = 388
      Hint = 'Bot'#227'o da Direita classifica por Coluna...'
      Align = alClient
      DataSource = DSPesq
      FixedColor = 14273198
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
    end
  end
  object DSPesq: TDataSource
    DataSet = qrPesq
    Left = 88
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 128
    Top = 120
  end
  object qrPesq: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select *'
      'from caixa'
      'where lanc>0'
      'order by lanc')
    Left = 43
    Top = 120
  end
end
