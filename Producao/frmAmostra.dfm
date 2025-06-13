inherited FfrmAmostra: TFfrmAmostra
  Caption = 'Controle de qualidade (Amostra)'
  ClientHeight = 623
  ClientWidth = 1069
  ExplicitWidth = 1075
  ExplicitHeight = 652
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 607
    Width = 1069
    ExplicitTop = 607
    ExplicitWidth = 1069
    inherited PStatusHistorico: TPanel
      Width = 888
      ExplicitWidth = 888
    end
    inherited pnlTela: TPanel
      Left = 1011
      ExplicitLeft = 1011
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1001
      ExplicitLeft = 1001
    end
  end
  inherited pMenu: TRzPanel
    Height = 607
    ExplicitHeight = 607
    inherited rzpMenu: TRzPanel
      Height = 503
      ExplicitHeight = 503
      inherited rbgAtivo: TRadioGroup
        Top = 383
        ExplicitTop = 383
      end
      inherited PPeriodo: TPanel
        Top = 423
        Visible = True
        ExplicitTop = 423
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
    Width = 932
    Height = 607
    ExplicitWidth = 932
    ExplicitHeight = 607
    inherited pcItem: TRzPageControl
      Width = 924
      Height = 599
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 924
      ExplicitHeight = 599
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 922
        ExplicitHeight = 578
        inherited pPesquisa: TRzPanel
          Top = 512
          Width = 922
          ExplicitTop = 512
          ExplicitWidth = 922
          inherited Label1: TLabel
            Width = 914
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 801
            ExplicitLeft = 752
          end
          inherited rbPesquisa: TRzPanel
            Width = 914
            ExplicitWidth = 914
          end
          inherited edPesquisa: TMaskEdit
            Width = 797
            ExplicitWidth = 797
          end
        end
        inherited Panel2: TPanel
          Width = 922
          ExplicitWidth = 922
          inherited Label3: TLabel
            Width = 784
            ExplicitLeft = 504
          end
        end
        inherited dbDados: TcxGrid
          Width = 922
          Height = 492
          ExplicitWidth = 922
          ExplicitHeight = 492
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1PESO
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1RECIBO: TcxGridDBColumn
              DataBinding.FieldName = 'RECIBO'
              Width = 70
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 200
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Width = 200
            end
            object dbDadosDBTableView1PESO: TcxGridDBColumn
              DataBinding.FieldName = 'PESO'
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
            end
            object dbDadosDBTableView1VARIECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VARIECOD'
              Visible = False
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1PRODCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODCOD'
              Visible = False
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1QUALID: TcxGridDBColumn
              DataBinding.FieldName = 'QUALID'
              Visible = False
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1EMPRECOD: TcxGridDBColumn
              DataBinding.FieldName = 'EMPRECOD'
              Visible = False
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1ACESOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'ACESOCOD'
              Visible = False
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1SAFRA: TcxGridDBColumn
              DataBinding.FieldName = 'SAFRA'
              Visible = False
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 922
        ExplicitHeight = 578
        inherited pDados: TPanel
          Width = 922
          Height = 578
          ExplicitWidth = 922
          ExplicitHeight = 578
          object DBGrid1: TDBGrid
            Left = 2
            Top = 137
            Width = 918
            Height = 396
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
                FieldName = 'PESO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSECOD'
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
                FieldName = 'CLASSEDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Classe/Categoria'
                Title.Color = 13878195
                Width = 302
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 918
            Height = 135
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object GroupBox1: TGroupBox
              Left = 5
              Top = 3
              Width = 84
              Height = 32
              Caption = ' Registro '
              Enabled = False
              TabOrder = 0
              object DBEdit11: TDBEdit
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
            object GroupBox2: TGroupBox
              Left = 5
              Top = 36
              Width = 103
              Height = 32
              Caption = ' Data '
              TabOrder = 1
              TabStop = True
              object DBEdit3: TcxDBDateEdit
                Left = 2
                Top = 12
                Align = alBottom
                AutoSize = False
                DataBinding.DataField = 'DATA'
                DataBinding.DataSource = dsDados
                ParentFont = False
                ParentShowHint = False
                Properties.DateButtons = [btnToday]
                Properties.DateOnError = deToday
                Properties.SaveTime = False
                Properties.ShowTime = False
                Properties.ValidationOptions = [evoShowErrorIcon]
                ShowHint = True
                Style.BorderStyle = ebsNone
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clBlack
                Style.Font.Height = -11
                Style.Font.Name = 'Verdana'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                StyleDisabled.BorderStyle = ebsNone
                StyleDisabled.ButtonStyle = btsDefault
                StyleFocused.BorderStyle = ebsNone
                StyleHot.BorderStyle = ebsNone
                StyleHot.TextStyle = []
                TabOrder = 0
                OnKeyDown = FormKeyDown
                Height = 18
                Width = 99
              end
            end
            object GroupBox3: TGroupBox
              Left = 109
              Top = 36
              Width = 100
              Height = 32
              Caption = ' Entrada n'#186' '
              TabOrder = 2
              TabStop = True
              object DBEdit1: TDBEdit
                Left = 5
                Top = 15
                Width = 86
                Height = 14
                Hint = 'Informar Zero ou n'#186' do romaneio de entrada.'
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'RECIBO'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit1Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox4: TGroupBox
              Left = 5
              Top = 67
              Width = 356
              Height = 32
              Caption = ' Produtor '
              TabOrder = 3
              inline frmPesquisaPro: TfrmPesquisa
                Left = 5
                Top = 14
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
                ExplicitLeft = 5
                ExplicitTop = 14
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
            object GroupBox5: TGroupBox
              Left = 5
              Top = 98
              Width = 356
              Height = 32
              Caption = ' Variedade '
              TabOrder = 4
              inline frmPesquisaVar: TfrmPesquisa
                Left = 5
                Top = 14
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
                ExplicitLeft = 5
                ExplicitTop = 14
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
          object Panel4: TPanel
            Left = 2
            Top = 533
            Width = 918
            Height = 43
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object GroupBox6: TGroupBox
              Left = 0
              Top = 0
              Width = 94
              Height = 43
              Align = alLeft
              Caption = ' Qtde. Total '
              TabOrder = 0
              TabStop = True
              object DBEdit2: TDBEdit
                Left = 5
                Top = 15
                Width = 84
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'PESO'
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
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 570
    Top = 166
    object cdsDadosRECIBO: TIntegerField
      DisplayLabel = 'Entrada n'#186
      DisplayWidth = 6
      FieldName = 'RECIBO'
      Origin = 'JAEADMIN.AMOSTRA.RECIBO'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.AMOSTRA.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.AMOSTRA.VARIECOD'
      Visible = False
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 20
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.AMOSTRA.VARIEDES'
      Size = 30
    end
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.AMOSTRA.PRODCOD'
      Visible = False
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.AMOSTRA.PRODDES'
      Size = 40
    end
    object cdsDadosPESO: TBCDField
      DisplayLabel = 'Qtde.Total'
      FieldName = 'PESO'
      Origin = 'JAEADMIN.AMOSTRA.PESO'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosQUALID: TStringField
      FieldName = 'QUALID'
      Origin = 'JAEADMIN.AMOSTRA.QUALID'
      Visible = False
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.AMOSTRA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.AMOSTRA.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.AMOSTRA.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.AMOSTRA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.AMOSTRA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.AMOSTRA.REG_ID'
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
  inherited ImageList1: TImageList
    Left = 871
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from amostra where lanc = -1')
    Left = 506
    Top = 166
    object sqlDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.AMOSTRA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.AMOSTRA.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object sqlDadosRECIBO: TIntegerField
      DisplayLabel = 'Entrada n'#186
      DisplayWidth = 6
      FieldName = 'RECIBO'
      Origin = 'JAEADMIN.AMOSTRA.RECIBO'
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.AMOSTRA.VARIECOD'
      Visible = False
    end
    object sqlDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 20
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.AMOSTRA.VARIEDES'
      Size = 30
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.AMOSTRA.PRODCOD'
      Visible = False
    end
    object sqlDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.AMOSTRA.PRODDES'
      Size = 40
    end
    object sqlDadosPESO: TBCDField
      DisplayLabel = 'Qtde.total'
      FieldName = 'PESO'
      Origin = 'JAEADMIN.AMOSTRA.PESO'
    end
    object sqlDadosQUALID: TStringField
      FieldName = 'QUALID'
      Origin = 'JAEADMIN.AMOSTRA.QUALID'
      Visible = False
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.AMOSTRA.EMPRECOD'
      Visible = False
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.AMOSTRA.ACESOCOD'
      Visible = False
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.AMOSTRA.SAFRA'
      Visible = False
      Size = 9
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.AMOSTRA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.AMOSTRA.REG_ID'
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = sqlDetalhe
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 198
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    BeforePost = cdsDetalheBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 570
    Top = 198
    object cdsDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsDetalheCLASSECOD: TIntegerField
      FieldName = 'CLASSECOD'
      Origin = 'CLASSECOD'
    end
    object cdsDetalheCLASSEDES: TStringField
      FieldName = 'CLASSEDES'
      Origin = 'CLASSEDES'
    end
    object cdsDetalhePESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
    end
    object cdsDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object cdsDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 602
    Top = 198
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 232
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
      'select * from AmostCom where lanc = -1')
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
    object sqlDetalheCLASSECOD: TIntegerField
      FieldName = 'CLASSECOD'
      Origin = 'CLASSECOD'
    end
    object sqlDetalheCLASSEDES: TStringField
      FieldName = 'CLASSEDES'
      Origin = 'CLASSEDES'
    end
    object sqlDetalhePESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
    end
    object sqlDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
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
