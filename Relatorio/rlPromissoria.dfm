object qrPromissoria: TqrPromissoria
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
    50
    2970
    250
    2100
    70
    50
    0)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      2211.91666666667
      1981.72916666667)
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
        52.9166666666667
        211.666666666667
        224.895833333333
        227.541666666667)
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
        52.9166666666667
        211.666666666667
        317.5
        214.3125)
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
        52.9166666666667
        1100.66666666667
        317.5
        153.458333333333)
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
        52.9166666666667
        1651
        317.5
        108.479166666667)
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
        52.9166666666667
        677.333333333333
        357.1875
        76.7291666666667)
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
        52.9166666666667
        1354.66666666667
        515.9375
        82.0208333333333)
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
        52.9166666666667
        746.125
        396.875
        29.1041666666667)
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
        52.9166666666667
        211.666666666667
        357.1875
        227.541666666667)
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
      Left = 80
      Top = 195
      Width = 31
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        211.666666666667
        515.9375
        82.0208333333333)
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
        52.9166666666667
        211.666666666667
        648.229166666667
        82.0208333333333)
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
        52.9166666666667
        762
        648.229166666667
        82.0208333333333)
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
        52.9166666666667
        1418.16666666667
        648.229166666667
        82.0208333333333)
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
        52.9166666666667
        211.666666666667
        767.291666666667
        227.541666666667)
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
        52.9166666666667
        211.666666666667
        859.895833333333
        214.3125)
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
        52.9166666666667
        211.666666666667
        957.791666666667
        227.541666666667)
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
        52.9166666666667
        740.833333333333
        957.791666666667
        76.7291666666667)
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
        52.9166666666667
        1100.66666666667
        859.895833333333
        153.458333333333)
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
        52.9166666666667
        1312.33333333333
        957.791666666667
        108.479166666667)
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
        52.9166666666667
        211.666666666667
        1124.47916666667
        203.729166666667)
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
        52.9166666666667
        571.5
        1375.83333333333
        113.770833333333)
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
        52.9166666666667
        910.166666666667
        1071.5625
        185.208333333333)
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
        52.9166666666667
        1291.16666666667
        1124.47916666667
        209.020833333333)
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
        52.9166666666667
        211.666666666667
        1172.10416666667
        82.0208333333333)
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
        52.9166666666667
        994.833333333333
        1375.83333333333
        113.770833333333)
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
        52.9166666666667
        211.666666666667
        1971.14583333333
        82.0208333333333)
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
        52.9166666666667
        127
        2103.4375
        82.0208333333333)
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
        52.9166666666667
        846.666666666667
        2103.4375
        82.0208333333333)
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
        52.9166666666667
        211.666666666667
        1071.5625
        82.0208333333333)
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
      Width = 576
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        227.541666666667
        1547.8125
        1524)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'De acordo com a certificação do responsável técnico constante no' +
        ' CFO nº ______'
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
        52.9166666666667
        227.541666666667
        1611.3125
        828.145833333333)
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
        52.9166666666667
        227.541666666667
        1674.8125
        1156.22916666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Partida Proveniente de área livre de      CYDEA POMONELLA.'
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
        52.9166666666667
        227.541666666667
        1738.3125
        1283.22916666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'Responsável Técnio:   DIMAS SOUZA                     Crea nº   ' +
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
        52.9166666666667
        1629.83333333333
        1539.875
        84.6666666666667)
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
        52.9166666666667
        613.833333333333
        1603.375
        84.6666666666667)
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
