inherited FfrmCadLocal: TFfrmCadLocal
  Caption = 'Cadastro local armazenagem'
  ClientHeight = 524
  ClientWidth = 1092
  ExplicitWidth = 1098
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 508
    Width = 1092
    ExplicitTop = 508
    ExplicitWidth = 1092
    inherited PStatusHistorico: TPanel
      Width = 911
      ExplicitWidth = 911
    end
    inherited pnlTela: TPanel
      Left = 1024
      ExplicitLeft = 1024
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1082
      ExplicitLeft = 1082
    end
  end
  inherited pMenu: TRzPanel
    Height = 508
    ExplicitHeight = 508
    inherited rzpMenu: TRzPanel
      Height = 404
      ExplicitHeight = 404
      inherited rbgAtivo: TRadioGroup
        Top = 364
        OnClick = rbgAtivoClick
        ExplicitTop = 364
      end
      inherited PPeriodo: TPanel
        Top = 284
        ExplicitTop = 284
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 955
    Height = 508
    ExplicitWidth = 955
    ExplicitHeight = 508
    inherited pcItem: TRzPageControl
      Width = 947
      Height = 500
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 947
      ExplicitHeight = 500
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 945
        ExplicitHeight = 479
        inherited pPesquisa: TRzPanel
          Top = 413
          Width = 945
          ExplicitTop = 413
          ExplicitWidth = 945
          inherited Label1: TLabel
            Width = 937
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 824
            ExplicitLeft = 326
          end
          inherited rbPesquisa: TRzPanel
            Width = 937
            ExplicitWidth = 937
          end
          inherited edPesquisa: TMaskEdit
            Width = 820
            ExplicitWidth = 820
          end
        end
        inherited Panel2: TPanel
          Width = 945
          ExplicitWidth = 945
          inherited Label3: TLabel
            Width = 807
            ExplicitLeft = 527
          end
        end
        inherited dbDados: TcxGrid
          Width = 945
          Height = 393
          ExplicitWidth = 945
          ExplicitHeight = 393
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 945
        ExplicitHeight = 479
        inherited pDados: TPanel
          Width = 945
          Height = 479
          ExplicitWidth = 945
          ExplicitHeight = 479
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
            Top = 36
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
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADLOCAL.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      Origin = 'JAEADMIN.CADLOCAL.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADLOCAL.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADLOCAL.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadlocal where ativo = '#39'S'#39)
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
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADLOCAL.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADLOCAL.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADLOCAL.REG_ID'
    end
  end
end
