inherited FfrmRomanEmbal: TFfrmRomanEmbal
  Caption = 'Romaneio produ'#231#227'o embalador'
  ClientHeight = 512
  ClientWidth = 1230
  ExplicitWidth = 1236
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 496
    Width = 1230
    Color = 14273198
    ParentBackground = False
    ExplicitTop = 496
    ExplicitWidth = 1230
    inherited PStatusHistorico: TPanel
      Left = 1018
      Width = 154
      Align = alRight
      ExplicitLeft = 1018
      ExplicitWidth = 154
    end
    inherited pnlTela: TPanel
      Left = 1172
      ExplicitLeft = 1172
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 792
      ExplicitLeft = 792
    end
    object Sb: TStatusBar
      Left = 113
      Top = 0
      Width = 679
      Height = 16
      Align = alClient
      Color = 14273198
      Panels = <
        item
          Width = 180
        end
        item
          Width = 150
        end
        item
          Width = 180
        end>
      ParentFont = True
      UseSystemFont = False
    end
    object pbBarra: TProgressBar
      Left = 802
      Top = 0
      Width = 216
      Height = 16
      Align = alRight
      Smooth = True
      TabOrder = 4
      Visible = False
    end
  end
  inherited pMenu: TRzPanel
    Height = 496
    ExplicitHeight = 496
    inherited rzpMenu: TRzPanel
      Height = 392
      ExplicitHeight = 392
      inherited sbIncluir: TSpeedButton
        Visible = False
      end
      inherited sbExcluir: TSpeedButton
        Visible = False
        ExplicitLeft = 1
        ExplicitTop = 90
        ExplicitWidth = 126
      end
      inherited sbProximo: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 182
        ExplicitWidth = 126
      end
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          Hint = ''
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 272
        ExplicitTop = 272
      end
      inherited PPeriodo: TPanel
        Top = 312
        Visible = True
        ExplicitTop = 312
        inherited sbPeriodo: TSpeedButton
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
        inherited rbPeriodo: TGroupBox
          Visible = True
        end
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
        ExplicitLeft = 1
        ExplicitWidth = 126
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1093
    Height = 496
    ExplicitWidth = 1093
    ExplicitHeight = 496
    inherited pcItem: TRzPageControl
      Width = 1085
      Height = 488
      OnChange = pcItemChange
      ExplicitWidth = 1085
      ExplicitHeight = 488
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1083
        ExplicitHeight = 467
        inherited pPesquisa: TRzPanel
          Top = 401
          Width = 1083
          ExplicitTop = 401
          ExplicitWidth = 1083
          inherited Label1: TLabel
            Width = 1075
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 962
            ExplicitLeft = 656
          end
          inherited rbPesquisa: TRzPanel
            Width = 1075
            ExplicitWidth = 1075
          end
          inherited edPesquisa: TMaskEdit
            Width = 958
            ExplicitWidth = 958
          end
        end
        inherited Panel2: TPanel
          Width = 1083
          ExplicitWidth = 1083
          inherited Label3: TLabel
            Width = 945
            ExplicitLeft = 665
          end
        end
        inherited dbDados: TcxGrid
          Width = 1083
          Height = 381
          ExplicitWidth = 1083
          ExplicitHeight = 381
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDEBIN
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1LOTE: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE'
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Width = 60
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 200
            end
            object dbDadosDBTableView1prodnom: TcxGridDBColumn
              DataBinding.FieldName = 'prodnom'
              Width = 200
            end
            object dbDadosDBTableView1QTDEBIN: TcxGridDBColumn
              DataBinding.FieldName = 'QTDEBIN'
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
            end
            object dbDadosDBTableView1DATAFIN: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFIN'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGENVIAWEB: TcxGridDBColumn
              DataBinding.FieldName = 'FGENVIAWEB'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1HORINI: TcxGridDBColumn
              DataBinding.FieldName = 'HORINI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1HORFIM: TcxGridDBColumn
              DataBinding.FieldName = 'HORFIM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOBRU: TcxGridDBColumn
              DataBinding.FieldName = 'PESOBRU'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'PESOLIQ'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOPRO: TcxGridDBColumn
              DataBinding.FieldName = 'PESOPRO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PERCA: TcxGridDBColumn
              DataBinding.FieldName = 'PERCA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PEREC: TcxGridDBColumn
              DataBinding.FieldName = 'PEREC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VARIECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VARIECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1EMPRECOD: TcxGridDBColumn
              DataBinding.FieldName = 'EMPRECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ACESOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'ACESOCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SAFRA: TcxGridDBColumn
              DataBinding.FieldName = 'SAFRA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn
              DataBinding.FieldName = 'CODLOTECLASS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LOCALCOD: TcxGridDBColumn
              DataBinding.FieldName = 'LOCALCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              DataBinding.FieldName = 'OBS'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1083
        ExplicitHeight = 467
        inherited pDados: TPanel
          Width = 1083
          Height = 50
          Align = alTop
          ExplicitWidth = 1083
          ExplicitHeight = 50
          object GroupBox1: TGroupBox
            Left = 5
            Top = 6
            Width = 84
            Height = 36
            Caption = ' Registro '
            Color = 16053492
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object DBEdit14: TDBEdit
              Left = 7
              Top = 15
              Width = 73
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 16053492
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
          object GroupBox2: TGroupBox
            Left = 452
            Top = 6
            Width = 84
            Height = 36
            Caption = ' Lote '
            Color = 16053492
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object DBEdit15: TDBEdit
              Left = 5
              Top = 16
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 16053492
              DataField = 'LOTE'
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
          object GroupBox4: TGroupBox
            Left = 90
            Top = 6
            Width = 254
            Height = 36
            Caption = ' Variedade '
            Color = 16053492
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            inline frmPesquisaVarie: TfrmPesquisa
              Left = 4
              Top = 14
              Width = 246
              Height = 16
              Enabled = False
              Color = 16053492
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 4
              ExplicitTop = 14
              ExplicitWidth = 246
              ExplicitHeight = 16
              inherited SpeedButton1: TSpeedButton
                Left = 225
                Height = 16
                ExplicitLeft = 241
              end
              inherited edtPesquisa: TEdit
                Width = 241
                Height = 16
                CharCase = ecUpperCase
                Color = 16053492
                ExplicitWidth = 241
                ExplicitHeight = 16
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 537
            Top = 6
            Width = 86
            Height = 36
            Caption = ' Abertura'
            Color = 16053492
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            object DBEdit16: TDBEdit
              Left = 5
              Top = 16
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 16053492
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
          object GroupBox5: TGroupBox
            Left = 624
            Top = 6
            Width = 98
            Height = 36
            Caption = ' Fechamento'
            Color = 16053492
            ParentBackground = False
            ParentColor = False
            TabOrder = 4
            object DBEdit17: TDBEdit
              Left = 5
              Top = 16
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 16053492
              DataField = 'DATAFIN'
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
          object DBRadioGroup4: TDBRadioGroup
            Left = 345
            Top = 6
            Width = 101
            Height = 36
            Caption = ' Fechado '
            Color = 16053492
            Columns = 2
            DataField = 'FECHA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
        end
        object GroupBox9: TGroupBox
          Left = 0
          Top = 50
          Width = 1083
          Height = 417
          Align = alClient
          Caption = ' Embalador/Produto '
          Enabled = False
          TabOrder = 1
          object DBGrid3: TDBGrid
            Left = 2
            Top = 15
            Width = 1079
            Height = 371
            Hint = '999 - sai da planilha'
            Align = alClient
            DataSource = dsRomanEmb
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnColExit = DBGrid3ColExit
            OnEnter = DBGrid3Enter
            OnExit = DBGrid3Exit
            OnKeyPress = DBGrid3KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'QTDE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMBALCOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 50
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'EMBALDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Embalador'
                Title.Color = 13878195
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODCOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo.'
                Title.Color = 13878195
                Width = 70
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PRODDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o Produto'
                Title.Color = 13878195
                Width = 350
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 386
            Width = 1079
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            Enabled = False
            TabOrder = 1
            object Label7: TLabel
              Left = 8
              Top = 9
              Width = 30
              Height = 13
              Caption = 'Qtde'
              Transparent = True
            end
            object edSoma: TEdit
              Left = 44
              Top = 6
              Width = 55
              Height = 21
              TabOrder = 0
              Text = '0'
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    AfterOpen = nil
    BeforeClose = nil
    AfterCancel = nil
    Left = 826
    Top = 198
    object cdsDadosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 6
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 15
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data Abre'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosDATAFIN: TSQLTimeStampField
      DisplayLabel = 'Data Fecha'
      DisplayWidth = 10
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
      Visible = False
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosprodnom: TStringField
      DisplayLabel = 'Produtor'
      FieldName = 'prodnom'
      ProviderFlags = []
      Size = 50
    end
    object cdsDadosFECHA: TStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object cdsDadosFGENVIAWEB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Enviado Web'
      FieldName = 'FGENVIAWEB'
      Visible = False
      Size = 1
    end
    object cdsDadosQTDEBIN: TBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosHORINI: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPEREC: TBCDField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosCODLOTECLASS: TStringField
      DisplayLabel = 'Lote/Clas.'
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEADMIN.ROMAN.CODLOTECLASS'
      Visible = False
      Size = 10
    end
    object cdsDadosLOCALCOD: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCALCOD'
      Visible = False
    end
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object cdsDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Visible = False
    end
    object cdsDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 794
    Top = 198
  end
  inherited dsDados: TDataSource
    Left = 858
    Top = 198
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      
        'select roman.*, CAST('#39#39' AS VARCHAR(50)) as prodnom from roman wh' +
        'ere lanc = -1')
    Left = 762
    Top = 199
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
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
    object sqlDadosQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
    end
    object sqlDadosDATAFIN: TSQLTimeStampField
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
    end
    object sqlDadosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object sqlDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
    end
    object sqlDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
    end
    object sqlDadosPEREC: TBCDField
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
    object sqlDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEADMIN.ROMAN.CODLOTECLASS'
      Size = 10
    end
    object sqlDadosprodnom: TStringField
      FieldName = 'prodnom'
      ProviderFlags = []
      Size = 50
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object sqlDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
    end
    object sqlDadosFGENVIAWEB: TStringField
      FieldName = 'FGENVIAWEB'
      Size = 1
    end
    object sqlDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
    end
    object sqlDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dsRomanEmb: TDataSource
    DataSet = cdsRomanEmb
    Left = 858
    Top = 262
  end
  object cdsRomanEmb: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanEmb'
    BeforePost = cdsRomanEmbBeforePost
    OnCalcFields = cdsRomanEmbCalcFields
    OnReconcileError = cdsDadosReconcileError
    Left = 826
    Top = 262
    object cdsRomanEmbLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRomanEmbLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanEmbEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'EMBALCOD'
    end
    object cdsRomanEmbEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsRomanEmbACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsRomanEmbDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsRomanEmbEMBALDES: TStringField
      FieldName = 'EMBALDES'
      Origin = 'EMBALDES'
      Size = 30
    end
    object cdsRomanEmbPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanEmbPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object cdsRomanEmbQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsRomanEmbvCATEGCOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanEmbvCATEGDES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGDES'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsRomanEmbvCATEGCLC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCLC'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanEmbvCATEGCLD: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCLD'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object cdsRomanEmbvPerc: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vPerc'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanEmbREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsRomanEmbREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspRomanEmb: TDataSetProvider
    DataSet = sqlRomanEmb
    UpdateMode = upWhereKeyOnly
    Left = 794
    Top = 262
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 120
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object sqlRomanEmb: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanembal'
      'where lancit = -1'
      '')
    Left = 762
    Top = 262
  end
end
