inherited FfrmRomanMarca: TFfrmRomanMarca
  Caption = 'Romaneio produ'#231#227'o marca'
  ClientHeight = 585
  ClientWidth = 987
  ExplicitWidth = 993
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 569
    Width = 987
    Color = 14273198
    ParentBackground = False
    ExplicitTop = 569
    ExplicitWidth = 987
    inherited PStatusHistorico: TPanel
      Left = 765
      Width = 154
      Align = alRight
      ExplicitLeft = 765
      ExplicitWidth = 154
    end
    inherited pnlTela: TPanel
      Left = 919
      ExplicitLeft = 919
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 977
      ExplicitLeft = 977
    end
    object Sb: TStatusBar
      Left = 113
      Top = 0
      Width = 436
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
      Left = 549
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
    Height = 569
    ExplicitHeight = 569
    inherited rzpMenu: TRzPanel
      Height = 465
      ExplicitHeight = 465
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
        Top = 345
        ExplicitTop = 345
      end
      inherited PPeriodo: TPanel
        Top = 385
        Visible = True
        ExplicitTop = 385
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
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 850
    Height = 569
    ExplicitWidth = 850
    ExplicitHeight = 569
    inherited pcItem: TRzPageControl
      Width = 842
      Height = 561
      OnChange = pcItemChange
      ExplicitWidth = 842
      ExplicitHeight = 561
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 840
        ExplicitHeight = 540
        inherited pPesquisa: TRzPanel
          Top = 474
          Width = 840
          ExplicitTop = 474
          ExplicitWidth = 840
          inherited Label1: TLabel
            Width = 832
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 719
            ExplicitLeft = 719
          end
          inherited rbPesquisa: TRzPanel
            Width = 832
            ExplicitWidth = 832
          end
          inherited edPesquisa: TMaskEdit
            Width = 715
            ExplicitWidth = 715
          end
        end
        inherited Panel2: TPanel
          Width = 840
          ExplicitWidth = 840
          inherited Label3: TLabel
            Width = 702
            ExplicitLeft = 422
          end
        end
        inherited dbDados: TcxGrid
          Width = 840
          Height = 454
          ExplicitWidth = 840
          ExplicitHeight = 454
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1LOTE: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE'
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
              Width = 90
            end
            object dbDadosDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Width = 60
            end
            object dbDadosDBTableView1DATAFIN: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFIN'
              Width = 90
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 120
            end
            object dbDadosDBTableView1PRODNOM: TcxGridDBColumn
              DataBinding.FieldName = 'PRODNOM'
              Width = 150
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 70
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 840
        ExplicitHeight = 540
        inherited pDados: TPanel
          Width = 840
          Height = 50
          Align = alTop
          ExplicitWidth = 840
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
          Width = 840
          Height = 490
          Align = alClient
          Caption = ' Embalador/Produto '
          Enabled = False
          TabOrder = 1
          object DBGrid3: TDBGrid
            Left = 2
            Top = 15
            Width = 836
            Height = 448
            Hint = '999 - sai da planilha'
            Align = alClient
            DataSource = dsRomanMar
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
                FieldName = 'MARCACOD'
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
                FieldName = 'MARCADES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Marca'
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
            Top = 463
            Width = 836
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            Enabled = False
            TabOrder = 1
            ExplicitLeft = 1
            ExplicitTop = 462
            object Label7: TLabel
              Left = 8
              Top = 6
              Width = 30
              Height = 13
              Caption = 'Qtde'
              Transparent = True
            end
            object edSoma: TEdit
              Left = 44
              Top = 3
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
      Origin = 'JAEADMIN.ROMAN.PRODUTORCOD'
      Visible = False
    end
    object cdsDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
      Origin = 'JAEADMIN.ROMAN.QTDEMER'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ROMAN.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ROMAN.REG_ID'
      Visible = False
    end
    object cdsDadosPRODNOM: TStringField
      DisplayLabel = 'Produtor'
      FieldName = 'PRODNOM'
      Origin = 'PRODNOM'
      ProviderFlags = []
      Size = 50
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
      
        'select roman.*, CAST('#39#39' AS VARCHAR(50)) as prodnom from roman WH' +
        'ERE ROMAN.LANC = -1')
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
      Origin = 'JAEADMIN.ROMAN.PRODUTORCOD'
    end
    object sqlDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
      Origin = 'JAEADMIN.ROMAN.QTDEMER'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ROMAN.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ROMAN.REG_ID'
    end
    object sqlDadosPRODNOM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODNOM'
      Origin = 'PRODNOM'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsRomanMar: TDataSource
    DataSet = cdsRomanMar
    Left = 858
    Top = 262
  end
  object cdsRomanMar: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMar'
    BeforePost = cdsRomanMarBeforePost
    OnCalcFields = cdsRomanMarCalcFields
    OnReconcileError = cdsDadosReconcileError
    Left = 826
    Top = 262
    object cdsRomanMarLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRomanMarLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanMarEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsRomanMarACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsRomanMarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsRomanMarPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanMarPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object cdsRomanMarQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsRomanMarvCATEGCOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanMarvCATEGDES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGDES'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsRomanMarvCATEGCLC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCLC'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanMarvCATEGCLD: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCLD'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object cdsRomanMarvPerc: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vPerc'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanMarMARCACOD: TIntegerField
      FieldName = 'MARCACOD'
      Origin = 'MARCACOD'
    end
    object cdsRomanMarMARCADES: TStringField
      FieldName = 'MARCADES'
      Origin = 'MARCADES'
      Size = 30
    end
    object cdsRomanMarREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsRomanMarREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspRomanMar: TDataSetProvider
    DataSet = sqlRomanMar
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
  object sqlRomanMar: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanmarca'
      'where lancit = -1'
      'order by marcacod, prodcod')
    Left = 762
    Top = 262
    object sqlRomanMarLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlRomanMarLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlRomanMarMARCACOD: TIntegerField
      FieldName = 'MARCACOD'
      Origin = 'MARCACOD'
    end
    object sqlRomanMarMARCADES: TStringField
      FieldName = 'MARCADES'
      Origin = 'MARCADES'
      Size = 30
    end
    object sqlRomanMarPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlRomanMarPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object sqlRomanMarQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object sqlRomanMarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlRomanMarEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlRomanMarACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlRomanMarREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlRomanMarREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
