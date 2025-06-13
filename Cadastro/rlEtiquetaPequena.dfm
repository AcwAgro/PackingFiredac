object qrEtiquetaPequena: TqrEtiquetaPequena
  Left = 0
  Top = 0
  Width = 454
  Height = 113
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = qrEtiq
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'QRSTRINGSBAND1')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  OnPreview = QuickRepPreview
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = Custom
  Page.Values = (
    0.000000000000000000
    300.000000000000000000
    0.000000000000000000
    1200.000000000000000000
    0.000000000000000000
    0.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.OutputBin = Auto
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.UseStandardprinter = False
  PrinterSettings.UseCustomBinCode = False
  PrinterSettings.CustomBinCode = 0
  PrinterSettings.ExtendedDuplex = 0
  PrinterSettings.UseCustomPaperCode = False
  PrinterSettings.CustomPaperCode = 0
  PrinterSettings.PrintMetaFile = False
  PrinterSettings.MemoryLimit = 1000000
  PrinterSettings.PrintQuality = 0
  PrinterSettings.Collate = 0
  PrinterSettings.ColorOption = 0
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  PrevFormStyle = fsNormal
  PreviewInitialState = wsNormal
  PrevInitialZoom = qrZoomToFit
  object ChildBand1: TQRChildBand
    Left = 0
    Top = 110
    Width = 454
    Height = 0
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      0.000000000000000000
      1201.208333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
  end
  object DetailBand1: TQRBand
    Left = 0
    Top = 0
    Width = 454
    Height = 110
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = DetailBand1BeforePrint
    Color = clWhite
    TransparentBand = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      291.041666666666700000
      1201.208333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object qrEmbal: TQRLabel
      Left = 171
      Top = 30
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        452.437500000000000000
        79.375000000000000000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Embalagem'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object qrCalibre: TQRLabel
      Left = 99
      Top = 26
      Width = 61
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        261.937500000000000000
        68.791666666666670000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Calibre'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 14
    end
    object qrCateg: TQRLabel
      Left = 56
      Top = 3
      Width = 83
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        148.166666666666700000
        7.937500000000000000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Categoria'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 14
    end
    object qrCodigo: TQRLabel
      Left = 102
      Top = 93
      Width = 79
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        269.875000000000000000
        246.062500000000000000
        209.020833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '0000000000000'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRLabel1: TQRLabel
      Left = 56
      Top = 26
      Width = 39
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        148.166666666666700000
        68.791666666666670000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Cal.:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 14
    end
  end
  object qrEtiq: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select * From etiqfundo')
    Left = 40
    Top = 8
    object qrEtiqCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.ETIQFUNDO.CODIGO'
      Size = 7
    end
    object qrEtiqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.ETIQFUNDO.DESCRICAO'
      Size = 120
    end
    object qrEtiqPESO: TStringField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.ETIQFUNDO.PESO'
      Size = 10
    end
    object qrEtiqLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ETIQFUNDO.LOTE'
      Size = 10
    end
    object qrEtiqLINHA1: TStringField
      FieldName = 'LINHA1'
      Origin = 'JAEADMIN.ETIQFUNDO.LINHA1'
      Size = 30
    end
    object qrEtiqLINHA2: TStringField
      FieldName = 'LINHA2'
      Origin = 'JAEADMIN.ETIQFUNDO.LINHA2'
      Size = 30
    end
    object qrEtiqLINHA3: TStringField
      FieldName = 'LINHA3'
      Origin = 'JAEADMIN.ETIQFUNDO.LINHA3'
      Size = 30
    end
    object qrEtiqLINHA4: TStringField
      FieldName = 'LINHA4'
      Origin = 'JAEADMIN.ETIQFUNDO.LINHA4'
      Size = 30
    end
    object qrEtiqLINHA5: TStringField
      FieldName = 'LINHA5'
      Origin = 'JAEADMIN.ETIQFUNDO.LINHA5'
      Size = 30
    end
    object qrEtiqQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.ETIQFUNDO.QTDE'
    end
    object qrEtiqCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Origin = 'JAEADMIN.ETIQFUNDO.CONTADOR'
    end
    object qrEtiqVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Origin = 'JAEADMIN.ETIQFUNDO.VARIEDADE'
      Size = 120
    end
    object qrEtiqCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'JAEADMIN.ETIQFUNDO.CATEGORIA'
      Size = 30
    end
    object qrEtiqCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.ETIQFUNDO.CALIBRE'
      Size = 5
    end
    object qrEtiqBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEADMIN.ETIQFUNDO.BARRA'
      Size = 12
    end
  end
end
