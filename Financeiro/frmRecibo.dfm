inherited FfrmRecibo: TFfrmRecibo
  Caption = 'Recibo'
  ClientHeight = 534
  ClientWidth = 992
  ExplicitWidth = 998
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 518
    Width = 992
    ExplicitTop = 518
    ExplicitWidth = 992
    inherited PStatusHistorico: TPanel
      Width = 811
      ExplicitWidth = 811
    end
    inherited pnlTela: TPanel
      Left = 924
      ExplicitLeft = 924
    end
    inherited cxtEdSalvar: TcxTextEdit
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 518
    ExplicitHeight = 518
    inherited rzpMenu: TRzPanel
      Height = 414
      ExplicitHeight = 414
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          ExplicitLeft = 2
          ExplicitTop = 0
          ExplicitWidth = 129
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 294
        ExplicitTop = 294
      end
      inherited PPeriodo: TPanel
        Top = 334
        Visible = True
        ExplicitTop = 334
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
    Width = 855
    Height = 518
    ExplicitWidth = 855
    ExplicitHeight = 518
    inherited pcItem: TRzPageControl
      Width = 847
      Height = 510
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 847
      ExplicitHeight = 510
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 845
        ExplicitHeight = 489
        inherited pPesquisa: TRzPanel
          Top = 423
          Width = 845
          ExplicitTop = 423
          ExplicitWidth = 845
          inherited Label1: TLabel
            Width = 837
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 724
            ExplicitLeft = 376
          end
          inherited rbPesquisa: TRzPanel
            Width = 837
            ExplicitWidth = 837
          end
          inherited edPesquisa: TMaskEdit
            Width = 720
            ExplicitWidth = 720
          end
        end
        inherited Panel2: TPanel
          Width = 845
          ExplicitWidth = 845
          inherited Label3: TLabel
            Left = 137
            Width = 707
            Height = 18
            ExplicitLeft = 775
          end
        end
        inherited dbDados: TcxGrid
          Width = 845
          Height = 403
          ExplicitWidth = 845
          ExplicitHeight = 403
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALOR
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              Width = 65
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1TERCEIRO: TcxGridDBColumn
              DataBinding.FieldName = 'TERCEIRO'
              Width = 200
            end
            object dbDadosDBTableView1VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR'
              Width = 100
            end
            object dbDadosDBTableView1PROV1: TcxGridDBColumn
              Caption = 'Hist'#243'rico'
              DataBinding.FieldName = 'PROV1'
              Width = 300
            end
            object dbDadosDBTableView1CONFORME: TcxGridDBColumn
              DataBinding.FieldName = 'CONFORME'
              Width = 250
            end
            object dbDadosDBTableView1FORMA: TcxGridDBColumn
              DataBinding.FieldName = 'FORMA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CPF: TcxGridDBColumn
              DataBinding.FieldName = 'CPF'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DOC: TcxGridDBColumn
              DataBinding.FieldName = 'DOC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
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
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1vlrExtenso: TcxGridDBColumn
              DataBinding.FieldName = 'vlrExtenso'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 845
        ExplicitHeight = 489
        inherited pDados: TPanel
          Width = 845
          Height = 489
          ParentBackground = False
          ParentColor = False
          ExplicitWidth = 845
          ExplicitHeight = 489
          object DBRadioGroup1: TDBRadioGroup
            Left = 5
            Top = 67
            Width = 218
            Height = 35
            Caption = ' Tipo '
            Columns = 2
            DataField = 'TIPO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Pagamento'
              'Recebimento')
            ParentFont = False
            TabOrder = 3
            TabStop = True
            Values.Strings = (
              '2'
              '1')
            OnExit = DBRadioGroup1Exit
          end
          object GroupBox9: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' N'#250'mero '
            Enabled = False
            TabOrder = 0
            object DBEdit46: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'NUMERO'
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
          object GroupBox8: TGroupBox
            Left = 5
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
            object DBEdit45: TcxDBDateEdit
              Left = 2
              Top = 13
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
              Height = 17
              Width = 98
            end
          end
          object GroupBox1: TGroupBox
            Left = 110
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Valor '
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 94
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VALOR'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox6: TGroupBox
            Left = 5
            Top = 101
            Width = 356
            Height = 32
            Caption = ' Favorecido '
            TabOrder = 4
            OnEnter = GroupBox6Enter
            OnExit = GroupBox6Exit
            inline frmPesquisaCFP: TfrmPesquisa
              Left = 5
              Top = 13
              Width = 347
              Height = 14
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
              ExplicitTop = 13
              ExplicitWidth = 347
              ExplicitHeight = 14
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 14
                ExplicitLeft = 326
                ExplicitTop = 0
                ExplicitHeight = 14
              end
              inherited edtPesquisa: TEdit
                Width = 318
                Height = 14
                CharCase = ecUpperCase
                ExplicitWidth = 318
                ExplicitHeight = 14
              end
            end
          end
          object GroupBox7: TGroupBox
            Left = 5
            Top = 132
            Width = 140
            Height = 32
            Caption = ' C.P.F. /CNPJ. '
            TabOrder = 5
            object DBEdit44: TDBEdit
              Left = 4
              Top = 15
              Width = 133
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CPF'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit44Exit
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox5: TGroupBox
            Left = 152
            Top = 132
            Width = 160
            Height = 32
            Caption = ' Documento '
            TabOrder = 6
            object DBEdit43: TDBEdit
              Left = 4
              Top = 15
              Width = 153
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DOC'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox10: TGroupBox
            Left = 5
            Top = 163
            Width = 307
            Height = 32
            Caption = ' Conf. transa'#231#227'o efetuada '
            TabOrder = 7
            object DBEdit47: TDBEdit
              Left = 4
              Top = 15
              Width = 269
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CONFORME'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 194
            Width = 356
            Height = 117
            Caption = ' Hist'#243'rico '
            TabOrder = 8
            object DBRichEdit1: TDBRichEdit
              Left = 2
              Top = 15
              Width = 352
              Height = 100
              Align = alClient
              DataField = 'PROV1'
              DataSource = dsDados
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 120
              TabOrder = 0
              Zoom = 100
              OnExit = DBRichEdit1Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    OnCalcFields = cdsDadosCalcFields
    Left = 466
    object cdsDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CXRECIBO.LANC'
      Visible = False
    end
    object cdsDadosNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.CXRECIBO.NUMERO'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CXRECIBO.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.CXRECIBO.VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTERCEIRO: TStringField
      DisplayLabel = 'Favorecido'
      DisplayWidth = 20
      FieldName = 'TERCEIRO'
      Origin = 'JAEADMIN.CXRECIBO.TERCEIRO'
      Size = 50
    end
    object cdsDadosCONFORME: TStringField
      DisplayLabel = 'Transa'#231#227'o'
      DisplayWidth = 20
      FieldName = 'CONFORME'
      Origin = 'JAEADMIN.CXRECIBO.CONFORME'
      Size = 50
    end
    object cdsDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.CXRECIBO.FORMA'
      Visible = False
      Size = 1
    end
    object cdsDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'JAEADMIN.CXRECIBO.CPF'
      Visible = False
    end
    object cdsDadosDOC: TStringField
      FieldName = 'DOC'
      Origin = 'JAEADMIN.CXRECIBO.DOC'
      Visible = False
    end
    object cdsDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CXRECIBO.TIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosPROV1: TStringField
      FieldName = 'PROV1'
      Origin = 'JAEADMIN.CXRECIBO.PROV1'
      Visible = False
      Size = 122
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CXRECIBO.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CXRECIBO.ACESOCOD'
      Visible = False
    end
    object cdsDadosvlrExtenso: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vlrExtenso'
      Visible = False
      Size = 220
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CXRECIBO.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CXRECIBO.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 434
  end
  inherited dsDados: TDataSource
    Left = 498
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cxRecibo where lanc = -1'
      ' ')
    Left = 402
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CXRECIBO.LANC'
    end
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.CXRECIBO.NUMERO'
    end
    object sqlDadosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.CXRECIBO.VALOR'
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CXRECIBO.DATA'
    end
    object sqlDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.CXRECIBO.FORMA'
      Size = 1
    end
    object sqlDadosTERCEIRO: TStringField
      FieldName = 'TERCEIRO'
      Origin = 'JAEADMIN.CXRECIBO.TERCEIRO'
      Size = 50
    end
    object sqlDadosCONFORME: TStringField
      FieldName = 'CONFORME'
      Origin = 'JAEADMIN.CXRECIBO.CONFORME'
      Size = 50
    end
    object sqlDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'JAEADMIN.CXRECIBO.CPF'
    end
    object sqlDadosDOC: TStringField
      FieldName = 'DOC'
      Origin = 'JAEADMIN.CXRECIBO.DOC'
    end
    object sqlDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CXRECIBO.TIPO'
      Size = 1
    end
    object sqlDadosPROV1: TStringField
      FieldName = 'PROV1'
      Origin = 'JAEADMIN.CXRECIBO.PROV1'
      Size = 122
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CXRECIBO.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CXRECIBO.ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CXRECIBO.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CXRECIBO.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
