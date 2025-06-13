inherited FfrmCadProduto: TFfrmCadProduto
  Caption = 'Cadastro produto'
  ClientHeight = 472
  ClientWidth = 1044
  ExplicitWidth = 1050
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 456
    Width = 1044
    ExplicitTop = 456
    ExplicitWidth = 1044
    inherited PStatusHistorico: TPanel
      Width = 863
      ExplicitWidth = 863
    end
    inherited pnlTela: TPanel
      Left = 986
      ExplicitLeft = 986
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 976
      ExplicitLeft = 976
    end
  end
  inherited pMenu: TRzPanel
    Height = 456
    ExplicitHeight = 456
    inherited rzpMenu: TRzPanel
      Height = 352
      ExplicitHeight = 352
      inherited rbgAtivo: TRadioGroup
        Top = 232
        OnClick = rbgAtivoClick
        ExplicitTop = 232
      end
      inherited PPeriodo: TPanel
        Top = 272
        ExplicitTop = 272
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 907
    Height = 456
    ExplicitWidth = 907
    ExplicitHeight = 456
    inherited pcItem: TRzPageControl
      Width = 899
      Height = 448
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 899
      ExplicitHeight = 448
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 897
        ExplicitHeight = 427
        inherited pPesquisa: TRzPanel
          Top = 361
          Width = 897
          ExplicitTop = 361
          ExplicitWidth = 897
          inherited Label1: TLabel
            Width = 889
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 776
            ExplicitLeft = 776
          end
          inherited rbPesquisa: TRzPanel
            Width = 889
            ExplicitWidth = 889
          end
          inherited edPesquisa: TMaskEdit
            Width = 772
            ExplicitWidth = 772
          end
        end
        inherited Panel2: TPanel
          Width = 897
          ExplicitWidth = 897
          inherited Label3: TLabel
            Width = 759
            ExplicitLeft = 479
          end
        end
        inherited dbDados: TcxGrid
          Width = 897
          Height = 341
          ExplicitWidth = 897
          ExplicitHeight = 341
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
            object dbDadosDBTableView1UNIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'UNIDADE'
            end
            object dbDadosDBTableView1PESOLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'PESOLIQ'
            end
            object dbDadosDBTableView1CALIBREDES: TcxGridDBColumn
              DataBinding.FieldName = 'CALIBREDES'
            end
            object dbDadosDBTableView1ATIVO: TcxGridDBColumn
              DataBinding.FieldName = 'ATIVO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VARIECOD: TcxGridDBColumn
              Caption = 'Var.C'#243'd.'
              DataBinding.FieldName = 'VARIECOD'
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              Caption = 'Variedade'
              DataBinding.FieldName = 'VARIEDES'
            end
            object dbDadosDBTableView1CATEGCOD: TcxGridDBColumn
              Caption = 'Cat.C'#243'd.'
              DataBinding.FieldName = 'CATEGCOD'
            end
            object dbDadosDBTableView1CATEGDES: TcxGridDBColumn
              Caption = 'Categoria'
              DataBinding.FieldName = 'CATEGDES'
            end
            object dbDadosDBTableView1NCM: TcxGridDBColumn
              DataBinding.FieldName = 'NCM'
            end
            object dbDadosDBTableView1PESOBRU: TcxGridDBColumn
              Caption = 'Peso Bruto.'
              DataBinding.FieldName = 'PESOBRU'
            end
            object dbDadosDBTableView1CODVELHO: TcxGridDBColumn
              DataBinding.FieldName = 'CODVELHO'
            end
            object dbDadosDBTableView1COMPRA: TcxGridDBColumn
              DataBinding.FieldName = 'COMPRA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VENDA2: TcxGridDBColumn
              DataBinding.FieldName = 'VENDA2'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CALIBRE: TcxGridDBColumn
              DataBinding.FieldName = 'CALIBRE'
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
            object dbDadosDBTableView1QTDECX: TcxGridDBColumn
              DataBinding.FieldName = 'QTDECX'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1QTDEBA: TcxGridDBColumn
              DataBinding.FieldName = 'QTDEBA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ETIQUETA: TcxGridDBColumn
              DataBinding.FieldName = 'ETIQUETA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OUTROS: TcxGridDBColumn
              DataBinding.FieldName = 'OUTROS'
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
            object dbDadosDBTableView1CUSTOFG: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOFG'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CUSTOOPE: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOOPE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CUSTOEMB: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOEMB'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CUSTOLUC: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOLUC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CEST: TcxGridDBColumn
              DataBinding.FieldName = 'CEST'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VENDA1: TcxGridDBColumn
              DataBinding.FieldName = 'VENDA1'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMPRIMEETIQ: TcxGridDBColumn
              DataBinding.FieldName = 'IMPRIMEETIQ'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1MOSTRAEST: TcxGridDBColumn
              DataBinding.FieldName = 'MOSTRAEST'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODIGOID: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOID'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1MARCA: TcxGridDBColumn
              DataBinding.FieldName = 'MARCA'
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
        ExplicitWidth = 897
        ExplicitHeight = 427
        inherited pDados: TPanel
          Width = 897
          Height = 427
          ExplicitWidth = 897
          ExplicitHeight = 427
          object GroupBox1: TGroupBox
            Left = 5
            Top = 102
            Width = 56
            Height = 37
            Caption = ' Unid.'
            TabOrder = 5
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 50
              Height = 15
              BorderStyle = bsNone
              CharCase = ecLowerCase
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
          object GroupBox3: TGroupBox
            Left = 5
            Top = 5
            Width = 316
            Height = 32
            Caption = ' Variedade '
            TabOrder = 0
            inline frmPesquisaVarie: TfrmPesquisa
              Left = 5
              Top = 14
              Width = 307
              Height = 14
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 5
              ExplicitTop = 14
              ExplicitWidth = 307
              ExplicitHeight = 14
              inherited SpeedButton1: TSpeedButton
                Left = 286
                Height = 14
                ExplicitLeft = 287
                ExplicitHeight = 14
              end
              inherited edtPesquisa: TEdit
                Width = 280
                Height = 14
                CharCase = ecUpperCase
                ExplicitWidth = 280
                ExplicitHeight = 14
              end
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 138
            Width = 460
            Height = 32
            Caption = ' Descri'#231#227'o '
            TabOrder = 9
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 382
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
          object GroupBox4: TGroupBox
            Left = 5
            Top = 37
            Width = 316
            Height = 32
            Caption = ' Categoria '
            TabOrder = 1
            inline frmPesquisaCateg: TfrmPesquisa
              Left = 5
              Top = 14
              Width = 307
              Height = 14
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 5
              ExplicitTop = 14
              ExplicitWidth = 307
              ExplicitHeight = 14
              inherited SpeedButton1: TSpeedButton
                Left = 286
                Height = 14
                ExplicitLeft = 287
                ExplicitHeight = 14
              end
              inherited edtPesquisa: TEdit
                Width = 280
                Height = 14
                CharCase = ecUpperCase
                ExplicitWidth = 280
                ExplicitHeight = 14
              end
            end
          end
          object GroupBox7: TGroupBox
            Left = 5
            Top = 173
            Width = 460
            Height = 246
            Caption = ' Estrutura(sa'#237'da/Produ'#231#227'o) '
            TabOrder = 10
            object dbDetalhe: TDBGrid
              Left = 2
              Top = 15
              Width = 456
              Height = 229
              Align = alClient
              Color = clWhite
              DataSource = dsEstru
              FixedColor = 13878195
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnColExit = dbDetalheColExit
              OnEnter = dbDetalheEnter
              OnExit = dbDetalheExit
              OnKeyPress = dbDetalheKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Quant.'
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 50
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Mercadoria'
                  Width = 273
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'UNIDADE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Un.'
                  Width = 34
                  Visible = True
                end>
            end
          end
          object GroupBox5: TGroupBox
            Left = 64
            Top = 102
            Width = 108
            Height = 37
            Caption = ' Peso l'#237'q. '
            TabOrder = 6
            object DBEdit3: TDBEdit
              Left = 5
              Top = 16
              Width = 98
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
              OnExit = DBEdit3Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox6: TGroupBox
            Left = 173
            Top = 102
            Width = 108
            Height = 37
            Caption = ' Peso bruto '
            TabOrder = 7
            object DBEdit4: TDBEdit
              Left = 5
              Top = 16
              Width = 98
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
          object GroupBox8: TGroupBox
            Left = 5
            Top = 69
            Width = 76
            Height = 32
            Caption = ' Calibre '
            TabOrder = 2
            OnExit = GroupBox9Exit
            object DBEdit5: TDBEdit
              Left = 3
              Top = 14
              Width = 68
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CALIBRE'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = DBEdit5Change
              OnExit = DBEdit5Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox9: TGroupBox
            Left = 211
            Top = 69
            Width = 110
            Height = 32
            Caption = ' C'#243'digo '
            TabOrder = 4
            OnExit = GroupBox9Exit
            object DBEdit6: TDBEdit
              Left = 3
              Top = 13
              Width = 102
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
          object GroupBox11: TGroupBox
            Left = 83
            Top = 69
            Width = 126
            Height = 32
            Caption = ' Cal.Des. '
            TabOrder = 3
            object DBEdit8: TDBEdit
              Left = 3
              Top = 14
              Width = 118
              Height = 15
              BorderStyle = bsNone
              Color = clWhite
              DataField = 'CALIBREDES'
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
          object GroupBox10: TGroupBox
            Left = 474
            Top = 37
            Width = 365
            Height = 211
            Caption = ' Fiscal '
            TabOrder = 11
            object GroupBox12: TGroupBox
              Left = 5
              Top = 21
              Width = 148
              Height = 32
              Caption = ' C'#243'digo  NCM '
              TabOrder = 0
              object DBEdit7: TDBEdit
                Left = 3
                Top = 14
                Width = 134
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'NCM'
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
            object DBRadioGroup2: TDBRadioGroup
              Left = 5
              Top = 54
              Width = 206
              Height = 71
              Caption = ' ICMS Origem '
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
              TabOrder = 2
              Values.Strings = (
                '0'
                '1'
                '2')
            end
            object gbCSOSN: TGroupBox
              Left = 5
              Top = 130
              Width = 355
              Height = 71
              Caption = ' ICMS Tipo - Empresa no Simples Nacional (CSOSN) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object btCSOSN: TButton
                Left = 316
                Top = 26
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
                Height = 54
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
            object GroupBox17: TGroupBox
              Left = 159
              Top = 21
              Width = 148
              Height = 32
              Caption = ' C'#243'digo  CEST'
              TabOrder = 1
              object DBEdit12: TDBEdit
                Left = 3
                Top = 14
                Width = 134
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CEST'
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
          end
          object GroupBox13: TGroupBox
            Left = 474
            Top = 254
            Width = 355
            Height = 100
            Caption = ' Fechamento '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
            object GroupBox14: TGroupBox
              Left = 19
              Top = 32
              Width = 100
              Height = 32
              Caption = ' Operacional '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object DBEdit9: TDBEdit
                Left = 3
                Top = 14
                Width = 94
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CUSTOOPE'
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
            object GroupBox15: TGroupBox
              Left = 123
              Top = 32
              Width = 100
              Height = 32
              Caption = ' Embalagens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object DBEdit10: TDBEdit
                Left = 3
                Top = 14
                Width = 94
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CUSTOEMB'
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
              Left = 227
              Top = 32
              Width = 100
              Height = 32
              Caption = ' %Lucro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object DBEdit11: TDBEdit
                Left = 3
                Top = 14
                Width = 94
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CUSTOLUC'
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
            object DBCheckBox1: TDBCheckBox
              Left = 19
              Top = 17
              Width = 166
              Height = 17
              Caption = 'Calcular custo por item'
              DataField = 'CUSTOFG'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object GroupBox19: TGroupBox
              Left = 20
              Top = 64
              Width = 201
              Height = 32
              Caption = ' Pre'#231'o M'#233'dio venda por kg '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object DBEdit13: TDBEdit
                Left = 3
                Top = 14
                Width = 94
                Height = 15
                Hint = 'Esse valor ignora o usado por venda m'#233'dia geral...'
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'VENDA1'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
          end
          object GroupBox18: TGroupBox
            Left = 474
            Top = 356
            Width = 119
            Height = 39
            Caption = ' Etiqueta '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            object DBCheckBox2: TDBCheckBox
              Left = 19
              Top = 17
              Width = 94
              Height = 17
              Caption = 'Imprimir'
              DataField = 'IMPRIMEETIQ'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 327
            Top = 5
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
            TabOrder = 14
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 474
            Top = 3
            Width = 138
            Height = 32
            Caption = ' Estoque '
            Columns = 2
            DataField = 'MOSTRAEST'
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
            TabOrder = 15
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox20: TGroupBox
            Left = 287
            Top = 102
            Width = 161
            Height = 37
            Caption = ' Marca '
            TabOrder = 8
            object cxMarca: TDBComboBox
              Left = 3
              Top = 14
              Width = 155
              Height = 21
              BevelInner = bvNone
              BevelOuter = bvNone
              Ctl3D = False
              DataField = 'MARCA'
              DataSource = dsDados
              DropDownCount = 15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox21: TGroupBox
            Left = 618
            Top = 3
            Width = 127
            Height = 32
            Caption = ' C'#243'digo Auxiliar '
            TabOrder = 16
            OnExit = GroupBox9Exit
            object DBEdit14: TDBEdit
              Left = 3
              Top = 13
              Width = 102
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CODVELHO'
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
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 546
    Top = 62
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADPRODU.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADPRODU.DESCRICAO'
      Size = 50
    end
    object cdsDadosUNIDADE: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.CADPRODU.UNIDADE'
      Size = 2
    end
    object cdsDadosPESOLIQ: TBCDField
      DisplayLabel = 'Peso L'#237'q.'
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.CADPRODU.PESOLIQ'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODVELHO: TIntegerField
      DisplayLabel = 'C'#243'd.Auxiliar'
      FieldName = 'CODVELHO'
      Origin = 'JAEADMIN.CADPRODU.CODVELHO'
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.CADPRODU.VARIECOD'
      Visible = False
    end
    object cdsDadosCATEGCOD: TIntegerField
      FieldName = 'CATEGCOD'
      Origin = 'JAEADMIN.CADPRODU.CATEGCOD'
      Visible = False
    end
    object cdsDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.CADPRODU.VARIEDES'
      Visible = False
      Size = 30
    end
    object cdsDadosCATEGDES: TStringField
      FieldName = 'CATEGDES'
      Origin = 'JAEADMIN.CADPRODU.CATEGDES'
      Visible = False
      Size = 30
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.CADPRODU.PESOBRU'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Origin = 'JAEADMIN.CADPRODU.COMPRA'
      Visible = False
    end
    object cdsDadosVENDA2: TBCDField
      FieldName = 'VENDA2'
      Origin = 'JAEADMIN.CADPRODU.VENDA2'
      Visible = False
    end
    object cdsDadosCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.CADPRODU.CALIBRE'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADPRODU.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADPRODU.ACESOCOD'
      Visible = False
    end
    object cdsDadosQTDECX: TBCDField
      FieldName = 'QTDECX'
      Origin = 'JAEADMIN.CADPRODU.QTDECX'
      Visible = False
    end
    object cdsDadosQTDEBA: TBCDField
      FieldName = 'QTDEBA'
      Origin = 'JAEADMIN.CADPRODU.QTDEBA'
      Visible = False
    end
    object cdsDadosETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'JAEADMIN.CADPRODU.ETIQUETA'
      Visible = False
      Size = 1
    end
    object cdsDadosOUTROS: TStringField
      FieldName = 'OUTROS'
      Origin = 'JAEADMIN.CADPRODU.OUTROS'
      Visible = False
      Size = 1
    end
    object cdsDadosNCM: TStringField
      DisplayLabel = 'C'#243'digo NCM'
      DisplayWidth = 10
      FieldName = 'NCM'
      Origin = 'JAEADMIN.CADPRODU.NCM'
    end
    object cdsDadosCALIBREDES: TStringField
      DisplayLabel = 'Calibre Desc.'
      FieldName = 'CALIBREDES'
      Origin = 'JAEADMIN.CADPRODU.CALIBREDES'
      Size = 15
    end
    object cdsDadosICMS_ORI: TStringField
      FieldName = 'ICMS_ORI'
      Origin = 'JAEADMIN.CADPRODU.ICMS_ORI'
      Visible = False
      Size = 1
    end
    object cdsDadosICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'JAEADMIN.CADPRODU.ICMS_SIT'
      Visible = False
      Size = 3
    end
    object cdsDadosCUSTOFG: TStringField
      DisplayLabel = 'Custo_FG.'
      FieldName = 'CUSTOFG'
      Size = 1
    end
    object cdsDadosCUSTOOPE: TBCDField
      DisplayLabel = 'Custo_Op.'
      FieldName = 'CUSTOOPE'
      DisplayFormat = '0.00'
    end
    object cdsDadosCUSTOEMB: TBCDField
      DisplayLabel = 'Custo_Emb.'
      FieldName = 'CUSTOEMB'
      DisplayFormat = '0.00'
    end
    object cdsDadosCUSTOLUC: TBCDField
      DisplayLabel = '%Lucro'
      FieldName = 'CUSTOLUC'
      DisplayFormat = '0.00'
    end
    object cdsDadosCEST: TStringField
      DisplayLabel = 'C'#243'digo CEST'
      FieldName = 'CEST'
      Size = 15
    end
    object cdsDadosVENDA1: TBCDField
      DisplayLabel = 'Pre'#231'o fixo'
      FieldName = 'VENDA1'
      Origin = 'JAEADMIN.CADPRODU.VENDA1'
      DisplayFormat = '#,0.00##'
    end
    object cdsDadosIMPRIMEETIQ: TStringField
      DisplayLabel = 'Imprime/Etiq.'
      FieldName = 'IMPRIMEETIQ'
      Size = 1
    end
    object cdsDadosMOSTRAEST: TStringField
      FieldName = 'MOSTRAEST'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGOID: TIntegerField
      FieldName = 'CODIGOID'
      Visible = False
    end
    object cdsDadosMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 514
    Top = 62
  end
  inherited dsDados: TDataSource
    Left = 578
    Top = 62
  end
  inherited ImageList1: TImageList
    Left = 535
    Top = 259
  end
  object dspEstru: TDataSetProvider [7]
    DataSet = sqlEstru
    UpdateMode = upWhereKeyOnly
    Left = 866
    Top = 102
  end
  object cdsEstru: TClientDataSet [8]
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'CODIGO'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspEstru'
    AfterOpen = cdsDadosAfterOpen
    BeforePost = cdsEstruBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 898
    Top = 102
    object cdsEstruLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsEstruCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsEstruDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object cdsEstruQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsEstruCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Origin = 'COMPRA'
    end
    object cdsEstruLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEstruEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsEstruACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsEstruPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
    end
    object cdsEstruUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object cdsEstruREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsEstruREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsEstru: TDataSource [9]
    DataSet = cdsEstru
    Left = 930
    Top = 102
  end
  object PopupMenu1: TPopupMenu [10]
    Left = 432
    Top = 344
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadprodu where ativo = '#39'S'#39)
    Left = 482
    Top = 62
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADPRODU.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADPRODU.DESCRICAO'
      Size = 50
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.CADPRODU.VARIECOD'
    end
    object sqlDadosCATEGCOD: TIntegerField
      FieldName = 'CATEGCOD'
      Origin = 'JAEADMIN.CADPRODU.CATEGCOD'
    end
    object sqlDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.CADPRODU.VARIEDES'
      Size = 30
    end
    object sqlDadosCATEGDES: TStringField
      FieldName = 'CATEGDES'
      Origin = 'JAEADMIN.CADPRODU.CATEGDES'
      Size = 30
    end
    object sqlDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.CADPRODU.UNIDADE'
      Size = 2
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.CADPRODU.PESOLIQ'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.CADPRODU.PESOBRU'
    end
    object sqlDadosCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Origin = 'JAEADMIN.CADPRODU.COMPRA'
    end
    object sqlDadosVENDA1: TBCDField
      FieldName = 'VENDA1'
      Origin = 'JAEADMIN.CADPRODU.VENDA1'
    end
    object sqlDadosVENDA2: TBCDField
      FieldName = 'VENDA2'
      Origin = 'JAEADMIN.CADPRODU.VENDA2'
    end
    object sqlDadosCODVELHO: TIntegerField
      FieldName = 'CODVELHO'
      Origin = 'JAEADMIN.CADPRODU.CODVELHO'
    end
    object sqlDadosCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.CADPRODU.CALIBRE'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADPRODU.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADPRODU.ACESOCOD'
    end
    object sqlDadosQTDECX: TBCDField
      FieldName = 'QTDECX'
      Origin = 'JAEADMIN.CADPRODU.QTDECX'
    end
    object sqlDadosQTDEBA: TBCDField
      FieldName = 'QTDEBA'
      Origin = 'JAEADMIN.CADPRODU.QTDEBA'
    end
    object sqlDadosETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'JAEADMIN.CADPRODU.ETIQUETA'
      Size = 1
    end
    object sqlDadosOUTROS: TStringField
      FieldName = 'OUTROS'
      Origin = 'JAEADMIN.CADPRODU.OUTROS'
      Size = 1
    end
    object sqlDadosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'JAEADMIN.CADPRODU.NCM'
    end
    object sqlDadosCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Origin = 'JAEADMIN.CADPRODU.CALIBREDES'
      Size = 10
    end
    object sqlDadosICMS_ORI: TStringField
      FieldName = 'ICMS_ORI'
      Origin = 'JAEADMIN.CADPRODU.ICMS_ORI'
      Size = 1
    end
    object sqlDadosICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'JAEADMIN.CADPRODU.ICMS_SIT'
      Size = 3
    end
    object sqlDadosCUSTOFG: TStringField
      DisplayLabel = 'Custos_FG'
      FieldName = 'CUSTOFG'
      Origin = 'JAEADMIN.CADPRODU.CUSTOFG'
      Size = 1
    end
    object sqlDadosCUSTOOPE: TBCDField
      DisplayLabel = 'Custo_Op.'
      FieldName = 'CUSTOOPE'
      Origin = 'JAEADMIN.CADPRODU.CUSTOOPE'
    end
    object sqlDadosCUSTOEMB: TBCDField
      DisplayLabel = 'Custo_Emb.'
      FieldName = 'CUSTOEMB'
      Origin = 'JAEADMIN.CADPRODU.CUSTOEMB'
    end
    object sqlDadosCUSTOLUC: TBCDField
      DisplayLabel = 'Lucro%'
      FieldName = 'CUSTOLUC'
      Origin = 'JAEADMIN.CADPRODU.CUSTOLUC'
    end
    object sqlDadosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'JAEADMIN.CADPRODU.CEST'
      Size = 15
    end
    object sqlDadosIMPRIMEETIQ: TStringField
      FieldName = 'IMPRIMEETIQ'
      Origin = 'JAEADMIN.CADPRODU.IMPRIMEETIQ'
      Size = 1
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADPRODU.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosMOSTRAEST: TStringField
      FieldName = 'MOSTRAEST'
      Origin = 'JAEADMIN.CADPRODU.MOSTRAEST'
      FixedChar = True
      Size = 1
    end
    object sqlDadosCODIGOID: TIntegerField
      FieldName = 'CODIGOID'
      Origin = 'JAEADMIN.CADPRODU.CODIGOID'
    end
    object sqlDadosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'JAEADMIN.CADPRODU.MARCA'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADPRODU.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADPRODU.REG_ID'
    end
  end
  object sqlEstru: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadprobx'
      'order by codigo')
    Left = 818
    Top = 102
    object sqlEstruLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlEstruLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlEstruCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlEstruDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object sqlEstruQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlEstruCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Origin = 'COMPRA'
      Precision = 18
    end
    object sqlEstruEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlEstruACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlEstruPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlEstruUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object sqlEstruREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlEstruREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
