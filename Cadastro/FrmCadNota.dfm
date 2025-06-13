inherited FfrmCadNota: TFfrmCadNota
  Caption = 'Cadastro Tipo de Nota.'
  ClientWidth = 942
  ExplicitWidth = 948
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Width = 942
    ExplicitWidth = 942
    inherited PStatusHistorico: TPanel
      Width = 761
      ExplicitWidth = 761
    end
    inherited pnlTela: TPanel
      Left = 874
      ExplicitLeft = 874
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 932
      ExplicitLeft = 932
    end
  end
  inherited pMenu: TRzPanel
    inherited rzpMenu: TRzPanel
      inherited rbgAtivo: TRadioGroup
        OnClick = rbgAtivoClick
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 805
    ExplicitWidth = 805
    inherited pcItem: TRzPageControl
      Width = 797
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 797
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 795
        inherited pPesquisa: TRzPanel
          Width = 795
          ExplicitWidth = 795
          inherited Label1: TLabel
            Width = 787
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 674
            ExplicitLeft = 674
          end
          inherited rbPesquisa: TRzPanel
            Width = 787
            ExplicitWidth = 787
          end
          inherited edPesquisa: TMaskEdit
            Width = 670
            ExplicitWidth = 670
          end
        end
        inherited Panel2: TPanel
          Width = 795
          ExplicitWidth = 795
          inherited Label3: TLabel
            Width = 657
            ExplicitLeft = 377
          end
        end
        inherited dbDados: TcxGrid
          Width = 795
          ExplicitWidth = 795
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
            object dbDadosDBTableView1SERIE: TcxGridDBColumn
              DataBinding.FieldName = 'SERIE'
            end
            object dbDadosDBTableView1MODELO: TcxGridDBColumn
              DataBinding.FieldName = 'MODELO'
            end
            object dbDadosDBTableView1NATURDEN: TcxGridDBColumn
              DataBinding.FieldName = 'NATURDEN'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object dbDadosDBTableView1NATURFOR: TcxGridDBColumn
              DataBinding.FieldName = 'NATURFOR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object dbDadosDBTableView1ICMSTIPO: TcxGridDBColumn
              DataBinding.FieldName = 'ICMSTIPO'
            end
            object dbDadosDBTableView1RAZAO: TcxGridDBColumn
              DataBinding.FieldName = 'RAZAO'
            end
            object dbDadosDBTableView1FINNFE: TcxGridDBColumn
              DataBinding.FieldName = 'FINNFE'
            end
            object dbDadosDBTableView1REL_VENDA: TcxGridDBColumn
              DataBinding.FieldName = 'REL_VENDA'
            end
            object dbDadosDBTableView1ATIVO: TcxGridDBColumn
              Caption = 'Ativo'
              DataBinding.FieldName = 'ATIVO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMSDEN: TcxGridDBColumn
              DataBinding.FieldName = 'ICMSDEN'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMSFOR: TcxGridDBColumn
              DataBinding.FieldName = 'ICMSFOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ESTOQUE: TcxGridDBColumn
              DataBinding.FieldName = 'ESTOQUE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FINANCEIRO: TcxGridDBColumn
              DataBinding.FieldName = 'FINANCEIRO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FUNRURAL: TcxGridDBColumn
              DataBinding.FieldName = 'FUNRURAL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FUNVALOR: TcxGridDBColumn
              DataBinding.FieldName = 'FUNVALOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ITEM: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1COMISSAO: TcxGridDBColumn
              DataBinding.FieldName = 'COMISSAO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1EMPRECOD: TcxGridDBColumn
              DataBinding.FieldName = 'EMPRECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ACESOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'ACESOCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ALIQIPI: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQIPI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ALIQFUN: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQFUN'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMPORTACAO: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTACAO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMS_ORI: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS_ORI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMS_SIT: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS_SIT'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CFOPDESC: TcxGridDBColumn
              DataBinding.FieldName = 'CFOPDESC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DADOSADIC: TcxGridDBColumn
              DataBinding.FieldName = 'DADOSADIC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IEPRODUTOR: TcxGridDBColumn
              DataBinding.FieldName = 'IEPRODUTOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGIMPOSTO: TcxGridDBColumn
              DataBinding.FieldName = 'FGIMPOSTO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGTRANS: TcxGridDBColumn
              DataBinding.FieldName = 'FGTRANS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGTRANSPL: TcxGridDBColumn
              DataBinding.FieldName = 'FGTRANSPL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGREFER: TcxGridDBColumn
              DataBinding.FieldName = 'FGREFER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMS_CREDPER: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS_CREDPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGFISCO: TcxGridDBColumn
              DataBinding.FieldName = 'FGFISCO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1GERAROMENT: TcxGridDBColumn
              DataBinding.FieldName = 'GERAROMENT'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REGLOG: TcxGridDBColumn
              DataBinding.FieldName = 'REGLOG'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REG_ID: TcxGridDBColumn
              DataBinding.FieldName = 'REG_ID'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 795
        inherited pDados: TPanel
          Width = 795
          ExplicitWidth = 795
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 80
            Height = 36
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
            Top = 79
            Width = 161
            Height = 36
            Caption = ' CFOP. Dentro Estado '
            TabOrder = 6
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 140
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NATURDEN'
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
            Left = 170
            Top = 79
            Width = 161
            Height = 36
            Caption = ' CFOP. Fora Estado '
            TabOrder = 7
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 140
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NATURFOR'
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
            Left = 225
            Top = 5
            Width = 384
            Height = 36
            Caption = ' Descri'#231#227'o '
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 2
              Top = 15
              Width = 380
              Height = 19
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
          object GroupBox5: TGroupBox
            Left = 3
            Top = 117
            Width = 161
            Height = 36
            Caption = ' ICMS Dentro Estado '
            TabOrder = 9
            object DBEdit5: TDBEdit
              Left = 5
              Top = 15
              Width = 140
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ICMSDEN'
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
          object GroupBox6: TGroupBox
            Left = 168
            Top = 117
            Width = 161
            Height = 36
            Caption = ' ICMS Fora Estado '
            TabOrder = 10
            object DBEdit6: TDBEdit
              Left = 5
              Top = 15
              Width = 140
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ICMSFOR'
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
          object DBRadioGroup1: TDBRadioGroup
            Left = 5
            Top = 153
            Width = 161
            Height = 36
            Caption = ' Tipo '
            Columns = 2
            DataField = 'TIPO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Entrada'
              'Sa'#237'da')
            ParentFont = False
            TabOrder = 14
            Values.Strings = (
              'E'
              'S')
          end
          object dbgNormal: TDBRadioGroup
            Left = 5
            Top = 310
            Width = 314
            Height = 83
            Caption = ' ICMS Tipo  - Empresa fora do Simples Nacional '
            Columns = 3
            DataField = 'ICMSTIPO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Calculado'
              'Isento'
              'Substituido'
              'Diferido'
              'Suspens'#227'o'
              'Redu'#231#227'o'
              'Outros')
            ParentFont = False
            TabOrder = 25
            Values.Strings = (
              'Calculado'
              'Isento'
              'Substituido'
              'Diferido'
              'Suspens'#227'o'
              'Redu'#231#227'o'
              'Outros')
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 330
            Top = 193
            Width = 206
            Height = 36
            Caption = ' Tipo do Item '
            Columns = 2
            DataField = 'ITEM'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Produto'
              'Mercadoria')
            ParentFont = False
            TabOrder = 17
            Values.Strings = (
              'P'
              'M')
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 5
            Top = 193
            Width = 323
            Height = 36
            Caption = ' Tipo Entidade'
            Columns = 3
            DataField = 'RAZAO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Cliente'
              'Fornecedor'
              'Produtor')
            ParentFont = False
            TabOrder = 16
            Values.Strings = (
              'C'
              'F'
              'P')
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 538
            Top = 193
            Width = 132
            Height = 36
            Caption = ' Calcula Estoque '
            Columns = 2
            DataField = 'ESTOQUE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 18
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 5
            Top = 232
            Width = 161
            Height = 36
            Caption = ' Calcula Financeiro'
            Columns = 2
            DataField = 'FINANCEIRO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 19
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox7: TGroupBox
            Left = 338
            Top = 117
            Width = 83
            Height = 36
            Caption = ' IPI % '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            object DBEdit7: TDBEdit
              Left = 5
              Top = 14
              Width = 70
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ALIQIPI'
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
          object GroupBox8: TGroupBox
            Left = 431
            Top = 117
            Width = 98
            Height = 36
            Caption = ' Funrural % '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            object DBEdit8: TDBEdit
              Left = 5
              Top = 15
              Width = 86
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ALIQFUN'
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
          object GroupBox9: TGroupBox
            Left = 5
            Top = 42
            Width = 86
            Height = 36
            Caption = ' S'#233'rie '
            TabOrder = 3
            object DBEdit9: TDBEdit
              Left = 5
              Top = 14
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SERIE'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit9Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox10: TGroupBox
            Left = 96
            Top = 42
            Width = 85
            Height = 36
            Caption = ' Modelo '
            TabOrder = 4
            object DBEdit10: TDBEdit
              Left = 5
              Top = 15
              Width = 71
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'MODELO'
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
          object dbgrImporta: TDBRadioGroup
            Left = 170
            Top = 232
            Width = 161
            Height = 36
            Caption = ' Dados para Importa'#231#227'o '
            Columns = 2
            DataField = 'IMPORTACAO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 20
            Values.Strings = (
              'S'
              'N')
          end
          object gbCSOSN: TGroupBox
            Left = 325
            Top = 310
            Width = 364
            Height = 83
            Caption = ' ICMS Tipo - Empresa no Simples Nacional (CSOSN) '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 26
            object btCSOSN: TButton
              Left = 319
              Top = 33
              Width = 29
              Height = 33
              Caption = '?'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = btCSOSNClick
            end
            object DBRadioGroup7: TDBRadioGroup
              Left = 4
              Top = 14
              Width = 309
              Height = 65
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Columns = 4
              DataField = 'ICMS_SIT'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                '101'
                '102'
                '103'
                '201'
                '202'
                '203'
                '300'
                '400'
                '500'
                '900')
              ParentFont = False
              TabOrder = 1
              Values.Strings = (
                '101'
                '102'
                '103'
                '201'
                '202'
                '203'
                '300'
                '400'
                '500'
                '900')
            end
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 5
            Top = 271
            Width = 456
            Height = 36
            Caption = ' ICMS Origem '
            Columns = 3
            DataField = 'ICMS_ORI'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              '0 - N a c i o n a l'
              '1 - Estran.(Imp.D)'
              '2 - Estran.(Mer.I)')
            ParentFont = False
            TabOrder = 24
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup8: TDBRadioGroup
            Left = 172
            Top = 153
            Width = 474
            Height = 36
            Caption = ' Finalidade '
            Columns = 4
            DataField = 'FINNFE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Normal'
              'Devolu'#231#227'o'
              'Ajuste'
              'Complementar')
            ParentFont = False
            TabOrder = 15
            Values.Strings = (
              'N'
              'D'
              'A'
              'C')
          end
          object GroupBox11: TGroupBox
            Left = 338
            Top = 79
            Width = 423
            Height = 36
            Caption = ' CFOP. Descri'#231#227'o complementar '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            object DBEdit11: TDBEdit
              Left = 3
              Top = 18
              Width = 417
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CFOPDESC'
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
          object DBRadioGroup9: TDBRadioGroup
            Left = 334
            Top = 231
            Width = 149
            Height = 36
            Caption = ' Relat'#243'rio Vendas '
            Columns = 2
            DataField = 'REL_VENDA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 21
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup10: TDBRadioGroup
            Left = 485
            Top = 231
            Width = 129
            Height = 36
            Caption = ' Calcula Comiss'#227'o '
            Columns = 2
            DataField = 'COMISSAO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 22
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox12: TGroupBox
            Left = 5
            Top = 392
            Width = 772
            Height = 75
            Caption = ' Dados adicionais '
            TabOrder = 27
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 762
              Height = 15
              Align = alTop
              BevelEdges = [beBottom]
              BevelOuter = bvNone
              BevelKind = bkTile
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DADOSADIC'
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
            object DBRadioGroup11: TDBRadioGroup
              Left = 5
              Top = 35
              Width = 127
              Height = 36
              Caption = ' Adicionar Imposto '
              Columns = 2
              DataField = 'FGIMPOSTO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 1
              Values.Strings = (
                'S'
                'N')
            end
            object DBRadioGroup12: TDBRadioGroup
              Left = 135
              Top = 35
              Width = 139
              Height = 36
              Caption = ' Adicionar Transp.  '
              Columns = 2
              DataField = 'FGTRANS'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
            end
            object DBRadioGroup13: TDBRadioGroup
              Left = 277
              Top = 35
              Width = 156
              Height = 36
              Caption = ' Adicionar Placa/Transp.'
              Columns = 2
              DataField = 'FGTRANSPL'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 3
              Values.Strings = (
                'S'
                'N')
            end
            object DBRadioGroup14: TDBRadioGroup
              Left = 439
              Top = 35
              Width = 156
              Height = 36
              Caption = ' Adicionar NFe Ref.'
              Columns = 2
              DataField = 'FGREFER'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 4
              Values.Strings = (
                'S'
                'N')
            end
            object DBRadioGroup15: TDBRadioGroup
              Left = 601
              Top = 35
              Width = 130
              Height = 36
              Caption = ' Informar ao Fisco '
              Columns = 2
              DataField = 'FGFISCO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 5
              Values.Strings = (
                'S'
                'N')
            end
          end
          object gbIEP: TGroupBox
            Left = 187
            Top = 42
            Width = 174
            Height = 36
            Caption = ' I.E.Produtor '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            object DBEdit13: TDBEdit
              Left = 5
              Top = 15
              Width = 156
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'IEPRODUTOR'
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
          object GroupBox13: TGroupBox
            Left = 538
            Top = 117
            Width = 114
            Height = 36
            Caption = ' Cr'#233'dito Icms % '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            object DBEdit14: TDBEdit
              Left = 5
              Top = 15
              Width = 86
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ICMS_CREDPER'
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
            Left = 90
            Top = 5
            Width = 130
            Height = 36
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
          object DBRadioGroup17: TDBRadioGroup
            Left = 617
            Top = 231
            Width = 160
            Height = 36
            Caption = ' Gera Romaneio Entrada '
            Columns = 2
            DataField = 'GERAROMENT'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 23
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 858
    Top = 30
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsDadosTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosNATURDEN: TBCDField
      DisplayLabel = 'CFOP.Dentro'
      FieldName = 'NATURDEN'
      DisplayFormat = '0.000'
    end
    object cdsDadosNATURFOR: TBCDField
      DisplayLabel = 'CFOP.fora'
      FieldName = 'NATURFOR'
      DisplayFormat = '0.000'
    end
    object cdsDadosICMSTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ICMSTIPO'
    end
    object cdsDadosICMSDEN: TBCDField
      FieldName = 'ICMSDEN'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosICMSFOR: TBCDField
      FieldName = 'ICMSFOR'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Visible = False
      Size = 1
    end
    object cdsDadosFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      Visible = False
      Size = 1
    end
    object cdsDadosFUNRURAL: TStringField
      FieldName = 'FUNRURAL'
      Visible = False
      Size = 1
    end
    object cdsDadosFUNVALOR: TBCDField
      FieldName = 'FUNVALOR'
      Visible = False
    end
    object cdsDadosITEM: TStringField
      FieldName = 'ITEM'
      Visible = False
      Size = 15
    end
    object cdsDadosRAZAO: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'RAZAO'
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
    end
    object cdsDadosALIQIPI: TBCDField
      FieldName = 'ALIQIPI'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosALIQFUN: TBCDField
      FieldName = 'ALIQFUN'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDadosMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsDadosIMPORTACAO: TStringField
      FieldName = 'IMPORTACAO'
      Visible = False
      Size = 1
    end
    object cdsDadosICMS_ORI: TStringField
      FieldName = 'ICMS_ORI'
      Visible = False
      Size = 1
    end
    object cdsDadosICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Visible = False
      Size = 3
    end
    object cdsDadosFINNFE: TStringField
      DisplayLabel = 'Finalidade'
      FieldName = 'FINNFE'
      Size = 1
    end
    object cdsDadosCFOPDESC: TStringField
      FieldName = 'CFOPDESC'
      Visible = False
      Size = 50
    end
    object cdsDadosREL_VENDA: TStringField
      DisplayLabel = 'Rel.Fatur.'
      FieldName = 'REL_VENDA'
      Size = 1
    end
    object cdsDadosCOMISSAO: TStringField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
      Size = 1
    end
    object cdsDadosDADOSADIC: TStringField
      FieldName = 'DADOSADIC'
      Visible = False
      Size = 100
    end
    object cdsDadosIEPRODUTOR: TStringField
      FieldName = 'IEPRODUTOR'
      Visible = False
    end
    object cdsDadosFGIMPOSTO: TStringField
      FieldName = 'FGIMPOSTO'
      Visible = False
      Size = 1
    end
    object cdsDadosFGTRANS: TStringField
      FieldName = 'FGTRANS'
      Visible = False
      Size = 1
    end
    object cdsDadosFGTRANSPL: TStringField
      FieldName = 'FGTRANSPL'
      Visible = False
      Size = 1
    end
    object cdsDadosFGREFER: TStringField
      FieldName = 'FGREFER'
      Visible = False
      Size = 1
    end
    object cdsDadosICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosFGFISCO: TStringField
      FieldName = 'FGFISCO'
      Visible = False
      Size = 1
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosGERAROMENT: TStringField
      FieldName = 'GERAROMENT'
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1000
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 826
    Top = 30
  end
  inherited dsDados: TDataSource
    Left = 890
    Top = 30
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadnota where ativo = '#39'S'#39)
    Left = 794
    Top = 30
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADNOTA.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADNOTA.DESCRICAO'
      Size = 50
    end
    object sqlDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CADNOTA.TIPO'
      Size = 1
    end
    object sqlDadosNATURDEN: TBCDField
      FieldName = 'NATURDEN'
      Origin = 'JAEADMIN.CADNOTA.NATURDEN'
      DisplayFormat = '0.000'
    end
    object sqlDadosNATURFOR: TBCDField
      FieldName = 'NATURFOR'
      Origin = 'JAEADMIN.CADNOTA.NATURFOR'
      DisplayFormat = '0.000'
    end
    object sqlDadosICMSTIPO: TStringField
      FieldName = 'ICMSTIPO'
      Origin = 'JAEADMIN.CADNOTA.ICMSTIPO'
    end
    object sqlDadosICMSDEN: TBCDField
      FieldName = 'ICMSDEN'
      Origin = 'JAEADMIN.CADNOTA.ICMSDEN'
    end
    object sqlDadosICMSFOR: TBCDField
      FieldName = 'ICMSFOR'
      Origin = 'JAEADMIN.CADNOTA.ICMSFOR'
    end
    object sqlDadosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'JAEADMIN.CADNOTA.ESTOQUE'
      Size = 1
    end
    object sqlDadosFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      Origin = 'JAEADMIN.CADNOTA.FINANCEIRO'
      Size = 1
    end
    object sqlDadosFUNRURAL: TStringField
      FieldName = 'FUNRURAL'
      Origin = 'JAEADMIN.CADNOTA.FUNRURAL'
      Size = 1
    end
    object sqlDadosFUNVALOR: TBCDField
      FieldName = 'FUNVALOR'
      Origin = 'JAEADMIN.CADNOTA.FUNVALOR'
    end
    object sqlDadosITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'JAEADMIN.CADNOTA.ITEM'
      Size = 15
    end
    object sqlDadosRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'JAEADMIN.CADNOTA.RAZAO'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADNOTA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADNOTA.ACESOCOD'
    end
    object sqlDadosALIQIPI: TBCDField
      FieldName = 'ALIQIPI'
      Origin = 'JAEADMIN.CADNOTA.ALIQIPI'
      DisplayFormat = '#,0.00'
    end
    object sqlDadosALIQFUN: TBCDField
      FieldName = 'ALIQFUN'
      Origin = 'JAEADMIN.CADNOTA.ALIQFUN'
      DisplayFormat = '#,0.00'
    end
    object sqlDadosSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.CADNOTA.SERIE'
      Size = 3
    end
    object sqlDadosMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = 'JAEADMIN.CADNOTA.MODELO'
      Size = 2
    end
    object sqlDadosIMPORTACAO: TStringField
      FieldName = 'IMPORTACAO'
      Origin = 'JAEADMIN.CADNOTA.IMPORTACAO'
      Size = 1
    end
    object sqlDadosICMS_ORI: TStringField
      FieldName = 'ICMS_ORI'
      Origin = 'JAEADMIN.CADNOTA.ICMS_ORI'
      Size = 1
    end
    object sqlDadosICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'JAEADMIN.CADNOTA.ICMS_SIT'
      Size = 3
    end
    object sqlDadosFINNFE: TStringField
      FieldName = 'FINNFE'
      Origin = 'JAEADMIN.CADNOTA.FINNFE'
      Size = 1
    end
    object sqlDadosCFOPDESC: TStringField
      FieldName = 'CFOPDESC'
      Size = 50
    end
    object sqlDadosREL_VENDA: TStringField
      FieldName = 'REL_VENDA'
      Origin = 'JAEADMIN.CADNOTA.REL_VENDA'
      Size = 1
    end
    object sqlDadosCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Origin = 'JAEADMIN.CADNOTA.COMISSAO'
      Size = 1
    end
    object sqlDadosDADOSADIC: TStringField
      FieldName = 'DADOSADIC'
      Origin = 'JAEADMIN.CADNOTA.DADOSADIC'
      Size = 100
    end
    object sqlDadosIEPRODUTOR: TStringField
      FieldName = 'IEPRODUTOR'
      Origin = 'JAEADMIN.CADNOTA.IEPRODUTOR'
    end
    object sqlDadosFGIMPOSTO: TStringField
      FieldName = 'FGIMPOSTO'
      Origin = 'JAEADMIN.CADNOTA.FGIMPOSTO'
      Size = 1
    end
    object sqlDadosFGTRANS: TStringField
      FieldName = 'FGTRANS'
      Origin = 'JAEADMIN.CADNOTA.FGTRANS'
      Size = 1
    end
    object sqlDadosFGTRANSPL: TStringField
      FieldName = 'FGTRANSPL'
      Origin = 'JAEADMIN.CADNOTA.FGTRANSPL'
      Size = 1
    end
    object sqlDadosFGREFER: TStringField
      FieldName = 'FGREFER'
      Origin = 'JAEADMIN.CADNOTA.FGREFER'
      Size = 1
    end
    object sqlDadosICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Origin = 'JAEADMIN.CADNOTA.ICMS_CREDPER'
    end
    object sqlDadosFGFISCO: TStringField
      FieldName = 'FGFISCO'
      Origin = 'JAEADMIN.CADNOTA.FGFISCO'
      Size = 1
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADNOTA.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosGERAROMENT: TStringField
      FieldName = 'GERAROMENT'
      Origin = 'JAEADMIN.CADNOTA.GERAROMENT'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADNOTA.REG_ID'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
end
