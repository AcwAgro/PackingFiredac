inherited FfrmCadForneGrupo: TFfrmCadForneGrupo
  Caption = 'Cadastro Grupo de produtores'
  ClientHeight = 372
  ClientWidth = 694
  ExplicitWidth = 700
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 356
    Width = 694
    ExplicitTop = 356
    ExplicitWidth = 694
    inherited PStatusHistorico: TPanel
      Width = 513
      ExplicitWidth = 513
    end
    inherited pnlTela: TPanel
      Left = 626
      ExplicitLeft = 626
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 684
      ExplicitLeft = 684
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
    Width = 557
    Height = 356
    ExplicitWidth = 557
    ExplicitHeight = 356
    inherited pcItem: TRzPageControl
      Width = 549
      Height = 348
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 549
      ExplicitHeight = 348
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 547
        ExplicitHeight = 327
        inherited pPesquisa: TRzPanel
          Top = 261
          Width = 547
          ExplicitTop = 261
          ExplicitWidth = 547
          inherited Label1: TLabel
            Width = 539
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 426
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 539
            ExplicitWidth = 539
          end
          inherited edPesquisa: TMaskEdit
            Width = 422
            ExplicitWidth = 422
          end
        end
        inherited Panel2: TPanel
          Width = 547
          ExplicitWidth = 547
          inherited Label3: TLabel
            Width = 409
            ExplicitLeft = 129
          end
        end
        inherited dbDados: TcxGrid
          Width = 547
          Height = 241
          ExplicitWidth = 547
          ExplicitHeight = 241
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 547
        ExplicitHeight = 327
        inherited pDados: TPanel
          Width = 547
          Height = 327
          ExplicitWidth = 547
          ExplicitHeight = 327
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
            Left = 90
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
        Size = 20
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
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REGLOG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REG_ID'
        DataType = ftInteger
      end>
    StoreDefs = True
    Left = 394
    Top = 126
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.CODIGO'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Classe'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.DESCRICAO'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.ACESOCOD'
      Visible = False
    end
    object cdsDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 362
    Top = 126
  end
  inherited dsDados: TDataSource
    Left = 426
    Top = 126
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadforne_grupo where ativo = '#39'S'#39)
    Left = 330
    Top = 126
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.DESCRICAO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.ACESOCOD'
    end
    object sqlDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADFORNE_GRUPO.REG_ID'
    end
  end
end
