inherited FfrmCadClasse: TFfrmCadClasse
  Caption = 'Cadastro Classe'
  ClientHeight = 382
  ClientWidth = 1091
  ExplicitWidth = 1097
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 366
    Width = 1091
    ExplicitTop = 366
    ExplicitWidth = 1091
    inherited PStatusHistorico: TPanel
      Width = 910
      ExplicitWidth = 910
    end
    inherited pnlTela: TPanel
      Left = 1023
      ExplicitLeft = 1023
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1081
      ExplicitLeft = 1081
    end
  end
  inherited pMenu: TRzPanel
    Height = 366
    ExplicitHeight = 366
    inherited rzpMenu: TRzPanel
      Height = 262
      ExplicitHeight = 262
      inherited rbgAtivo: TRadioGroup
        Top = 142
        ExplicitTop = 142
      end
      inherited PPeriodo: TPanel
        Top = 182
        ExplicitTop = 182
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 954
    Height = 366
    ExplicitWidth = 954
    ExplicitHeight = 366
    inherited pcItem: TRzPageControl
      Width = 946
      Height = 358
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 946
      ExplicitHeight = 358
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 944
        ExplicitHeight = 337
        inherited pPesquisa: TRzPanel
          Top = 271
          Width = 944
          ExplicitTop = 271
          ExplicitWidth = 944
          inherited Label1: TLabel
            Width = 936
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 823
            ExplicitLeft = 326
          end
          inherited rbPesquisa: TRzPanel
            Width = 936
            ExplicitWidth = 936
          end
          inherited edPesquisa: TMaskEdit
            Width = 819
            ExplicitWidth = 819
          end
        end
        inherited Panel2: TPanel
          Width = 944
          ExplicitWidth = 944
          inherited Label3: TLabel
            Width = 806
            ExplicitLeft = 526
          end
        end
        inherited dbDados: TcxGrid
          Width = 944
          Height = 251
          ExplicitWidth = 944
          ExplicitHeight = 251
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 944
        ExplicitHeight = 337
        inherited pDados: TPanel
          Width = 944
          Height = 337
          ExplicitWidth = 944
          ExplicitHeight = 337
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
            Width = 180
            Height = 32
            Caption = ' Classe '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 164
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
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADCLASS.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Classe'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADCLASS.DESCRICAO'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADCLASS.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADCLASS.ACESOCOD'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADCLASS.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADCLASS.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadclass')
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
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
