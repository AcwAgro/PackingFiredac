inherited FfrmCadLote: TFfrmCadLote
  Caption = 'Cadastro Lote Classifica'#231#227'o'
  ClientHeight = 372
  ClientWidth = 1192
  ExplicitWidth = 1198
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 356
    Width = 1192
    ExplicitTop = 356
    ExplicitWidth = 1192
    inherited PStatusHistorico: TPanel
      Width = 1011
      ExplicitWidth = 1011
    end
    inherited pnlTela: TPanel
      Left = 1124
      ExplicitLeft = 1124
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1182
      ExplicitLeft = 1182
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
    Width = 1055
    Height = 356
    ExplicitWidth = 1055
    ExplicitHeight = 356
    inherited pcItem: TRzPageControl
      Width = 1047
      Height = 348
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 1047
      ExplicitHeight = 348
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1045
        ExplicitHeight = 327
        inherited pPesquisa: TRzPanel
          Top = 261
          Width = 1045
          ExplicitTop = 261
          ExplicitWidth = 1045
          inherited Label1: TLabel
            Width = 1037
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 924
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 1037
            ExplicitWidth = 1037
          end
          inherited edPesquisa: TMaskEdit
            Width = 920
            ExplicitWidth = 920
          end
        end
        inherited Panel2: TPanel
          Width = 1045
          ExplicitWidth = 1045
          inherited Label3: TLabel
            Width = 907
            ExplicitLeft = 627
          end
        end
        inherited dbDados: TcxGrid
          Width = 1045
          Height = 241
          ExplicitWidth = 1045
          ExplicitHeight = 241
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 1045
        ExplicitHeight = 327
        inherited pDados: TPanel
          Width = 1045
          Height = 327
          ExplicitWidth = 1045
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
          object GroupBox4: TGroupBox
            Left = 5
            Top = 67
            Width = 245
            Height = 32
            Caption = ' Descri'#231#227'o do c'#243'digo (NFe) '
            TabOrder = 2
            object DBEdit4: TDBEdit
              Left = 5
              Top = 15
              Width = 237
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
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 92
            Height = 32
            Caption = ' Lote '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'LOTE'
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
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Top = 15
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Size = 10
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
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
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadloteclass where ativo = '#39'S'#39)
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosLOTE: TStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
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
end
