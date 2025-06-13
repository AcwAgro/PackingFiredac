inherited FfrmCadMercaGrupo: TFfrmCadMercaGrupo
  Caption = 'Cadastro Grupo de mercadoria'
  ClientHeight = 481
  ClientWidth = 1074
  ExplicitWidth = 1080
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 465
    Width = 1074
    ExplicitTop = 465
    ExplicitWidth = 1074
    inherited PStatusHistorico: TPanel
      Width = 893
      ExplicitWidth = 893
    end
    inherited pnlTela: TPanel
      Left = 1006
      ExplicitLeft = 1006
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1064
      ExplicitLeft = 1064
    end
  end
  inherited pMenu: TRzPanel
    Height = 465
    ExplicitHeight = 465
    inherited rzpMenu: TRzPanel
      Height = 361
      ExplicitHeight = 361
      inherited rbgAtivo: TRadioGroup
        Top = 241
        OnClick = rbgAtivoClick
        ExplicitTop = 241
      end
      inherited PPeriodo: TPanel
        Top = 281
        ExplicitTop = 281
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 937
    Height = 465
    ExplicitWidth = 937
    ExplicitHeight = 465
    inherited pcItem: TRzPageControl
      Width = 929
      Height = 457
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 929
      ExplicitHeight = 457
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 927
        ExplicitHeight = 436
        inherited pPesquisa: TRzPanel
          Top = 370
          Width = 927
          ExplicitTop = 370
          ExplicitWidth = 927
          inherited Label1: TLabel
            Width = 919
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 806
            ExplicitLeft = 326
          end
          inherited rbPesquisa: TRzPanel
            Width = 919
            ExplicitWidth = 919
          end
          inherited edPesquisa: TMaskEdit
            Width = 802
            ExplicitWidth = 802
          end
        end
        inherited Panel2: TPanel
          Width = 927
          ExplicitWidth = 927
          inherited Label3: TLabel
            Width = 789
            ExplicitLeft = 509
          end
        end
        inherited dbDados: TcxGrid
          Width = 927
          Height = 350
          ExplicitWidth = 927
          ExplicitHeight = 350
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 927
        ExplicitHeight = 436
        inherited pDados: TPanel
          Width = 927
          Height = 436
          ExplicitWidth = 927
          ExplicitHeight = 436
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 80
            Height = 32
            Caption = ' C'#243'digo '
            TabOrder = 0
            object DBEdit1: TDBEdit
              Left = 2
              Top = 15
              Width = 76
              Height = 15
              Align = alClient
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
            Width = 256
            Height = 32
            Caption = ' Grupo '
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 2
              Top = 15
              Width = 252
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
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CTC'
        DataType = ftInteger
      end
      item
        Name = 'CTCDES'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CTCC'
        DataType = ftInteger
      end
      item
        Name = 'PERDEN'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'PERFOR'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'EMPRECOD'
        DataType = ftInteger
      end
      item
        Name = 'ACESOCOD'
        DataType = ftInteger
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REG_ID'
        DataType = ftInteger
      end
      item
        Name = 'REGLOG'
        DataType = ftString
        Size = 1000
      end>
    StoreDefs = True
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADGRUPO.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADGRUPO.DESCRICAO'
      Size = 30
    end
    object cdsDadosCTC: TIntegerField
      FieldName = 'CTC'
      Origin = 'JAEADMIN.CADGRUPO.CTC'
      Visible = False
    end
    object cdsDadosCTCDES: TStringField
      FieldName = 'CTCDES'
      Origin = 'JAEADMIN.CADGRUPO.CTCDES'
      Visible = False
      Size = 60
    end
    object cdsDadosCTCC: TIntegerField
      FieldName = 'CTCC'
      Origin = 'JAEADMIN.CADGRUPO.CTCC'
      Visible = False
    end
    object cdsDadosPERDEN: TBCDField
      FieldName = 'PERDEN'
      Origin = 'JAEADMIN.CADGRUPO.PERDEN'
      Visible = False
    end
    object cdsDadosPERFOR: TBCDField
      FieldName = 'PERFOR'
      Origin = 'JAEADMIN.CADGRUPO.PERFOR'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADGRUPO.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADGRUPO.ACESOCOD'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADGRUPO.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADGRUPO.REG_ID'
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
      'select * from cadgrupo where codigo > 1 and ativo = '#39'S'#39)
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADGRUPO.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADGRUPO.DESCRICAO'
      Size = 30
    end
    object sqlDadosCTC: TIntegerField
      FieldName = 'CTC'
      Origin = 'JAEADMIN.CADGRUPO.CTC'
    end
    object sqlDadosCTCDES: TStringField
      FieldName = 'CTCDES'
      Origin = 'JAEADMIN.CADGRUPO.CTCDES'
      Size = 60
    end
    object sqlDadosCTCC: TIntegerField
      FieldName = 'CTCC'
      Origin = 'JAEADMIN.CADGRUPO.CTCC'
    end
    object sqlDadosPERDEN: TBCDField
      FieldName = 'PERDEN'
      Origin = 'JAEADMIN.CADGRUPO.PERDEN'
    end
    object sqlDadosPERFOR: TBCDField
      FieldName = 'PERFOR'
      Origin = 'JAEADMIN.CADGRUPO.PERFOR'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADGRUPO.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADGRUPO.ACESOCOD'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADGRUPO.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADGRUPO.REG_ID'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
end
