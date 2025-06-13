inherited FfrmCadMaquina: TFfrmCadMaquina
  Caption = 'Cadastro m'#225'quina e ve'#237'culos'
  ClientHeight = 529
  ClientWidth = 1014
  ExplicitWidth = 1020
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 513
    Width = 1014
    ExplicitTop = 513
    ExplicitWidth = 1014
    inherited PStatusHistorico: TPanel
      Width = 833
      ExplicitWidth = 833
    end
    inherited pnlTela: TPanel
      Left = 946
      ExplicitLeft = 946
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1004
      ExplicitLeft = 1004
    end
  end
  inherited pMenu: TRzPanel
    Height = 513
    ExplicitHeight = 513
    inherited rzpMenu: TRzPanel
      Height = 409
      ExplicitHeight = 409
      inherited rbgAtivo: TRadioGroup
        Top = 289
        OnClick = rbgAtivoClick
        ExplicitTop = 289
      end
      inherited PPeriodo: TPanel
        Top = 329
        ExplicitTop = 329
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 877
    Height = 513
    ExplicitWidth = 877
    ExplicitHeight = 513
    inherited pcItem: TRzPageControl
      Width = 869
      Height = 505
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 869
      ExplicitHeight = 505
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 867
        ExplicitHeight = 484
        inherited pPesquisa: TRzPanel
          Top = 418
          Width = 867
          ExplicitTop = 418
          ExplicitWidth = 867
          inherited Label1: TLabel
            Width = 859
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 746
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 859
            ExplicitWidth = 859
          end
          inherited edPesquisa: TMaskEdit
            Width = 742
            ExplicitWidth = 742
          end
        end
        inherited Panel2: TPanel
          Width = 867
          ExplicitWidth = 867
          inherited Label3: TLabel
            Width = 729
            ExplicitLeft = 449
          end
        end
        inherited dbDados: TcxGrid
          Width = 867
          Height = 398
          ExplicitWidth = 867
          ExplicitHeight = 398
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 867
        ExplicitHeight = 484
        inherited pDados: TPanel
          Width = 867
          Height = 484
          ExplicitWidth = 867
          ExplicitHeight = 484
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
          object GroupBox3: TGroupBox
            Left = 5
            Top = 67
            Width = 204
            Height = 32
            Caption = ' Marca/Modelo '
            TabOrder = 3
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 196
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'MARCA'
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
            Left = 277
            Top = 67
            Width = 84
            Height = 32
            Caption = ' Placa '
            TabOrder = 5
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PLACA'
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
            Width = 316
            Height = 32
            Caption = ' Descri'#231#227'o '
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 308
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NOME'
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
          object GroupBox5: TGroupBox
            Left = 212
            Top = 67
            Width = 60
            Height = 32
            Caption = ' Ano '
            TabOrder = 4
            object DBEdit5: TDBEdit
              Left = 5
              Top = 15
              Width = 44
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ANO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 4
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 103
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
    Left = 474
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADMAQUINA.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME'
      Origin = 'JAEADMIN.CADMAQUINA.NOME'
      FixedChar = True
    end
    object cdsDadosMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'JAEADMIN.CADMAQUINA.MARCA'
      FixedChar = True
    end
    object cdsDadosANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = 'JAEADMIN.CADMAQUINA.ANO'
    end
    object cdsDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.CADMAQUINA.PLACA'
      EditMask = 'AAA\-0000;1; '
      FixedChar = True
      Size = 10
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADMAQUINA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADMAQUINA.ACESOCOD'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADMAQUINA.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADMAQUINA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADMAQUINA.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 442
  end
  inherited dsDados: TDataSource
    Left = 506
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadmaquina where ativo = '#39'S'#39)
    Left = 410
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADMAQUINA.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'JAEADMIN.CADMAQUINA.NOME'
      FixedChar = True
    end
    object sqlDadosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'JAEADMIN.CADMAQUINA.MARCA'
      FixedChar = True
    end
    object sqlDadosANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'JAEADMIN.CADMAQUINA.ANO'
    end
    object sqlDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.CADMAQUINA.PLACA'
      FixedChar = True
      Size = 10
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADMAQUINA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADMAQUINA.ACESOCOD'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADMAQUINA.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADMAQUINA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADMAQUINA.REG_ID'
    end
  end
end
