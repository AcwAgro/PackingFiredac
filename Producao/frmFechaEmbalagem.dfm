inherited FfrmFechaEmbalagem: TFfrmFechaEmbalagem
  Caption = 'Fechamento Terceirizado'
  ClientHeight = 546
  ClientWidth = 1044
  WindowState = wsMaximized
  ExplicitWidth = 1050
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 530
    Width = 1044
    ExplicitTop = 530
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
    Height = 530
    ExplicitHeight = 530
    inherited rzpMenu: TRzPanel
      Height = 426
      ExplicitHeight = 426
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          Tag = 0
          Caption = 'Relat'#243'rio'
          OnClick = sbImprimirClick
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 306
        ExplicitTop = 306
      end
      inherited PPeriodo: TPanel
        Top = 346
        Visible = True
        ExplicitTop = 346
        inherited sbPeriodo: TSpeedButton
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 65
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
    Width = 907
    Height = 530
    ExplicitWidth = 907
    ExplicitHeight = 530
    inherited pcItem: TRzPageControl
      Width = 899
      Height = 522
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 899
      ExplicitHeight = 522
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 897
        ExplicitHeight = 501
        inherited pPesquisa: TRzPanel
          Top = 435
          Width = 897
          ExplicitTop = 435
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
          Height = 415
          ExplicitWidth = 897
          ExplicitHeight = 415
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
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALKGBRU
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1SUBTOTAL
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALDEBITO
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTALARECEBER
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 150
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Width = 200
            end
            object dbDadosDBTableView1TOTALBINS: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALBINS'
            end
            object dbDadosDBTableView1TOTALCX: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCX'
              Width = 80
            end
            object dbDadosDBTableView1SACOLTOL: TcxGridDBColumn
              Caption = 'Total kg.'
              DataBinding.FieldName = 'SACOLTOL'
              Width = 80
            end
            object dbDadosDBTableView1TOTALMEDIA: TcxGridDBColumn
              Caption = 'Vlr.Total'
              DataBinding.FieldName = 'TOTALMEDIA'
              Width = 80
            end
            object dbDadosDBTableView1SUBTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'SUBTOTAL'
              Width = 100
            end
            object dbDadosDBTableView1TOTALDEBITO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALDEBITO'
              Width = 100
            end
            object dbDadosDBTableView1TOTALARECEBER: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALARECEBER'
              Width = 100
            end
            object dbDadosDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
            end
            object dbDadosDBTableView1REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'REGISTRO'
              Visible = False
              VisibleForCustomization = False
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
            object dbDadosDBTableView1TOTALFUNRURAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALFUNRURAL'
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
            object dbDadosDBTableView1TOTALCREDITO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCREDITO'
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
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 897
        ExplicitHeight = 501
        inherited pDados: TPanel
          Width = 897
          Height = 82
          Align = alTop
          BevelOuter = bvRaised
          ExplicitWidth = 897
          ExplicitHeight = 82
          object SB1: TSpeedButton
            Tag = 4
            Left = 8
            Top = 53
            Width = 160
            Height = 20
            Hint = 'Calcula os Valores...'
            Caption = 'C'#225'lcula classifica'#231#227'o'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SB1Click
          end
          object SB3: TSpeedButton
            Tag = 4
            Left = 174
            Top = 53
            Width = 160
            Height = 20
            Hint = 'Calcula os Valores...'
            Caption = 'C'#225'lcula Estrutura'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16384
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SB3Click
          end
          object SB4: TSpeedButton
            Tag = 4
            Left = 340
            Top = 54
            Width = 160
            Height = 20
            Hint = 'Importa contra nota fiscal'
            Caption = 'C'#225'lcula Agrupadores'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 33023
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SB4Click
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 36
            Caption = ' Registro '
            TabOrder = 0
            object DBEdit14: TDBEdit
              Left = 2
              Top = 18
              Width = 80
              Height = 16
              Align = alBottom
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
          object GroupBox7: TGroupBox
            Left = 478
            Top = 5
            Width = 398
            Height = 36
            Caption = ' Produtor '
            Enabled = False
            TabOrder = 3
            object DBEdit2: TDBEdit
              Left = 2
              Top = 18
              Width = 394
              Height = 16
              Hint = 'Separe v'#225'rios lotes por "," ex,: 19,25,30'
              Align = alBottom
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PRODDES'
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
            end
          end
          object GroupBox2: TGroupBox
            Left = 200
            Top = 5
            Width = 274
            Height = 36
            Hint = 'Separe v'#225'rios lotes por "," ex,: 19,25,30'
            Caption = 'Lote Lanc.n'#186' '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 2
              Top = 18
              Width = 270
              Height = 16
              Hint = 'Separe v'#225'rios lotes por "," ex,: 19,25,30'
              Align = alBottom
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VARIEDES'
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
            end
          end
          object GroupBox8: TGroupBox
            Left = 93
            Top = 5
            Width = 101
            Height = 36
            Caption = ' Data Acerto '
            TabOrder = 1
            object DBEdit100: TcxDBDateEdit
              Left = 2
              Top = 15
              Align = alBottom
              AutoSize = False
              DataBinding.DataField = 'DATA'
              DataBinding.DataSource = dsDados
              ParentFont = False
              ParentShowHint = False
              Properties.DateButtons = [btnToday]
              Properties.DateOnError = deToday
              Properties.SaveTime = False
              Properties.ShowTime = False
              Properties.ValidationOptions = [evoShowErrorIcon]
              ShowHint = True
              Style.BorderStyle = ebsNone
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Verdana'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderStyle = ebsNone
              StyleDisabled.ButtonStyle = btsDefault
              StyleFocused.BorderStyle = ebsNone
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextStyle = []
              TabOrder = 0
              OnKeyDown = FormKeyDown
              Height = 19
              Width = 97
            end
          end
          object GroupBox6: TGroupBox
            Left = 506
            Top = 42
            Width = 237
            Height = 38
            Caption = ' Ind'#250'stria '
            TabOrder = 4
            TabStop = True
            object Label12: TLabel
              Left = 15
              Top = 18
              Width = 62
              Height = 13
              Caption = 'Peso Bins'
              Transparent = True
            end
            object sbIndustria: TSpeedButton
              Tag = 4
              Left = 150
              Top = 13
              Width = 81
              Height = 20
              Hint = 'Calcula os Valores...'
              Caption = 'Lan'#231'ar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                0333337F777777737F333308888888880333337F333333337F33330888888888
                03333373FFFFFFFF733333700000000073333337777777773333}
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = sbIndustriaClick
            end
            object DBEdit3: TDBEdit
              Left = 86
              Top = 15
              Width = 58
              Height = 20
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'INDUSQTDE'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 82
          Width = 897
          Height = 376
          ActivePage = tab_produto
          Align = alClient
          TabOrder = 1
          object tab_produto: TTabSheet
            Caption = 'Produtos'
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
              Width = 889
              Height = 348
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
                  Width = 175
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'CALIBRE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Tam'
                  Title.Color = 13878195
                  Width = 42
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'UNID'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid.'
                  Title.Color = 13878195
                  Width = 49
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PESO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Peso'
                  Title.Color = 13878195
                  Width = 43
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
                  Width = 61
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
                  Width = 67
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
                  Title.Caption = 'Valor'
                  Title.Color = 13878195
                  Width = 75
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
                  Title.Caption = 'Pr. M'#233'dio'
                  Title.Color = 13878195
                  Width = 77
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
                  Width = 81
                  Visible = True
                end>
            end
          end
          object Tab_Embal: TTabSheet
            Caption = 'Estrutura'
            ImageIndex = 2
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 889
              Height = 348
              Align = alClient
              DataSource = dsembal
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu4
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnColExit = DBGrid2ColExit
              OnEnter = DBGrid2Enter
              OnExit = DBGrid2Exit
              OnKeyPress = DBGrid2KeyPress
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
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Color = 13878195
                  Width = 175
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'UNID'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid.'
                  Title.Color = 13878195
                  Width = 49
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.Caixa'
                  Title.Color = 13878195
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PESO'
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#233'd.Cadastro'
                  Title.Color = 13878195
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
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.Utilizada'
                  Title.Color = 13878195
                  Width = 92
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
                  Title.Caption = 'Valor'
                  Title.Color = 13878195
                  Visible = False
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
                  Visible = False
                end>
            end
          end
          object Tab_finan: TTabSheet
            Caption = 'Agrupadores'
            ImageIndex = 2
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 889
              Height = 348
              Align = alClient
              DataSource = dsCNF
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu2
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnColExit = DBGrid3ColExit
              OnEnter = DBGrid3Enter
              OnExit = DBGrid3Exit
              OnKeyPress = DBGrid3KeyPress
              Columns = <
                item
                  Color = 15329769
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
                  Width = 240
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
                  Title.Caption = 'Qtde.'
                  Title.Color = 13878195
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UNIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Unit.'
                  Title.Color = 13878195
                  Width = 80
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'VALOR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor Total'
                  Title.Color = 13878195
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 458
          Width = 897
          Height = 43
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label13: TLabel
            Left = 391
            Top = 3
            Width = 55
            Height = 13
            Caption = 'Vlr.Total'
            Transparent = True
          end
          object Label9: TLabel
            Left = 81
            Top = 3
            Width = 54
            Height = 13
            Caption = 'Qtde.kg.'
            Transparent = True
          end
          object Label7: TLabel
            Left = 6
            Top = 3
            Width = 53
            Height = 13
            Caption = 'Qtde cx.'
            Transparent = True
          end
          object Label18: TLabel
            Left = 238
            Top = 3
            Width = 69
            Height = 13
            Caption = 'M'#233'dia Bins'
            Transparent = True
          end
          object Label23: TLabel
            Left = 497
            Top = 3
            Width = 79
            Height = 13
            Caption = 'Total D'#233'bito'
            Transparent = True
          end
          object Label25: TLabel
            Left = 587
            Top = 3
            Width = 87
            Height = 13
            Caption = 'Vlr.'#224' Receber'
            Transparent = True
          end
          object Label8: TLabel
            Left = 164
            Top = 3
            Width = 61
            Height = 13
            Caption = 'Qtde Bins'
            Transparent = True
          end
          object DBEdit7: TDBEdit
            Left = 391
            Top = 18
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
            Top = 18
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
            Top = 18
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
          object DBEdit16: TDBEdit
            Left = 497
            Top = 18
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
            TabOrder = 3
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit18: TDBEdit
            Left = 587
            Top = 18
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
            TabOrder = 4
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit5: TDBEdit
            Left = 164
            Top = 18
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
            TabOrder = 5
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object Panel3: TPanel
            Left = 238
            Top = 17
            Width = 75
            Height = 20
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Color = 15329769
            ParentBackground = False
            TabOrder = 6
            object lblMedia: TLabel
              Left = 2
              Top = 2
              Width = 71
              Height = 16
              Align = alClient
              BiDiMode = bdRightToLeft
              Caption = '0,00'
              ParentBiDiMode = False
              ExplicitLeft = 45
              ExplicitWidth = 28
              ExplicitHeight = 13
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    PacketRecords = 30
    Left = 970
    Top = 151
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
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data Lanc.'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTLOTEINI: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DTLOTEINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTLOTEFIM: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DTLOTEFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTPRECOINI: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DTPRECOINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTPRECOFIM: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DTPRECOFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOFIM'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTFINANINI: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DTFINANINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANINI'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDTFINANFIM: TSQLTimeStampField
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
      DisplayWidth = 40
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
      DisplayLabel = 'Lote n'#186
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
    object cdsDadosINDUSQTDE: TBCDField
      FieldName = 'INDUSQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSQTDE'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosINDUSPER: TBCDField
      FieldName = 'INDUSPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosINDUSMUL: TBCDField
      FieldName = 'INDUSMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSMUL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosINDUSTOL: TBCDField
      FieldName = 'INDUSTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSTOL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLOPCAO: TStringField
      FieldName = 'SACOLOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLOPCAO'
      Visible = False
      Size = 1
    end
    object cdsDadosSACOLQTDE: TBCDField
      FieldName = 'SACOLQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLQTDE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLPER: TBCDField
      FieldName = 'SACOLPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLMUL: TBCDField
      FieldName = 'SACOLMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLMUL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSACOLTOL: TBCDField
      FieldName = 'SACOLTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLTOL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALBINS: TBCDField
      DisplayLabel = 'T.Bins'
      DisplayWidth = 7
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALCX: TBCDField
      DisplayLabel = 'Total cx.'
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALKGBRU: TBCDField
      FieldName = 'TOTALKGBRU'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGBRU'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALKGLIQ: TBCDField
      FieldName = 'TOTALKGLIQ'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGLIQ'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALMEDIA: TBCDField
      FieldName = 'TOTALMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMEDIA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALEMBAL: TBCDField
      FieldName = 'TOTALEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALEMBAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALOPER: TBCDField
      FieldName = 'TOTALOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALOPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALCOMIS: TBCDField
      FieldName = 'TOTALCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCOMIS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSUBTOTAL: TBCDField
      DisplayLabel = 'SubTotal'
      FieldName = 'SUBTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SUBTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPERFUNRURAL: TBCDField
      FieldName = 'PERFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PERFUNRURAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALFUNRURAL: TBCDField
      DisplayLabel = 'Fun.Rural'
      FieldName = 'TOTALFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALFUNRURAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALMULTA: TBCDField
      FieldName = 'TOTALMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMULTA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALLIQUIDO: TBCDField
      DisplayLabel = 'Vlr.Liquido'
      FieldName = 'TOTALLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALLIQUIDO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALDEBITO: TBCDField
      DisplayLabel = 'Vlr.D'#233'bito'
      FieldName = 'TOTALDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALDEBITO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALCREDITO: TBCDField
      DisplayLabel = 'Vlr.Cr'#233'dito'
      FieldName = 'TOTALCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCREDITO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTOTALARECEBER: TBCDField
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
      FieldName = 'LOTEORIGEM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.LOTEORIGEM'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REG_ID'
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
    object sqlDadosDATA: TSQLTimeStampField
      DisplayWidth = 18
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DATA'
    end
    object sqlDadosDTLOTEINI: TSQLTimeStampField
      DisplayWidth = 18
      FieldName = 'DTLOTEINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEINI'
    end
    object sqlDadosDTLOTEFIM: TSQLTimeStampField
      DisplayWidth = 18
      FieldName = 'DTLOTEFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEFIM'
    end
    object sqlDadosDTPRECOINI: TSQLTimeStampField
      DisplayWidth = 18
      FieldName = 'DTPRECOINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOINI'
    end
    object sqlDadosDTPRECOFIM: TSQLTimeStampField
      DisplayWidth = 18
      FieldName = 'DTPRECOFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOFIM'
    end
    object sqlDadosDTFINANINI: TSQLTimeStampField
      DisplayWidth = 18
      FieldName = 'DTFINANINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANINI'
    end
    object sqlDadosDTFINANFIM: TSQLTimeStampField
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
    object sqlDadosINDUSQTDE: TBCDField
      FieldName = 'INDUSQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSQTDE'
    end
    object sqlDadosINDUSPER: TBCDField
      FieldName = 'INDUSPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSPER'
    end
    object sqlDadosINDUSMUL: TBCDField
      FieldName = 'INDUSMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSMUL'
    end
    object sqlDadosINDUSTOL: TBCDField
      FieldName = 'INDUSTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSTOL'
    end
    object sqlDadosSACOLOPCAO: TStringField
      FieldName = 'SACOLOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLOPCAO'
      Size = 1
    end
    object sqlDadosSACOLQTDE: TBCDField
      FieldName = 'SACOLQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLQTDE'
    end
    object sqlDadosSACOLPER: TBCDField
      FieldName = 'SACOLPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLPER'
    end
    object sqlDadosSACOLMUL: TBCDField
      FieldName = 'SACOLMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLMUL'
    end
    object sqlDadosSACOLTOL: TBCDField
      FieldName = 'SACOLTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLTOL'
    end
    object sqlDadosTOTALBINS: TBCDField
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
    end
    object sqlDadosTOTALCX: TBCDField
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
    end
    object sqlDadosTOTALKGBRU: TBCDField
      FieldName = 'TOTALKGBRU'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGBRU'
    end
    object sqlDadosTOTALKGLIQ: TBCDField
      FieldName = 'TOTALKGLIQ'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGLIQ'
    end
    object sqlDadosTOTALMEDIA: TBCDField
      FieldName = 'TOTALMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMEDIA'
    end
    object sqlDadosTOTALEMBAL: TBCDField
      FieldName = 'TOTALEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALEMBAL'
    end
    object sqlDadosTOTALOPER: TBCDField
      FieldName = 'TOTALOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALOPER'
    end
    object sqlDadosTOTALCOMIS: TBCDField
      FieldName = 'TOTALCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCOMIS'
    end
    object sqlDadosSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SUBTOTAL'
    end
    object sqlDadosPERFUNRURAL: TBCDField
      FieldName = 'PERFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PERFUNRURAL'
    end
    object sqlDadosTOTALFUNRURAL: TBCDField
      FieldName = 'TOTALFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALFUNRURAL'
    end
    object sqlDadosTOTALMULTA: TBCDField
      FieldName = 'TOTALMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMULTA'
    end
    object sqlDadosTOTALLIQUIDO: TBCDField
      FieldName = 'TOTALLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALLIQUIDO'
    end
    object sqlDadosTOTALDEBITO: TBCDField
      FieldName = 'TOTALDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALDEBITO'
    end
    object sqlDadosTOTALCREDITO: TBCDField
      FieldName = 'TOTALCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCREDITO'
    end
    object sqlDadosTOTALARECEBER: TBCDField
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
      FieldName = 'LOTEORIGEM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.LOTEORIGEM'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGLOG'
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
        Name = 'LANCIT'
        DataType = ftInteger
      end
      item
        Name = 'REGISTRO'
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
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CALIBRE'
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'QTDEKG'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRMEDIA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRMEDIAKG'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRTOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRTOTALKG'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PREEMBAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLREMBAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PREOPER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLROPER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PERCOMIS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRCOMIS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PERMULTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRMULTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRLIQUIDO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRELIQUIDO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRODDES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VLRCAIXA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'REGLOG'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'REG_ID'
        Attributes = [faRequired]
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
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 214
    object cdsitemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object cdsitemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsitemPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsitemUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 5
    end
    object cdsitemPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      DisplayFormat = '0'
    end
    object cdsitemCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object cdsitemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.##'
    end
    object cdsitemQTDEKG: TBCDField
      FieldName = 'QTDEKG'
      Origin = 'QTDEKG'
      DisplayFormat = '#,0.##'
    end
    object cdsitemVLRMEDIA: TBCDField
      FieldName = 'VLRMEDIA'
      Origin = 'VLRMEDIA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRMEDIAKG: TBCDField
      FieldName = 'VLRMEDIAKG'
      Origin = 'VLRMEDIAKG'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRTOTAL: TBCDField
      FieldName = 'VLRTOTAL'
      Origin = 'VLRTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRTOTALKG: TBCDField
      FieldName = 'VLRTOTALKG'
      Origin = 'VLRTOTALKG'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPREEMBAL: TBCDField
      FieldName = 'PREEMBAL'
      Origin = 'PREEMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLREMBAL: TBCDField
      FieldName = 'VLREMBAL'
      Origin = 'VLREMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPREOPER: TBCDField
      FieldName = 'PREOPER'
      Origin = 'PREOPER'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLROPER: TBCDField
      FieldName = 'VLROPER'
      Origin = 'VLROPER'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPERCOMIS: TBCDField
      FieldName = 'PERCOMIS'
      Origin = 'PERCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRCOMIS: TBCDField
      FieldName = 'VLRCOMIS'
      Origin = 'VLRCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPERMULTA: TBCDField
      FieldName = 'PERMULTA'
      Origin = 'PERMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRMULTA: TBCDField
      FieldName = 'VLRMULTA'
      Origin = 'VLRMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = 'VLRLIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPRELIQUIDO: TBCDField
      FieldName = 'PRELIQUIDO'
      Origin = 'PRELIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsitemPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object cdsitemVLRCAIXA: TBCDField
      FieldName = 'VLRCAIXA'
      Origin = 'VLRCAIXA'
      DisplayFormat = '#,0.00'
    end
    object cdsitemREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsitemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspitem: TDataSetProvider
    DataSet = sqlitem
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 214
  end
  object dsembal: TDataSource
    DataSet = cdsembal
    Left = 1002
    Top = 182
  end
  object cdsembal: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LANCIT'
        DataType = ftInteger
      end
      item
        Name = 'REGISTRO'
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
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CALIBRE'
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'QTDEKG'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRMEDIA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRMEDIAKG'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRTOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRTOTALKG'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PREEMBAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLREMBAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PREOPER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLROPER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PERCOMIS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRCOMIS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PERMULTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRMULTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRLIQUIDO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRELIQUIDO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRODDES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VLRCAIXA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'REGLOG'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'REG_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'xIndex'
        Fields = 'prodcod'
      end>
    IndexName = 'xIndex'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspembal'
    StoreDefs = True
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 182
    object cdsembalREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object cdsembalLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsembalPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsembalUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 5
    end
    object cdsembalPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
    end
    object cdsembalCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object cdsembalQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.##'
    end
    object cdsembalQTDEKG: TBCDField
      FieldName = 'QTDEKG'
      Origin = 'QTDEKG'
      DisplayFormat = '#,0.###'
    end
    object cdsembalVLRMEDIA: TBCDField
      FieldName = 'VLRMEDIA'
      Origin = 'VLRMEDIA'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLRMEDIAKG: TBCDField
      FieldName = 'VLRMEDIAKG'
      Origin = 'VLRMEDIAKG'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLRTOTAL: TBCDField
      FieldName = 'VLRTOTAL'
      Origin = 'VLRTOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLRTOTALKG: TBCDField
      FieldName = 'VLRTOTALKG'
      Origin = 'VLRTOTALKG'
      DisplayFormat = '#,0.00'
    end
    object cdsembalPREEMBAL: TBCDField
      FieldName = 'PREEMBAL'
      Origin = 'PREEMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLREMBAL: TBCDField
      FieldName = 'VLREMBAL'
      Origin = 'VLREMBAL'
      DisplayFormat = '#,0.00'
    end
    object cdsembalPREOPER: TBCDField
      FieldName = 'PREOPER'
      Origin = 'PREOPER'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLROPER: TBCDField
      FieldName = 'VLROPER'
      Origin = 'VLROPER'
      DisplayFormat = '#,0.00'
    end
    object cdsembalPERCOMIS: TBCDField
      FieldName = 'PERCOMIS'
      Origin = 'PERCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLRCOMIS: TBCDField
      FieldName = 'VLRCOMIS'
      Origin = 'VLRCOMIS'
      DisplayFormat = '#,0.00'
    end
    object cdsembalPERMULTA: TBCDField
      FieldName = 'PERMULTA'
      Origin = 'PERMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLRMULTA: TBCDField
      FieldName = 'VLRMULTA'
      Origin = 'VLRMULTA'
      DisplayFormat = '#,0.00'
    end
    object cdsembalVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = 'VLRLIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsembalPRELIQUIDO: TBCDField
      FieldName = 'PRELIQUIDO'
      Origin = 'PRELIQUIDO'
      DisplayFormat = '#,0.00'
    end
    object cdsembalPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object cdsembalVLRCAIXA: TBCDField
      FieldName = 'VLRCAIXA'
      Origin = 'VLRCAIXA'
      DisplayFormat = '#,0.00'
    end
    object cdsembalREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsembalREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspembal: TDataSetProvider
    DataSet = sqlembal
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 182
  end
  object PopupMenu1: TPopupMenu
    Left = 936
    Top = 320
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
    Top = 320
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
  object ppDados: TppBDEPipeline
    DataSource = dsDadosRel
    UserName = 'Dados'
    Left = 864
    Top = 150
  end
  object ppembal: TppBDEPipeline
    DataSource = dsembal
    UserName = 'embal'
    Left = 864
    Top = 182
  end
  object ppItem: TppBDEPipeline
    DataSource = dsItemRel
    UserName = 'Item'
    Left = 864
    Top = 214
  end
  object ppRelFecha: TppReport
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
    Left = 824
    Top = 248
    Version = '20.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppItem'
    object ppTitleBand4: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label51'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fechamento Terceirizado'
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
        mmWidth = 161661
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer3
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
        mmWidth = 171450
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmTop = 22754
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmLeft = 63236
        mmTop = 22754
        mmWidth = 16140
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmLeft = 44979
        mmTop = 22754
        mmWidth = 16140
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmTop = 16669
        mmWidth = 76200
        BandType = 1
        LayerName = Foreground2
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 27252
        mmWidth = 196586
        BandType = 1
        LayerName = Foreground2
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
        DesignLayer = ppDesignLayer3
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
        mmHeight = 4000
        mmLeft = 5027
        mmTop = 0
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
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
        mmLeft = 63765
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'CALIBRE'
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
        mmLeft = 47361
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppembal'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppembal
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
          Version = '20.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppembal'
          object ppTitleBand5: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13494
            mmPrintPosition = 0
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Descri'#231#227'o'
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
              mmTop = 7408
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.Caixa'
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
              mmLeft = 79111
              mmTop = 7408
              mmWidth = 22754
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label6'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.Unit.'
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
              mmTop = 7408
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.Utilizada'
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
              mmTop = 7408
              mmWidth = 21431
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label9'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Unid.'
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
              mmLeft = 60854
              mmTop = 7408
              mmWidth = 16140
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label501'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Rela'#231#227'o Mercadoria'
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
              mmTop = 1323
              mmWidth = 76200
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
              mmTop = 11906
              mmWidth = 196586
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'PRODDES'
              DataPipeline = ppembal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppembal'
              mmHeight = 3969
              mmLeft = 5027
              mmTop = 0
              mmWidth = 56092
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'UNID'
              DataPipeline = ppembal
              DisplayFormat = '0.##'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppembal'
              mmHeight = 4000
              mmLeft = 63765
              mmTop = 0
              mmWidth = 15610
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'QTDE'
              DataPipeline = ppembal
              DisplayFormat = '0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppembal'
              mmHeight = 4000
              mmLeft = 81492
              mmTop = 0
              mmWidth = 20373
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'PESO'
              DataPipeline = ppembal
              DisplayFormat = '#,0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppembal'
              mmHeight = 4000
              mmLeft = 103981
              mmTop = 0
              mmWidth = 20000
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              HyperlinkEnabled = False
              Border.mmPadding = 0
              DataField = 'QTDEKG'
              DataPipeline = ppembal
              DisplayFormat = '#,0.###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppembal'
              mmHeight = 4000
              mmLeft = 126736
              mmTop = 0
              mmWidth = 20000
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand5: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule5: TraCodeModule
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
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppNFC'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7144
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground2
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
              DesignLayer = ppDesignLayer2
              UserName = 'Label38'
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
              mmLeft = 5027
              mmTop = 265
              mmWidth = 56092
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line101'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 196586
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel77: TppLabel
              DesignLayer = ppDesignLayer2
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
              mmLeft = 73819
              mmTop = 6615
              mmWidth = 16000
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel79: TppLabel
              DesignLayer = ppDesignLayer2
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
              mmLeft = 91017
              mmTop = 6615
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel80: TppLabel
              DesignLayer = ppDesignLayer2
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
              mmLeft = 113242
              mmTop = 6615
              mmWidth = 22490
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel81: TppLabel
              DesignLayer = ppDesignLayer2
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
              mmLeft = 5027
              mmTop = 6350
              mmWidth = 16140
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line14'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 11113
              mmWidth = 196586
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand6: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer2
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
              mmHeight = 3704
              mmLeft = 5027
              mmTop = 0
              mmWidth = 66411
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer2
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
              mmLeft = 73819
              mmTop = 0
              mmWidth = 16000
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer2
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
              mmLeft = 91017
              mmTop = 0
              mmWidth = 20000
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer2
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
              mmHeight = 3704
              mmLeft = 113506
              mmTop = 0
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand6: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 37306
            mmPrintPosition = 0
            object ppLabel1: TppLabel
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
            object ppDBText1: TppDBText
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
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
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
            object ppDBText2: TppDBText
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
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
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
              mmLeft = 68792
              mmTop = 9260
              mmWidth = 41540
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
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
              mmLeft = 111125
              mmTop = 9260
              mmWidth = 26458
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label10'
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
              mmLeft = 67998
              mmTop = 17992
              mmWidth = 42598
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText11'
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
              mmLeft = 111125
              mmTop = 17992
              mmWidth = 26458
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label17'
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
              mmLeft = 63500
              mmTop = 26988
              mmWidth = 47096
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText14'
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
              mmLeft = 111125
              mmTop = 26988
              mmWidth = 26458
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line1'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7144
              mmWidth = 196586
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label20'
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
              mmLeft = 5027
              mmTop = 1058
              mmWidth = 50271
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line2'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 196586
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label22'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Qtde.bins.:'
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
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText101'
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
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label23'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#233'dia bins.:'
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
            object ppVariable2: TppVariable
              DesignLayer = ppDesignLayer2
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
              mmLeft = 38100
              mmTop = 22754
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label24'
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
            object ppVariable4: TppVariable
              DesignLayer = ppDesignLayer2
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
              mmLeft = 38365
              mmTop = 27517
              mmWidth = 20902
              BandType = 7
              LayerName = Foreground1
            end
          end
          object raCodeModule1: TraCodeModule
            object raProgramInfo1: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable2OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALBINS'#39'] >0 then'#13#10'  value := Dados['#39'TOTALKGBRU'#39'] / Dados['#39'TO' +
                'TALBINS'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable2'
              raProgram.EventName = 'OnCalc'
              raProgram.EventID = 33
            end
            object raProgramInfo2: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'Variable4OnCalc'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure Variable4OnCalc(var Value: Variant);'#13#10'begin'#13#10'if Dados[' +
                #39'TOTALKGBRU'#39'] >0 then'#13#10'  value := Dados['#39'SUBTOTAL'#39'] / Dados['#39'TOT' +
                'ALKGBRU'#39']'#13#10'else'#13#10'  value := 0;'#13#10#13#10'end;'#13#10
              raProgram.ComponentName = 'Variable4'
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
          DesignLayer = ppDesignLayer3
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
          LayerName = Foreground2
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer3
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
          LayerName = Foreground2
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer3
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
          LayerName = Foreground2
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line11'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 0
          mmWidth = 196586
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dspCNF: TDataSetProvider
    DataSet = sqlCNF
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 246
  end
  object cdsCNF: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspCNF'
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 246
    object cdsCNFREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object cdsCNFLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCNFDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/9999;1; '
    end
    object cdsCNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object cdsCNFQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.###'
    end
    object cdsCNFPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      DisplayFormat = '#,0.###'
    end
    object cdsCNFUNIT: TBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      DisplayFormat = '#,0.00'
    end
    object cdsCNFVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsCNFDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object cdsCNFPESOKG: TBCDField
      FieldName = 'PESOKG'
      Origin = 'PESOKG'
      DisplayFormat = '#,0.###'
    end
    object cdsCNFREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsCNFREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsCNF: TDataSource
    DataSet = cdsCNF
    Left = 1002
    Top = 246
  end
  object ppNFC: TppDBPipeline
    DataSource = dsCNF
    UserName = 'NFC'
    Left = 864
    Top = 246
  end
  object dsDadosRel: TDataSource
    DataSet = cdsDados
    Left = 736
    Top = 262
  end
  object dsItemRel: TDataSource
    DataSet = cdsitem
    Left = 736
    Top = 307
  end
  object PopupMenu4: TPopupMenu
    Left = 1000
    Top = 320
    object MenuItem3: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      Visible = False
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem4Click
    end
  end
  object sqlembal: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * '
      'from fecha_classif_item'
      'where registro = -1'
      'order by lancit')
    Left = 906
    Top = 182
    object sqlembalLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlembalREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object sqlembalPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlembalUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 5
    end
    object sqlembalPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
    end
    object sqlembalCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object sqlembalQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlembalQTDEKG: TBCDField
      FieldName = 'QTDEKG'
      Origin = 'QTDEKG'
      Precision = 18
    end
    object sqlembalVLRMEDIA: TBCDField
      FieldName = 'VLRMEDIA'
      Origin = 'VLRMEDIA'
      Precision = 18
    end
    object sqlembalVLRMEDIAKG: TBCDField
      FieldName = 'VLRMEDIAKG'
      Origin = 'VLRMEDIAKG'
      Precision = 18
    end
    object sqlembalVLRTOTAL: TBCDField
      FieldName = 'VLRTOTAL'
      Origin = 'VLRTOTAL'
      Precision = 18
    end
    object sqlembalVLRTOTALKG: TBCDField
      FieldName = 'VLRTOTALKG'
      Origin = 'VLRTOTALKG'
      Precision = 18
    end
    object sqlembalPREEMBAL: TBCDField
      FieldName = 'PREEMBAL'
      Origin = 'PREEMBAL'
      Precision = 18
    end
    object sqlembalVLREMBAL: TBCDField
      FieldName = 'VLREMBAL'
      Origin = 'VLREMBAL'
      Precision = 18
    end
    object sqlembalPREOPER: TBCDField
      FieldName = 'PREOPER'
      Origin = 'PREOPER'
      Precision = 18
    end
    object sqlembalVLROPER: TBCDField
      FieldName = 'VLROPER'
      Origin = 'VLROPER'
      Precision = 18
    end
    object sqlembalPERCOMIS: TBCDField
      FieldName = 'PERCOMIS'
      Origin = 'PERCOMIS'
      Precision = 18
    end
    object sqlembalVLRCOMIS: TBCDField
      FieldName = 'VLRCOMIS'
      Origin = 'VLRCOMIS'
      Precision = 18
    end
    object sqlembalPERMULTA: TBCDField
      FieldName = 'PERMULTA'
      Origin = 'PERMULTA'
      Precision = 18
    end
    object sqlembalVLRMULTA: TBCDField
      FieldName = 'VLRMULTA'
      Origin = 'VLRMULTA'
      Precision = 18
    end
    object sqlembalVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = 'VLRLIQUIDO'
      Precision = 18
    end
    object sqlembalPRELIQUIDO: TBCDField
      FieldName = 'PRELIQUIDO'
      Origin = 'PRELIQUIDO'
      Precision = 18
    end
    object sqlembalPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object sqlembalVLRCAIXA: TBCDField
      FieldName = 'VLRCAIXA'
      Origin = 'VLRCAIXA'
      Precision = 18
    end
    object sqlembalREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlembalREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqlitem: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * '
      'from fecha_classif_item'
      'where registro = -1'
      'order by lancit')
    Left = 906
    Top = 214
    object sqlitemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlitemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object sqlitemPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlitemUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 5
    end
    object sqlitemPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
    end
    object sqlitemCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object sqlitemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlitemQTDEKG: TBCDField
      FieldName = 'QTDEKG'
      Origin = 'QTDEKG'
      Precision = 18
    end
    object sqlitemVLRMEDIA: TBCDField
      FieldName = 'VLRMEDIA'
      Origin = 'VLRMEDIA'
      Precision = 18
    end
    object sqlitemVLRMEDIAKG: TBCDField
      FieldName = 'VLRMEDIAKG'
      Origin = 'VLRMEDIAKG'
      Precision = 18
    end
    object sqlitemVLRTOTAL: TBCDField
      FieldName = 'VLRTOTAL'
      Origin = 'VLRTOTAL'
      Precision = 18
    end
    object sqlitemVLRTOTALKG: TBCDField
      FieldName = 'VLRTOTALKG'
      Origin = 'VLRTOTALKG'
      Precision = 18
    end
    object sqlitemPREEMBAL: TBCDField
      FieldName = 'PREEMBAL'
      Origin = 'PREEMBAL'
      Precision = 18
    end
    object sqlitemVLREMBAL: TBCDField
      FieldName = 'VLREMBAL'
      Origin = 'VLREMBAL'
      Precision = 18
    end
    object sqlitemPREOPER: TBCDField
      FieldName = 'PREOPER'
      Origin = 'PREOPER'
      Precision = 18
    end
    object sqlitemVLROPER: TBCDField
      FieldName = 'VLROPER'
      Origin = 'VLROPER'
      Precision = 18
    end
    object sqlitemPERCOMIS: TBCDField
      FieldName = 'PERCOMIS'
      Origin = 'PERCOMIS'
      Precision = 18
    end
    object sqlitemVLRCOMIS: TBCDField
      FieldName = 'VLRCOMIS'
      Origin = 'VLRCOMIS'
      Precision = 18
    end
    object sqlitemPERMULTA: TBCDField
      FieldName = 'PERMULTA'
      Origin = 'PERMULTA'
      Precision = 18
    end
    object sqlitemVLRMULTA: TBCDField
      FieldName = 'VLRMULTA'
      Origin = 'VLRMULTA'
      Precision = 18
    end
    object sqlitemVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = 'VLRLIQUIDO'
      Precision = 18
    end
    object sqlitemPRELIQUIDO: TBCDField
      FieldName = 'PRELIQUIDO'
      Origin = 'PRELIQUIDO'
      Precision = 18
    end
    object sqlitemPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object sqlitemVLRCAIXA: TBCDField
      FieldName = 'VLRCAIXA'
      Origin = 'VLRCAIXA'
      Precision = 18
    end
    object sqlitemREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlitemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqlCNF: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from fecha_classif_CNF'
      'where registro = -1'
      'order by data'
      '')
    Left = 906
    Top = 246
    object sqlCNFLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlCNFREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object sqlCNFDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlCNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object sqlCNFQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlCNFPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlCNFUNIT: TBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Precision = 18
    end
    object sqlCNFVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlCNFDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object sqlCNFPESOKG: TBCDField
      FieldName = 'PESOKG'
      Origin = 'PESOKG'
      Precision = 18
    end
    object sqlCNFREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlCNFREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsDadosRel: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'DTLOTEINI'
        DataType = ftDateTime
      end
      item
        Name = 'DTLOTEFIM'
        DataType = ftDateTime
      end
      item
        Name = 'DTPRECOINI'
        DataType = ftDateTime
      end
      item
        Name = 'DTPRECOFIM'
        DataType = ftDateTime
      end
      item
        Name = 'DTFINANINI'
        DataType = ftDateTime
      end
      item
        Name = 'DTFINANFIM'
        DataType = ftDateTime
      end
      item
        Name = 'PRODCOD'
        DataType = ftInteger
      end
      item
        Name = 'PRODDES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VARIECOD'
        DataType = ftInteger
      end
      item
        Name = 'VARIEDES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'INDUSOPCAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDUSQTDE'
        DataType = ftFloat
      end
      item
        Name = 'INDUSPER'
        DataType = ftFloat
      end
      item
        Name = 'INDUSMUL'
        DataType = ftFloat
      end
      item
        Name = 'INDUSTOL'
        DataType = ftFloat
      end
      item
        Name = 'SACOLOPCAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SACOLQTDE'
        DataType = ftFloat
      end
      item
        Name = 'SACOLPER'
        DataType = ftFloat
      end
      item
        Name = 'SACOLMUL'
        DataType = ftFloat
      end
      item
        Name = 'SACOLTOL'
        DataType = ftFloat
      end
      item
        Name = 'TOTALBINS'
        DataType = ftFloat
      end
      item
        Name = 'TOTALCX'
        DataType = ftFloat
      end
      item
        Name = 'TOTALKGBRU'
        DataType = ftFloat
      end
      item
        Name = 'TOTALKGLIQ'
        DataType = ftFloat
      end
      item
        Name = 'TOTALMEDIA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALEMBAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTALOPER'
        DataType = ftFloat
      end
      item
        Name = 'TOTALCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'SUBTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'PERFUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTALFUNRURAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTALMULTA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALLIQUIDO'
        DataType = ftFloat
      end
      item
        Name = 'TOTALDEBITO'
        DataType = ftFloat
      end
      item
        Name = 'TOTALCREDITO'
        DataType = ftFloat
      end
      item
        Name = 'TOTALARECEBER'
        DataType = ftFloat
      end
      item
        Name = 'EMPRECOD'
        DataType = ftInteger
      end
      item
        Name = 'ACESOCOD'
        DataType = ftInteger
      end
      item
        Name = 'LOTEORIGEM'
        DataType = ftInteger
      end
      item
        Name = 'xxTotalLiquidoMedia'
        DataType = ftFloat
      end>
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
    OnReconcileError = cdsDadosReconcileError
    Left = 696
    Top = 262
    object cdsDadosRelREGISTRO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.REGISTRO'
      ProviderFlags = []
      Visible = False
    end
    object cdsDadosRelNUMERO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.NUMERO'
      ProviderFlags = []
    end
    object cdsDadosRelDATA: TDateTimeField
      DisplayLabel = 'Data Lanc.'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DATA'
      ProviderFlags = []
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTLOTEINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLOTEINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEINI'
      ProviderFlags = []
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTLOTEFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLOTEFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTLOTEFIM'
      ProviderFlags = []
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTPRECOINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTPRECOINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOINI'
      ProviderFlags = []
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTPRECOFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTPRECOFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTPRECOFIM'
      ProviderFlags = []
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTFINANINI: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFINANINI'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANINI'
      ProviderFlags = []
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelDTFINANFIM: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFINANFIM'
      Origin = 'JAEADMIN.FECHA_CLASSIF.DTFINANFIM'
      ProviderFlags = []
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosRelPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODCOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsDadosRelPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PRODDES'
      ProviderFlags = []
      Size = 50
    end
    object cdsDadosRelVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIECOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsDadosRelVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 14
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIEDES'
      ProviderFlags = []
      Size = 30
    end
    object cdsDadosRelINDUSOPCAO: TStringField
      DisplayLabel = 'Ind.Op'#231#227'o'
      FieldName = 'INDUSOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSOPCAO'
      ProviderFlags = []
      Visible = False
      Size = 1
    end
    object cdsDadosRelINDUSQTDE: TFloatField
      FieldName = 'INDUSQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSQTDE'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelINDUSPER: TFloatField
      FieldName = 'INDUSPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSPER'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelINDUSMUL: TFloatField
      FieldName = 'INDUSMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSMUL'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelINDUSTOL: TFloatField
      FieldName = 'INDUSTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.INDUSTOL'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLOPCAO: TStringField
      FieldName = 'SACOLOPCAO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLOPCAO'
      ProviderFlags = []
      Visible = False
      Size = 1
    end
    object cdsDadosRelSACOLQTDE: TFloatField
      FieldName = 'SACOLQTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLQTDE'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLPER: TFloatField
      FieldName = 'SACOLPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLPER'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLMUL: TFloatField
      FieldName = 'SACOLMUL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLMUL'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSACOLTOL: TFloatField
      FieldName = 'SACOLTOL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SACOLTOL'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALBINS: TFloatField
      DisplayLabel = 'T.Bins'
      DisplayWidth = 7
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
      ProviderFlags = []
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALCX: TFloatField
      DisplayLabel = 'Total cx.'
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALKGBRU: TFloatField
      FieldName = 'TOTALKGBRU'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGBRU'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALKGLIQ: TFloatField
      FieldName = 'TOTALKGLIQ'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALKGLIQ'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosRelTOTALMEDIA: TFloatField
      FieldName = 'TOTALMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMEDIA'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALEMBAL: TFloatField
      FieldName = 'TOTALEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALEMBAL'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALOPER: TFloatField
      FieldName = 'TOTALOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALOPER'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALCOMIS: TFloatField
      FieldName = 'TOTALCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCOMIS'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal'
      FieldName = 'SUBTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.SUBTOTAL'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelPERFUNRURAL: TFloatField
      FieldName = 'PERFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.PERFUNRURAL'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALFUNRURAL: TFloatField
      DisplayLabel = 'Fun.Rural'
      FieldName = 'TOTALFUNRURAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALFUNRURAL'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALMULTA: TFloatField
      FieldName = 'TOTALMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALMULTA'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALLIQUIDO: TFloatField
      DisplayLabel = 'Vlr.Liquido'
      FieldName = 'TOTALLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALLIQUIDO'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALDEBITO: TFloatField
      DisplayLabel = 'Vlr.D'#233'bito'
      FieldName = 'TOTALDEBITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALDEBITO'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALCREDITO: TFloatField
      DisplayLabel = 'Vlr.Cr'#233'dito'
      FieldName = 'TOTALCREDITO'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCREDITO'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelTOTALARECEBER: TFloatField
      DisplayLabel = 'Vlr.a Receber'
      FieldName = 'TOTALARECEBER'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALARECEBER'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsDadosRelEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.EMPRECOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsDadosRelACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF.ACESOCOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsDadosRelLOTEORIGEM: TIntegerField
      FieldName = 'LOTEORIGEM'
      ProviderFlags = []
    end
    object cdsDadosRelxxTotalLiquidoMedia: TFloatField
      FieldName = 'xxTotalLiquidoMedia'
      ProviderFlags = []
    end
  end
  object cdsItemRel: TClientDataSet
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
        Name = 'vTamDes'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'vClasCod'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'vClasDes'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'vVarieDes'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'xIndice'
        Fields = 'prodcod'
      end>
    IndexName = 'xIndice'
    Params = <>
    StoreDefs = True
    OnReconcileError = cdsDadosReconcileError
    Left = 696
    Top = 307
    object cdsItemRelREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.REGISTRO'
      ProviderFlags = []
    end
    object cdsItemRelLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.LANCIT'
      ProviderFlags = []
    end
    object cdsItemRelPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODCOD'
      ProviderFlags = []
    end
    object cdsItemRelUNID: TStringField
      FieldName = 'UNID'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.UNID'
      ProviderFlags = []
      Size = 5
    end
    object cdsItemRelPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PESO'
      ProviderFlags = []
      DisplayFormat = '0'
    end
    object cdsItemRelCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.CALIBRE'
      ProviderFlags = []
    end
    object cdsItemRelQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDE'
      ProviderFlags = []
      DisplayFormat = '#,0.##'
    end
    object cdsItemRelQTDEKG: TFloatField
      FieldName = 'QTDEKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.QTDEKG'
      ProviderFlags = []
      DisplayFormat = '#,0.##'
    end
    object cdsItemRelVLRMEDIA: TFloatField
      FieldName = 'VLRMEDIA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIA'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRMEDIAKG: TFloatField
      FieldName = 'VLRMEDIAKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMEDIAKG'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTAL'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRTOTALKG: TFloatField
      FieldName = 'VLRTOTALKG'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRTOTALKG'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPREEMBAL: TFloatField
      FieldName = 'PREEMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREEMBAL'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLREMBAL: TFloatField
      FieldName = 'VLREMBAL'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLREMBAL'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPREOPER: TFloatField
      FieldName = 'PREOPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PREOPER'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLROPER: TFloatField
      FieldName = 'VLROPER'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLROPER'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPERCOMIS: TFloatField
      FieldName = 'PERCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERCOMIS'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRCOMIS: TFloatField
      FieldName = 'VLRCOMIS'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCOMIS'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPERMULTA: TFloatField
      FieldName = 'PERMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PERMULTA'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRMULTA'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRLIQUIDO'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPRELIQUIDO: TFloatField
      FieldName = 'PRELIQUIDO'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRELIQUIDO'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.PRODDES'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemRelVLRCAIXA: TFloatField
      FieldName = 'VLRCAIXA'
      Origin = 'JAEADMIN.FECHA_CLASSIF_ITEM.VLRCAIXA'
      ProviderFlags = []
      DisplayFormat = '#,0.00'
    end
    object cdsItemRelvTamDes: TStringField
      FieldName = 'vTamDes'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemRelvClasCod: TStringField
      FieldName = 'vClasCod'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemRelvClasDes: TStringField
      FieldName = 'vClasDes'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemRelvVarieDes: TStringField
      FieldName = 'vVarieDes'
      ProviderFlags = []
      Size = 30
    end
  end
end
