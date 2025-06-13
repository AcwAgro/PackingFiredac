inherited FfrmCadImpres: TFfrmCadImpres
  Caption = 'Cadastro do micro'
  ClientHeight = 458
  ClientWidth = 1165
  ExplicitWidth = 1171
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 442
    Width = 1165
    ExplicitTop = 442
    ExplicitWidth = 1165
    inherited PStatusHistorico: TPanel
      Width = 984
      ExplicitWidth = 984
    end
    inherited pnlTela: TPanel
      Left = 1097
      ExplicitLeft = 1097
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1155
      ExplicitLeft = 1155
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 442
    ExplicitHeight = 442
    inherited rzpMenu: TRzPanel
      Height = 338
      ExplicitHeight = 338
      inherited rbgAtivo: TRadioGroup
        Top = 218
        ExplicitTop = 218
      end
      inherited PPeriodo: TPanel
        Top = 258
        ExplicitTop = 258
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1028
    Height = 442
    ExplicitWidth = 1028
    ExplicitHeight = 442
    inherited pcItem: TRzPageControl
      Width = 1020
      Height = 434
      ExplicitWidth = 1020
      ExplicitHeight = 434
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1018
        ExplicitHeight = 413
        inherited pPesquisa: TRzPanel
          Top = 347
          Width = 1018
          ExplicitTop = 347
          ExplicitWidth = 1018
          inherited Label1: TLabel
            Width = 1010
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 897
            ExplicitLeft = 349
          end
          inherited rbPesquisa: TRzPanel
            Width = 1010
            ExplicitWidth = 1010
          end
          inherited edPesquisa: TMaskEdit
            Width = 893
            ExplicitWidth = 893
          end
        end
        inherited Panel2: TPanel
          Width = 1018
          ExplicitWidth = 1018
          inherited Label3: TLabel
            Left = 137
            Width = 880
            Height = 18
            ExplicitLeft = 600
          end
        end
        inherited dbDados: TcxGrid
          Width = 1018
          Height = 327
          ExplicitWidth = 1018
          ExplicitHeight = 327
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object dbDadosDBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
            end
            object dbDadosDBTableView1VOLUME: TcxGridDBColumn
              DataBinding.FieldName = 'VOLUME'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO1: TcxGridDBColumn
              DataBinding.FieldName = 'PRO1'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO2: TcxGridDBColumn
              DataBinding.FieldName = 'PRO2'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO3: TcxGridDBColumn
              DataBinding.FieldName = 'PRO3'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO4: TcxGridDBColumn
              DataBinding.FieldName = 'PRO4'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO5: TcxGridDBColumn
              DataBinding.FieldName = 'PRO5'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO6: TcxGridDBColumn
              DataBinding.FieldName = 'PRO6'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO7: TcxGridDBColumn
              DataBinding.FieldName = 'PRO7'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO8: TcxGridDBColumn
              DataBinding.FieldName = 'PRO8'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO9: TcxGridDBColumn
              DataBinding.FieldName = 'PRO9'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO10: TcxGridDBColumn
              DataBinding.FieldName = 'PRO10'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO11: TcxGridDBColumn
              DataBinding.FieldName = 'PRO11'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO12: TcxGridDBColumn
              DataBinding.FieldName = 'PRO12'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO13: TcxGridDBColumn
              DataBinding.FieldName = 'PRO13'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO14: TcxGridDBColumn
              DataBinding.FieldName = 'PRO14'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRO15: TcxGridDBColumn
              DataBinding.FieldName = 'PRO15'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP1: TcxGridDBColumn
              DataBinding.FieldName = 'IMP1'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP2: TcxGridDBColumn
              DataBinding.FieldName = 'IMP2'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP3: TcxGridDBColumn
              DataBinding.FieldName = 'IMP3'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP4: TcxGridDBColumn
              DataBinding.FieldName = 'IMP4'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP5: TcxGridDBColumn
              DataBinding.FieldName = 'IMP5'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP6: TcxGridDBColumn
              DataBinding.FieldName = 'IMP6'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP7: TcxGridDBColumn
              DataBinding.FieldName = 'IMP7'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP8: TcxGridDBColumn
              DataBinding.FieldName = 'IMP8'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP9: TcxGridDBColumn
              DataBinding.FieldName = 'IMP9'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP10: TcxGridDBColumn
              DataBinding.FieldName = 'IMP10'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP11: TcxGridDBColumn
              DataBinding.FieldName = 'IMP11'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP12: TcxGridDBColumn
              DataBinding.FieldName = 'IMP12'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP13: TcxGridDBColumn
              DataBinding.FieldName = 'IMP13'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP14: TcxGridDBColumn
              DataBinding.FieldName = 'IMP14'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMP15: TcxGridDBColumn
              DataBinding.FieldName = 'IMP15'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REG_ID: TcxGridDBColumn
              DataBinding.FieldName = 'REG_ID'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REGLOG: TcxGridDBColumn
              DataBinding.FieldName = 'REGLOG'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1018
        ExplicitHeight = 413
        inherited pDados: TPanel
          Width = 1018
          Height = 413
          ExplicitWidth = 1018
          ExplicitHeight = 413
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
              DataField = 'CODIGO'
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
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox4: TGroupBox
            Left = 5
            Top = 67
            Width = 132
            Height = 32
            Caption = ' Serial '
            TabOrder = 2
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 115
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VOLUME'
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
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 316
            Height = 32
            Caption = ' Micro '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 308
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NOME'
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
          object Memo1: TMemo
            Left = 149
            Top = 109
            Width = 305
            Height = 167
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Lines.Strings = (
              'Memo1')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 3
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object GroupBox3: TGroupBox
            Left = 5
            Top = 105
            Width = 137
            Height = 171
            Caption = ' Impress'#227'o '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            object CB15: TCheckBox
              Left = 8
              Top = 112
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Nota Fiscal'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 10
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object CB1: TCheckBox
              Left = 8
              Top = 132
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Faturamento'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 7
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object CB2: TCheckBox
              Left = 8
              Top = 38
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Relat'#243'rio em Geral'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 8
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit3: TDBEdit
              Left = 108
              Top = 132
              Width = 25
              Height = 21
              DataField = 'Imp1'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit5: TDBEdit
              Left = 108
              Top = 38
              Width = 25
              Height = 21
              DataField = 'IMP1'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 1
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object CB8: TCheckBox
              Left = 8
              Top = 15
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Etiquetas EPL'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 9
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit11: TDBEdit
              Left = 108
              Top = 15
              Width = 25
              Height = 21
              DataField = 'IMP3'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 2
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object CheckBox1: TCheckBox
              Left = 8
              Top = 64
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Mat'#233'ria Prima'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 11
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit6: TDBEdit
              Left = 108
              Top = 64
              Width = 25
              Height = 21
              DataField = 'IMP4'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 3
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object CheckBox2: TCheckBox
              Left = 8
              Top = 80
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Estoque'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 12
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit7: TDBEdit
              Left = 108
              Top = 80
              Width = 25
              Height = 21
              DataField = 'IMP5'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 4
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object CheckBox3: TCheckBox
              Left = 8
              Top = 96
              Width = 118
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Gerencia'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 13
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit8: TDBEdit
              Left = 108
              Top = 96
              Width = 25
              Height = 21
              DataField = 'IMP6'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 5
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit9: TDBEdit
              Left = 108
              Top = 113
              Width = 25
              Height = 21
              DataField = 'IMP15'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 6
              Visible = False
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'NOME'
      Size = 30
    end
    object cdsDadosVOLUME: TStringField
      DisplayLabel = 'Serial'
      FieldName = 'VOLUME'
      Size = 8
    end
    object cdsDadosPRO1: TIntegerField
      FieldName = 'PRO1'
      Visible = False
    end
    object cdsDadosPRO2: TIntegerField
      FieldName = 'PRO2'
      Visible = False
    end
    object cdsDadosPRO3: TIntegerField
      FieldName = 'PRO3'
      Visible = False
    end
    object cdsDadosPRO4: TIntegerField
      FieldName = 'PRO4'
      Visible = False
    end
    object cdsDadosPRO5: TIntegerField
      FieldName = 'PRO5'
      Visible = False
    end
    object cdsDadosPRO6: TIntegerField
      FieldName = 'PRO6'
      Visible = False
    end
    object cdsDadosPRO7: TIntegerField
      FieldName = 'PRO7'
      Visible = False
    end
    object cdsDadosPRO8: TIntegerField
      FieldName = 'PRO8'
      Visible = False
    end
    object cdsDadosPRO9: TIntegerField
      FieldName = 'PRO9'
      Visible = False
    end
    object cdsDadosPRO10: TIntegerField
      FieldName = 'PRO10'
      Visible = False
    end
    object cdsDadosPRO11: TIntegerField
      FieldName = 'PRO11'
      Visible = False
    end
    object cdsDadosPRO12: TIntegerField
      FieldName = 'PRO12'
      Visible = False
    end
    object cdsDadosPRO13: TIntegerField
      FieldName = 'PRO13'
      Visible = False
    end
    object cdsDadosPRO14: TIntegerField
      FieldName = 'PRO14'
      Visible = False
    end
    object cdsDadosPRO15: TIntegerField
      FieldName = 'PRO15'
      Visible = False
    end
    object cdsDadosIMP1: TIntegerField
      FieldName = 'IMP1'
      Visible = False
    end
    object cdsDadosIMP2: TIntegerField
      FieldName = 'IMP2'
      Visible = False
    end
    object cdsDadosIMP3: TIntegerField
      FieldName = 'IMP3'
      Visible = False
    end
    object cdsDadosIMP4: TIntegerField
      FieldName = 'IMP4'
      Visible = False
    end
    object cdsDadosIMP5: TIntegerField
      FieldName = 'IMP5'
      Visible = False
    end
    object cdsDadosIMP6: TIntegerField
      FieldName = 'IMP6'
      Visible = False
    end
    object cdsDadosIMP7: TIntegerField
      FieldName = 'IMP7'
      Visible = False
    end
    object cdsDadosIMP8: TIntegerField
      FieldName = 'IMP8'
      Visible = False
    end
    object cdsDadosIMP9: TIntegerField
      FieldName = 'IMP9'
      Visible = False
    end
    object cdsDadosIMP10: TIntegerField
      FieldName = 'IMP10'
      Visible = False
    end
    object cdsDadosIMP11: TIntegerField
      FieldName = 'IMP11'
      Visible = False
    end
    object cdsDadosIMP12: TIntegerField
      FieldName = 'IMP12'
      Visible = False
    end
    object cdsDadosIMP13: TIntegerField
      FieldName = 'IMP13'
      Visible = False
    end
    object cdsDadosIMP14: TIntegerField
      FieldName = 'IMP14'
      Visible = False
    end
    object cdsDadosIMP15: TIntegerField
      FieldName = 'IMP15'
      Visible = False
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1000
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from zimpr')
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.ZIMPR.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'JAEADMIN.ZIMPR.NOME'
      Size = 30
    end
    object sqlDadosVOLUME: TStringField
      FieldName = 'VOLUME'
      Origin = 'JAEADMIN.ZIMPR.VOLUME'
      Size = 8
    end
    object sqlDadosPRO1: TIntegerField
      FieldName = 'PRO1'
      Origin = 'JAEADMIN.ZIMPR.PRO1'
    end
    object sqlDadosPRO2: TIntegerField
      FieldName = 'PRO2'
      Origin = 'JAEADMIN.ZIMPR.PRO2'
    end
    object sqlDadosPRO3: TIntegerField
      FieldName = 'PRO3'
      Origin = 'JAEADMIN.ZIMPR.PRO3'
    end
    object sqlDadosPRO4: TIntegerField
      FieldName = 'PRO4'
      Origin = 'JAEADMIN.ZIMPR.PRO4'
    end
    object sqlDadosPRO5: TIntegerField
      FieldName = 'PRO5'
      Origin = 'JAEADMIN.ZIMPR.PRO5'
    end
    object sqlDadosPRO6: TIntegerField
      FieldName = 'PRO6'
      Origin = 'JAEADMIN.ZIMPR.PRO6'
    end
    object sqlDadosPRO7: TIntegerField
      FieldName = 'PRO7'
      Origin = 'JAEADMIN.ZIMPR.PRO7'
    end
    object sqlDadosPRO8: TIntegerField
      FieldName = 'PRO8'
      Origin = 'JAEADMIN.ZIMPR.PRO8'
    end
    object sqlDadosPRO9: TIntegerField
      FieldName = 'PRO9'
      Origin = 'JAEADMIN.ZIMPR.PRO9'
    end
    object sqlDadosPRO10: TIntegerField
      FieldName = 'PRO10'
      Origin = 'JAEADMIN.ZIMPR.PRO10'
    end
    object sqlDadosPRO11: TIntegerField
      FieldName = 'PRO11'
      Origin = 'JAEADMIN.ZIMPR.PRO11'
    end
    object sqlDadosPRO12: TIntegerField
      FieldName = 'PRO12'
      Origin = 'JAEADMIN.ZIMPR.PRO12'
    end
    object sqlDadosPRO13: TIntegerField
      FieldName = 'PRO13'
      Origin = 'JAEADMIN.ZIMPR.PRO13'
    end
    object sqlDadosPRO14: TIntegerField
      FieldName = 'PRO14'
      Origin = 'JAEADMIN.ZIMPR.PRO14'
    end
    object sqlDadosPRO15: TIntegerField
      FieldName = 'PRO15'
      Origin = 'JAEADMIN.ZIMPR.PRO15'
    end
    object sqlDadosIMP1: TIntegerField
      FieldName = 'IMP1'
      Origin = 'JAEADMIN.ZIMPR.IMP1'
    end
    object sqlDadosIMP2: TIntegerField
      FieldName = 'IMP2'
      Origin = 'JAEADMIN.ZIMPR.IMP2'
    end
    object sqlDadosIMP3: TIntegerField
      FieldName = 'IMP3'
      Origin = 'JAEADMIN.ZIMPR.IMP3'
    end
    object sqlDadosIMP4: TIntegerField
      FieldName = 'IMP4'
      Origin = 'JAEADMIN.ZIMPR.IMP4'
    end
    object sqlDadosIMP5: TIntegerField
      FieldName = 'IMP5'
      Origin = 'JAEADMIN.ZIMPR.IMP5'
    end
    object sqlDadosIMP6: TIntegerField
      FieldName = 'IMP6'
      Origin = 'JAEADMIN.ZIMPR.IMP6'
    end
    object sqlDadosIMP7: TIntegerField
      FieldName = 'IMP7'
      Origin = 'JAEADMIN.ZIMPR.IMP7'
    end
    object sqlDadosIMP8: TIntegerField
      FieldName = 'IMP8'
      Origin = 'JAEADMIN.ZIMPR.IMP8'
    end
    object sqlDadosIMP9: TIntegerField
      FieldName = 'IMP9'
      Origin = 'JAEADMIN.ZIMPR.IMP9'
    end
    object sqlDadosIMP10: TIntegerField
      FieldName = 'IMP10'
      Origin = 'JAEADMIN.ZIMPR.IMP10'
    end
    object sqlDadosIMP11: TIntegerField
      FieldName = 'IMP11'
      Origin = 'JAEADMIN.ZIMPR.IMP11'
    end
    object sqlDadosIMP12: TIntegerField
      FieldName = 'IMP12'
      Origin = 'JAEADMIN.ZIMPR.IMP12'
    end
    object sqlDadosIMP13: TIntegerField
      FieldName = 'IMP13'
      Origin = 'JAEADMIN.ZIMPR.IMP13'
    end
    object sqlDadosIMP14: TIntegerField
      FieldName = 'IMP14'
      Origin = 'JAEADMIN.ZIMPR.IMP14'
    end
    object sqlDadosIMP15: TIntegerField
      FieldName = 'IMP15'
      Origin = 'JAEADMIN.ZIMPR.IMP15'
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ZIMPR.REG_ID'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
end
