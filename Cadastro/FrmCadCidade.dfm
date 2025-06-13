inherited FfrmCadCidade: TFfrmCadCidade
  Caption = 'Cadastro de cidade.'
  ClientHeight = 558
  ClientWidth = 1197
  ExplicitWidth = 1203
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 542
    Width = 1197
    ExplicitTop = 542
    ExplicitWidth = 1197
    inherited PStatusHistorico: TPanel
      Width = 1016
      ExplicitWidth = 1016
    end
    inherited pnlTela: TPanel
      Left = 1139
      ExplicitLeft = 1139
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1129
      ExplicitLeft = 1129
    end
  end
  inherited pMenu: TRzPanel
    Height = 542
    ExplicitHeight = 542
    inherited rzpMenu: TRzPanel
      Height = 438
      ExplicitHeight = 438
      inherited sbAnterior: TSpeedButton
        OnClick = sbAnteriorClick
      end
      inherited sbProximo: TSpeedButton
        OnClick = sbProximoClick
      end
      inherited rbgAtivo: TRadioGroup
        Top = 318
        OnClick = rbgAtivoClick
        ExplicitTop = 318
      end
      inherited PPeriodo: TPanel
        Top = 358
        ExplicitTop = 358
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1060
    Height = 542
    ExplicitWidth = 1060
    ExplicitHeight = 542
    inherited pcItem: TRzPageControl
      Width = 1052
      Height = 534
      OnChange = pcItemChange
      ExplicitWidth = 1052
      ExplicitHeight = 534
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1050
        ExplicitHeight = 513
        inherited pPesquisa: TRzPanel
          Top = 447
          Width = 1050
          ExplicitTop = 447
          ExplicitWidth = 1050
          inherited Label1: TLabel
            Width = 1042
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 929
            ExplicitLeft = 929
          end
          inherited rbPesquisa: TRzPanel
            Width = 1042
            ExplicitWidth = 1042
          end
          inherited edPesquisa: TMaskEdit
            Width = 925
            ExplicitWidth = 925
          end
        end
        inherited Panel2: TPanel
          Width = 1050
          ExplicitWidth = 1050
          inherited Label3: TLabel
            Width = 912
            ExplicitLeft = 632
          end
        end
        inherited dbDados: TcxGrid
          Width = 1050
          Height = 427
          ExplicitWidth = 1050
          ExplicitHeight = 427
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1050
        ExplicitHeight = 513
        inherited pDados: TPanel
          Width = 1050
          Height = 513
          ExplicitWidth = 1050
          ExplicitHeight = 513
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
            Top = 42
            Width = 47
            Height = 40
            Caption = ' UF '
            TabOrder = 1
            object DBEdit4: TDBEdit
              Left = 6
              Top = 21
              Width = 33
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ESTADO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 69
            Top = 42
            Width = 316
            Height = 40
            Caption = ' Nome da Cidade '
            TabOrder = 4
          end
          object GroupBox5: TGroupBox
            Left = 5
            Top = 92
            Width = 109
            Height = 32
            Caption = ' C'#243'd.IBGE '
            TabOrder = 3
            object DBEdit5: TDBEdit
              Left = 6
              Top = 15
              Width = 100
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NUMERO'
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
          object cbCidade: TComboBox
            Left = 77
            Top = 57
            Width = 305
            Height = 21
            AutoDropDown = True
            BevelInner = bvLowered
            CharCase = ecUpperCase
            DropDownCount = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnCloseUp = cbCidadeExit
            OnEnter = cbCidadeEnter
            OnExit = cbCidadeExit
          end
          object GroupBox6: TGroupBox
            Left = 118
            Top = 138
            Width = 379
            Height = 32
            Caption = ' Nome do Pa'#237's '
            TabOrder = 6
            object DBEdit2: TDBEdit
              Left = 2
              Top = 15
              Width = 375
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PAISNOME'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit2Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox7: TGroupBox
            Left = 5
            Top = 138
            Width = 109
            Height = 32
            Caption = ' C'#243'd.Pa'#237's'
            TabOrder = 5
            object DBEdit6: TDBEdit
              Left = 6
              Top = 15
              Width = 100
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PAISCOD'
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
          object DBRadioGroup4: TDBRadioGroup
            Left = 91
            Top = 5
            Width = 130
            Height = 32
            Caption = ' Ativo '
            Columns = 2
            DataField = 'ATIVO'
            DataSource = dsDados
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentShowHint = False
            ShowHint = False
            TabOrder = 7
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    AfterScroll = cdsDadosAfterScroll
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADCIDAD.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADCIDAD.DESCRICAO'
      Size = 30
    end
    object cdsDadosESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.CADCIDAD.ESTADO'
      Size = 2
    end
    object cdsDadosCEP: TStringField
      DisplayLabel = 'C.e.p.'
      FieldName = 'CEP'
      Origin = 'JAEADMIN.CADCIDAD.CEP'
      Visible = False
      EditMask = '99999\-999;1; '
      Size = 9
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADCIDAD.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADCIDAD.ACESOCOD'
      Visible = False
    end
    object cdsDadosNUMERO: TIntegerField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.CADCIDAD.NUMERO'
    end
    object cdsDadosPAISCOD: TIntegerField
      FieldName = 'PAISCOD'
      Origin = 'JAEADMIN.CADCIDAD.PAISCOD'
      Visible = False
    end
    object cdsDadosPAISNOME: TStringField
      FieldName = 'PAISNOME'
      Origin = 'JAEADMIN.CADCIDAD.PAISNOME'
      Visible = False
      Size = 120
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADCIDAD.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADCIDAD.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADCIDAD.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadcidad where ativo = '#39'S'#39)
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlDadosCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sqlDadosPAISCOD: TIntegerField
      FieldName = 'PAISCOD'
      Visible = False
    end
    object sqlDadosPAISNOME: TStringField
      FieldName = 'PAISNOME'
      Visible = False
      Size = 120
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dsIbge: TDataSource
    DataSet = cdsIbge
    Left = 498
    Top = 190
  end
  object cdsIbge: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 466
    Top = 190
    object cdsIbgecodigo: TStringField
      FieldName = 'codigo'
      Size = 7
    end
    object cdsIbgecidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
  end
end
