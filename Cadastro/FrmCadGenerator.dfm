inherited FfrmCadGenerator: TFfrmCadGenerator
  Caption = 'Generator'
  ClientHeight = 431
  ClientWidth = 1061
  ExplicitWidth = 1067
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 415
    Width = 1061
    ExplicitTop = 415
    ExplicitWidth = 1061
    inherited PStatusHistorico: TPanel
      Width = 880
      ExplicitWidth = 880
    end
    inherited pnlTela: TPanel
      Left = 1003
      ExplicitLeft = 1003
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 993
      ExplicitLeft = 993
    end
  end
  inherited pMenu: TRzPanel
    Height = 415
    ExplicitHeight = 415
    inherited rzpMenu: TRzPanel
      Height = 311
      ExplicitHeight = 311
      inherited rbgAtivo: TRadioGroup
        Top = 271
        ExplicitTop = 271
      end
      inherited PPeriodo: TPanel
        Top = 191
        ExplicitTop = 191
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        ExplicitTop = 22
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 924
    Height = 415
    ExplicitWidth = 924
    ExplicitHeight = 415
    inherited pcItem: TRzPageControl
      Width = 916
      Height = 407
      ExplicitWidth = 916
      ExplicitHeight = 407
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 914
        ExplicitHeight = 386
        inherited pPesquisa: TRzPanel
          Top = 320
          Width = 914
          ExplicitTop = 320
          ExplicitWidth = 914
          inherited Label1: TLabel
            Width = 906
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 793
            ExplicitLeft = 424
          end
          inherited rbPesquisa: TRzPanel
            Width = 906
            ExplicitWidth = 906
          end
          inherited edPesquisa: TMaskEdit
            Width = 789
            ExplicitWidth = 789
          end
        end
        inherited Panel2: TPanel
          Width = 914
          ExplicitWidth = 914
          inherited Label3: TLabel
            Width = 776
            ExplicitLeft = 496
          end
        end
        inherited dbDados: TcxGrid
          Width = 914
          Height = 300
          ExplicitWidth = 914
          ExplicitHeight = 300
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1Indice: TcxGridDBColumn
              DataBinding.FieldName = 'Indice'
              Width = 50
            end
            object dbDadosDBTableView1Tabela: TcxGridDBColumn
              DataBinding.FieldName = 'Tabela'
              Width = 150
            end
            object dbDadosDBTableView1Campo: TcxGridDBColumn
              DataBinding.FieldName = 'Campo'
              Width = 150
            end
            object dbDadosDBTableView1Valor: TcxGridDBColumn
              DataBinding.FieldName = 'Valor'
              Width = 50
            end
            object dbDadosDBTableView1TEXTO: TcxGridDBColumn
              DataBinding.FieldName = 'TEXTO'
              Width = 90
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              DataBinding.FieldName = 'OBS'
              Width = 200
            end
            object dbDadosDBTableView1RESTRITO: TcxGridDBColumn
              DataBinding.FieldName = 'RESTRITO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REGLOG: TcxGridDBColumn
              DataBinding.FieldName = 'REGLOG'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REG_ID: TcxGridDBColumn
              DataBinding.FieldName = 'REG_ID'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 914
        ExplicitHeight = 386
        inherited pDados: TPanel
          Width = 914
          Height = 386
          ExplicitWidth = 914
          ExplicitHeight = 386
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 80
            Height = 32
            Caption = ' C'#243'digo '
            TabOrder = 0
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 68
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'Indice'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 5
            Top = 71
            Width = 224
            Height = 32
            Caption = ' Campo '
            TabOrder = 2
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 216
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'Campo'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 37
            Width = 224
            Height = 32
            Caption = ' Tabela '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 212
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'Tabela'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox9: TGroupBox
            Left = 5
            Top = 105
            Width = 80
            Height = 32
            Caption = ' Valor '
            TabOrder = 3
            object DBEdit9: TDBEdit
              Left = 5
              Top = 15
              Width = 60
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'Valor'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox4: TGroupBox
            Left = 91
            Top = 105
            Width = 161
            Height = 32
            Caption = ' Texto '
            TabOrder = 4
            object DBEdit4: TDBEdit
              Left = 5
              Top = 15
              Width = 140
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'TEXTO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox6: TGroupBox
            Left = 5
            Top = 139
            Width = 476
            Height = 32
            Caption = ' Observa'#231#227'o '
            TabOrder = 6
            object DBEdit6: TDBEdit
              Left = 3
              Top = 15
              Width = 462
              Height = 15
              BorderStyle = bsNone
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object gbRestrito: TGroupBox
            Left = 258
            Top = 105
            Width = 78
            Height = 32
            Caption = ' Interno '
            TabOrder = 5
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 70
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'RESTRITO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosINDICE: TIntegerField
      DisplayLabel = 'Indice'
      FieldName = 'INDICE'
    end
    object cdsDadosTABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'TABELA'
      Size = 30
    end
    object cdsDadosCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CAMPO'
      Size = 30
    end
    object cdsDadosVALOR: TIntegerField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object cdsDadosTEXTO: TStringField
      DisplayLabel = 'Texto'
      FieldName = 'TEXTO'
    end
    object cdsDadosOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Size = 50
    end
    object cdsDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Visible = False
    end
    object cdsDadosRESTRITO: TStringField
      FieldName = 'RESTRITO'
      Visible = False
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1000
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from zgenerator')
    object sqlDadosINDICE: TIntegerField
      FieldName = 'INDICE'
      Origin = 'INDICE'
    end
    object sqlDadosTABELA: TStringField
      FieldName = 'TABELA'
      Origin = 'TABELA'
      Size = 30
    end
    object sqlDadosCAMPO: TStringField
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
      Size = 30
    end
    object sqlDadosVALOR: TIntegerField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object sqlDadosTEXTO: TStringField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlDadosRESTRITO: TStringField
      FieldName = 'RESTRITO'
      Origin = 'RESTRITO'
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
