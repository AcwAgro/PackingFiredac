inherited FfrmFinanceiroProdutor: TFfrmFinanceiroProdutor
  Caption = 'Financeiro produtor'
  ClientHeight = 472
  ClientWidth = 835
  ExplicitWidth = 841
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 456
    Width = 835
    ExplicitWidth = 754
    inherited PStatusHistorico: TPanel
      Width = 664
      ExplicitWidth = 583
    end
    inherited pnlTela: TPanel
      Left = 777
      ExplicitLeft = 696
    end
  end
  inherited pMenu: TRzPanel
    Height = 456
    inherited rzpMenu: TRzPanel
      inherited sbIncluir: TSpeedButton
        Visible = False
      end
    end
    inherited PPeriodo: TPanel
      inherited rbPeriodo: TGroupBox
        Visible = True
        inherited sbPeriodo: TSpeedButton
          Left = 2
          Top = 65
          Width = 122
          Align = alBottom
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 695
    Height = 456
    ExplicitWidth = 614
    inherited pcItem: TRzPageControl
      Width = 681
      Height = 442
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 600
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 598
        ExplicitHeight = 471
        inherited Label3: TLabel
          Width = 679
        end
        inherited dbDados: TDBGrid
          Width = 679
          Height = 408
        end
        inherited pPesquisa: TRzPanel
          Left = 136
          Top = 92
          ExplicitLeft = 136
          ExplicitTop = 92
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 598
        ExplicitHeight = 471
        inherited pDados: TPanel
          Width = 679
          Height = 421
          ExplicitWidth = 679
          ExplicitHeight = 401
          object Label6: TLabel
            Left = 387
            Top = 377
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sub.Total...:'
            Transparent = True
          end
          object Label7: TLabel
            Left = 480
            Top = 402
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sub.Total...:'
            Transparent = True
          end
          object DBGrid1: TDBGrid
            Left = 5
            Top = 133
            Width = 668
            Height = 236
            DataSource = dsRomanPro
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnColExit = DBGrid1ColExit
            OnEnter = DBGrid1Enter
            OnExit = DBGrid1Exit
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'QTDEBIN'
                Title.Alignment = taCenter
                Title.Caption = 'P/D'
                Title.Color = 13878195
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODCOD'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.'
                Title.Color = 13878195
                Width = 30
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PRODDES'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Hist'#243'rico'
                Title.Color = 13878195
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.'
                Title.Color = 13878195
                Width = 40
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Centro de custo'
                Title.Color = 13878195
                Width = 200
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Provento'
                Title.Color = 13878195
                Width = 90
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Desconto'
                Title.Color = 13878195
                Width = 90
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 1
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'LANC'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox3: TGroupBox
            Left = 5
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 2
            object DBEdit16: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DATA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
            object DateTimePicker3: TDateTimePicker
              Left = 81
              Top = 9
              Width = 19
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TabStop = False
              OnChange = dtpDataChange
            end
          end
          object GroupBox4: TGroupBox
            Left = 111
            Top = 36
            Width = 356
            Height = 32
            Caption = ' Produtor '
            TabOrder = 3
          end
          object GroupBox6: TGroupBox
            Left = 5
            Top = 67
            Width = 356
            Height = 32
            Caption = ' Variedade '
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 561
            Top = 374
            Width = 91
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'BINSTAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit5: TDBEdit
            Left = 470
            Top = 374
            Width = 91
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'BINSLIQ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit2: TDBEdit
            Left = 561
            Top = 397
            Width = 91
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'BINSTAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 98
            Width = 356
            Height = 32
            Caption = ' Conta financeira '
            TabOrder = 8
          end
          object GroupBox5: TGroupBox
            Left = 363
            Top = 98
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 9
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DATA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
        end
        inline frmPesquisa1: TfrmPesquisa
          Left = 115
          Top = 47
          Width = 347
          Height = 16
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 115
          ExplicitTop = 47
          ExplicitWidth = 347
          inherited SpeedButton1: TSpeedButton
            Left = 326
            Top = 0
            ExplicitLeft = 326
            ExplicitTop = 0
          end
          inherited edtPesquisa: TEdit
            Width = 318
            CharCase = ecUpperCase
            ExplicitWidth = 318
          end
        end
        inline frmPesquisa2: TfrmPesquisa
          Left = 10
          Top = 80
          Width = 347
          Height = 16
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = 10
          ExplicitTop = 80
          ExplicitWidth = 347
          inherited SpeedButton1: TSpeedButton
            Left = 326
            Top = 0
            ExplicitLeft = 326
            ExplicitTop = 0
          end
          inherited edtPesquisa: TEdit
            Width = 318
            CharCase = ecUpperCase
            ExplicitWidth = 318
          end
        end
        inline frmPesquisa3: TfrmPesquisa
          Left = 10
          Top = 111
          Width = 347
          Height = 16
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          ExplicitLeft = 10
          ExplicitTop = 111
          ExplicitWidth = 347
          inherited SpeedButton1: TSpeedButton
            Left = 326
            Top = 0
            ExplicitLeft = 326
            ExplicitTop = 0
          end
          inherited edtPesquisa: TEdit
            Width = 318
            CharCase = ecUpperCase
            ExplicitWidth = 318
          end
        end
      end
    end
  end
  inherited sqlDados: TQuery
    SQL.Strings = (
      'select * from roman')
    Left = 506
    Top = 166
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
    end
    object sqlDadosHORINI: TStringField
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Size = 5
    end
    object sqlDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Size = 5
    end
    object sqlDadosQTDEBIN: TFloatField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
    end
    object sqlDadosPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
    end
    object sqlDadosPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
    end
    object sqlDadosDATAFIN: TDateTimeField
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
    end
    object sqlDadosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object sqlDadosPESOPRO: TFloatField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
    end
    object sqlDadosPERCA: TFloatField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
    end
    object sqlDadosPEREC: TFloatField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
    end
    object sqlDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
      Size = 30
    end
    object sqlDadosFECHA: TStringField
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Size = 9
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 570
    Top = 166
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TDateTimeField
      DisplayLabel = 'Data Abre'
      DisplayWidth = 10
      FieldName = 'DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosDATAFIN: TDateTimeField
      DisplayLabel = 'Data Fecha'
      DisplayWidth = 10
      FieldName = 'DATAFIN'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 6
      FieldName = 'LOTE'
    end
    object cdsDadosQTDEBIN: TFloatField
      DisplayLabel = 'Qtde.Bins'
      FieldName = 'QTDEBIN'
      DisplayFormat = '0.#'
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 20
      FieldName = 'VARIEDES'
      Size = 30
    end
    object cdsDadosHORINI: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORINI'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Visible = False
    end
    object cdsDadosPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Visible = False
    end
    object cdsDadosPESOPRO: TFloatField
      FieldName = 'PESOPRO'
      Visible = False
    end
    object cdsDadosPERCA: TFloatField
      FieldName = 'PERCA'
      Visible = False
    end
    object cdsDadosPEREC: TFloatField
      FieldName = 'PEREC'
      Visible = False
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Visible = False
    end
    object cdsDadosFECHA: TStringField
      FieldName = 'FECHA'
      Visible = False
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Visible = False
      Size = 9
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 538
    Top = 166
  end
  inherited dsDados: TDataSource
    Left = 602
    Top = 166
  end
  object dsRomanMer: TDataSource
    DataSet = cdsRomanMer
    Left = 602
    Top = 230
  end
  object cdsRomanMer: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMer'
    AfterOpen = cdsDadosAfterOpen
    OnReconcileError = cdsDadosReconcileError
    AfterApplyUpdates = cdsDadosAfterApplyUpdates
    Left = 570
    Top = 230
    object cdsRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 40
    end
    object cdsRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object cdsRomanMerQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
    end
    object cdsRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
    end
    object cdsRomanMerPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
    end
    object cdsRomanMerPESOREAL: TFloatField
      FieldName = 'PESOREAL'
    end
    object cdsRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
  end
  object dspRomanMer: TDataSetProvider
    DataSet = sqlRomanMer
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 230
  end
  object sqlRomanMer: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from romanmer')
    Left = 506
    Top = 230
    object sqlRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMANMER.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ROMANMER.PRODCOD'
    end
    object sqlRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ROMANMER.PRODDES'
      Size = 40
    end
    object sqlRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.ROMANMER.UNIDADE'
      Size = 2
    end
    object sqlRomanMerQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.ROMANMER.QTDE'
    end
    object sqlRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'JAEADMIN.ROMANMER.CODIAUX'
    end
    object sqlRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.ROMANMER.CALIBRE'
    end
    object sqlRomanMerPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMANMER.PESOLIQ'
    end
    object sqlRomanMerPESOREAL: TFloatField
      FieldName = 'PESOREAL'
      Origin = 'JAEADMIN.ROMANMER.PESOREAL'
    end
    object sqlRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.ROMANMER.LANCIT'
    end
    object sqlRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMANMER.SAFRA'
      Size = 9
    end
  end
  object dsRomanPro: TDataSource
    DataSet = cdsRomanPro
    Left = 602
    Top = 198
  end
  object cdsRomanPro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanPro'
    AfterOpen = cdsDadosAfterOpen
    OnReconcileError = cdsDadosReconcileError
    AfterApplyUpdates = cdsDadosAfterApplyUpdates
    Left = 570
    Top = 198
    object cdsRomanProLANC: TIntegerField
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 40
    end
    object cdsRomanProQTDEBIN: TFloatField
      FieldName = 'QTDEBIN'
      DisplayFormat = '0.##'
    end
    object cdsRomanProPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      DisplayFormat = '0.###'
    end
    object cdsRomanProPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      DisplayFormat = '0.###'
    end
    object cdsRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
    end
    object cdsRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
  end
  object dspRomanPro: TDataSetProvider
    DataSet = sqlRomanPro
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 198
  end
  object sqlRomanPro: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from romanpro')
    Left = 506
    Top = 198
    object sqlRomanProLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMANPRO.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ROMANPRO.PRODCOD'
    end
    object sqlRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ROMANPRO.PRODDES'
      Size = 40
    end
    object sqlRomanProQTDEBIN: TFloatField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMANPRO.QTDEBIN'
    end
    object sqlRomanProPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMANPRO.PESOBRU'
    end
    object sqlRomanProPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMANPRO.PESOLIQ'
    end
    object sqlRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
      Origin = 'JAEADMIN.ROMANPRO.LOTEENTRA'
    end
    object sqlRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.ROMANPRO.LANCIT'
    end
    object sqlRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMANPRO.SAFRA'
      Size = 9
    end
  end
end
