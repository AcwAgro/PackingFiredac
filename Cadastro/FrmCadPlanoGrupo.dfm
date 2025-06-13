inherited FfrmCadPlanoGrupo: TFfrmCadPlanoGrupo
  Caption = 'Cadastro Grupo do plano de contas. (N'#237'vel 1)'
  ClientHeight = 422
  ClientWidth = 1065
  ExplicitWidth = 1071
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 406
    Width = 1065
    ExplicitTop = 406
    ExplicitWidth = 1065
    inherited PStatusHistorico: TPanel
      Width = 884
      ExplicitWidth = 884
    end
    inherited pnlTela: TPanel
      Left = 1007
      ExplicitLeft = 1007
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 997
      ExplicitLeft = 997
    end
  end
  inherited pMenu: TRzPanel
    Height = 406
    ExplicitHeight = 406
    inherited rzpMenu: TRzPanel
      Height = 302
      ExplicitHeight = 302
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          Visible = False
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 262
        OnClick = rbgAtivoClick
        ExplicitTop = 262
      end
      inherited PPeriodo: TPanel
        Top = 182
        ExplicitTop = 182
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 928
    Height = 406
    ExplicitWidth = 928
    ExplicitHeight = 406
    inherited pcItem: TRzPageControl
      Width = 920
      Height = 398
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 920
      ExplicitHeight = 398
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 377
        inherited pPesquisa: TRzPanel
          Top = 311
          Width = 918
          ExplicitTop = 311
          ExplicitWidth = 918
          inherited Label1: TLabel
            Width = 910
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 797
            ExplicitLeft = 746
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
          Height = 291
          ExplicitWidth = 918
          ExplicitHeight = 291
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 377
        inherited pDados: TPanel
          Width = 918
          Height = 377
          ExplicitWidth = 918
          ExplicitHeight = 377
          object GroupBox1: TGroupBox
            Left = 5
            Top = 38
            Width = 116
            Height = 32
            Caption = ' C'#243'digo '
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 2
              Top = 15
              Width = 112
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
              OnExit = DBEdit1Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 5
            Top = 5
            Width = 96
            Height = 32
            Caption = ' C'#243'd.Reduz. '
            TabOrder = 0
            object DBEdit3: TDBEdit
              Left = 2
              Top = 15
              Width = 92
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'REDUZ'
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
            Top = 105
            Width = 60
            Height = 32
            Caption = ' N'#237'vel '
            Enabled = False
            TabOrder = 4
            object DBEdit4: TDBEdit
              Left = 2
              Top = 15
              Width = 56
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NIVEL'
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
            Top = 69
            Width = 316
            Height = 32
            Caption = ' Descri'#231#227'o '
            TabOrder = 3
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
          object DBRadioGroup16: TDBRadioGroup
            Left = 105
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
    object cdsDadosCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADPLANO.CODIGO'
      Size = 18
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADPLANO.DESCRICAO'
      Size = 40
    end
    object cdsDadosREDUZ: TIntegerField
      DisplayLabel = 'Reduzido'
      FieldName = 'REDUZ'
      Origin = 'JAEADMIN.CADPLANO.REDUZ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosNIVEL: TIntegerField
      DisplayLabel = 'N'#237'vel'
      DisplayWidth = 5
      FieldName = 'NIVEL'
      Origin = 'JAEADMIN.CADPLANO.NIVEL'
    end
    object cdsDadosSINALCOD: TStringField
      FieldName = 'SINALCOD'
      Origin = 'JAEADMIN.CADPLANO.SINALCOD'
      Visible = False
      Size = 3
    end
    object cdsDadosSINALDES: TStringField
      FieldName = 'SINALDES'
      Origin = 'JAEADMIN.CADPLANO.SINALDES'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADPLANO.EMPRECOD'
      Visible = False
    end
    object cdsDadosLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.CADPLANO.LANCIT'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADPLANO.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADPLANO.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADPLANO.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadplano where nivel = 1 and ativo = '#39'S'#39)
    object sqlDadosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADPLANO.CODIGO'
      Size = 18
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADPLANO.DESCRICAO'
      Size = 40
    end
    object sqlDadosSINALCOD: TStringField
      FieldName = 'SINALCOD'
      Origin = 'JAEADMIN.CADPLANO.SINALCOD'
      Size = 3
    end
    object sqlDadosSINALDES: TStringField
      FieldName = 'SINALDES'
      Origin = 'JAEADMIN.CADPLANO.SINALDES'
    end
    object sqlDadosNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Origin = 'JAEADMIN.CADPLANO.NIVEL'
    end
    object sqlDadosREDUZ: TIntegerField
      FieldName = 'REDUZ'
      Origin = 'JAEADMIN.CADPLANO.REDUZ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADPLANO.EMPRECOD'
    end
    object sqlDadosLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.CADPLANO.LANCIT'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADPLANO.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADPLANO.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADPLANO.REG_ID'
    end
  end
end
