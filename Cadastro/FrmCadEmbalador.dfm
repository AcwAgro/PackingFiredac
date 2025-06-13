inherited FfrmCadEmbalador: TFfrmCadEmbalador
  Caption = 'Cadastro embalador'
  ClientHeight = 372
  ClientWidth = 1065
  ExplicitWidth = 1071
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 356
    Width = 1065
    ExplicitTop = 356
    ExplicitWidth = 1065
    inherited PStatusHistorico: TPanel
      Width = 884
      ExplicitWidth = 884
    end
    inherited pnlTela: TPanel
      Left = 997
      ExplicitLeft = 997
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1055
      ExplicitLeft = 1055
    end
  end
  inherited pMenu: TRzPanel
    Height = 356
    ExplicitHeight = 356
    inherited rzpMenu: TRzPanel
      Height = 252
      ExplicitHeight = 252
      inherited rbgAtivo: TRadioGroup
        Top = 132
        OnClick = rbgAtivoClick
        ExplicitTop = 132
      end
      inherited PPeriodo: TPanel
        Top = 172
        ExplicitTop = 172
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 928
    Height = 356
    ExplicitWidth = 928
    ExplicitHeight = 356
    inherited pcItem: TRzPageControl
      Width = 920
      Height = 348
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 920
      ExplicitHeight = 348
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 327
        inherited pPesquisa: TRzPanel
          Top = 261
          Width = 918
          ExplicitTop = 261
          ExplicitWidth = 918
          inherited Label1: TLabel
            Width = 910
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 797
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 910
            ExplicitWidth = 910
          end
          inherited edPesquisa: TMaskEdit
            Width = 793
            ExplicitWidth = 793
          end
        end
        inherited Panel2: TPanel
          Width = 918
          ExplicitWidth = 918
          inherited Label3: TLabel
            Width = 780
            ExplicitLeft = 500
          end
        end
        inherited dbDados: TcxGrid
          Width = 918
          Height = 241
          ExplicitWidth = 918
          ExplicitHeight = 241
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 327
        inherited pDados: TPanel
          Width = 918
          Height = 327
          ExplicitWidth = 918
          ExplicitHeight = 327
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 80
            Height = 32
            Caption = ' Registro '
            TabOrder = 0
            object DBEdit1: TDBEdit
              Left = 2
              Top = 15
              Width = 76
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 39
            Width = 316
            Height = 32
            Caption = ' Descri'#231#227'o'
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 2
              Top = 15
              Width = 312
              Height = 15
              Align = alClient
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
            Left = 7
            Top = 71
            Width = 114
            Height = 32
            Caption = ' C'#243'digo barra '
            TabOrder = 3
            object DBEdit3: TDBEdit
              Left = 2
              Top = 15
              Width = 110
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'BARRACOD'
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
            Left = 100
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
    Top = 7
    object cdsDadosBARRACOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BARRACOD'
      Origin = 'JAEADMIN.CADEMBAL.BARRACOD'
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADLOCAL.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Local armazenagem'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADLOCAL.DESCRICAO'
      Size = 30
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADLOCAL.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADLOCAL.ACESOCOD'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADEMBAL.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADEMBAL.REG_ID'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadEmbal where ativo = '#39'S'#39)
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADLOCAL.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADLOCAL.DESCRICAO'
      Size = 30
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADLOCAL.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADLOCAL.ACESOCOD'
    end
    object sqlDadosBARRACOD: TIntegerField
      FieldName = 'BARRACOD'
      Origin = 'JAEADMIN.CADEMBAL.BARRACOD'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADEMBAL.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADEMBAL.REG_ID'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
end
