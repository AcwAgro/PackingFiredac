object qrPromissoria: TqrPromissoria
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
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
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = Letter
  Page.Values = (
    50.000000000000000000
    2794.000000000000000000
    250.000000000000000000
    2159.000000000000000000
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
  object DetailBand1: TQRBand
    Left = 26
    Top = 94
    Width = 771
    Height = 387
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Frame.Width = 3
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      1023.937500000000000000
      2039.937500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRShape2: TQRShape
      Left = 556
      Top = 32
      Width = 153
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.312500000000000000
        1471.083333333330000000
        84.666666666666700000
        404.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel14: TQRLabel
      Left = 28
      Top = 45
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        74.083333333333340000
        119.062500000000000000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 20
      Top = 81
      Width = 687
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666660000
        214.312500000000000000
        1817.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'Ao(s) __________________________________________________________' +
        '___________________________________'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 428
      Top = 103
      Width = 224
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666700000
        1132.416666666670000000
        272.520833333333000000
        592.666666666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'NOTA PROMISS'#211'RIA RURAL'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRLabel6: TQRLabel
      Left = 20
      Top = 209
      Width = 681
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        52.916666666666700000
        552.979166666667000000
        1801.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'em moeda corrente deste pa'#237's, por qualquer demora que ocorrer pa' +
        'garei____________________________________ a'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 20
      Top = 233
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        52.916666666666700000
        616.479166666667000000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 't'#237'tulo de multa.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 428
      Top = 233
      Width = 115
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1132.416666666670000000
        616.479166666667000000
        304.270833333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'S'#227'o Joaquim(SC),'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 20
      Top = 153
      Width = 178
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666660000
        404.812500000000000000
        470.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ou '#224' sua orderm, a quantia de '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRRichText1: TQRRichText
      Left = 212
      Top = 153
      Width = 493
      Height = 49
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        129.645833333333000000
        560.916666666667000000
        404.812500000000000000
        1304.395833333330000000)
      Alignment = taLeftJustify
      AutoStretch = False
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object QRLabel1: TQRLabel
      Left = 516
      Top = 45
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1365.250000000000000000
        119.062500000000000000
        82.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Valor'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 20
      Top = 105
      Width = 386
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666660000
        277.812500000000000000
        1021.291666666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '__________________________pagarei______por esta '#250'nica via de'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 20
      Top = 129
      Width = 687
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666660000
        341.312500000000000000
        1817.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'a_______________________________________________________________' +
        '__________________________________'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 404
      Top = 130
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1068.916666666670000000
        343.958333333333000000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C P F/CNPJ'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRLabel13: TQRLabel
      Left = 20
      Top = 265
      Width = 470
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        52.916666666666700000
        701.145833333333000000
        1243.541666666670000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        '________________________________________________________________' +
        '___'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 20
      Top = 289
      Width = 470
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        52.916666666666700000
        764.645833333333000000
        1243.541666666670000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'Emitente _______________________________________________________' +
        '____'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel16: TQRLabel
      Left = 20
      Top = 313
      Width = 471
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        52.916666666666700000
        828.145833333333000000
        1246.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'CPF/CNPJ  ______________________________________________________' +
        '___'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 20
      Top = 337
      Width = 683
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        52.916666666666700000
        891.645833333333000000
        1807.104166666670000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'Endere'#231'o _______________________________________________________' +
        '__________________________________'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 52
      Top = 32
      Width = 153
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.312500000000000000
        137.583333333333000000
        84.666666666666700000
        404.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel12: TQRLabel
      Left = 60
      Top = 42
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        158.750000000000000000
        111.125000000000000000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 228
      Top = 45
      Width = 193
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        603.250000000000000000
        119.062500000000000000
        510.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Vencimento _________________'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel18: TQRLabel
      Left = 316
      Top = 42
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        836.083333333333400000
        111.125000000000000000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel19: TQRLabel
      Left = 564
      Top = 42
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1492.250000000000000000
        111.125000000000000000
        50.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel20: TQRLabel
      Left = 60
      Top = 77
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        158.750000000000000000
        203.729166666666700000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel21: TQRLabel
      Left = 36
      Top = 125
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        95.250000000000000000
        330.729166666666700000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel22: TQRLabel
      Left = 468
      Top = 125
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1238.250000000000000000
        330.729166666667000000
        50.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel23: TQRLabel
      Left = 548
      Top = 233
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1449.916666666670000000
        616.479166666667000000
        50.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel24: TQRLabel
      Left = 100
      Top = 285
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        264.583333333333000000
        754.062500000000000000
        50.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel25: TQRLabel
      Left = 100
      Top = 309
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        264.583333333333000000
        817.562500000000000000
        50.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel26: TQRLabel
      Left = 100
      Top = 333
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        264.583333333333000000
        881.062500000000000000
        50.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
end
