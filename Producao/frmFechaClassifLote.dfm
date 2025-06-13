inherited FfrmFechaCassifLote: TFfrmFechaCassifLote
  Caption = 'Acerto/Fechamento Classifica'#231#227'o'
  ClientHeight = 492
  ClientWidth = 1196
  WindowState = wsMaximized
  ExplicitWidth = 1202
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 476
    Width = 1196
    ExplicitTop = 476
    ExplicitWidth = 1196
    inherited PStatusHistorico: TPanel
      Width = 1015
      ExplicitWidth = 1015
    end
    inherited pnlTela: TPanel
      Left = 1138
      ExplicitLeft = 1138
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1128
      ExplicitLeft = 1128
    end
  end
  inherited pMenu: TRzPanel
    Height = 476
    ExplicitHeight = 476
    inherited rzpMenu: TRzPanel
      Height = 372
      ExplicitHeight = 372
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 10
        ExplicitWidth = 126
      end
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          Tag = 0
          Caption = 'Relat'#243'rio'
          PopupMenu = PopupMenu3
          OnClick = sbImprimirClick
          ExplicitTop = -6
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 252
        ExplicitTop = 252
      end
      inherited PPeriodo: TPanel
        Top = 292
        Visible = True
        ExplicitTop = 292
        inherited sbPeriodo: TSpeedButton
          OnClick = sbPeriodoClick
          ExplicitLeft = 5
          ExplicitTop = 64
          ExplicitWidth = 122
        end
        inherited rbPeriodo: TGroupBox
          Visible = True
        end
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1059
    Height = 476
    ExplicitWidth = 1059
    ExplicitHeight = 476
    inherited pcItem: TRzPageControl
      Width = 1051
      Height = 468
      OnChange = pcItemChange
      ExplicitWidth = 1051
      ExplicitHeight = 468
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1049
        ExplicitHeight = 447
        inherited pPesquisa: TRzPanel
          Top = 381
          Width = 1049
          ExplicitTop = 381
          ExplicitWidth = 1049
          inherited Label1: TLabel
            Width = 1041
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 928
            ExplicitLeft = 928
          end
          inherited rbPesquisa: TRzPanel
            Width = 1041
            ExplicitWidth = 1041
          end
          inherited edPesquisa: TMaskEdit
            Width = 924
            ExplicitWidth = 924
          end
        end
        inherited Panel2: TPanel
          Width = 1049
          ExplicitWidth = 1049
          inherited Label3: TLabel
            Width = 911
            ExplicitLeft = 1327
          end
        end
        inherited dbDados: TcxGrid
          Width = 1049
          Height = 361
          ExplicitWidth = 1049
          ExplicitHeight = 361
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALBINS
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALCX
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1SUBTOTAL
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALFUNRURAL
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALDEBITO
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALCREDITO
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALARECEBER
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1LOTEORIGEM: TcxGridDBColumn
              DataBinding.FieldName = 'LOTEORIGEM'
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
            end
            object dbDadosDBTableView1TOTALBINS: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALBINS'
              Width = 70
            end
            object dbDadosDBTableView1TOTALCX: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCX'
              Width = 70
            end
            object dbDadosDBTableView1SUBTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'SUBTOTAL'
              Width = 100
            end
            object dbDadosDBTableView1TOTALFUNRURAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALFUNRURAL'
              Width = 100
            end
            object dbDadosDBTableView1TOTALDEBITO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALDEBITO'
              Width = 100
            end
            object dbDadosDBTableView1TOTALCREDITO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCREDITO'
              Width = 100
            end
            object dbDadosDBTableView1TOTALARECEBER: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALARECEBER'
              Width = 100
            end
            object dbDadosDBTableView1DTLOTEINI: TcxGridDBColumn
              DataBinding.FieldName = 'DTLOTEINI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DTLOTEFIM: TcxGridDBColumn
              DataBinding.FieldName = 'DTLOTEFIM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DTPRECOINI: TcxGridDBColumn
              DataBinding.FieldName = 'DTPRECOINI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DTPRECOFIM: TcxGridDBColumn
              DataBinding.FieldName = 'DTPRECOFIM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DTFINANINI: TcxGridDBColumn
              DataBinding.FieldName = 'DTFINANINI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DTFINANFIM: TcxGridDBColumn
              DataBinding.FieldName = 'DTFINANFIM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRODCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VARIECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VARIECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1INDUSOPCAO: TcxGridDBColumn
              DataBinding.FieldName = 'INDUSOPCAO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1INDUSQTDE: TcxGridDBColumn
              DataBinding.FieldName = 'INDUSQTDE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1INDUSPER: TcxGridDBColumn
              DataBinding.FieldName = 'INDUSPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1INDUSMUL: TcxGridDBColumn
              DataBinding.FieldName = 'INDUSMUL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1INDUSTOL: TcxGridDBColumn
              DataBinding.FieldName = 'INDUSTOL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SACOLOPCAO: TcxGridDBColumn
              DataBinding.FieldName = 'SACOLOPCAO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SACOLQTDE: TcxGridDBColumn
              DataBinding.FieldName = 'SACOLQTDE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SACOLPER: TcxGridDBColumn
              DataBinding.FieldName = 'SACOLPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SACOLMUL: TcxGridDBColumn
              DataBinding.FieldName = 'SACOLMUL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SACOLTOL: TcxGridDBColumn
              DataBinding.FieldName = 'SACOLTOL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALKGBRU: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALKGBRU'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALKGLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALKGLIQ'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALMEDIA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALMEDIA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALEMBAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALEMBAL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALOPER: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALOPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALCOMIS: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCOMIS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PERFUNRURAL: TcxGridDBColumn
              DataBinding.FieldName = 'PERFUNRURAL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALMULTA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALMULTA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TOTALLIQUIDO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALLIQUIDO'
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
            object dbDadosDBTableView1REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'REGISTRO'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1049
        ExplicitHeight = 447
        inherited pDados: TPanel
          Width = 1049
          Height = 81
          Align = alTop
          BevelOuter = bvRaised
          ExplicitWidth = 1049
          ExplicitHeight = 81
          object gbVariedade: TGroupBox
            Left = 537
            Top = 3
            Width = 240
            Height = 34
            Caption = ' Variedade '
            TabOrder = 2
            OnExit = gbVariedadeExit
            inline frmPesquisaVar: TfrmPesquisa
              Left = 5
              Top = 14
              Width = 232
              Height = 16
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
              ExplicitWidth = 232
              ExplicitHeight = 16
              inherited SpeedButton1: TSpeedButton
                Left = 211
                Height = 16
                ExplicitLeft = 194
                ExplicitTop = 0
              end
              inherited edtPesquisa: TEdit
                Width = 205
                Height = 16
                CharCase = ecUpperCase
                ExplicitWidth = 205
                ExplicitHeight = 16
              end
              inherited ApplicationEvents1: TApplicationEvents
                Left = 204
                Top = 13
              end
            end
          end
          object gbProdutor: TGroupBox
            Left = 178
            Top = 3
            Width = 353
            Height = 34
            Caption = ' Produtor '
            TabOrder = 1
            OnExit = gbProdutorExit
            inline frmPesquisaProd: TfrmPesquisa
              Left = 2
              Top = 15
              Width = 349
              Height = 17
              Align = alClient
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
              ExplicitLeft = 2
              ExplicitTop = 15
              ExplicitWidth = 349
              ExplicitHeight = 17
              inherited SpeedButton1: TSpeedButton
                Left = 328
                Height = 17
                ExplicitLeft = 267
                ExplicitTop = 0
                ExplicitHeight = 15
              end
              inherited edtPesquisa: TEdit
                Width = 328
                Height = 17
                Align = alClient
                CharCase = ecUpperCase
                ExplicitWidth = 328
                ExplicitHeight = 17
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 169
            Top = 39
            Width = 208
            Height = 38
            Caption = ' Data Classifica'#231#227'o '
            TabOrder = 4
            object Label6: TLabel
              Left = 102
              Top = 17
              Width = 8
              Height = 13
              Caption = #224
              Transparent = True
              Visible = False
            end
            object dtpClaIni: TDateTimePicker
              Left = 8
              Top = 14
              Width = 90
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object dtpClafim: TDateTimePicker
              Left = 112
              Top = 14
              Width = 90
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
            end
          end
          object GroupBox5: TGroupBox
            Left = 707
            Top = 39
            Width = 198
            Height = 38
            Caption = ' Per'#237'odo Financeiro '
            TabOrder = 6
            Visible = False
            object Label11: TLabel
              Left = 95
              Top = 17
              Width = 8
              Height = 13
              Caption = #224
              Transparent = True
            end
            object dtpFinini: TDateTimePicker
              Left = 5
              Top = 14
              Width = 90
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object dtpFinFim: TDateTimePicker
              Left = 105
              Top = 14
              Width = 90
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox8: TGroupBox
            Left = 5
            Top = 39
            Width = 159
            Height = 38
            Caption = ' Data Acerto/Entrada '
            TabOrder = 3
            object dtpDate: TDateTimePicker
              Left = 13
              Top = 14
              Width = 92
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object cbVarieClone: TCheckBox
            Left = 790
            Top = 11
            Width = 76
            Height = 16
            Hint = 
              'Marcando essa op'#231#227'o acumular'#225' por tamanho todas as variedades + ' +
              'clones. Ex.: Variedade 10+11+12...'
            Caption = '+ Clones'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            Visible = False
            OnClick = cbVarieCloneClick
          end
          object GroupBox10: TGroupBox
            Left = 506
            Top = 39
            Width = 198
            Height = 38
            Caption = ' Per'#237'odo Pre'#231'o M'#233'dio '
            TabOrder = 5
            Visible = False
            object Label29: TLabel
              Left = 95
              Top = 17
              Width = 8
              Height = 13
              Caption = #224
              Transparent = True
            end
            object dtpPreIni: TDateTimePicker
              Left = 5
              Top = 14
              Width = 90
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object dtpPreFim: TDateTimePicker
              Left = 105
              Top = 14
              Width = 90
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object gbLote: TGroupBox
            Left = 6
            Top = 3
            Width = 167
            Height = 37
            Caption = ' Lote classifica'#231#227'o '
            TabOrder = 0
            TabStop = True
            object sbLoteclas: TSpeedButton
              Tag = 4
              Left = 75
              Top = 12
              Width = 84
              Height = 22
              Cursor = crHandPoint
              Hint = 'Importa lote de classifica'#231#227'o'
              Caption = 'Importar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                3333777777777777333333399033333333333337773333333333333903333333
                3333333773333333333333303333333333333337333333333333}
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = sbLoteclasClick
            end
            object DBEdit20: TDBEdit
              Left = 5
              Top = 17
              Width = 61
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'LOTEORIGEM'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
          object gbRegistro: TGroupBox
            Left = 948
            Top = 3
            Width = 84
            Height = 34
            Caption = ' Registro '
            Enabled = False
            TabOrder = 8
            object DBEdit14: TDBEdit
              Left = 2
              Top = 15
              Width = 80
              Height = 17
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'NUMERO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 81
          Width = 1049
          Height = 285
          ActivePage = tab_produto
          Align = alClient
          TabOrder = 1
          object tab_produto: TTabSheet
            Caption = 'Produtos'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label10: TLabel
              Left = 51
              Top = 360
              Width = 80
              Height = 13
              Caption = '(Total Bins.)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 1041
              Height = 257
              Align = alClient
              DataSource = dsitem
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnColExit = DBGrid1ColExit
              OnEnter = DBGrid1Enter
              OnExit = DBGrid1Exit
              OnKeyDown = DBGrid1KeyDown
              OnKeyPress = DBGrid1KeyPress
              Columns = <
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PRODDES'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Categoria'
                  Title.Color = 13878195
                  Width = 120
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Color = 15329769
                  Expanded = False
                  FieldName = 'vTamDes'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Tam'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PESO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Peso kg'
                  Title.Color = 13878195
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'QTDEKG'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.Kg'
                  Title.Color = 13878195
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRMEDIA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o kg'
                  Title.Color = 13878195
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRCAIXA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  PopupMenu = PopupMenu1
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor cx'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'VLRTOTAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Total'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PREEMBAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Pr.Emb'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'VLREMBAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Emb.'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PREOPER'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Pr.Oper'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'VLROPER'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Oper.'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERCOMIS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = '%Com'
                  Title.Color = 13878195
                  Width = 45
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'VLRCOMIS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Com.'
                  Title.Color = 13878195
                  Width = 57
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'VLRLIQUIDO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.L'#237'quido'
                  Title.Color = 13878195
                  Width = 70
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PRELIQUIDO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Pr.M'#233'dio'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end>
            end
          end
          object tab_Classi: TTabSheet
            Caption = 'Classifica'#231#227'o'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 289
              Height = 257
              Align = alLeft
              DataSource = dsorigem
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Data'
                  Title.Color = 13878195
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOTE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Lote'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.Emb.'
                  Title.Color = 13878195
                  Width = 90
                  Visible = True
                end>
            end
          end
          object Tab_finan: TTabSheet
            Caption = 'Financeiro'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 737
              Height = 257
              Align = alLeft
              DataSource = dsfinan
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu2
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Data'
                  Title.Color = 13878195
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Hist'#243'rico'
                  Title.Color = 13878195
                  Width = 400
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRDEBITO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.D'#233'bito'
                  Title.Color = 13878195
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRCREDITO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Cr'#233'dito'
                  Title.Color = 13878195
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 366
          Width = 1049
          Height = 81
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label15: TLabel
            Left = 355
            Top = 1
            Width = 72
            Height = 13
            Caption = 'Total Oper.'
            Transparent = True
          end
          object Label14: TLabel
            Left = 262
            Top = 1
            Width = 81
            Height = 13
            Caption = 'Total Embal.'
            Transparent = True
          end
          object Label13: TLabel
            Left = 159
            Top = 1
            Width = 55
            Height = 13
            Caption = 'Vlr.Total'
            Transparent = True
          end
          object Label9: TLabel
            Left = 81
            Top = 1
            Width = 54
            Height = 13
            Caption = 'Qtde.kg.'
            Transparent = True
          end
          object Label7: TLabel
            Left = 6
            Top = 1
            Width = 53
            Height = 13
            Caption = 'Qtde cx.'
            Transparent = True
          end
          object Label17: TLabel
            Left = 446
            Top = 1
            Width = 80
            Height = 13
            Caption = 'Total Comis.'
            Transparent = True
          end
          object Label18: TLabel
            Left = 80
            Top = 36
            Width = 74
            Height = 13
            Caption = 'M'#233'dia Emb.'
            Transparent = True
          end
          object Label19: TLabel
            Left = 537
            Top = 1
            Width = 72
            Height = 13
            Caption = 'Total Multa'
            Transparent = True
          end
          object Label20: TLabel
            Left = 621
            Top = 1
            Width = 84
            Height = 13
            Caption = 'Total L'#237'quido'
            Transparent = True
          end
          object Label21: TLabel
            Left = 183
            Top = 36
            Width = 76
            Height = 13
            Caption = '%Fun.Rural'
            Transparent = True
          end
          object Label22: TLabel
            Left = 262
            Top = 36
            Width = 84
            Height = 13
            Caption = 'Vlr.Fun.Rural'
            Transparent = True
          end
          object Label23: TLabel
            Left = 355
            Top = 36
            Width = 79
            Height = 13
            Caption = 'Total D'#233'bito'
            Transparent = True
          end
          object Label24: TLabel
            Left = 446
            Top = 36
            Width = 84
            Height = 13
            Caption = 'Total Cr'#233'dito'
            Transparent = True
          end
          object Label25: TLabel
            Left = 537
            Top = 36
            Width = 87
            Height = 13
            Caption = 'Vlr.'#224' Receber'
            Transparent = True
          end
          object Label8: TLabel
            Left = 6
            Top = 36
            Width = 66
            Height = 13
            Caption = 'Qtde Emb.'
            Transparent = True
          end
          object DBEdit13: TDBEdit
            Left = 446
            Top = 15
            Width = 85
            Height = 20
            CharCase = ecUpperCase
            Color = 14671871
            DataField = 'TOTALCOMIS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit8: TDBEdit
            Left = 355
            Top = 15
            Width = 85
            Height = 20
            CharCase = ecUpperCase
            Color = 14671871
            DataField = 'TOTALOPER'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit12: TDBEdit
            Left = 262
            Top = 15
            Width = 85
            Height = 20
            CharCase = ecUpperCase
            Color = 14671871
            DataField = 'TOTALEMBAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit7: TDBEdit
            Left = 159
            Top = 15
            Width = 100
            Height = 20
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'TOTALMEDIA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit9: TDBEdit
            Left = 80
            Top = 15
            Width = 75
            Height = 20
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'TOTALKGBRU'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit6: TDBEdit
            Left = 6
            Top = 15
            Width = 70
            Height = 20
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'TOTALCX'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit4: TDBEdit
            Left = 537
            Top = 15
            Width = 78
            Height = 20
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'TOTALMULTA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnExit = DBEdit4Exit
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit10: TDBEdit
            Left = 621
            Top = 15
            Width = 100
            Height = 20
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'SUBTOTAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit11: TDBEdit
            Left = 183
            Top = 50
            Width = 76
            Height = 20
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'PERFUNRURAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnExit = DBEdit11Exit
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit15: TDBEdit
            Left = 262
            Top = 50
            Width = 85
            Height = 20
            CharCase = ecUpperCase
            Color = 14671871
            DataField = 'TOTALFUNRURAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit16: TDBEdit
            Left = 355
            Top = 50
            Width = 85
            Height = 20
            CharCase = ecUpperCase
            Color = 14671871
            DataField = 'TOTALDEBITO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit17: TDBEdit
            Left = 446
            Top = 50
            Width = 85
            Height = 20
            CharCase = ecUpperCase
            Color = 16766935
            DataField = 'TOTALCREDITO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit18: TDBEdit
            Left = 537
            Top = 50
            Width = 100
            Height = 20
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'TOTALARECEBER'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit5: TDBEdit
            Left = 6
            Top = 50
            Width = 70
            Height = 20
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'TOTALBINS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object Panel3: TPanel
            Left = 80
            Top = 50
            Width = 75
            Height = 20
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Color = 15329769
            ParentBackground = False
            TabOrder = 14
            object lblMedia: TLabel
              Left = 45
              Top = 2
              Width = 28
              Height = 13
              Align = alClient
              BiDiMode = bdRightToLeft
              Caption = '0,00'
              ParentBiDiMode = False
            end
          end
          object GroupBox1: TGroupBox
            Left = 929
            Top = 6
            Width = 84
            Height = 34
            Caption = ' Registro '
            Enabled = False
            TabOrder = 15
            Visible = False
            object DBEdit19: TDBEdit
              Left = 2
              Top = 15
              Width = 80
              Height = 17
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'NUMERO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    PacketRecords = 30
    AfterScroll = cdsDadosAfterScroll
    Left = 970
    Top = 152
    object cdsDadosREGISTRO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsDadosNUMERO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.NUMERO'
    end
    object cdsDadosDATA: TDateTimeField
      DisplayLabel = 'Data Lanc.'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTLOTEINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLOTEINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTLOTEFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLOTEFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTPRECOINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTPRECOINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTPRECOFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTPRECOFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTFINANINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFINANINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTFINANFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFINANFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODCOD'
      Visible = False
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODDES'
      Size = 50
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIECOD'
      Visible = False
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 14
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIEDES'
      Size = 30
    end
    object cdsDadosINDUSOPCAO: TStringField
      DisplayLabel = 'Ind.Op'#231#227'o'
      FieldName = 'INDUSOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSOPCAO'
      Visible = False
      Size = 1
    end
    object cdsDadosINDUSQTDE: TFloatField
      FieldName = 'INDUSQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSQTDE'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosINDUSPER: TFloatField
      FieldName = 'INDUSPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosINDUSMUL: TFloatField
      FieldName = 'INDUSMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSMUL'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosINDUSTOL: TFloatField
      FieldName = 'INDUSTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSTOL'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosSACOLOPCAO: TStringField
      FieldName = 'SACOLOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLOPCAO'
      Visible = False
      Size = 1
    end
    object cdsDadosSACOLQTDE: TFloatField
      FieldName = 'SACOLQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLQTDE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLPER: TFloatField
      FieldName = 'SACOLPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLMUL: TFloatField
      FieldName = 'SACOLMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLMUL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLTOL: TFloatField
      FieldName = 'SACOLTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLTOL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALBINS: TFloatField
      DisplayLabel = 'T.Bins'
      DisplayWidth = 7
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALCX: TFloatField
      DisplayLabel = 'Total cx.'
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALKGBRU: TFloatField
      FieldName = 'TOTALKGBRU'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGBRU'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALKGLIQ: TFloatField
      FieldName = 'TOTALKGLIQ'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGLIQ'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALMEDIA: TFloatField
      FieldName = 'TOTALMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMEDIA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALEMBAL: TFloatField
      FieldName = 'TOTALEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALEMBAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALOPER: TFloatField
      FieldName = 'TOTALOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALOPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALCOMIS: TFloatField
      FieldName = 'TOTALCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCOMIS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal'
      FieldName = 'SUBTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SUBTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPERFUNRURAL: TFloatField
      FieldName = 'PERFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PERFUNRURAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALFUNRURAL: TFloatField
      DisplayLabel = 'Fun.Rural'
      FieldName = 'TOTALFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALFUNRURAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALMULTA: TFloatField
      FieldName = 'TOTALMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMULTA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALLIQUIDO: TFloatField
      DisplayLabel = 'Vlr.Liquido'
      FieldName = 'TOTALLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALLIQUIDO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALDEBITO: TFloatField
      DisplayLabel = 'Vlr.D'#233'bito'
      FieldName = 'TOTALDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALDEBITO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALCREDITO: TFloatField
      DisplayLabel = 'Vlr.Cr'#233'dito'
      FieldName = 'TOTALCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCREDITO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALARECEBER: TFloatField
      DisplayLabel = 'Vlr.a Receber'
      FieldName = 'TOTALARECEBER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALARECEBER'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.ACESOCOD'
      Visible = False
    end
    object cdsDadosLOTEORIGEM: TIntegerField
      DisplayLabel = 'Lote Origem'
      FieldName = 'LOTEORIGEM'
    end
    object cdsDadosREGLOG: TMemoField
      FieldName = 'REGLOG'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 938
    Top = 150
  end
  inherited dsDados: TDataSource
    Top = 150
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from fecha_classif'
      'where indusopcao = '#39'C'#39
      'order by numero')
    Left = 906
    Top = 150
    object sqlDadosREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.NUMERO'
    end
    object sqlDadosDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DATA'
    end
    object sqlDadosDTLOTEINI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTLOTEINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEINI'
    end
    object sqlDadosDTLOTEFIM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTLOTEFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEFIM'
    end
    object sqlDadosDTPRECOINI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTPRECOINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOINI'
    end
    object sqlDadosDTPRECOFIM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTPRECOFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOFIM'
    end
    object sqlDadosDTFINANINI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTFINANINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANINI'
    end
    object sqlDadosDTFINANFIM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTFINANFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANFIM'
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODDES'
      Size = 50
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIECOD'
    end
    object sqlDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIEDES'
      Size = 30
    end
    object sqlDadosINDUSOPCAO: TStringField
      FieldName = 'INDUSOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSOPCAO'
      Size = 1
    end
    object sqlDadosINDUSQTDE: TFloatField
      FieldName = 'INDUSQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSQTDE'
    end
    object sqlDadosINDUSPER: TFloatField
      FieldName = 'INDUSPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSPER'
    end
    object sqlDadosINDUSMUL: TFloatField
      FieldName = 'INDUSMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSMUL'
    end
    object sqlDadosINDUSTOL: TFloatField
      FieldName = 'INDUSTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSTOL'
    end
    object sqlDadosSACOLOPCAO: TStringField
      FieldName = 'SACOLOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLOPCAO'
      Size = 1
    end
    object sqlDadosSACOLQTDE: TFloatField
      FieldName = 'SACOLQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLQTDE'
    end
    object sqlDadosSACOLPER: TFloatField
      FieldName = 'SACOLPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLPER'
    end
    object sqlDadosSACOLMUL: TFloatField
      FieldName = 'SACOLMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLMUL'
    end
    object sqlDadosSACOLTOL: TFloatField
      FieldName = 'SACOLTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLTOL'
    end
    object sqlDadosTOTALBINS: TFloatField
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
    end
    object sqlDadosTOTALCX: TFloatField
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
    end
    object sqlDadosTOTALKGBRU: TFloatField
      FieldName = 'TOTALKGBRU'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGBRU'
    end
    object sqlDadosTOTALKGLIQ: TFloatField
      FieldName = 'TOTALKGLIQ'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGLIQ'
    end
    object sqlDadosTOTALMEDIA: TFloatField
      FieldName = 'TOTALMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMEDIA'
    end
    object sqlDadosTOTALEMBAL: TFloatField
      FieldName = 'TOTALEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALEMBAL'
    end
    object sqlDadosTOTALOPER: TFloatField
      FieldName = 'TOTALOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALOPER'
    end
    object sqlDadosTOTALCOMIS: TFloatField
      FieldName = 'TOTALCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCOMIS'
    end
    object sqlDadosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SUBTOTAL'
    end
    object sqlDadosPERFUNRURAL: TFloatField
      FieldName = 'PERFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PERFUNRURAL'
    end
    object sqlDadosTOTALFUNRURAL: TFloatField
      FieldName = 'TOTALFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALFUNRURAL'
    end
    object sqlDadosTOTALMULTA: TFloatField
      FieldName = 'TOTALMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMULTA'
    end
    object sqlDadosTOTALLIQUIDO: TFloatField
      FieldName = 'TOTALLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALLIQUIDO'
    end
    object sqlDadosTOTALDEBITO: TFloatField
      FieldName = 'TOTALDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALDEBITO'
    end
    object sqlDadosTOTALCREDITO: TFloatField
      FieldName = 'TOTALCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCREDITO'
    end
    object sqlDadosTOTALARECEBER: TFloatField
      FieldName = 'TOTALARECEBER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALARECEBER'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.ACESOCOD'
    end
    object sqlDadosLOTEORIGEM: TIntegerField
      DisplayLabel = 'Lote Origem'
      FieldName = 'LOTEORIGEM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.LOTEORIGEM'
    end
    object sqlDadosREGLOG: TMemoField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REG_ID'
    end
  end
  object dsitem: TDataSource
    DataSet = cdsitem
    Left = 1002
    Top = 214
  end
  object cdsitem: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'LANCIT'
        DataType = ftInteger
      end
      item
        Name = 'PRODCOD'
        DataType = ftInteger
      end
      item
        Name = 'UNID'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PESO'
        DataType = ftFloat
      end
      item
        Name = 'CALIBRE'
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'QTDEKG'
        DataType = ftFloat
      end
      item
        Name = 'VLRMEDIA'
        DataType = ftFloat
      end
      item
        Name = 'VLRMEDIAKG'
        DataType = ftFloat
      end
      item
        Name = 'VLRTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'VLRTOTALKG'
        DataType = ftFloat
      end
      item
        Name = 'PREEMBAL'
        DataType = ftFloat
      end
      item
        Name = 'VLREMBAL'
        DataType = ftFloat
      end
      item
        Name = 'PREOPER'
        DataType = ftFloat
      end
      item
        Name = 'VLROPER'
        DataType = ftFloat
      end
      item
        Name = 'PERCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'VLRCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'PERMULTA'
        DataType = ftFloat
      end
      item
        Name = 'VLRMULTA'
        DataType = ftFloat
      end
      item
        Name = 'VLRLIQUIDO'
        DataType = ftFloat
      end
      item
        Name = 'PRELIQUIDO'
        DataType = ftFloat
      end
      item
        Name = 'PRODDES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VLRCAIXA'
        DataType = ftFloat
      end
      item
        Name = 'REGLOG'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'REG_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'xIndice'
        Fields = 'prodcod'
      end>
    IndexName = 'xIndice'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspitem'
    StoreDefs = True
    BeforePost = cdsitemBeforePost
    OnCalcFields = cdsitemCalcFields
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 214
    object cdsitemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.REGISTRO'
    end
    object cdsitemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsitemPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODCOD'
    end
    object cdsitemUNID: TStringField
      FieldName = 'UNID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.UNID'
      Size = 5
    end
    object cdsitemPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PESO'
      DisplayFormat = '#,0.##'
    end
    object cdsitemCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.CALIBRE'
    end
    object cdsitemQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDE'
      DisplayFormat = '#,0.##'
    end
    object cdsitemQTDEKG: TFloatField
      FieldName = 'QTDEKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDEKG'
      DisplayFormat = '#,0.##'
    end
    object cdsitemVLRMEDIA: TFloatField
      FieldName = 'VLRMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRMEDIAKG: TFloatField
      FieldName = 'VLRMEDIAKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIAKG'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRTOTALKG: TFloatField
      FieldName = 'VLRTOTALKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTALKG'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPREEMBAL: TFloatField
      FieldName = 'PREEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREEMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLREMBAL: TFloatField
      FieldName = 'VLREMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLREMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPREOPER: TFloatField
      FieldName = 'PREOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREOPER'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLROPER: TFloatField
      FieldName = 'VLROPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLROPER'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPERCOMIS: TFloatField
      FieldName = 'PERCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRCOMIS: TFloatField
      FieldName = 'VLRCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPERMULTA: TFloatField
      FieldName = 'PERMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRLIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPRELIQUIDO: TFloatField
      FieldName = 'PRELIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRELIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODDES'
      Size = 50
    end
    object cdsitemVLRCAIXA: TFloatField
      FieldName = 'VLRCAIXA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCAIXA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemvTamDes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vTamDes'
      ProviderFlags = []
      Size = 10
    end
    object cdsitemvClasCod: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vClasCod'
      ProviderFlags = []
    end
    object cdsitemvClasDes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vClasDes'
      ProviderFlags = []
      Size = 30
    end
    object cdsitemREGLOG: TMemoField
      FieldName = 'REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object cdsitemREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dspitem: TDataSetProvider
    DataSet = sqlitem
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 214
  end
  object sqlitem: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * '
      'from fecha_classif_item'
      'order by lancit')
    UpdateMode = upWhereKeyOnly
    Left = 906
    Top = 214
    object sqlitemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.REGISTRO'
    end
    object sqlitemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlitemPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODCOD'
    end
    object sqlitemUNID: TStringField
      FieldName = 'UNID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.UNID'
      Size = 5
    end
    object sqlitemPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PESO'
    end
    object sqlitemCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.CALIBRE'
    end
    object sqlitemQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDE'
    end
    object sqlitemQTDEKG: TFloatField
      FieldName = 'QTDEKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDEKG'
    end
    object sqlitemVLRMEDIA: TFloatField
      FieldName = 'VLRMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIA'
    end
    object sqlitemVLRMEDIAKG: TFloatField
      FieldName = 'VLRMEDIAKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIAKG'
    end
    object sqlitemVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTAL'
    end
    object sqlitemVLRTOTALKG: TFloatField
      FieldName = 'VLRTOTALKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTALKG'
    end
    object sqlitemPREEMBAL: TFloatField
      FieldName = 'PREEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREEMBAL'
    end
    object sqlitemVLREMBAL: TFloatField
      FieldName = 'VLREMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLREMBAL'
    end
    object sqlitemPREOPER: TFloatField
      FieldName = 'PREOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREOPER'
    end
    object sqlitemVLROPER: TFloatField
      FieldName = 'VLROPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLROPER'
    end
    object sqlitemPERCOMIS: TFloatField
      FieldName = 'PERCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERCOMIS'
    end
    object sqlitemVLRCOMIS: TFloatField
      FieldName = 'VLRCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCOMIS'
    end
    object sqlitemPERMULTA: TFloatField
      FieldName = 'PERMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERMULTA'
    end
    object sqlitemVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMULTA'
    end
    object sqlitemVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRLIQUIDO'
    end
    object sqlitemPRELIQUIDO: TFloatField
      FieldName = 'PRELIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRELIQUIDO'
    end
    object sqlitemPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODDES'
      Size = 50
    end
    object sqlitemVLRCAIXA: TFloatField
      FieldName = 'VLRCAIXA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCAIXA'
    end
    object sqlitemREGLOG: TMemoField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object sqlitemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.REG_ID'
    end
  end
  object dsorigem: TDataSource
    DataSet = cdsorigem
    Left = 1002
    Top = 182
  end
  object cdsorigem: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dsporigem'
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 182
    object cdsorigemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.REGISTRO'
    end
    object cdsorigemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsorigemLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.LOTE'
    end
    object cdsorigemDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.DATA'
    end
    object cdsorigemQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.QTDE'
      DisplayFormat = '#,0'
    end
    object cdsorigemREGLOG: TMemoField
      FieldName = 'REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object cdsorigemREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dsporigem: TDataSetProvider
    DataSet = sqlorigem
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 182
  end
  object sqlorigem: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from fecha_classif_orig'
      'order by lote')
    UpdateMode = upWhereKeyOnly
    Left = 906
    Top = 182
    object sqlorigemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.REGISTRO'
    end
    object sqlorigemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlorigemLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.LOTE'
    end
    object sqlorigemDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.DATA'
    end
    object sqlorigemQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.QTDE'
    end
    object sqlorigemREGLOG: TMemoField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object sqlorigemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ORIG.REG_ID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 936
    Top = 312
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      Visible = False
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 968
    Top = 312
    object MenuItem1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem2Click
    end
  end
  object sqlfinan: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from fecha_classif_finan'
      'order by data')
    UpdateMode = upWhereKeyOnly
    Left = 906
    Top = 246
    object sqlfinanREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.REGISTRO'
    end
    object sqlfinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlfinanDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.DATA'
    end
    object sqlfinanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.DESCRICAO'
      Size = 120
    end
    object sqlfinanVLRDEBITO: TFloatField
      FieldName = 'VLRDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.VLRDEBITO'
    end
    object sqlfinanVLRCREDITO: TFloatField
      FieldName = 'VLRCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.VLRCREDITO'
    end
    object sqlfinanMANUAL: TStringField
      FieldName = 'MANUAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.MANUAL'
      Size = 1
    end
    object sqlfinanREGLOG: TMemoField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object sqlfinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.REG_ID'
    end
  end
  object dspfinan: TDataSetProvider
    DataSet = sqlfinan
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 246
  end
  object cdsfinan: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspfinan'
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 246
    object cdsfinanREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.REGISTRO'
    end
    object cdsfinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsfinanDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsfinanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.DESCRICAO'
      Size = 120
    end
    object cdsfinanVLRDEBITO: TFloatField
      FieldName = 'VLRDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.VLRDEBITO'
      DisplayFormat = '#,0.00'
    end
    object cdsfinanVLRCREDITO: TFloatField
      FieldName = 'VLRCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.VLRCREDITO'
      DisplayFormat = '#,0.00'
    end
    object cdsfinanMANUAL: TStringField
      FieldName = 'MANUAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_FINAN.MANUAL'
      Size = 1
    end
    object cdsfinanREGLOG: TMemoField
      FieldName = 'REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object cdsfinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dsfinan: TDataSource
    DataSet = cdsfinan
    Left = 1002
    Top = 246
  end
  object ppDados: TppBDEPipeline
    DataSource = dsDadosRel
    UserName = 'Dados'
    Left = 864
    Top = 150
    object ppDadosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDadosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDadosppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 2
    end
    object ppDadosppField4: TppField
      FieldAlias = 'DTLOTEINI'
      FieldName = 'DTLOTEINI'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 3
    end
    object ppDadosppField5: TppField
      FieldAlias = 'DTLOTEFIM'
      FieldName = 'DTLOTEFIM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 4
    end
    object ppDadosppField6: TppField
      FieldAlias = 'DTPRECOINI'
      FieldName = 'DTPRECOINI'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 5
    end
    object ppDadosppField7: TppField
      FieldAlias = 'DTPRECOFIM'
      FieldName = 'DTPRECOFIM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 6
    end
    object ppDadosppField8: TppField
      FieldAlias = 'DTFINANINI'
      FieldName = 'DTFINANINI'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 7
    end
    object ppDadosppField9: TppField
      FieldAlias = 'DTFINANFIM'
      FieldName = 'DTFINANFIM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 8
    end
    object ppDadosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODCOD'
      FieldName = 'PRODCOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDadosppField11: TppField
      FieldAlias = 'PRODDES'
      FieldName = 'PRODDES'
      FieldLength = 50
      DisplayWidth = 20
      Position = 10
    end
    object ppDadosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'VARIECOD'
      FieldName = 'VARIECOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDadosppField13: TppField
      FieldAlias = 'VARIEDES'
      FieldName = 'VARIEDES'
      FieldLength = 30
      DisplayWidth = 14
      Position = 12
    end
    object ppDadosppField14: TppField
      FieldAlias = 'INDUSOPCAO'
      FieldName = 'INDUSOPCAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppDadosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSQTDE'
      FieldName = 'INDUSQTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDadosppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSPER'
      FieldName = 'INDUSPER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDadosppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSMUL'
      FieldName = 'INDUSMUL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDadosppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSTOL'
      FieldName = 'INDUSTOL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppDadosppField19: TppField
      FieldAlias = 'SACOLOPCAO'
      FieldName = 'SACOLOPCAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object ppDadosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACOLQTDE'
      FieldName = 'SACOLQTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDadosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACOLPER'
      FieldName = 'SACOLPER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDadosppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACOLMUL'
      FieldName = 'SACOLMUL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppDadosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACOLTOL'
      FieldName = 'SACOLTOL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppDadosppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALBINS'
      FieldName = 'TOTALBINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 7
      Position = 23
    end
    object ppDadosppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALCX'
      FieldName = 'TOTALCX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppDadosppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALKGBRU'
      FieldName = 'TOTALKGBRU'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppDadosppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALKGLIQ'
      FieldName = 'TOTALKGLIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppDadosppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALMEDIA'
      FieldName = 'TOTALMEDIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppDadosppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALEMBAL'
      FieldName = 'TOTALEMBAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppDadosppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALOPER'
      FieldName = 'TOTALOPER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppDadosppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALCOMIS'
      FieldName = 'TOTALCOMIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object ppDadosppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppDadosppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERFUNRURAL'
      FieldName = 'PERFUNRURAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppDadosppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALFUNRURAL'
      FieldName = 'TOTALFUNRURAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object ppDadosppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALMULTA'
      FieldName = 'TOTALMULTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object ppDadosppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALLIQUIDO'
      FieldName = 'TOTALLIQUIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object ppDadosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALDEBITO'
      FieldName = 'TOTALDEBITO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object ppDadosppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALCREDITO'
      FieldName = 'TOTALCREDITO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object ppDadosppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALARECEBER'
      FieldName = 'TOTALARECEBER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppDadosppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRECOD'
      FieldName = 'EMPRECOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppDadosppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACESOCOD'
      FieldName = 'ACESOCOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 40
    end
  end
  object ppOrigem: TppBDEPipeline
    DataSource = dsorigem
    UserName = 'Origem'
    Left = 864
    Top = 182
  end
  object ppItem: TppBDEPipeline
    DataSource = dsItemRel
    UserName = 'Item'
    Left = 864
    Top = 214
  end
  object ppFinan: TppBDEPipeline
    DataSource = dsfinan
    UserName = 'Finan'
    Left = 864
    Top = 246
    MasterDataPipelineName = 'ppDados'
  end
  object ppRelFecha: TppReport
    AutoStop = False
    DataPipeline = ppItem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRelFechaBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 824
    Top = 248
    Version = '20.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppItem'
    object ppTitleBand4: TppTitleBand
      BeforePrint = ppTitleBand4BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label51'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Acerto/Fechamento Produtor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 35719
        mmTop = 0
        mmWidth = 226748
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label401'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data acerto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 8467
        mmTop = 5556
        mmWidth = 29369
        BandType = 1
        LayerName = Foreground3
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 5556
        mmWidth = 22490
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label53'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Produtor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 15610
        mmTop = 10848
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground3
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRODDES'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 10848
        mmWidth = 185738
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label54'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 97896
        mmTop = 16669
        mmWidth = 19579
        BandType = 1
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DTLOTEINI'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 119592
        mmTop = 16669
        mmWidth = 23548
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 144198
        mmTop = 16669
        mmWidth = 2910
        BandType = 1
        LayerName = Foreground3
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DTLOTEFIM'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 149754
        mmTop = 16669
        mmWidth = 24342
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 66940
        mmTop = 22754
        mmWidth = 12435
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde.kg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 81756
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pr.M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 103981
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vlr.Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 126736
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Custo Embal.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 147373
        mmTop = 22754
        mmWidth = 21960
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Custo Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 169863
        mmTop = 22754
        mmWidth = 24077
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vlr.Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 195263
        mmTop = 22754
        mmWidth = 21167
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vlr.Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 218811
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vlr.L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 241036
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label48'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pre'#231'o M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 262996
        mmTop = 22754
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label49'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Calibre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 54769
        mmTop = 22754
        mmWidth = 10583
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label50'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o Classifica'#231#227'o/Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 1323
        mmTop = 16669
        mmWidth = 76200
        BandType = 1
        LayerName = Foreground3
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 27252
        mmWidth = 286280
        BandType = 1
        LayerName = Foreground3
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TODOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4995
        mmLeft = 39952
        mmTop = 10848
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground3
      end
    end
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRODDES'
        DataPipeline = ppItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 0
        mmWidth = 53711
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDE'
        DataPipeline = ppItem
        DisplayFormat = '0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3969
        mmLeft = 67469
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDEKG'
        DataPipeline = ppItem
        DisplayFormat = '0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 81492
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRMEDIA'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 103981
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRTOTAL'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 126736
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLREMBAL'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 149225
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLROPER'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 173832
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRCOMIS'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 196321
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText41'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRMULTA'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 218811
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRLIQUIDO'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 241036
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText43'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRELIQUIDO'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 263526
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'vTamDes'
        DataPipeline = ppItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport4
        TraverseAllData = False
        DataPipelineName = 'ppFinan'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 4233
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppFinan
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 296863
          PrinterSetup.PaperSize = 9
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppFinan'
          object ppTitleBand3: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 11113
            mmPrintPosition = 0
            object ppLabel56: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label56'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 5292
              mmTop = 5821
              mmWidth = 12435
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel57: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label57'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Descri'#231#227'o/Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 30427
              mmTop = 5821
              mmWidth = 34131
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel58: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label58'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Financeiro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 5292
              mmTop = 265
              mmWidth = 56092
              BandType = 1
              LayerName = Foreground
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 10054
              mmWidth = 286280
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel72: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label72'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 205317
              mmTop = 5821
              mmWidth = 23019
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel73: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label73'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 232569
              mmTop = 5821
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 286280
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel47: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label47'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Per'#237'odo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 97896
              mmTop = 265
              mmWidth = 19579
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText65: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText65'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DTFINANINI'
              DataPipeline = ppDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 119592
              mmTop = 265
              mmWidth = 23548
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel74: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label74'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = #224
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 144198
              mmTop = 265
              mmWidth = 2910
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText66: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText66'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DTFINANFIM'
              DataPipeline = ppDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 149754
              mmTop = 265
              mmWidth = 24342
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand5: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText49: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText49'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DATA'
              DataPipeline = ppFinan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3750
              mmLeft = 5027
              mmTop = 0
              mmWidth = 21960
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText50: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText50'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DESCRICAO'
              DataPipeline = ppFinan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3750
              mmLeft = 30163
              mmTop = 0
              mmWidth = 165894
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText51: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText51'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VLRDEBITO'
              DataPipeline = ppFinan
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3750
              mmLeft = 203465
              mmTop = 0
              mmWidth = 25000
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText52: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText52'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VLRCREDITO'
              DataPipeline = ppFinan
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3750
              mmLeft = 231511
              mmTop = 0
              mmWidth = 25000
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand4: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule1: TraCodeModule
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport3
        TraverseAllData = False
        DataPipelineName = 'ppItem'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8996
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppItem
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppItem'
          object ppTitleBand5: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand5: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 32808
            mmPrintPosition = 0
            object ppLabel59: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label1'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.cx.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 14817
              mmTop = 8202
              mmWidth = 19844
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText53: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALCX'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 38100
              mmTop = 8202
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel60: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label601'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 15610
              mmTop = 13229
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText54: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALKGBRU'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 38100
              mmTop = 13229
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel61: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Produtos.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 72231
              mmTop = 8202
              mmWidth = 43127
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText55: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALMEDIA'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 117475
              mmTop = 8202
              mmWidth = 26988
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel62: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label62'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Custo Embalagem.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66940
              mmTop = 13229
              mmWidth = 48419
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText56: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText56'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALEMBAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 117475
              mmTop = 13229
              mmWidth = 26988
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel63: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label63'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Custo Operacional.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 67204
              mmTop = 17992
              mmWidth = 48154
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText57: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText57'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALOPER'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 117475
              mmTop = 17992
              mmWidth = 26988
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel64: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label64'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Comiss'#227'o.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 71967
              mmTop = 22754
              mmWidth = 43392
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText58: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText58'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALCOMIS'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 117475
              mmTop = 22754
              mmWidth = 26988
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel65: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label65'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.SubTotal(+).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 157427
              mmTop = 8202
              mmWidth = 41540
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText59: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText59'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'SUBTOTAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 203465
              mmTop = 8202
              mmWidth = 24871
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel66: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Fun.Rural(-).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 157692
              mmTop = 13229
              mmWidth = 41275
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText60: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText601'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALFUNRURAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 203465
              mmTop = 13229
              mmWidth = 24871
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel67: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label4'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Multa.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 71438
              mmTop = 27517
              mmWidth = 43921
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText61: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALMULTA'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 117475
              mmTop = 27517
              mmWidth = 26988
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel68: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label5'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total D'#233'bito(-).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 156634
              mmTop = 17992
              mmWidth = 42598
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText62: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALDEBITO'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 203465
              mmTop = 17992
              mmWidth = 24871
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel69: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Cr'#233'dito(+).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 156634
              mmTop = 22754
              mmWidth = 42598
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText63: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALCREDITO'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 203465
              mmTop = 22754
              mmWidth = 24871
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel70: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label701'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total '#224' Receber.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 152136
              mmTop = 27516
              mmWidth = 47096
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText64: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALARECEBER'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 203465
              mmTop = 27516
              mmWidth = 24871
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line1'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7144
              mmWidth = 286280
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel71: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Fechamento/Totais'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 6615
              mmTop = 1058
              mmWidth = 50271
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line2'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 286280
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label11'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 10319
              mmTop = 17992
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText10'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALBINS'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 38100
              mmTop = 17992
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label8'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#233'dia Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 8996
              mmTop = 22754
              mmWidth = 25400
              BandType = 7
              LayerName = Foreground1
            end
            object ppVariable1: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'Variable1'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtDouble
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4763
              mmLeft = 38100
              mmTop = 22754
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label19'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#233'dia Vlr/kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 6350
              mmTop = 27517
              mmWidth = 28046
              BandType = 7
              LayerName = Foreground1
            end
            object ppVariable3: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'Variable3'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              DataType = dtDouble
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4763
              mmLeft = 38365
              mmTop = 27517
              mmWidth = 20902
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel43: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label43'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Ind'#250'stria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 237861
              mmTop = 8202
              mmWidth = 35719
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText37: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText302'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'INDUSTOL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 259821
              mmTop = 13229
              mmWidth = 18785
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText38'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'INDUSMUL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 260615
              mmTop = 17992
              mmWidth = 17992
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel44: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label44'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = '%:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 237596
              mmTop = 22754
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel45: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label45'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde. kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 237596
              mmTop = 13229
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel46: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label46'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde. Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 234686
              mmTop = 17992
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground1
            end
            object ppVariable4: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'Variable2'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              DataType = dtDouble
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 263261
              mmTop = 22754
              mmWidth = 15346
              BandType = 7
              LayerName = Foreground1
            end
          end
          object raCodeModule5: TraCodeModule
            object raProgramInfo1: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable1OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALBINS'#39'] >0 then'#13#10'  value := Dados['#39'TOTALKGBRU'#39'] / Dados['#39'TO' +
                'TALBINS'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable1'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
            object raProgramInfo2: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable3OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable3OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALKGBRU'#39'] >0 then'#13#10'  value := Dados['#39'SUBTOTAL'#39'] / Dados['#39'TOT' +
                'ALKGBRU'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable3'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
            object raProgramInfo3: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable2OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALKGBRU'#39'] > 0 then'#13#10'  Value := Dados['#39'INDUSTOL'#39'] / (Dados['#39'T' +
                'OTALKGBRU'#39'] + Dados['#39'INDUSTOL'#39']) * 100'#13#10'else'#13#10'  value := 0;'#13#10#13#10'e' +
                'nd;'#13#10
              raProgram.ComponentName = 'Variable2'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppNFC'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppNFC
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppNFC'
          object ppTitleBand6: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 12171
            mmPrintPosition = 0
            object ppLabel38: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label38'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Rela'#231#227'o N.F.Contra-Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 5292
              mmTop = 265
              mmWidth = 56092
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line101'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 286280
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel39: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label39'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 5027
              mmTop = 6615
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel76: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label76'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'N.F.N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 147373
              mmTop = 6615
              mmWidth = 21960
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel77: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label77'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 170127
              mmTop = 6615
              mmWidth = 16000
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel78: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label78'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Peso Liq.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 188384
              mmTop = 6615
              mmWidth = 16000
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel79: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label79'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 224896
              mmTop = 6615
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel80: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label80'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr. Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 247915
              mmTop = 6615
              mmWidth = 24000
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel81: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label81'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 29104
              mmTop = 6350
              mmWidth = 16140
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line14'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 11113
              mmWidth = 286280
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel40: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label40'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde. Liq.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 207169
              mmTop = 6615
              mmWidth = 16000
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand6: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText12'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DATA'
              DataPipeline = ppNFC
              DisplayFormat = 'mm/dd/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 5027
              mmTop = 0
              mmWidth = 19844
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText13'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DESCRICAO'
              DataPipeline = ppNFC
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 29104
              mmTop = 0
              mmWidth = 116417
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText14'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DOC'
              DataPipeline = ppNFC
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 147373
              mmTop = 0
              mmWidth = 20638
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText15'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'QTDE'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 170127
              mmTop = 0
              mmWidth = 16000
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText32'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'PESOLIQ'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 188384
              mmTop = 0
              mmWidth = 16000
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText33'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'UNIT'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 225161
              mmTop = 0
              mmWidth = 20000
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText34'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VALOR'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 251884
              mmTop = 0
              mmWidth = 20000
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText35'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'PESOKG'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3598
              mmLeft = 207169
              mmTop = 0
              mmWidth = 16000
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand6: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppDBCalc11: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc11'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'QTDE'
              DataPipeline = ppNFC
              DisplayFormat = '0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3704
              mmLeft = 161925
              mmTop = 794
              mmWidth = 24000
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc12: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc12'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'PESOKG'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3704
              mmLeft = 198967
              mmTop = 794
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc13: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc13'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VALOR'
              DataPipeline = ppNFC
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppNFC'
              mmHeight = 3704
              mmLeft = 247915
              mmTop = 794
              mmWidth = 24000
              BandType = 7
              LayerName = Foreground2
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line15'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 165629
              mmTop = 0
              mmWidth = 109802
              BandType = 7
              LayerName = Foreground2
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PRODDES'
      DataPipeline = ppItem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppItem'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'QTDE'
          DataPipeline = ppItem
          DisplayFormat = '0.##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 62177
          mmTop = 265
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'QTDEKG'
          DataPipeline = ppItem
          DisplayFormat = '0.##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 82815
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLRTOTAL'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 127794
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLRLIQUIDO'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 242094
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppVariable5: TppVariable
          DesignLayer = ppDesignLayer4
          UserName = 'Variable5'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtDouble
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 269622
          mmTop = 265
          mmWidth = 14012
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line11'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 0
          mmWidth = 286280
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLREMBAL'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 150284
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLROPER'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 174890
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLRCOMIS'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 197380
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLRMULTA'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3810
          mmLeft = 219869
          mmTop = 265
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable5OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable5OnCalc(var Value: Variant);'#13#10'begin'#13#10'  if DBCa' +
          'lc2.Value > 0 then'#13#10'    Value := DBCalc4.Value / DBCalc2.Value'#13#10 +
          '  else'#13#10'    Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable5'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppRelFechaResumo: TppReport
    AutoStop = False
    DataPipeline = ppItem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 792
    Top = 248
    Version = '20.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppItem'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label401'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data acerto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 8467
        mmTop = 6350
        mmWidth = 29369
        BandType = 1
        LayerName = Foreground6
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 6350
        mmWidth = 22490
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label53'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Produtor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 15610
        mmTop = 12171
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground6
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRODDES'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 12171
        mmWidth = 156898
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label54'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 97896
        mmTop = 19050
        mmWidth = 19579
        BandType = 1
        LayerName = Foreground6
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DTLOTEINI'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 6085
        mmLeft = 119592
        mmTop = 19050
        mmWidth = 23548
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label55'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 144198
        mmTop = 19050
        mmWidth = 2910
        BandType = 1
        LayerName = Foreground6
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DTLOTEFIM'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 149754
        mmTop = 19050
        mmWidth = 24342
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 79904
        mmTop = 26723
        mmWidth = 16140
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde.kg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 98425
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pr.M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vlr.Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143404
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label49'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Calibre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 61648
        mmTop = 26723
        mmWidth = 16140
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label50'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o Classifica'#231#227'o/Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 5027
        mmTop = 19050
        mmWidth = 76200
        BandType = 1
        LayerName = Foreground6
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 31221
        mmWidth = 199000
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Acerto/Fechamento Produtor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 196850
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = '% Quilo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 166423
        mmTop = 26723
        mmWidth = 16404
        BandType = 1
        LayerName = Foreground6
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TODOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4995
        mmLeft = 39952
        mmTop = 12171
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground6
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRODDES'
        DataPipeline = ppItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 0
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDE'
        DataPipeline = ppItem
        DisplayFormat = '0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 79375
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDEKG'
        DataPipeline = ppItem
        DisplayFormat = '0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 98161
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRELIQUIDO'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 119592
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRLIQUIDO'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 143404
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'vTamDes'
        DataPipeline = ppItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3725
        mmLeft = 62971
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground6
      end
      object ppVariable6: TppVariable
        DesignLayer = ppDesignLayer7
        UserName = 'Variable6'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer7
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppFinan'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground6
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppFinan
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296863
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppFinan'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13758
            mmPrintPosition = 0
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label56'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 5292
              mmTop = 8467
              mmWidth = 12435
              BandType = 1
              LayerName = Foreground4
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label57'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Descri'#231#227'o/Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 25135
              mmTop = 8467
              mmWidth = 34131
              BandType = 1
              LayerName = Foreground4
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line4'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 12700
              mmWidth = 198120
              BandType = 1
              LayerName = Foreground4
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label72'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 145257
              mmTop = 8467
              mmWidth = 23019
              BandType = 1
              LayerName = Foreground4
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label73'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 172509
              mmTop = 8467
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground4
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line3'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 1058
              mmWidth = 199000
              BandType = 1
              LayerName = Foreground4
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label1'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Per'#237'odo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 97896
              mmTop = 1588
              mmWidth = 19579
              BandType = 1
              LayerName = Foreground4
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText11'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DTFINANINI'
              DataPipeline = ppDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 119592
              mmTop = 1588
              mmWidth = 23548
              BandType = 1
              LayerName = Foreground4
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label2'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = #224
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 144198
              mmTop = 1588
              mmWidth = 2910
              BandType = 1
              LayerName = Foreground4
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText29'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DTFINANFIM'
              DataPipeline = ppDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 149754
              mmTop = 1588
              mmWidth = 24342
              BandType = 1
              LayerName = Foreground4
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label31'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Financeiro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 6615
              mmTop = 1323
              mmWidth = 50271
              BandType = 1
              LayerName = Foreground4
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText49'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DATA'
              DataPipeline = ppFinan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 5027
              mmTop = 0
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText50'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DESCRICAO'
              DataPipeline = ppFinan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 25135
              mmTop = 0
              mmWidth = 116946
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText51'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VLRDEBITO'
              DataPipeline = ppFinan
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 143404
              mmTop = 0
              mmWidth = 24871
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText52'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VLRCREDITO'
              DataPipeline = ppFinan
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 171450
              mmTop = 0
              mmWidth = 24871
              BandType = 4
              LayerName = Foreground4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule3: TraCodeModule
          end
          object ppDesignLayers5: TppDesignLayers
            object ppDesignLayer5: TppDesignLayer
              UserName = 'Foreground4'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport5: TppSubReport
        DesignLayer = ppDesignLayer7
        UserName = 'SubReport5'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppFinan'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5292
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground6
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = ppFinan
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296863
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppFinan'
          object ppTitleBand7: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 47361
            mmPrintPosition = 0
            object ppLabel86: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label59'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.cx.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 8996
              mmTop = 9790
              mmWidth = 20638
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText71: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText53'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALCX'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 32544
              mmTop = 9790
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel87: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label60'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 10583
              mmTop = 15081
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText72: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText201'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALKGBRU'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 32544
              mmTop = 15081
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel88: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label61'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Produtos.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 66940
              mmTop = 10054
              mmWidth = 43127
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText73: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText55'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'SUBTOTAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 112184
              mmTop = 10054
              mmWidth = 26988
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel89: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label66'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Fun.Rural(-).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 67469
              mmTop = 21167
              mmWidth = 42598
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText74: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText60'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALFUNRURAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 112448
              mmTop = 21167
              mmWidth = 26723
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel90: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label67'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Multa.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66940
              mmTop = 15875
              mmWidth = 43127
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText75: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText61'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALMULTA'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 112184
              mmTop = 15875
              mmWidth = 26988
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel91: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label68'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total D'#233'bito(-).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66675
              mmTop = 28840
              mmWidth = 43392
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText76: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText301'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALDEBITO'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 112184
              mmTop = 28840
              mmWidth = 26988
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel92: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label69'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Cr'#233'dito(+).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66940
              mmTop = 34660
              mmWidth = 43127
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText77: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText63'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALCREDITO'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 111654
              mmTop = 34660
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel93: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label70'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total '#224' Receber.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 66675
              mmTop = 39952
              mmWidth = 43392
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText78: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText64'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALARECEBER'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 111390
              mmTop = 39952
              mmWidth = 27781
              BandType = 1
              LayerName = Foreground5
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer6
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7408
              mmWidth = 198173
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel94: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label71'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Fechamento/Totais'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 6615
              mmTop = 1323
              mmWidth = 50271
              BandType = 1
              LayerName = Foreground5
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer6
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 198173
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel95: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label15'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 6615
              mmTop = 20902
              mmWidth = 23019
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText79: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText102'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALBINS'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 32544
              mmTop = 20902
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel96: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label17'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#233'dia Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 3969
              mmTop = 26194
              mmWidth = 25665
              BandType = 1
              LayerName = Foreground5
            end
            object ppVariable8: TppVariable
              DesignLayer = ppDesignLayer6
              UserName = 'Variable2'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtDouble
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4763
              mmLeft = 32544
              mmTop = 26194
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel97: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label20'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#233'dia Vlr/kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 1588
              mmTop = 31221
              mmWidth = 28046
              BandType = 1
              LayerName = Foreground5
            end
            object ppVariable9: TppVariable
              DesignLayer = ppDesignLayer6
              UserName = 'Variable4'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              DataType = dtDouble
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4763
              mmLeft = 32544
              mmTop = 31221
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label35'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Ind'#250'stria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 150019
              mmTop = 10054
              mmWidth = 35719
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText30'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'INDUSTOL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 171980
              mmTop = 15875
              mmWidth = 18521
              BandType = 1
              LayerName = Foreground5
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText602'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'INDUSMUL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 172773
              mmTop = 21167
              mmWidth = 17727
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label36'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = '%:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 149754
              mmTop = 26194
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label41'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde. kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 149754
              mmTop = 15875
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground5
            end
            object ppLabel42: TppLabel
              DesignLayer = ppDesignLayer6
              UserName = 'Label42'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde. Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 146579
              mmTop = 21167
              mmWidth = 24342
              BandType = 1
              LayerName = Foreground5
            end
            object ppVariable2: TppVariable
              DesignLayer = ppDesignLayer6
              UserName = 'Variable1'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              DataType = dtDouble
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 175419
              mmTop = 26194
              mmWidth = 15081
              BandType = 1
              LayerName = Foreground5
            end
          end
          object ppDetailBand7: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand7: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule6: TraCodeModule
            object raProgramInfo5: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable2OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALBINS'#39'] > 0 then'#13#10'  Value := Dados['#39'TOTALKGBRU'#39'] / Dados['#39'T' +
                'OTALBINS'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable2'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
            object raProgramInfo6: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable4OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable4OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALKGBRU'#39'] > 0 then'#13#10'  Value := Dados['#39'SUBTOTAL'#39'] / Dados['#39'TO' +
                'TALKGBRU'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable4'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
            object raProgramInfo7: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable1OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALKGBRU'#39'] > 0 then'#13#10'  Value := Dados['#39'INDUSTOL'#39'] / (Dados['#39'T' +
                'OTALKGBRU'#39'] + Dados['#39'INDUSTOL'#39']) * 100'#13#10'else'#13#10'  value := 0;'#13#10#13#10'e' +
                'nd;'#13#10
              raProgram.ComponentName = 'Variable1'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
          end
          object ppDesignLayers6: TppDesignLayers
            object ppDesignLayer6: TppDesignLayer
              UserName = 'Foreground5'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PRODDES'
      DataPipeline = ppItem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppItem'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line12'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 98954
          mmTop = 529
          mmWidth = 94456
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc9: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'QTDEKG'
          DataPipeline = ppItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3704
          mmLeft = 91546
          mmTop = 1852
          mmWidth = 26988
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc10: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLRLIQUIDO'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3704
          mmLeft = 137584
          mmTop = 1588
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppVariable7: TppVariable
          DesignLayer = ppDesignLayer7
          UserName = 'Variable7'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtDouble
          DisplayFormat = '#,0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 166423
          mmTop = 1588
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
      end
    end
    object raCodeModule4: TraCodeModule
      object raProgramInfo8: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable6OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable6OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
          #39'TOTALKGBRU'#39'] > 0 then'#13#10'  Value := Item['#39'QTDEKG'#39'] / Dados['#39'TOTAL' +
          'KGBRU'#39'] * 100'#13#10'else'#13#10'  Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable6'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo9: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable7OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable7OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
          #39'TOTALKGBRU'#39'] > 0 then'#13#10'  Value := DBCalc9.Value / Dados['#39'TOTALK' +
          'GBRU'#39'] * 100'#13#10'else'#13#10'  Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable7'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppNFC: TppDBPipeline
    UserName = 'NFC'
    Left = 864
    Top = 278
  end
  object PopupMenu3: TPopupMenu
    Left = 96
    Top = 288
    object LanamentosintticoCategoria1: TMenuItem
      Tag = 30
      Caption = 'Lan'#231'amento sint'#233'tico - Categoria'
      OnClick = Lanamentoanaltico1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Lanamentoanaltico1: TMenuItem
      Tag = 10
      Caption = 'Lan'#231'amento anal'#237'tico'
      Visible = False
      OnClick = Lanamentoanaltico1Click
    end
    object Lanamentosinttico1: TMenuItem
      Tag = 20
      Caption = 'Lan'#231'amento sint'#233'tico'
      OnClick = Lanamentoanaltico1Click
    end
    object LanamentoanalticoNFC1: TMenuItem
      Tag = 181
      Caption = 'Lan'#231'amento anal'#237'tico + NFC'
      Visible = False
      OnClick = Lanamentoanaltico1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PorProdutoranaltico1: TMenuItem
      Tag = 200
      Caption = 'Geral anal'#237'tico - por Produtor'
      Visible = False
      OnClick = PorProdutoranaltico1Click
    end
    object porProdutorSinttico1: TMenuItem
      Tag = 300
      Caption = 'Geral Sint'#233'tico - por Produtor'
      OnClick = PorProdutoranaltico1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Geralanaltico1: TMenuItem
      Tag = 400
      Caption = 'Geral anal'#237'tico - todos Produtores'
      Visible = False
      OnClick = PorProdutoranaltico1Click
    end
    object Geralsinttico1: TMenuItem
      Tag = 500
      Caption = 'Geral sint'#233'tico - todos Produtores'
      OnClick = PorProdutoranaltico1Click
    end
  end
  object cdsDadosRel: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'xIndice'
        Fields = 'prodcod'
      end>
    IndexName = 'xIndice'
    Params = <>
    StoreDefs = True
    AfterOpen = cdsDadosAfterOpen
    BeforeClose = cdsDadosBeforeClose
    AfterCancel = cdsDadosAfterCancel
    AfterScroll = cdsDadosAfterScroll
    OnReconcileError = cdsDadosReconcileError
    Left = 698
    Top = 262
    object cdsDadosRelREGISTRO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGISTRO'
      Visible = False
    end
    object cdsDadosRelNUMERO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.NUMERO'
    end
    object cdsDadosRelDATA: TDateTimeField
      DisplayLabel = 'Data Lanc.'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTLOTEINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLOTEINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTLOTEFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLOTEFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTPRECOINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTPRECOINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTPRECOFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTPRECOFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTFINANINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFINANINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTFINANFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFINANFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODCOD'
      Visible = False
    end
    object cdsDadosRelPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODDES'
      Size = 50
    end
    object cdsDadosRelVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIECOD'
      Visible = False
    end
    object cdsDadosRelVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 14
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIEDES'
      Size = 30
    end
    object cdsDadosRelINDUSOPCAO: TStringField
      DisplayLabel = 'Ind.Op'#231#227'o'
      FieldName = 'INDUSOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSOPCAO'
      Visible = False
      Size = 1
    end
    object cdsDadosRelINDUSQTDE: TFloatField
      FieldName = 'INDUSQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSQTDE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelINDUSPER: TFloatField
      FieldName = 'INDUSPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelINDUSMUL: TFloatField
      FieldName = 'INDUSMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSMUL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelINDUSTOL: TFloatField
      FieldName = 'INDUSTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSTOL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLOPCAO: TStringField
      FieldName = 'SACOLOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLOPCAO'
      Visible = False
      Size = 1
    end
    object cdsDadosRelSACOLQTDE: TFloatField
      FieldName = 'SACOLQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLQTDE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLPER: TFloatField
      FieldName = 'SACOLPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLMUL: TFloatField
      FieldName = 'SACOLMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLMUL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLTOL: TFloatField
      FieldName = 'SACOLTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLTOL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALBINS: TFloatField
      DisplayLabel = 'T.Bins'
      DisplayWidth = 7
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALCX: TFloatField
      DisplayLabel = 'Total cx.'
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALKGBRU: TFloatField
      FieldName = 'TOTALKGBRU'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGBRU'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALKGLIQ: TFloatField
      FieldName = 'TOTALKGLIQ'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGLIQ'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALMEDIA: TFloatField
      FieldName = 'TOTALMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMEDIA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALEMBAL: TFloatField
      FieldName = 'TOTALEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALEMBAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALOPER: TFloatField
      FieldName = 'TOTALOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALOPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALCOMIS: TFloatField
      FieldName = 'TOTALCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCOMIS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal'
      FieldName = 'SUBTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SUBTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelPERFUNRURAL: TFloatField
      FieldName = 'PERFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PERFUNRURAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALFUNRURAL: TFloatField
      DisplayLabel = 'Fun.Rural'
      FieldName = 'TOTALFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALFUNRURAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALMULTA: TFloatField
      FieldName = 'TOTALMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMULTA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALLIQUIDO: TFloatField
      DisplayLabel = 'Vlr.Liquido'
      FieldName = 'TOTALLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALLIQUIDO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALDEBITO: TFloatField
      DisplayLabel = 'Vlr.D'#233'bito'
      FieldName = 'TOTALDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALDEBITO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALCREDITO: TFloatField
      DisplayLabel = 'Vlr.Cr'#233'dito'
      FieldName = 'TOTALCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCREDITO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALARECEBER: TFloatField
      DisplayLabel = 'Vlr.a Receber'
      FieldName = 'TOTALARECEBER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALARECEBER'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.EMPRECOD'
      Visible = False
    end
    object cdsDadosRelACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.ACESOCOD'
      Visible = False
    end
    object cdsDadosRelLOTEORIGEM: TIntegerField
      FieldName = 'LOTEORIGEM'
    end
  end
  object cdsItemRel: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'xIndice'
        Fields = 'prodcod'
      end>
    IndexName = 'xIndice'
    Params = <>
    StoreDefs = True
    OnReconcileError = cdsDadosReconcileError
    Left = 697
    Top = 294
    object cdsItemRelREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.REGISTRO'
    end
    object cdsItemRelLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.LANCIT'
    end
    object cdsItemRelPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODCOD'
    end
    object cdsItemRelUNID: TStringField
      FieldName = 'UNID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.UNID'
      Size = 5
    end
    object cdsItemRelPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PESO'
      DisplayFormat = '0'
    end
    object cdsItemRelCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.CALIBRE'
    end
    object cdsItemRelQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDE'
      DisplayFormat = '#,0.##'
    end
    object cdsItemRelQTDEKG: TFloatField
      FieldName = 'QTDEKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDEKG'
      DisplayFormat = '#,0.##'
    end
    object cdsItemRelVLRMEDIA: TFloatField
      FieldName = 'VLRMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIA'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRMEDIAKG: TFloatField
      FieldName = 'VLRMEDIAKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIAKG'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRTOTALKG: TFloatField
      FieldName = 'VLRTOTALKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTALKG'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPREEMBAL: TFloatField
      FieldName = 'PREEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREEMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLREMBAL: TFloatField
      FieldName = 'VLREMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLREMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPREOPER: TFloatField
      FieldName = 'PREOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREOPER'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLROPER: TFloatField
      FieldName = 'VLROPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLROPER'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPERCOMIS: TFloatField
      FieldName = 'PERCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRCOMIS: TFloatField
      FieldName = 'VLRCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPERMULTA: TFloatField
      FieldName = 'PERMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRLIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPRELIQUIDO: TFloatField
      FieldName = 'PRELIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRELIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODDES'
      Size = 50
    end
    object cdsItemRelVLRCAIXA: TFloatField
      FieldName = 'VLRCAIXA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCAIXA'
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelvClasDes: TStringField
      FieldName = 'vClasDes'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemRelvClasCod: TStringField
      FieldName = 'vClasCod'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemRelvTamDes: TStringField
      FieldName = 'vTamDes'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsDadosRel: TDataSource
    DataSet = cdsDados
    Left = 736
    Top = 262
  end
  object dsItemRel: TDataSource
    DataSet = cdsitem
    Left = 736
    Top = 294
  end
  object ppRelFechaCategoria: TppReport
    AutoStop = False
    DataPipeline = ppItem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 792
    Top = 280
    Version = '20.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppItem'
    object ppTitleBand8: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label401'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data acerto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 8467
        mmTop = 6350
        mmWidth = 29369
        BandType = 1
        LayerName = Foreground9
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 6350
        mmWidth = 22490
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label53'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Produtor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 15610
        mmTop = 12171
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground9
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRODDES'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 12171
        mmWidth = 156898
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 31750
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde.kg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 31750
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pr.M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 60590
        mmTop = 31750
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vlr.Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 83344
        mmTop = 31750
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label50'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Variedade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 13229
        mmTop = 18256
        mmWidth = 24606
        BandType = 1
        LayerName = Foreground9
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 36248
        mmWidth = 199000
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = '% Quilo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 106363
        mmTop = 31750
        mmWidth = 16404
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TODOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 5027
        mmLeft = 70379
        mmTop = 6615
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label102'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Label102'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 794
        mmTop = 0
        mmWidth = 195792
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label501'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Lote:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 22225
        mmTop = 23813
        mmWidth = 15610
        BandType = 1
        LayerName = Foreground9
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VARIEDES'
        DataPipeline = ppDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDados'
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 18256
        mmWidth = 84931
        BandType = 1
        LayerName = Foreground9
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label84'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Label84'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 39952
        mmTop = 23813
        mmWidth = 15155
        BandType = 1
        LayerName = Foreground9
      end
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand8: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand8: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppSubReport6: TppSubReport
        DesignLayer = ppDesignLayer10
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppFinan'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground9
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = ppFinan
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296863
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppFinan'
          object ppTitleBand9: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13758
            mmPrintPosition = 0
            object ppLabel107: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label56'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 5292
              mmTop = 8467
              mmWidth = 12435
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel108: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label57'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Descri'#231#227'o/Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 25135
              mmTop = 8467
              mmWidth = 34131
              BandType = 1
              LayerName = Foreground7
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer8
              UserName = 'Line4'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 12700
              mmWidth = 198120
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel109: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label72'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 145257
              mmTop = 8467
              mmWidth = 23019
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel110: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label73'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Valor Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 172509
              mmTop = 8467
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground7
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer8
              UserName = 'Line3'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 1058
              mmWidth = 199000
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel111: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label1'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Per'#237'odo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 97896
              mmTop = 1588
              mmWidth = 19579
              BandType = 1
              LayerName = Foreground7
            end
            object ppDBText83: TppDBText
              DesignLayer = ppDesignLayer8
              UserName = 'DBText11'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DTFINANINI'
              DataPipeline = ppDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 119592
              mmTop = 1588
              mmWidth = 23548
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel112: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label2'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = #224
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 144198
              mmTop = 1588
              mmWidth = 2910
              BandType = 1
              LayerName = Foreground7
            end
            object ppDBText84: TppDBText
              DesignLayer = ppDesignLayer8
              UserName = 'DBText29'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DTFINANFIM'
              DataPipeline = ppDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 149754
              mmTop = 1588
              mmWidth = 24342
              BandType = 1
              LayerName = Foreground7
            end
            object ppLabel113: TppLabel
              DesignLayer = ppDesignLayer8
              UserName = 'Label31'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Financeiro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 6615
              mmTop = 1323
              mmWidth = 50271
              BandType = 1
              LayerName = Foreground7
            end
          end
          object ppDetailBand9: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText85: TppDBText
              DesignLayer = ppDesignLayer8
              UserName = 'DBText49'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DATA'
              DataPipeline = ppFinan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 5027
              mmTop = 0
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground7
            end
            object ppDBText86: TppDBText
              DesignLayer = ppDesignLayer8
              UserName = 'DBText50'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'DESCRICAO'
              DataPipeline = ppFinan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 25135
              mmTop = 0
              mmWidth = 116946
              BandType = 4
              LayerName = Foreground7
            end
            object ppDBText87: TppDBText
              DesignLayer = ppDesignLayer8
              UserName = 'DBText51'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VLRDEBITO'
              DataPipeline = ppFinan
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 143404
              mmTop = 0
              mmWidth = 24871
              BandType = 4
              LayerName = Foreground7
            end
            object ppDBText88: TppDBText
              DesignLayer = ppDesignLayer8
              UserName = 'DBText52'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'VLRCREDITO'
              DataPipeline = ppFinan
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFinan'
              mmHeight = 3704
              mmLeft = 171450
              mmTop = 0
              mmWidth = 24871
              BandType = 4
              LayerName = Foreground7
            end
          end
          object ppSummaryBand9: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule7: TraCodeModule
          end
          object ppDesignLayers8: TppDesignLayers
            object ppDesignLayer8: TppDesignLayer
              UserName = 'Foreground7'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport7: TppSubReport
        DesignLayer = ppDesignLayer10
        UserName = 'SubReport5'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport6
        TraverseAllData = False
        DataPipelineName = 'ppFinan'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5292
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground9
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport7: TppChildReport
          AutoStop = False
          DataPipeline = ppFinan
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296863
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppFinan'
          object ppTitleBand10: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 47361
            mmPrintPosition = 0
            object ppLabel115: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label60'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.kg.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 10583
              mmTop = 10054
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText90: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText201'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALKGBRU'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 32544
              mmTop = 10054
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel116: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label61'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Produtos.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 66940
              mmTop = 10054
              mmWidth = 43127
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText91: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText55'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'SUBTOTAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 112184
              mmTop = 10054
              mmWidth = 26988
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel117: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label66'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Fun.Rural(-).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 67469
              mmTop = 21167
              mmWidth = 42598
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText92: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText60'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALFUNRURAL'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 112448
              mmTop = 21167
              mmWidth = 26723
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel118: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label67'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Multa.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66940
              mmTop = 15875
              mmWidth = 43127
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText93: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText61'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALMULTA'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 4763
              mmLeft = 112184
              mmTop = 15875
              mmWidth = 26988
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel119: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label68'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total D'#233'bito(-).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66675
              mmTop = 28840
              mmWidth = 43392
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText94: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText301'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALDEBITO'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 112184
              mmTop = 28840
              mmWidth = 26988
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel120: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label69'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Cr'#233'dito(+).:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 66940
              mmTop = 34660
              mmWidth = 43127
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText95: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText63'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALCREDITO'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 111654
              mmTop = 34660
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel121: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label70'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total '#224' Receber.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5292
              mmLeft = 66675
              mmTop = 39952
              mmWidth = 43392
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText96: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText64'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALARECEBER'
              DataPipeline = ppDados
              DisplayFormat = '#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5292
              mmLeft = 111390
              mmTop = 39952
              mmWidth = 27781
              BandType = 1
              LayerName = Foreground8
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer9
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7408
              mmWidth = 198173
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel122: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label71'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Fechamento/Totais'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 6615
              mmTop = 1323
              mmWidth = 50271
              BandType = 1
              LayerName = Foreground8
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer9
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 198173
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel123: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label15'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 6615
              mmTop = 16669
              mmWidth = 23019
              BandType = 1
              LayerName = Foreground8
            end
            object ppDBText97: TppDBText
              DesignLayer = ppDesignLayer9
              UserName = 'DBText102'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'TOTALBINS'
              DataPipeline = ppDados
              DisplayFormat = '#,0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDados'
              mmHeight = 5027
              mmLeft = 32544
              mmTop = 16669
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground8
            end
            object ppLabel124: TppLabel
              DesignLayer = ppDesignLayer9
              UserName = 'Label17'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#233'dia Emb.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5027
              mmLeft = 3969
              mmTop = 23548
              mmWidth = 25665
              BandType = 1
              LayerName = Foreground8
            end
            object ppVariable11: TppVariable
              DesignLayer = ppDesignLayer9
              UserName = 'Variable2'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtDouble
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4763
              mmLeft = 32544
              mmTop = 23548
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground8
            end
          end
          object ppDetailBand10: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand10: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule8: TraCodeModule
            object raProgramInfo10: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable2OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALBINS'#39'] > 0 then'#13#10'  Value := Dados['#39'TOTALKGBRU'#39'] / Dados['#39'T' +
                'OTALBINS'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable2'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
          end
          object ppDesignLayers9: TppDesignLayers
            object ppDesignLayer9: TppDesignLayer
              UserName = 'Foreground8'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'vClasCod'
      DataPipeline = ppItem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppItem'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer10
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'QTDEKG'
          DataPipeline = ppItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3704
          mmLeft = 37571
          mmTop = 1852
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer10
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'VLRLIQUIDO'
          DataPipeline = ppItem
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3704
          mmLeft = 83873
          mmTop = 1852
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppVariable14: TppVariable
          DesignLayer = ppDesignLayer10
          UserName = 'Variable7'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtDouble
          DisplayFormat = '#,0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 106363
          mmTop = 1852
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBText82: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText82'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'vClasDes'
          DataPipeline = ppItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppItem'
          mmHeight = 3969
          mmLeft = 5027
          mmTop = 1852
          mmWidth = 28310
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppVariable15: TppVariable
          DesignLayer = ppDesignLayer10
          UserName = 'Variable15'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 1
          DataType = dtDouble
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 64294
          mmTop = 1852
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
      end
    end
    object raCodeModule9: TraCodeModule
      object raProgramInfo11: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable7OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable7OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
          #39'TOTALKGBRU'#39'] > 0 then'#13#10'  Value := DBCalc9.Value / Dados['#39'TOTALK' +
          'GBRU'#39'] * 100'#13#10'else'#13#10'  Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable7'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo12: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable15OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable15OnCalc(var Value: Variant);'#13#10'begin'#13#10'if DBCal' +
          'c9.Value > 0 then'#13#10'  Value := DBCalc10.Value / DBCalc9.Value'#13#10'el' +
          'se'#13#10'  Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable15'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'Foreground9'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
