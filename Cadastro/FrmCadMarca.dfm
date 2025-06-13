inherited FfrmCadMarca: TFfrmCadMarca
  Caption = 'Cadastro Marca'
  ClientHeight = 457
  ClientWidth = 1183
  ExplicitWidth = 1189
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 441
    Width = 1183
    ExplicitTop = 441
    ExplicitWidth = 1183
    inherited PStatusHistorico: TPanel
      Width = 1002
      ExplicitWidth = 1002
    end
    inherited pnlTela: TPanel
      Left = 1115
      ExplicitLeft = 1115
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1173
      ExplicitLeft = 1173
    end
  end
  inherited pMenu: TRzPanel
    Height = 441
    ExplicitHeight = 441
    inherited rzpMenu: TRzPanel
      Height = 337
      ExplicitHeight = 337
      inherited rbgAtivo: TRadioGroup
        Top = 217
        OnClick = rbgAtivoClick
        ExplicitTop = 217
      end
      inherited PPeriodo: TPanel
        Top = 257
        ExplicitTop = 257
      end
      object rbLiberar: TRadioGroup
        Left = 0
        Top = 177
        Width = 129
        Height = 40
        Align = alBottom
        Caption = ' Liberar '
        Color = 10611152
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        OnClick = rbLiberarClick
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1046
    Height = 441
    ExplicitWidth = 1046
    ExplicitHeight = 441
    inherited pcItem: TRzPageControl
      Width = 1038
      Height = 433
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 1038
      ExplicitHeight = 433
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1036
        ExplicitHeight = 412
        inherited pPesquisa: TRzPanel
          Top = 346
          Width = 1036
          ExplicitTop = 346
          ExplicitWidth = 1036
          inherited Label1: TLabel
            Width = 1028
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 915
            ExplicitLeft = 458
          end
          inherited rbPesquisa: TRzPanel
            Width = 1028
            ExplicitWidth = 1028
          end
          inherited edPesquisa: TMaskEdit
            Width = 911
            ExplicitWidth = 911
          end
        end
        inherited Panel2: TPanel
          Width = 1036
          ExplicitWidth = 1036
          inherited Label3: TLabel
            Width = 898
            ExplicitLeft = 618
          end
        end
        inherited dbDados: TcxGrid
          Width = 1036
          Height = 326
          ExplicitWidth = 1036
          ExplicitHeight = 326
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 1036
        ExplicitHeight = 412
        inherited pDados: TPanel
          Width = 1036
          Height = 412
          ExplicitWidth = 1036
          ExplicitHeight = 412
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 40
            Width = 180
            Height = 32
            Caption = 'Descri'#231#227'o'
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
          object DBRadioGroup1: TDBRadioGroup
            Left = 5
            Top = 78
            Width = 138
            Height = 32
            Caption = ' Ativo'
            Columns = 2
            DataField = 'ATIVO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 5
            Top = 116
            Width = 138
            Height = 32
            Caption = ' Liberar '
            Columns = 2
            DataField = 'LIBERAR'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
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
    object cdsDadosATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADMARCA.ATIVO'
      Size = 1
    end
    object cdsDadosLIBERAR: TStringField
      DisplayLabel = 'Liberar'
      FieldName = 'LIBERAR'
      Origin = 'JAEADMIN.CADMARCA.LIBERAR'
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADMARCA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADMARCA.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadmarca')
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADCLASS.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADCLASS.DESCRICAO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADCLASS.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADCLASS.ACESOCOD'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADMARCA.ATIVO'
      Size = 1
    end
    object sqlDadosLIBERAR: TStringField
      FieldName = 'LIBERAR'
      Origin = 'JAEADMIN.CADMARCA.LIBERAR'
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADMARCA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADMARCA.REG_ID'
    end
  end
end
