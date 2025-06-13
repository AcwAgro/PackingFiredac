inherited FfrmPrevisao: TFfrmPrevisao
  Caption = 'Previs'#227'o de Safra'
  ClientHeight = 474
  ClientWidth = 854
  ExplicitWidth = 860
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 458
    Width = 854
    ExplicitTop = 458
    ExplicitWidth = 854
    inherited PStatusHistorico: TPanel
      Width = 673
      ExplicitWidth = 673
    end
    inherited pnlTela: TPanel
      Left = 786
      ExplicitLeft = 786
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 844
      ExplicitLeft = 844
    end
  end
  inherited pMenu: TRzPanel
    Height = 458
    ExplicitHeight = 458
    inherited rzpMenu: TRzPanel
      Height = 354
      ExplicitHeight = 354
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 2
        ExplicitTop = 10
        ExplicitWidth = 129
      end
      inherited rbgAtivo: TRadioGroup
        Top = 234
        ExplicitTop = 234
      end
      inherited PPeriodo: TPanel
        Top = 274
        Visible = True
        ExplicitTop = 274
        inherited sbPeriodo: TSpeedButton
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
        inherited rbPeriodo: TGroupBox
          Visible = True
          inherited Label2: TLabel
            Top = 34
            Width = 27
            Caption = 'Ano:'
            ExplicitTop = 34
            ExplicitWidth = 27
          end
          inherited Label5: TLabel
            Top = 56
            Visible = False
            ExplicitTop = 56
          end
          inherited dtInicial: TDateTimePicker
            Left = 36
            Top = 26
            Width = 82
            Format = 'yyyy'
            ExplicitLeft = 36
            ExplicitTop = 26
            ExplicitWidth = 82
          end
          inherited dtFinal: TDateTimePicker
            Top = 53
            Visible = False
            ExplicitTop = 53
          end
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
    Width = 717
    Height = 458
    ExplicitWidth = 717
    ExplicitHeight = 458
    inherited pcItem: TRzPageControl
      Width = 709
      Height = 450
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 709
      ExplicitHeight = 450
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 707
        ExplicitHeight = 429
        inherited pPesquisa: TRzPanel
          Top = 363
          Width = 707
          ExplicitTop = 363
          ExplicitWidth = 707
          inherited Label1: TLabel
            Width = 699
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 586
            ExplicitLeft = 586
          end
          inherited rbPesquisa: TRzPanel
            Width = 699
            ExplicitWidth = 699
          end
          inherited edPesquisa: TMaskEdit
            Width = 582
            ExplicitWidth = 582
          end
        end
        inherited Panel2: TPanel
          Width = 707
          ExplicitWidth = 707
          inherited Label3: TLabel
            Width = 569
            ExplicitLeft = 289
          end
        end
        inherited dbDados: TcxGrid
          Width = 707
          Height = 343
          ExplicitWidth = 707
          ExplicitHeight = 343
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1TOTAL
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
            end
            object dbDadosDBTableView1SAFRA: TcxGridDBColumn
              Caption = 'Safra'
              DataBinding.FieldName = 'SAFRA'
            end
            object dbDadosDBTableView1PRODCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
            end
            object dbDadosDBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
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
            object dbDadosDBTableView1LOTE_CFO: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE_CFO'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 707
        ExplicitHeight = 429
        inherited pDados: TPanel
          Width = 707
          Height = 429
          ExplicitWidth = 707
          ExplicitHeight = 429
          object DBGrid1: TDBGrid
            Left = 2
            Top = 79
            Width = 703
            Height = 305
            Align = alClient
            DataSource = dsDetalhe
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 1
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
                FieldName = 'QTDE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VARIECOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 63
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'VARIEDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Variedade'
                Title.Color = 13878195
                Width = 278
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOTE_PRO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Lote Produto do CFO.'
                Title.Color = 13878195
                Width = 140
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 384
            Width = 703
            Height = 43
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object GroupBox6: TGroupBox
              Left = 10
              Top = 3
              Width = 95
              Height = 32
              Caption = ' Qtde.'
              TabOrder = 0
              object DBEdit2: TDBEdit
                Left = 2
                Top = 15
                Width = 91
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'TOTAL'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnExit = DBEdit2Exit
                OnKeyDown = FormKeyDown
              end
            end
          end
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 703
            Height = 77
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 8
              Top = 5
              Width = 84
              Height = 32
              Caption = ' Registro '
              Enabled = False
              TabOrder = 0
              object DBEdit11: TDBEdit
                Left = 2
                Top = 15
                Width = 80
                Height = 15
                Align = alClient
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
              Left = 99
              Top = 5
              Width = 84
              Height = 32
              Caption = ' Safra '
              Enabled = False
              TabOrder = 1
              object DBEdit1: TDBEdit
                Left = 2
                Top = 15
                Width = 80
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'SAFRA'
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
              Left = 8
              Top = 36
              Width = 356
              Height = 33
              Caption = ' Produtor '
              TabOrder = 2
              inline frmPesquisa: TfrmPesquisa
                Left = 6
                Top = 15
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
                TabOrder = 0
                ExplicitLeft = 6
                ExplicitTop = 15
                ExplicitWidth = 347
                ExplicitHeight = 16
                inherited SpeedButton1: TSpeedButton
                  Left = 326
                  Height = 16
                  ExplicitLeft = 326
                  ExplicitTop = 0
                end
                inherited edtPesquisa: TEdit
                  Width = 318
                  Height = 16
                  CharCase = ecUpperCase
                  ExplicitWidth = 318
                  ExplicitHeight = 16
                end
              end
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 570
    Top = 166
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Visible = False
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      FieldName = 'PRODDES'
      Size = 50
    end
    object cdsDadosTOTAL: TBCDField
      DisplayLabel = 'Qtde.total'
      FieldName = 'TOTAL'
      DisplayFormat = '#,0.###'
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
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosLOTE_CFO: TStringField
      DisplayLabel = 'Lote C.F.Origem'
      FieldName = 'LOTE_CFO'
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
    Left = 538
    Top = 166
  end
  inherited dsDados: TDataSource
    Left = 602
    Top = 166
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from previs  WHERE LANC = -1')
    Left = 506
    Top = 166
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.PREVIS.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.PREVIS.PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.PREVIS.PRODDES'
      Size = 50
    end
    object sqlDadosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'JAEADMIN.PREVIS.TOTAL'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.PREVIS.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.PREVIS.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.PREVIS.SAFRA'
      Size = 9
    end
    object sqlDadosLOTE_CFO: TStringField
      FieldName = 'LOTE_CFO'
      Origin = 'JAEADMIN.PREVIS.LOTE_CFO'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.PREVIS.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.PREVIS.REG_ID'
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 602
    Top = 198
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    BeforePost = cdsDetalheBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 570
    Top = 198
    object cdsDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetalheLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '#,0.###'
    end
    object cdsDetalheVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
    end
    object cdsDetalheVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Size = 30
    end
    object cdsDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
    object cdsDetalheLOTE_PRO: TStringField
      FieldName = 'LOTE_PRO'
    end
    object cdsDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object cdsDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = sqlDetalhe
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 198
  end
  object PopupMenu1: TPopupMenu
    Left = 561
    Top = 296
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
  object sqlDetalhe: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from previsco where Lanc = -1')
    Left = 506
    Top = 198
    object sqlDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlDetalheVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'VARIECOD'
    end
    object sqlDetalheVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'VARIEDES'
      Size = 30
    end
    object sqlDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object sqlDetalheLOTE_PRO: TStringField
      FieldName = 'LOTE_PRO'
      Origin = 'LOTE_PRO'
    end
    object sqlDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
