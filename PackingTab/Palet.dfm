object FPalet: TFPalet
  Left = 320
  Top = 191
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o Palet'
  ClientHeight = 343
  ClientWidth = 318
  Color = 14930883
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PDados: TPanel
    Left = 0
    Top = 0
    Width = 318
    Height = 343
    Align = alClient
    BevelOuter = bvNone
    Color = 15395562
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 327
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 313
      Height = 343
      Align = alLeft
      Caption = '  Palet/Impress'#227'o '
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = -6
      object Label2: TLabel
        Left = 54
        Top = 138
        Width = 39
        Height = 16
        Alignment = taRightJustify
        Caption = 'Palet:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 12
        Top = 112
        Width = 81
        Height = 16
        Alignment = taRightJustify
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 43
        Top = 87
        Width = 50
        Height = 16
        Alignment = taRightJustify
        Caption = 'Calibre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 24
        Top = 62
        Width = 69
        Height = 16
        Alignment = taRightJustify
        Caption = 'Categoria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object SB4: TSpeedButton
        Tag = 4
        Left = 101
        Top = 229
        Width = 100
        Height = 24
        Caption = 'Imprimir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        OnClick = SB4Click
      end
      object Label3: TLabel
        Left = 50
        Top = 299
        Width = 249
        Height = 34
        AutoSize = False
        Caption = 
          'A impress'#227'o do PALET segue a order crescente dos lotes. Ex: 1..2' +
          '..3...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 186
        Top = 112
        Width = 45
        Height = 16
        Alignment = taRightJustify
        Caption = 'Altura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 22
        Top = 37
        Width = 71
        Height = 16
        Alignment = taRightJustify
        Caption = 'Variedade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 58
        Top = 166
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Lote:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 42
        Top = 192
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = 'Origem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object ImgQrCode: TImage
        Left = 207
        Top = 220
        Width = 90
        Height = 73
        Visible = False
      end
      object SE2: TSpinEdit
        Left = 101
        Top = 133
        Width = 73
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 5
        MaxValue = 99999
        MinValue = 1
        ParentFont = False
        TabOrder = 4
        Value = 1
      end
      object SE1: TSpinEdit
        Left = 101
        Top = 107
        Width = 73
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 5
        MaxValue = 99999
        MinValue = 0
        ParentFont = False
        TabOrder = 3
        Value = 1
      end
      object CB2: TComboBox
        Left = 101
        Top = 81
        Width = 73
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        Text = '000'
        OnClick = CB2Click
        OnExit = CB2Click
      end
      object CB1: TComboBox
        Left = 101
        Top = 56
        Width = 198
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 1
        Text = '00'
      end
      object SE3: TSpinEdit
        Left = 232
        Top = 107
        Width = 43
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 5
        MaxValue = 99
        MinValue = 1
        ParentFont = False
        TabOrder = 7
        Value = 1
      end
      object CB0: TComboBox
        Left = 101
        Top = 29
        Width = 198
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
        Text = '00'
      end
      object SE4: TSpinEdit
        Left = 101
        Top = 161
        Width = 73
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 5
        MaxValue = 99999
        MinValue = 1
        ParentFont = False
        TabOrder = 5
        Value = 1
      end
      object edOrigem: TEdit
        Left = 101
        Top = 190
        Width = 198
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object Panel1: TPanel
      Left = 313
      Top = 0
      Width = 5
      Height = 343
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 327
    end
  end
  object TPalet: TTable
    Tag = 20
    DatabaseName = 'JaeEsteira'
    SessionName = 'Sesao2'
    IndexFieldNames = 'LOTE'
    TableName = 'ESTEIRAPALET'
    Left = 264
    Top = 146
    object TPaletLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object TPaletVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
    end
    object TPaletESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
    end
    object TPaletLANC: TIntegerField
      FieldName = 'LANC'
    end
    object TPaletBARRA: TStringField
      FieldName = 'BARRA'
      Size = 13
    end
    object TPaletNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object TPaletCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TPaletQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TPaletVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Size = 30
    end
    object TPaletDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object TPaletQTDEANT: TFloatField
      FieldName = 'QTDEANT'
    end
    object TPaletQTDEATU: TFloatField
      FieldName = 'QTDEATU'
    end
    object TPaletWEBQRCODEL1: TStringField
      FieldName = 'WEBQRCODEL1'
      Size = 120
    end
    object TPaletWEBQRCODEL2: TStringField
      FieldName = 'WEBQRCODEL2'
      Size = 120
    end
    object TPaletWEBQRCODEL3: TStringField
      FieldName = 'WEBQRCODEL3'
      Size = 120
    end
    object TPaletWEBQRCODEL4: TStringField
      FieldName = 'WEBQRCODEL4'
      Size = 120
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 218
    object Configurar1: TMenuItem
      Tag = 100
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
end
