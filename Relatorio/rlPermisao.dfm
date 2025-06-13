object qrPermisao: TqrPermisao
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = qrRec
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
  Page.PaperSize = A4
  Page.Values = (
    50.000000000000000000
    2970.000000000000000000
    250.000000000000000000
    2100.000000000000000000
    70.000000000000000000
    50.000000000000000000
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
  object QRBand1: TQRBand
    Left = 26
    Top = 94
    Width = 749
    Height = 836
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    TransparentBand = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      2211.916666666667000000
      1981.729166666667000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 80
      Top = 85
      Width = 86
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        224.895833333333300000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DM.TEmpresa
      DataField = 'DESCRICAO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText3: TQRDBText
      Left = 80
      Top = 120
      Width = 81
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        317.500000000000000000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DM.TEmpresa
      DataField = 'ENDERECO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText4: TQRDBText
      Left = 416
      Top = 120
      Width = 58
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1100.666666666667000000
        317.500000000000000000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DM.TEmpresa
      DataField = 'BAIRRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText5: TQRDBText
      Left = 624
      Top = 120
      Width = 41
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1651.000000000000000000
        317.500000000000000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DM.TEmpresa
      DataField = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText6: TQRDBText
      Left = 256
      Top = 135
      Width = 29
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        677.333333333333400000
        357.187500000000000000
        76.729166666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DM.TEmpresa
      DataField = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel6: TQRLabel
      Left = 512
      Top = 195
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1354.666666666667000000
        515.937500000000000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel7: TQRLabel
      Left = 282
      Top = 150
      Width = 11
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        746.125000000000000000
        396.875000000000000000
        29.104166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'X'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRDBText7: TQRDBText
      Left = 80
      Top = 135
      Width = 86
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        357.187500000000000000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DM.TEmpresa
      DataField = 'CIDADEDES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel8: TQRLabel
      Left = 288
      Top = 195
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        762.000000000000000000
        515.937500000000000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel9: TQRLabel
      Left = 80
      Top = 245
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        648.229166666666800000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel10: TQRLabel
      Left = 288
      Top = 245
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        762.000000000000000000
        648.229166666666800000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel11: TQRLabel
      Left = 536
      Top = 245
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1418.166666666667000000
        648.229166666666800000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRDBText8: TQRDBText
      Left = 80
      Top = 290
      Width = 86
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        767.291666666666800000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'DESCRICAO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText9: TQRDBText
      Left = 80
      Top = 325
      Width = 81
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        859.895833333333400000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'ENDERECO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText10: TQRDBText
      Left = 80
      Top = 362
      Width = 86
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        957.791666666666800000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'CIDADEDES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText11: TQRDBText
      Left = 280
      Top = 362
      Width = 29
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        740.833333333333400000
        957.791666666666800000
        76.729166666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText13: TQRDBText
      Left = 416
      Top = 325
      Width = 58
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1100.666666666667000000
        859.895833333333400000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'BAIRRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText14: TQRDBText
      Left = 496
      Top = 362
      Width = 41
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1312.333333333333000000
        957.791666666666800000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText12: TQRDBText
      Left = 80
      Top = 425
      Width = 77
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        1124.479166666667000000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'TRCIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText15: TQRDBText
      Left = 216
      Top = 520
      Width = 43
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        571.500000000000000000
        1375.833333333333000000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'NOTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '000000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText17: TQRDBText
      Left = 344
      Top = 405
      Width = 70
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        910.166666666666600000
        1071.562500000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'TRPLACA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRDBText18: TQRDBText
      Left = 488
      Top = 425
      Width = 79
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1291.166666666667000000
        1124.479166666667000000
        209.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'TRESTADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel1: TQRLabel
      Left = 80
      Top = 443
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        1172.104166666667000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRDBText1: TQRDBText
      Left = 376
      Top = 520
      Width = 43
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        994.833333333333400000
        1375.833333333333000000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qrRec
      DataField = 'DATA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel2: TQRLabel
      Left = 80
      Top = 745
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        1971.145833333334000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel3: TQRLabel
      Left = 48
      Top = 795
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        127.000000000000000000
        2103.437500000000000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel4: TQRLabel
      Left = 320
      Top = 795
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        846.666666666666600000
        2103.437500000000000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel5: TQRLabel
      Left = 80
      Top = 405
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        211.666666666666700000
        1071.562500000000000000
        82.020833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 11
    end
    object QRLabel12: TQRLabel
      Left = 86
      Top = 585
      Width = 588
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        227.541666666666700000
        1547.812500000000000000
        1555.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'De acordo com a certifica'#231#227'o do respons'#225'vel t'#233'cnico constante no' +
        ' CFOC n'#186' ______'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRLabel13: TQRLabel
      Left = 86
      Top = 609
      Width = 313
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        227.541666666666700000
        1611.312500000000000000
        828.145833333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'e com vencimento    __________________ .'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRLabel14: TQRLabel
      Left = 86
      Top = 633
      Width = 437
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        227.541666666666700000
        1674.812500000000000000
        1156.229166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Partida Proveniente de '#225'rea livre de      CYDEA POMONELLA.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRLabel15: TQRLabel
      Left = 86
      Top = 657
      Width = 485
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        227.541666666666700000
        1738.312500000000000000
        1283.229166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'Respons'#225'vel T'#233'cnio:   DIMAS SOUZA                     Crea n'#186'   ' +
        '   49054-7'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRLabel16: TQRLabel
      Left = 616
      Top = 582
      Width = 32
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        1629.833333333333000000
        1539.875000000000000000
        84.666666666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRLabel17: TQRLabel
      Left = 232
      Top = 606
      Width = 32
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666660000
        613.833333333333400000
        1603.375000000000000000
        84.666666666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ART'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
  end
  object qrRec: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select *'
      'From nfVenda nf, CadClien cc'
      'Where nf.Codigo=cc.Codigo and Lanc = 1')
    Left = 32
  end
end
