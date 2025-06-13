inherited FfrmCadDefeito: TFfrmCadDefeito
  Caption = 'Cadastro defeito'
  ClientHeight = 372
  ClientWidth = 1105
  ExplicitWidth = 1111
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 356
    Width = 1105
    ExplicitTop = 356
    ExplicitWidth = 1105
    inherited PStatusHistorico: TPanel
      Width = 924
      ExplicitWidth = 924
    end
    inherited pnlTela: TPanel
      Left = 1037
      ExplicitLeft = 1037
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1095
      ExplicitLeft = 1095
    end
  end
  inherited pMenu: TRzPanel
    Height = 356
    ExplicitHeight = 356
    inherited rzpMenu: TRzPanel
      Height = 252
      ExplicitHeight = 252
      inherited rbgAtivo: TRadioGroup
        Top = 212
        OnClick = rbgAtivoClick
        ExplicitTop = 212
      end
      inherited PPeriodo: TPanel
        Top = 132
        ExplicitTop = 132
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 968
    Height = 356
    ExplicitWidth = 968
    ExplicitHeight = 356
    inherited pcItem: TRzPageControl
      Width = 960
      Height = 348
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 960
      ExplicitHeight = 348
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 958
        ExplicitHeight = 327
        inherited pPesquisa: TRzPanel
          Top = 261
          Width = 958
          ExplicitTop = 261
          ExplicitWidth = 958
          inherited Label1: TLabel
            Width = 950
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 837
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 950
            ExplicitWidth = 950
          end
          inherited edPesquisa: TMaskEdit
            Width = 833
            ExplicitWidth = 833
          end
        end
        inherited Panel2: TPanel
          Width = 958
          ExplicitWidth = 958
          inherited Label3: TLabel
            Width = 820
            ExplicitLeft = 540
          end
        end
        inherited dbDados: TcxGrid
          Width = 958
          Height = 241
          ExplicitWidth = 958
          ExplicitHeight = 241
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 958
        ExplicitHeight = 327
        inherited pDados: TPanel
          Width = 958
          Height = 327
          ExplicitWidth = 958
          ExplicitHeight = 327
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 220
            Height = 32
            Caption = ' Tipo defeito '
            TabOrder = 1
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
              OnExit = DBEdit2Exit
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
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
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
      Origin = 'JAEADMIN.CADDEFEI.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Tipo defeito'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADDEFEI.DESCRICAO'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADDEFEI.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADDEFEI.ACESOCOD'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADDEFEI.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADDEFEI.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADDEFEI.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from caddefei where ativo = '#39'S'#39)
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADDEFEI.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADDEFEI.DESCRICAO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADDEFEI.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADDEFEI.ACESOCOD'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADDEFEI.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADDEFEI.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADDEFEI.REG_ID'
    end
  end
end
