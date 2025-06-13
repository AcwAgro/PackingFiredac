inherited FfrmManutenc: TFfrmManutenc
  Caption = 'Manuten'#231#227'o de m'#225'quina e equipamentos'
  ClientHeight = 509
  ClientWidth = 762
  ExplicitWidth = 768
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 493
    Width = 762
    ExplicitTop = 493
    ExplicitWidth = 762
    inherited PStatusHistorico: TPanel
      Width = 581
      ExplicitWidth = 581
    end
    inherited pnlTela: TPanel
      Left = 694
      ExplicitLeft = 694
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 752
      ExplicitLeft = 752
    end
  end
  inherited pMenu: TRzPanel
    Height = 493
    ExplicitHeight = 493
    inherited rzpMenu: TRzPanel
      Height = 389
      ExplicitHeight = 389
      inherited rbgAtivo: TRadioGroup
        Top = 269
        ExplicitTop = 269
      end
      inherited PPeriodo: TPanel
        Top = 309
        Visible = True
        ExplicitTop = 309
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
    Width = 625
    Height = 493
    ExplicitWidth = 625
    ExplicitHeight = 493
    inherited pcItem: TRzPageControl
      Width = 617
      Height = 485
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 617
      ExplicitHeight = 485
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 615
        ExplicitHeight = 464
        inherited pPesquisa: TRzPanel
          Top = 398
          Width = 615
          ExplicitTop = 398
          ExplicitWidth = 615
          inherited Label1: TLabel
            Width = 607
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 494
            ExplicitLeft = 351
          end
          inherited rbPesquisa: TRzPanel
            Width = 607
            ExplicitWidth = 607
          end
          inherited edPesquisa: TMaskEdit
            Width = 490
            ExplicitWidth = 490
          end
        end
        inherited Panel2: TPanel
          Width = 615
          ExplicitWidth = 615
          inherited Label3: TLabel
            Width = 477
            ExplicitLeft = 197
          end
        end
        inherited dbDados: TcxGrid
          Width = 615
          Height = 378
          ExplicitWidth = 615
          ExplicitHeight = 378
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALOR
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Width = 200
            end
            object dbDadosDBTableView1PLACA: TcxGridDBColumn
              DataBinding.FieldName = 'PLACA'
            end
            object dbDadosDBTableView1FORNEDES: TcxGridDBColumn
              DataBinding.FieldName = 'FORNEDES'
              Width = 200
            end
            object dbDadosDBTableView1VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR'
              Width = 100
            end
            object dbDadosDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FORNECOD: TcxGridDBColumn
              DataBinding.FieldName = 'FORNECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              DataBinding.FieldName = 'OBS'
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
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 615
        ExplicitHeight = 464
        inherited pDados: TPanel
          Width = 615
          Height = 464
          ExplicitWidth = 615
          ExplicitHeight = 464
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 0
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
            object DBEdit3: TcxDBDateEdit
              Left = 2
              Top = 11
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
              Height = 19
              Width = 98
            end
          end
          object GroupBox4: TGroupBox
            Left = 5
            Top = 67
            Width = 356
            Height = 32
            Caption = ' M'#225'quina/Equipamentos '
            TabOrder = 2
            OnExit = GroupBox4Exit
            inline frmPesquisaMaq: TfrmPesquisa
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
            Caption = ' Fornecedor '
            TabOrder = 4
            inline frmPesquisaFor: TfrmPesquisa
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
          object GroupBox6: TGroupBox
            Left = 5
            Top = 129
            Width = 94
            Height = 32
            Caption = ' Valor '
            TabOrder = 5
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 84
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
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox7: TGroupBox
            Left = 5
            Top = 160
            Width = 356
            Height = 32
            Caption = ' Hist'#243'rico '
            TabOrder = 6
            object DBEdit8: TDBEdit
              Left = 5
              Top = 15
              Width = 348
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'OBS'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit8Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 363
            Top = 67
            Width = 94
            Height = 32
            Caption = ' Placa '
            Enabled = False
            TabOrder = 3
            object DBEdit4: TDBEdit
              Left = 5
              Top = 15
              Width = 86
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'PLACA'
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
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 522
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME'
      FixedChar = True
      Size = 25
    end
    object cdsDadosPLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      FixedChar = True
      Size = 10
    end
    object cdsDadosFORNEDES: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNEDES'
      FixedChar = True
      Size = 40
    end
    object cdsDadosVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Visible = False
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Visible = False
    end
    object cdsDadosFORNECOD: TIntegerField
      FieldName = 'FORNECOD'
      Visible = False
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 120
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.MMVEICULO.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.MMVEICULO.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 490
  end
  inherited dsDados: TDataSource
    Left = 554
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from mmveiculo WHERE LANC = -1')
    Left = 458
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlDadosNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 25
    end
    object sqlDadosPLACA: TStringField
      FieldName = 'PLACA'
      FixedChar = True
      Size = 10
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object sqlDadosFORNECOD: TIntegerField
      FieldName = 'FORNECOD'
    end
    object sqlDadosFORNEDES: TStringField
      FieldName = 'FORNEDES'
      FixedChar = True
      Size = 40
    end
    object sqlDadosVALOR: TBCDField
      FieldName = 'VALOR'
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Size = 120
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.MMVEICULO.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.MMVEICULO.REG_ID'
    end
  end
end
