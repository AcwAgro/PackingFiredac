inherited FfrmFechaEntrada: TFfrmFechaEntrada
  Caption = 'Acerto/Fechamento pela Entrada'
  ClientHeight = 569
  ClientWidth = 1083
  WindowState = wsMaximized
  ExplicitWidth = 1089
  ExplicitHeight = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 553
    Width = 1083
    ExplicitTop = 553
    ExplicitWidth = 1083
    inherited PStatusHistorico: TPanel
      Width = 902
      ExplicitWidth = 902
    end
    inherited pnlTela: TPanel
      Left = 1025
      ExplicitLeft = 1025
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1015
      ExplicitLeft = 1015
    end
  end
  inherited pMenu: TRzPanel
    Height = 553
    ExplicitHeight = 553
    inherited rzpMenu: TRzPanel
      Height = 449
      ExplicitHeight = 449
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          Caption = 'Relat'#243'rio'
          OnClick = sbImprimirClick
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 329
        ExplicitTop = 329
      end
      inherited PPeriodo: TPanel
        Top = 369
        Visible = True
        ExplicitTop = 369
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
    Width = 946
    Height = 553
    ExplicitWidth = 946
    ExplicitHeight = 553
    inherited pcItem: TRzPageControl
      Width = 938
      Height = 545
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 938
      ExplicitHeight = 545
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 936
        ExplicitHeight = 524
        inherited pPesquisa: TRzPanel
          Top = 458
          Width = 936
          ExplicitTop = 458
          ExplicitWidth = 936
          inherited Label1: TLabel
            Width = 928
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 815
            ExplicitLeft = 776
          end
          inherited rbPesquisa: TRzPanel
            Width = 928
            ExplicitWidth = 928
          end
          inherited edPesquisa: TMaskEdit
            Width = 811
            ExplicitWidth = 811
          end
        end
        inherited Panel2: TPanel
          Width = 936
          ExplicitWidth = 936
          inherited Label3: TLabel
            Left = 137
            Width = 798
            Height = 18
            ExplicitLeft = 137
          end
        end
        inherited dbDados: TcxGrid
          Width = 936
          Height = 438
          ExplicitWidth = 936
          ExplicitHeight = 438
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
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
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 200
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Width = 200
            end
            object dbDadosDBTableView1TOTALCX: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCX'
              Width = 70
            end
            object dbDadosDBTableView1TOTALKGBRU: TcxGridDBColumn
              Caption = 'Total Kg.'
              DataBinding.FieldName = 'TOTALKGBRU'
              Width = 70
            end
            object dbDadosDBTableView1SUBTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'SUBTOTAL'
              Width = 100
            end
            object dbDadosDBTableView1TOTALLIQUIDO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALLIQUIDO'
              Visible = False
              VisibleForCustomization = False
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
            object dbDadosDBTableView1TOTALBINS: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALBINS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REGISTRO: TcxGridDBColumn
              Caption = 'Registro L.'
              DataBinding.FieldName = 'REGISTRO'
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
        ExplicitWidth = 936
        ExplicitHeight = 524
        inherited pDados: TPanel
          Width = 936
          Height = 102
          Align = alTop
          BevelOuter = bvRaised
          ExplicitWidth = 936
          ExplicitHeight = 102
          object SB1: TSpeedButton
            Tag = 4
            Left = 109
            Top = 78
            Width = 194
            Height = 20
            Hint = 'Calcula os Valores...'
            Caption = 'C'#225'lcula entrada'
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
            Left = 310
            Top = 78
            Width = 194
            Height = 20
            Hint = 'Calcula os Valores...'
            Caption = 'C'#225'lcula financeiro'
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
            OnClick = SB3Click
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            TabOrder = 0
            object DBEdit14: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
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
            Left = 95
            Top = 5
            Width = 356
            Height = 32
            Caption = ' Produtor '
            TabOrder = 1
            OnExit = GroupBox7Exit
            inline frmPesquisaProd: TfrmPesquisa
              Left = 5
              Top = 14
              Width = 347
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
              ExplicitWidth = 347
              ExplicitHeight = 14
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 14
                ExplicitLeft = 326
                ExplicitTop = 0
                ExplicitHeight = 14
              end
              inherited edtPesquisa: TEdit
                Width = 321
                Height = 14
                CharCase = ecUpperCase
                ExplicitWidth = 321
                ExplicitHeight = 14
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 109
            Top = 37
            Width = 198
            Height = 38
            Caption = ' Per'#237'odo Classifica'#231#227'o '
            TabOrder = 3
            object Label6: TLabel
              Left = 95
              Top = 18
              Width = 8
              Height = 13
              Caption = #224
              Transparent = True
            end
            object DBEdit31: TcxDBDateEdit
              Left = 3
              Top = 16
              AutoSize = False
              DataBinding.DataField = 'DTLOTEINI'
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
              Width = 89
            end
            object DBEdit32: TcxDBDateEdit
              Left = 109
              Top = 16
              AutoSize = False
              DataBinding.DataField = 'DTLOTEFIM'
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
              TabOrder = 1
              OnKeyDown = FormKeyDown
              Height = 19
              Width = 89
            end
          end
          object GroupBox5: TGroupBox
            Left = 310
            Top = 37
            Width = 198
            Height = 38
            Caption = ' Per'#237'odo Financeiro'
            TabOrder = 4
            object Label11: TLabel
              Left = 95
              Top = 18
              Width = 8
              Height = 13
              Caption = #224
              Transparent = True
            end
            object DBEdit34: TcxDBDateEdit
              Left = 104
              Top = 15
              AutoSize = False
              DataBinding.DataField = 'DTFINANFIM'
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
              TabOrder = 1
              OnKeyDown = FormKeyDown
              Height = 21
              Width = 89
            end
            object DBEdit33: TcxDBDateEdit
              Left = 0
              Top = 14
              AutoSize = False
              DataBinding.DataField = 'DTFINANINI'
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
              Height = 21
              Width = 89
            end
          end
          object GroupBox8: TGroupBox
            Left = 5
            Top = 37
            Width = 101
            Height = 38
            Caption = ' Data Acerto '
            TabOrder = 2
            object DBEdit3: TcxDBDateEdit
              Left = 2
              Top = 17
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
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 102
          Width = 936
          Height = 380
          ActivePage = tab_Classi
          Align = alClient
          TabOrder = 1
          object tab_produto: TTabSheet
            Caption = 'Variedade'
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
              Width = 928
              Height = 352
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
                  Expanded = False
                  FieldName = 'PRODDES'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Variedade'
                  Title.Color = 13878195
                  Width = 150
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
                  Title.Caption = 'Qtde. Bins'
                  Title.Color = 13878195
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDEKG'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.Kg.'
                  Title.Color = 13878195
                  Width = 100
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
                  Title.Caption = 'Valor kg.'
                  Title.Color = 13878195
                  Width = 80
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
                  Width = 100
                  Visible = True
                end>
            end
          end
          object tab_Classi: TTabSheet
            Caption = 'Extrato Bins'
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 289
              Height = 352
              Align = alLeft
              DataSource = dsorigem
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu3
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
                  Expanded = False
                  FieldName = 'Descricao'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Color = 13878195
                  Width = 160
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
                  Title.Caption = 'Qtde.Bins'
                  Title.Color = 13878195
                  Width = 80
                  Visible = True
                end>
            end
          end
          object Tab_finan: TTabSheet
            Caption = 'Financeiro'
            ImageIndex = 2
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 737
              Height = 352
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
              OnColExit = DBGrid3ColExit
              OnEnter = DBGrid3Enter
              OnExit = DBGrid3Exit
              OnKeyPress = DBGrid3KeyPress
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
          Top = 482
          Width = 936
          Height = 42
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label13: TLabel
            Left = 154
            Top = 1
            Width = 55
            Height = 13
            Caption = 'Vlr.Total'
            Transparent = True
          end
          object Label9: TLabel
            Left = 76
            Top = 1
            Width = 54
            Height = 13
            Caption = 'Qtde.kg.'
            Transparent = True
          end
          object Label7: TLabel
            Left = 6
            Top = 1
            Width = 61
            Height = 13
            Caption = 'Qtde bins'
            Transparent = True
          end
          object Label19: TLabel
            Left = 250
            Top = 2
            Width = 72
            Height = 13
            Caption = 'Total Multa'
            Transparent = True
          end
          object Label20: TLabel
            Left = 328
            Top = 2
            Width = 84
            Height = 13
            Caption = 'Total L'#237'quido'
            Transparent = True
          end
          object Label21: TLabel
            Left = 428
            Top = 2
            Width = 76
            Height = 13
            Caption = '%Fun.Rural'
            Transparent = True
          end
          object Label22: TLabel
            Left = 510
            Top = 2
            Width = 84
            Height = 13
            Caption = 'Vlr.Fun.Rural'
            Transparent = True
          end
          object Label23: TLabel
            Left = 603
            Top = 2
            Width = 79
            Height = 13
            Caption = 'Total D'#233'bito'
            Transparent = True
          end
          object Label24: TLabel
            Left = 691
            Top = 2
            Width = 84
            Height = 13
            Caption = 'Total Cr'#233'dito'
            Transparent = True
          end
          object Label25: TLabel
            Left = 782
            Top = 2
            Width = 87
            Height = 13
            Caption = 'Vlr.'#224' Receber'
            Transparent = True
          end
          object DBEdit7: TDBEdit
            Left = 154
            Top = 16
            Width = 94
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
            Left = 76
            Top = 16
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
            Top = 16
            Width = 68
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
            Left = 250
            Top = 16
            Width = 76
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
            TabOrder = 4
            OnExit = DBEdit4Exit
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit10: TDBEdit
            Left = 328
            Top = 16
            Width = 97
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
            TabOrder = 3
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit11: TDBEdit
            Left = 428
            Top = 16
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
            TabOrder = 5
            OnExit = DBEdit11Exit
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit15: TDBEdit
            Left = 507
            Top = 16
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
            TabOrder = 6
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit16: TDBEdit
            Left = 601
            Top = 16
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
            TabOrder = 7
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit17: TDBEdit
            Left = 691
            Top = 16
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
            TabOrder = 8
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit18: TDBEdit
            Left = 782
            Top = 16
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
            TabOrder = 9
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    PacketRecords = 30
    Left = 970
    Top = 150
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
      DisplayWidth = 34
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
      DisplayWidth = 20
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.FECHA_CLASSIF.VARIEDES'
      Visible = False
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
      DisplayFormat = '#,0.00'
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
      DisplayLabel = 'Total Bins'
      FieldName = 'TOTALBINS'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALBINS'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosTOTALCX: TBCDField
      DisplayLabel = 'T.Bins'
      DisplayWidth = 7
      FieldName = 'TOTALCX'
      Origin = 'JAEADMIN.FECHA_CLASSIF.TOTALCX'
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
      'select * from fecha_classif '
      'where indusopcao = '#39'E'#39
      ' and registro = -1')
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
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspitem'
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
    end
    object cdsitemREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsitemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
    end
  end
  object dspitem: TDataSetProvider
    DataSet = sqlitem
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 214
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
    OnCalcFields = cdsorigemCalcFields
    OnReconcileError = cdsDadosReconcileError
    Left = 970
    Top = 182
    object cdsorigemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object cdsorigemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsorigemLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object cdsorigemDATA: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsorigemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.00'
    end
    object cdsorigemDescricao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Descricao'
    end
    object cdsorigemREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsorigemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
    end
  end
  object dsporigem: TDataSetProvider
    DataSet = sqlorigem
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 182
  end
  object PopupMenu1: TPopupMenu
    Left = 936
    Top = 312
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
      Origin = 'REGISTRO'
    end
    object cdsfinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsfinanDATA: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/9999;1; '
    end
    object cdsfinanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object cdsfinanVLRDEBITO: TBCDField
      FieldName = 'VLRDEBITO'
      Origin = 'VLRDEBITO'
      DisplayFormat = '#,0.00'
    end
    object cdsfinanVLRCREDITO: TBCDField
      FieldName = 'VLRCREDITO'
      Origin = 'VLRCREDITO'
      DisplayFormat = '#,0.00'
    end
    object cdsfinanMANUAL: TStringField
      FieldName = 'MANUAL'
      Origin = '"MANUAL"'
      Size = 1
    end
    object cdsfinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsfinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
    end
  end
  object dsfinan: TDataSource
    DataSet = cdsfinan
    Left = 1002
    Top = 246
  end
  object ppDados: TppBDEPipeline
    DataSource = dsDados
    UserName = 'Dados'
    Left = 864
    Top = 150
  end
  object ppOrigem: TppBDEPipeline
    DataSource = dsorigem
    UserName = 'Origem'
    Left = 864
    Top = 182
  end
  object ppItem: TppBDEPipeline
    DataSource = dsitem
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
    Left = 864
    Top = 280
    Version = '20.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppItem'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel2: TppLabel
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
        mmTop = 6350
        mmWidth = 29369
        BandType = 1
        LayerName = Foreground2
      end
      object ppDBText1: TppDBText
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
        mmTop = 6350
        mmWidth = 22490
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel3: TppLabel
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
        mmTop = 12171
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground2
      end
      object ppDBText2: TppDBText
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
        mmTop = 12171
        mmWidth = 156898
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmTop = 6350
        mmWidth = 19579
        BandType = 1
        LayerName = Foreground2
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText47'
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
        mmTop = 6350
        mmWidth = 23548
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmTop = 6350
        mmWidth = 2910
        BandType = 1
        LayerName = Foreground2
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText48'
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
        mmTop = 6350
        mmWidth = 24342
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Variedade'
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
        LayerName = Foreground2
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Qtde. bins'
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
        mmLeft = 46831
        mmTop = 26723
        mmWidth = 16140
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel8: TppLabel
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
        mmLeft = 65352
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel10: TppLabel
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
        mmLeft = 110331
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label50'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Movimento Classifica'#231#227'o/Produ'#231#227'o'
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
        LayerName = Foreground2
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 31221
        mmWidth = 198967
        BandType = 1
        LayerName = Foreground2
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor kg.'
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
        mmLeft = 86784
        mmTop = 26723
        mmWidth = 20108
        BandType = 1
        LayerName = Foreground2
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
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDE'
        DataPipeline = ppItem
        DisplayFormat = '0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 46567
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDEKG'
        DataPipeline = ppItem
        DisplayFormat = '0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 4000
        mmLeft = 65088
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText8: TppDBText
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
        mmLeft = 86784
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText9: TppDBText
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
        mmLeft = 109538
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppFinan'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground2
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
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label58'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Movimento Financeiro'
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
              mmTop = 2381
              mmWidth = 56092
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line4'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 12700
              mmWidth = 198120
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line3'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 1058
              mmWidth = 199000
              BandType = 1
              LayerName = Foreground1
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
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 56356
            mmPrintPosition = 0
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label59'
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
              mmLeft = 2910
              mmTop = 9790
              mmWidth = 23019
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer2
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
              mmLeft = 29369
              mmTop = 9790
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer2
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
              mmLeft = 6879
              mmTop = 15081
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer2
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
              mmLeft = 29369
              mmTop = 15081
              mmWidth = 21167
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label61'
              HyperlinkEnabled = False
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vlr.Total Variedade.:'
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText55'
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
              mmLeft = 112184
              mmTop = 10054
              mmWidth = 26988
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel42: TppLabel
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText37: TppDBText
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel43: TppLabel
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel44: TppLabel
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText39: TppDBText
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel45: TppLabel
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText40: TppDBText
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7408
              mmWidth = 198120
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel46: TppLabel
              DesignLayer = ppDesignLayer2
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
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 198120
              BandType = 7
              LayerName = Foreground1
            end
            object ppSubReport2: TppSubReport
              DesignLayer = ppDesignLayer2
              UserName = 'SubReport1'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppOrigem'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 50271
              mmWidth = 197379
              BandType = 7
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = ppOrigem
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
                DataPipelineName = 'ppOrigem'
                object ppTitleBand3: TppTitleBand
                  Background.Brush.Style = bsClear
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                  object ppLabel11: TppLabel
                    DesignLayer = ppDesignLayer1
                    UserName = 'Label11'
                    HyperlinkEnabled = False
                    AutoSize = False
                    Border.mmPadding = 0
                    Caption = 'Variedade'
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
                    mmWidth = 25665
                    BandType = 1
                    LayerName = Foreground
                  end
                  object ppLabel12: TppLabel
                    DesignLayer = ppDesignLayer1
                    UserName = 'Label12'
                    HyperlinkEnabled = False
                    AutoSize = False
                    Border.mmPadding = 0
                    Caption = 'Qtde.Bins'
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
                    mmLeft = 42069
                    mmTop = 8467
                    mmWidth = 17198
                    BandType = 1
                    LayerName = Foreground
                  end
                  object ppLabel13: TppLabel
                    DesignLayer = ppDesignLayer1
                    UserName = 'Label1'
                    HyperlinkEnabled = False
                    AutoSize = False
                    Border.mmPadding = 0
                    Caption = 'Extrato de bins'
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
                    mmTop = 2381
                    mmWidth = 56092
                    BandType = 1
                    LayerName = Foreground
                  end
                  object ppLine4: TppLine
                    DesignLayer = ppDesignLayer1
                    UserName = 'Line1'
                    Border.Weight = 1.000000000000000000
                    Border.mmPadding = 0
                    Weight = 0.750000000000000000
                    mmHeight = 1058
                    mmLeft = 0
                    mmTop = 1058
                    mmWidth = 199000
                    BandType = 1
                    LayerName = Foreground
                  end
                end
                object ppDetailBand3: TppDetailBand
                  Background1.Brush.Style = bsClear
                  Background2.Brush.Style = bsClear
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 3704
                  mmPrintPosition = 0
                  object ppDBText10: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText10'
                    HyperlinkEnabled = False
                    Border.mmPadding = 0
                    DataField = 'Descricao'
                    DataPipeline = ppOrigem
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppOrigem'
                    mmHeight = 3704
                    mmLeft = 5027
                    mmTop = 0
                    mmWidth = 35190
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText11: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText501'
                    HyperlinkEnabled = False
                    Border.mmPadding = 0
                    DataField = 'QTDE'
                    DataPipeline = ppOrigem
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppOrigem'
                    mmHeight = 3725
                    mmLeft = 42863
                    mmTop = 0
                    mmWidth = 16404
                    BandType = 4
                    LayerName = Foreground
                  end
                end
                object ppSummaryBand2: TppSummaryBand
                  Background.Brush.Style = bsClear
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
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
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Total...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 20108
        mmTop = 529
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDE'
        DataPipeline = ppItem
        DisplayFormat = '0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3704
        mmLeft = 44979
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'QTDEKG'
        DataPipeline = ppItem
        DisplayFormat = '0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3704
        mmLeft = 64823
        mmTop = 529
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'VLRTOTAL'
        DataPipeline = ppItem
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItem'
        mmHeight = 3704
        mmLeft = 109538
        mmTop = 529
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 27781
        mmTop = 0
        mmWidth = 105834
        BandType = 7
        LayerName = Foreground2
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer3
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 87313
        mmTop = 529
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground2
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  if DB' +
          'Calc2.Value <> 0 then'#13#10'    Value :=  DBCalc4.Value /  DBCalc2.Va' +
          'lue'#13#10'  else'#13#10'    Value :=  0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
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
  object PopupMenu3: TPopupMenu
    Left = 936
    Top = 344
    object MenuItem3: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem4Click
    end
  end
  object sqlorigem: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from fecha_classif_orig where registro = -1'
      'order by lote')
    Left = 906
    Top = 182
    object sqlorigemLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlorigemREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object sqlorigemLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object sqlorigemDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlorigemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlorigemREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlorigemREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    end
  end
  object sqlfinan: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * '
      'from fecha_classif_finan'
      'where registro = -1'
      'order by data')
    Left = 906
    Top = 246
    object sqlfinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlfinanREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object sqlfinanDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlfinanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object sqlfinanVLRDEBITO: TBCDField
      FieldName = 'VLRDEBITO'
      Origin = 'VLRDEBITO'
      Precision = 18
    end
    object sqlfinanVLRCREDITO: TBCDField
      FieldName = 'VLRCREDITO'
      Origin = 'VLRCREDITO'
      Precision = 18
    end
    object sqlfinanMANUAL: TStringField
      FieldName = 'MANUAL'
      Origin = '"MANUAL"'
      Size = 1
    end
    object sqlfinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlfinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
    end
  end
end
