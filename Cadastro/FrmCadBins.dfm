inherited FfrmCadBins: TFfrmCadBins
  Caption = 'Cadastro Tipo de embalagem (Bins)'
  ClientHeight = 526
  ClientWidth = 977
  ExplicitWidth = 983
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 510
    Width = 977
    ExplicitTop = 510
    ExplicitWidth = 977
    inherited PStatusHistorico: TPanel
      Width = 796
      ExplicitWidth = 796
    end
    inherited pnlTela: TPanel
      Left = 909
      ExplicitLeft = 909
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 967
      ExplicitLeft = 967
    end
  end
  inherited pMenu: TRzPanel
    Height = 510
    ExplicitHeight = 510
    inherited rzpMenu: TRzPanel
      Height = 406
      ExplicitHeight = 406
      inherited rbgAtivo: TRadioGroup
        Top = 286
        OnClick = rbgAtivoClick
        ExplicitTop = 286
      end
      inherited PPeriodo: TPanel
        Top = 326
        ExplicitTop = 326
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 840
    Height = 510
    ExplicitWidth = 840
    ExplicitHeight = 510
    inherited pcItem: TRzPageControl
      Width = 832
      Height = 502
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 832
      ExplicitHeight = 502
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 830
        ExplicitHeight = 481
        inherited pPesquisa: TRzPanel
          Top = 415
          Width = 830
          ExplicitTop = 415
          ExplicitWidth = 830
          inherited Label1: TLabel
            Width = 822
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 709
            ExplicitLeft = 1066
          end
          inherited rbPesquisa: TRzPanel
            Width = 822
            ExplicitWidth = 822
          end
          inherited edPesquisa: TMaskEdit
            Width = 705
            ExplicitWidth = 705
          end
        end
        inherited Panel2: TPanel
          Width = 830
          ExplicitWidth = 830
          inherited Label3: TLabel
            Width = 692
            ExplicitLeft = 412
          end
        end
        inherited dbDados: TcxGrid
          Width = 830
          Height = 395
          ExplicitWidth = 830
          ExplicitHeight = 395
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 830
        ExplicitHeight = 481
        inherited pDados: TPanel
          Width = 830
          Height = 481
          ExplicitWidth = 830
          ExplicitHeight = 481
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
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox4: TGroupBox
            Left = 5
            Top = 69
            Width = 132
            Height = 32
            Caption = ' Peso M'#233'dio (kg) '
            TabOrder = 3
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 115
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PESO1'
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
            Top = 36
            Width = 220
            Height = 32
            Caption = ' Tipo Embalagem  '
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 204
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DESCRICAO'
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
            Top = 103
            Width = 132
            Height = 32
            Caption = ' Qtde Bins Inicial '
            TabOrder = 4
            object DBEdit3: TDBEdit
              Left = 6
              Top = 15
              Width = 115
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PESO3'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit3Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 103
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
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 730
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADBINS.CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Tipo de embalagem'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADBINS.DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDadosPESO1: TBCDField
      DisplayLabel = 'Peso m'#233'dio (kg)'
      FieldName = 'PESO1'
      Origin = 'JAEADMIN.CADBINS.PESO1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.###'
    end
    object cdsDadosPESO2: TBCDField
      FieldName = 'PESO2'
      Origin = 'JAEADMIN.CADBINS.PESO2'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object cdsDadosPESO3: TBCDField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'PESO3'
      Origin = 'JAEADMIN.CADBINS.PESO3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADBINS.EMPRECOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADBINS.ACESOCOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADBINS.ATIVO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosIMPORTEMP: TIntegerField
      FieldName = 'IMPORTEMP'
      Origin = 'JAEADMIN.CADBINS.IMPORTEMP'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object cdsDadosIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
      Origin = 'JAEADMIN.CADBINS.IMPORTLANC'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADBINS.REGLOG'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADBINS.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 682
  end
  inherited dsDados: TDataSource
    Left = 786
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadbins where ativo = '#39'S'#39)
    Left = 630
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADBINS.CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADBINS.DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosPESO1: TBCDField
      FieldName = 'PESO1'
      Origin = 'JAEADMIN.CADBINS.PESO1'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosPESO2: TBCDField
      FieldName = 'PESO2'
      Origin = 'JAEADMIN.CADBINS.PESO2'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosPESO3: TBCDField
      FieldName = 'PESO3'
      Origin = 'JAEADMIN.CADBINS.PESO3'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADBINS.EMPRECOD'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADBINS.ACESOCOD'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADBINS.ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlDadosIMPORTEMP: TIntegerField
      FieldName = 'IMPORTEMP'
      Origin = 'JAEADMIN.CADBINS.IMPORTEMP'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
      Origin = 'JAEADMIN.CADBINS.IMPORTLANC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADBINS.REGLOG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADBINS.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
