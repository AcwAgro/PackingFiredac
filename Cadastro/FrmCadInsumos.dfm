inherited FfrmCadInsumos: TFfrmCadInsumos
  Caption = 'Cadastro insumos'
  ClientHeight = 372
  ClientWidth = 1082
  ExplicitWidth = 1088
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 356
    Width = 1082
    ExplicitTop = 356
    ExplicitWidth = 1082
    inherited PStatusHistorico: TPanel
      Width = 901
      ExplicitWidth = 901
    end
    inherited pnlTela: TPanel
      Left = 1014
      ExplicitLeft = 1014
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1072
      ExplicitLeft = 1072
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
    Width = 945
    Height = 356
    ExplicitWidth = 945
    ExplicitHeight = 356
    inherited pcItem: TRzPageControl
      Width = 937
      Height = 348
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 937
      ExplicitHeight = 348
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 935
        ExplicitHeight = 327
        inherited pPesquisa: TRzPanel
          Top = 261
          Width = 935
          ExplicitTop = 261
          ExplicitWidth = 935
          inherited Label1: TLabel
            Width = 927
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 814
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 927
            ExplicitWidth = 927
          end
          inherited edPesquisa: TMaskEdit
            Width = 810
            ExplicitWidth = 810
          end
        end
        inherited Panel2: TPanel
          Width = 935
          ExplicitWidth = 935
          inherited Label3: TLabel
            Width = 797
            ExplicitLeft = 517
          end
        end
        inherited dbDados: TcxGrid
          Width = 935
          Height = 241
          ExplicitWidth = 935
          ExplicitHeight = 241
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 935
        ExplicitHeight = 327
        inherited pDados: TPanel
          Width = 935
          Height = 327
          ExplicitWidth = 935
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
            Top = 40
            Width = 420
            Height = 32
            Caption = ' Descri'#231#227'o '
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 404
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 431
            Top = 40
            Width = 60
            Height = 32
            Caption = ' Unid. '
            TabOrder = 3
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 50
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'UNIDADE'
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
            Top = 78
            Width = 100
            Height = 32
            Caption = ' Peso l'#237'q. '
            TabOrder = 4
            object DBEdit4: TDBEdit
              Left = 5
              Top = 15
              Width = 84
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PESOLIQ'
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
            Left = 217
            Top = 78
            Width = 124
            Height = 32
            Caption = ' Pre'#231'o compra '
            TabOrder = 6
            object DBEdit5: TDBEdit
              Left = 5
              Top = 15
              Width = 108
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'COMPRA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit5Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox6: TGroupBox
            Left = 111
            Top = 78
            Width = 100
            Height = 32
            Caption = ' Peso bruto '
            TabOrder = 5
            object DBEdit6: TDBEdit
              Left = 5
              Top = 15
              Width = 84
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PESOBRU'
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
          object GroupBox16: TGroupBox
            Left = 347
            Top = 78
            Width = 128
            Height = 33
            Hint = 
              'Essa informa'#231#227'o '#233' usada para adicionar a quantidade da entrada p' +
              'ara o estoque.'
            Caption = 'Qtde. Conversor '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            object DBEdit12: TDBEdit
              Left = 2
              Top = 15
              Width = 124
              Height = 16
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'QTDE_DIV'
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
            Left = 100
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
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADMERCA.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADMERCA.DESCRICAO'
      Size = 50
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEADMIN.CADMERCA.BARRA'
      Visible = False
      Size = 13
    end
    object cdsDadosGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'JAEADMIN.CADMERCA.GRUPOCOD'
      Visible = False
    end
    object cdsDadosUNIDADE: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.CADMERCA.UNIDADE'
      Size = 2
    end
    object cdsDadosPESOLIQ: TBCDField
      DisplayLabel = 'Peso L'#237'q.'
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.CADMERCA.PESOLIQ'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosPESOBRU: TBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.CADMERCA.PESOBRU'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosCOMPRA: TBCDField
      DisplayLabel = 'Pre'#231'o compra'
      FieldName = 'COMPRA'
      Origin = 'JAEADMIN.CADMERCA.COMPRA'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVENDA1: TBCDField
      FieldName = 'VENDA1'
      Origin = 'JAEADMIN.CADMERCA.VENDA1'
      Visible = False
    end
    object cdsDadosQTDEENT: TBCDField
      FieldName = 'QTDEENT'
      Origin = 'JAEADMIN.CADMERCA.QTDEENT'
      Visible = False
    end
    object cdsDadosQTDESAI: TBCDField
      FieldName = 'QTDESAI'
      Origin = 'JAEADMIN.CADMERCA.QTDESAI'
      Visible = False
    end
    object cdsDadosQTDESAL: TBCDField
      FieldName = 'QTDESAL'
      Origin = 'JAEADMIN.CADMERCA.QTDESAL'
      Visible = False
    end
    object cdsDadosGRUPODES: TStringField
      FieldName = 'GRUPODES'
      Origin = 'JAEADMIN.CADMERCA.GRUPODES'
      Visible = False
      Size = 30
    end
    object cdsDadosPERVEN: TBCDField
      FieldName = 'PERVEN'
      Origin = 'JAEADMIN.CADMERCA.PERVEN'
      Visible = False
    end
    object cdsDadosVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'JAEADMIN.CADMERCA.VENCTO'
      Visible = False
    end
    object cdsDadosDESC1: TBCDField
      FieldName = 'DESC1'
      Origin = 'JAEADMIN.CADMERCA.DESC1'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADMERCA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADMERCA.ACESOCOD'
      Visible = False
    end
    object cdsDadosQTDE_DIV: TBCDField
      DisplayLabel = 'Qtde.Convers'#227'o'
      FieldName = 'QTDE_DIV'
      Origin = 'JAEADMIN.CADMERCA.QTDE_DIV'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADMERCA.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADMERCA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADMERCA.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadmerca where grupocod = 3 and ativo = '#39'S'#39)
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADMERCA.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADMERCA.DESCRICAO'
      Size = 50
    end
    object sqlDadosBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEADMIN.CADMERCA.BARRA'
      Size = 13
    end
    object sqlDadosGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'JAEADMIN.CADMERCA.GRUPOCOD'
    end
    object sqlDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.CADMERCA.UNIDADE'
      Size = 2
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.CADMERCA.PESOLIQ'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.CADMERCA.PESOBRU'
    end
    object sqlDadosCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Origin = 'JAEADMIN.CADMERCA.COMPRA'
    end
    object sqlDadosVENDA1: TBCDField
      FieldName = 'VENDA1'
      Origin = 'JAEADMIN.CADMERCA.VENDA1'
    end
    object sqlDadosQTDEENT: TBCDField
      FieldName = 'QTDEENT'
      Origin = 'JAEADMIN.CADMERCA.QTDEENT'
    end
    object sqlDadosQTDESAI: TBCDField
      FieldName = 'QTDESAI'
      Origin = 'JAEADMIN.CADMERCA.QTDESAI'
    end
    object sqlDadosQTDESAL: TBCDField
      FieldName = 'QTDESAL'
      Origin = 'JAEADMIN.CADMERCA.QTDESAL'
    end
    object sqlDadosGRUPODES: TStringField
      FieldName = 'GRUPODES'
      Origin = 'JAEADMIN.CADMERCA.GRUPODES'
      Size = 30
    end
    object sqlDadosPERVEN: TBCDField
      FieldName = 'PERVEN'
      Origin = 'JAEADMIN.CADMERCA.PERVEN'
    end
    object sqlDadosVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'JAEADMIN.CADMERCA.VENCTO'
    end
    object sqlDadosDESC1: TBCDField
      FieldName = 'DESC1'
      Origin = 'JAEADMIN.CADMERCA.DESC1'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADMERCA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADMERCA.ACESOCOD'
    end
    object sqlDadosQTDE_DIV: TBCDField
      FieldName = 'QTDE_DIV'
      Origin = 'JAEADMIN.CADMERCA.QTDE_DIV'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADMERCA.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADMERCA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADMERCA.REG_ID'
    end
  end
end
