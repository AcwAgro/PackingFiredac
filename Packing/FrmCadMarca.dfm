inherited FfrmCadMarca: TFfrmCadMarca
  Caption = 'Cadastro Marca'
  ClientHeight = 475
  ClientWidth = 594
  FormStyle = fsNormal
  ExplicitWidth = 600
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 459
    Width = 594
    ExplicitTop = 459
    ExplicitWidth = 594
    inherited PStatusHistorico: TPanel
      Width = 423
      ExplicitWidth = 423
    end
    inherited pnlTela: TPanel
      Left = 536
      ExplicitLeft = 536
    end
  end
  inherited pMenu: TRzPanel
    Height = 459
    ExplicitHeight = 459
    inherited rzpMenu: TRzPanel
      Top = 47
      Height = 207
      ExplicitTop = 47
      ExplicitHeight = 207
    end
    inherited rzpDados: TRzPanel
      Top = 356
      Align = alBottom
      ExplicitTop = 356
    end
    inherited PPeriodo: TPanel
      Top = 271
      Align = alBottom
      ExplicitTop = 271
    end
    object rbLiberar: TRadioGroup
      Left = 7
      Top = 7
      Width = 126
      Height = 40
      Align = alTop
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
      TabOrder = 3
      OnClick = rbLiberarClick
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 454
    Height = 459
    ExplicitWidth = 454
    ExplicitHeight = 459
    inherited pcItem: TRzPageControl
      Width = 440
      Height = 445
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 440
      ExplicitHeight = 445
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 438
        ExplicitHeight = 424
        inherited dbDados: TDBGrid
          Width = 438
          Height = 404
          OnCellClick = dbDadosCellClick
        end
        inherited pPesquisa: TRzPanel
          Left = 16
          Top = 69
          ExplicitLeft = 16
          ExplicitTop = 69
        end
        inherited Panel2: TPanel
          Width = 438
          ExplicitWidth = 438
          inherited Label3: TLabel
            Width = 300
            ExplicitLeft = 20
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 438
        ExplicitHeight = 424
        inherited pDados: TPanel
          Width = 438
          Height = 424
          ExplicitWidth = 438
          ExplicitHeight = 424
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
  inherited sqlDados: TQuery
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
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Classe'
      FieldName = 'DESCRICAO'
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
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Visible = False
      Size = 1
    end
    object cdsDadosLIBERAR: TStringField
      DisplayLabel = 'Liberar'
      FieldName = 'LIBERAR'
      Size = 1
    end
  end
end
