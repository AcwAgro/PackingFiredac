inherited FfrmCompra: TFfrmCompra
  Caption = 'Compra de mercadoria/insumos'
  ClientHeight = 580
  ClientWidth = 1014
  ExplicitWidth = 1020
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 564
    Width = 1014
    ExplicitTop = 564
    ExplicitWidth = 1014
    inherited PStatusHistorico: TPanel
      Width = 833
      ExplicitWidth = 833
    end
    inherited pnlTela: TPanel
      Left = 956
      ExplicitLeft = 956
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 946
      ExplicitLeft = 946
    end
  end
  inherited pMenu: TRzPanel
    Height = 564
    ExplicitHeight = 564
    inherited rzpMenu: TRzPanel
      Height = 460
      ExplicitHeight = 460
      inherited sbProximo: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 170
        ExplicitWidth = 126
      end
      inherited rbgAtivo: TRadioGroup
        Top = 340
        ExplicitTop = 340
      end
      inherited PPeriodo: TPanel
        Top = 380
        Visible = True
        ExplicitTop = 380
        inherited sbPeriodo: TSpeedButton
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
        inherited rbPeriodo: TGroupBox
          Visible = True
          inherited dtFinal: TDateTimePicker
            Top = 35
            ExplicitTop = 35
          end
        end
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
        ExplicitTop = 22
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 877
    Height = 564
    ExplicitWidth = 877
    ExplicitHeight = 564
    inherited pcItem: TRzPageControl
      Width = 869
      Height = 556
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 869
      ExplicitHeight = 556
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 867
        ExplicitHeight = 535
        inherited pPesquisa: TRzPanel
          Top = 469
          Width = 867
          ExplicitTop = 469
          ExplicitWidth = 867
          inherited Label1: TLabel
            Width = 859
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 746
            ExplicitLeft = 746
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
          Height = 449
          ExplicitWidth = 867
          ExplicitHeight = 449
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRPRODUTO
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRDESC
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRIPI
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRSEGURO
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRNOTA
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 55
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1NOTA: TcxGridDBColumn
              DataBinding.FieldName = 'NOTA'
              Width = 80
            end
            object dbDadosDBTableView1SERIE: TcxGridDBColumn
              DataBinding.FieldName = 'SERIE'
              Width = 40
            end
            object dbDadosDBTableView1ENTREGA: TcxGridDBColumn
              DataBinding.FieldName = 'ENTREGA'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 200
            end
            object dbDadosDBTableView1VLRPRODUTO: TcxGridDBColumn
              Caption = 'SubTotal'
              DataBinding.FieldName = 'VLRPRODUTO'
              Width = 100
            end
            object dbDadosDBTableView1VLRDESC: TcxGridDBColumn
              Caption = 'Vlr.Desc.'
              DataBinding.FieldName = 'VLRDESC'
              Width = 100
            end
            object dbDadosDBTableView1VLRIPI: TcxGridDBColumn
              Caption = 'Vlr.IPI'
              DataBinding.FieldName = 'VLRIPI'
              Width = 100
            end
            object dbDadosDBTableView1VLRSEGURO: TcxGridDBColumn
              Caption = 'Vlr.Seguro'
              DataBinding.FieldName = 'VLRSEGURO'
            end
            object dbDadosDBTableView1VLRNOTA: TcxGridDBColumn
              DataBinding.FieldName = 'VLRNOTA'
              Width = 100
            end
            object dbDadosDBTableView1VENDECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VENDECOD'
              Visible = False
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
            end
            object dbDadosDBTableView1CANCELADA: TcxGridDBColumn
              DataBinding.FieldName = 'CANCELADA'
              Visible = False
            end
            object dbDadosDBTableView1NATURCOD: TcxGridDBColumn
              DataBinding.FieldName = 'NATURCOD'
              Visible = False
            end
            object dbDadosDBTableView1DADOSCOD: TcxGridDBColumn
              DataBinding.FieldName = 'DADOSCOD'
              Visible = False
            end
            object dbDadosDBTableView1TRTIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TRTIPO'
              Visible = False
            end
            object dbDadosDBTableView1TRCOD: TcxGridDBColumn
              DataBinding.FieldName = 'TRCOD'
              Visible = False
            end
            object dbDadosDBTableView1TRDES: TcxGridDBColumn
              DataBinding.FieldName = 'TRDES'
              Visible = False
            end
            object dbDadosDBTableView1FORMA: TcxGridDBColumn
              DataBinding.FieldName = 'FORMA'
              Visible = False
            end
            object dbDadosDBTableView1PARCELA: TcxGridDBColumn
              DataBinding.FieldName = 'PARCELA'
              Visible = False
            end
            object dbDadosDBTableView1VLRENTRADA: TcxGridDBColumn
              DataBinding.FieldName = 'VLRENTRADA'
              Visible = False
            end
            object dbDadosDBTableView1DESCP: TcxGridDBColumn
              DataBinding.FieldName = 'DESCP'
              Visible = False
            end
            object dbDadosDBTableView1VLRBASE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRBASE'
              Visible = False
            end
            object dbDadosDBTableView1VLRICMS: TcxGridDBColumn
              DataBinding.FieldName = 'VLRICMS'
              Visible = False
            end
            object dbDadosDBTableView1VLRFRETE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRFRETE'
              Visible = False
            end
            object dbDadosDBTableView1PESOBRU: TcxGridDBColumn
              DataBinding.FieldName = 'PESOBRU'
              Visible = False
            end
            object dbDadosDBTableView1PESOLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'PESOLIQ'
              Visible = False
            end
            object dbDadosDBTableView1RECEITU: TcxGridDBColumn
              DataBinding.FieldName = 'RECEITU'
              Visible = False
            end
            object dbDadosDBTableView1QTDESP: TcxGridDBColumn
              DataBinding.FieldName = 'QTDESP'
              Visible = False
            end
            object dbDadosDBTableView1OBS1: TcxGridDBColumn
              DataBinding.FieldName = 'OBS1'
              Visible = False
            end
            object dbDadosDBTableView1NIMPRE: TcxGridDBColumn
              DataBinding.FieldName = 'NIMPRE'
              Visible = False
            end
            object dbDadosDBTableView1DIF: TcxGridDBColumn
              DataBinding.FieldName = 'DIF'
              Visible = False
            end
            object dbDadosDBTableView1VLRICMSFRE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRICMSFRE'
              Visible = False
            end
            object dbDadosDBTableView1ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
              Visible = False
            end
            object dbDadosDBTableView1TIPONF: TcxGridDBColumn
              DataBinding.FieldName = 'TIPONF'
              Visible = False
            end
            object dbDadosDBTableView1EMPRECOD: TcxGridDBColumn
              DataBinding.FieldName = 'EMPRECOD'
              Visible = False
            end
            object dbDadosDBTableView1ACESOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'ACESOCOD'
              Visible = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 867
        ExplicitHeight = 535
        inherited pDados: TPanel
          Width = 867
          Height = 68
          Align = alTop
          ParentBackground = False
          ParentColor = False
          ExplicitWidth = 867
          ExplicitHeight = 68
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 0
            object DBEdit11: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'LANC'
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
            end
          end
          object GroupBox2: TGroupBox
            Left = 92
            Top = 5
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
            object DBEdit3: TcxDBDateEdit
              Left = 2
              Top = 12
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
              OnKeyPress = FormKeyPress
              Height = 18
              Width = 98
            end
          end
          object GroupBox3: TGroupBox
            Left = 195
            Top = 5
            Width = 116
            Height = 32
            Caption = ' N. F. n'#186' '
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 108
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NOTA'
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
            Width = 356
            Height = 32
            Caption = ' Fornecedor '
            TabOrder = 6
            OnExit = GroupBox4Exit
            inline frmPesquisa: TfrmPesquisa
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
                Width = 318
                Height = 14
                CharCase = ecUpperCase
                ExplicitWidth = 318
                ExplicitHeight = 14
              end
            end
          end
          object GroupBox6: TGroupBox
            Left = 313
            Top = 5
            Width = 62
            Height = 32
            Caption = ' S'#233'rie '
            TabOrder = 3
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 52
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox7: TGroupBox
            Left = 376
            Top = 5
            Width = 83
            Height = 32
            Caption = ' Modelo '
            TabOrder = 4
            object DBEdit4: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'TIPONF'
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
            Left = 462
            Top = 5
            Width = 114
            Height = 32
            Caption = ' Data Recbto.'
            TabOrder = 5
            object DBEdit6: TcxDBDateEdit
              Left = 2
              Top = 13
              Align = alBottom
              AutoSize = False
              DataBinding.DataField = 'ENTREGA'
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
              Height = 17
              Width = 110
            end
          end
        end
        object GroupBox14: TGroupBox
          Left = 0
          Top = 68
          Width = 867
          Height = 238
          Align = alClient
          Caption = ' Mercadoria '
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 863
            Height = 221
            Hint = '999 - sai da planilha'
            Align = alClient
            DataSource = dsDetalhe
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ShowHint = True
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
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 51
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'DESCRICAO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o/Mercadoria'
                Title.Color = 13878195
                Width = 307
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Und.'
                Title.Color = 13878195
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIT'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o unit.'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMSP'
                Title.Alignment = taCenter
                Title.Caption = 'Aliq.%'
                Title.Color = 13878195
                Width = 50
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'QTDE_DIV'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Qt.Conv.'
                Title.Color = 13878195
                Width = 70
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'QTDE_REAL'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Qt.Estoque'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end>
          end
        end
        object GroupBox15: TGroupBox
          Left = 0
          Top = 306
          Width = 867
          Height = 188
          Align = alBottom
          Color = clWhite
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object Label19: TLabel
            Left = 75
            Top = 167
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total...:'
            Transparent = True
          end
          object GroupBox9: TGroupBox
            Left = 5
            Top = 7
            Width = 110
            Height = 32
            Caption = ' Sub.Total '
            Enabled = False
            TabOrder = 0
            object DBEdit7: TDBEdit
              Left = 2
              Top = 15
              Width = 106
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'VLRPRODUTO'
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
            end
          end
          object GroupBox10: TGroupBox
            Left = 118
            Top = 7
            Width = 96
            Height = 32
            Caption = ' %Desconto '
            TabOrder = 1
            object DBEdit9: TDBEdit
              Left = 2
              Top = 15
              Width = 92
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DESCP'
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
            end
          end
          object GroupBox11: TGroupBox
            Left = 217
            Top = 7
            Width = 105
            Height = 32
            Caption = ' Vlr.Desconto '
            TabOrder = 2
            object DBEdit10: TDBEdit
              Left = 2
              Top = 15
              Width = 101
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VLRDESC'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit10Exit
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox13: TGroupBox
            Left = 325
            Top = 7
            Width = 87
            Height = 32
            Caption = ' Vlr.IPI '
            TabOrder = 3
            object DBEdit14: TDBEdit
              Left = 2
              Top = 15
              Width = 83
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VLRIPI'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit10Exit
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox5: TGroupBox
            Left = 414
            Top = 7
            Width = 90
            Height = 32
            Caption = ' Vlr.Seguro '
            TabOrder = 4
            object DBEdit5: TDBEdit
              Left = 2
              Top = 15
              Width = 86
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VLRSEGURO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit10Exit
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox12: TGroupBox
            Left = 508
            Top = 7
            Width = 110
            Height = 32
            Caption = ' Total '
            TabOrder = 5
            object DBEdit13: TDBEdit
              Left = 2
              Top = 15
              Width = 106
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'VLRNOTA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnExit = DBEdit13Exit
              OnKeyDown = FormKeyDown
            end
          end
          object DBGrid2: TDBGrid
            Left = 3
            Top = 39
            Width = 723
            Height = 122
            Hint = '999 - sai da planilha'
            DataSource = dsFinan
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu2
            ShowHint = True
            TabOrder = 6
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
                FieldName = 'PARC'
                Title.Alignment = taCenter
                Title.Caption = 'Parc.'
                Title.Color = 13878195
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCTO'
                Title.Alignment = taCenter
                Title.Caption = 'DT.Vencto.'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Parcela'
                Title.Color = 13878195
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANCOD'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.'
                Title.Color = 13878195
                Width = 30
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'BANDES'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Conta financeira'
                Title.Color = 13878195
                Width = 172
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANDOC'
                Title.Alignment = taCenter
                Title.Caption = 'Docto.N'#186
                Title.Color = 13878195
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANEMI'
                Title.Alignment = taCenter
                Title.Caption = 'Emitente'
                Title.Color = 13878195
                Width = 201
                Visible = True
              end>
          end
          object DBEdit8: TDBEdit
            Left = 130
            Top = 164
            Width = 93
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'VLRBASE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnExit = DBEdit8Exit
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 494
          Width = 867
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 867
            Height = 41
            Align = alClient
            Caption = ' Hist'#243'rico '
            TabOrder = 0
            object DBEdit12: TDBEdit
              Left = 2
              Top = 15
              Width = 863
              Height = 24
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'OBS1'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit10Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 690
    Top = 134
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'LANC'
      Origin = 'JAEADMIN.NFCOMPR.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.NFCOMPR.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosNOTA: TIntegerField
      DisplayLabel = 'N.F. n'#186
      FieldName = 'NOTA'
      Origin = 'JAEADMIN.NFCOMPR.NOTA'
    end
    object cdsDadosSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.NFCOMPR.SERIE'
      Size = 2
    end
    object cdsDadosENTREGA: TSQLTimeStampField
      DisplayLabel = 'DT.Recbto.'
      DisplayWidth = 10
      FieldName = 'ENTREGA'
      Origin = 'JAEADMIN.NFCOMPR.ENTREGA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.NFCOMPR.DESCRICAO'
      Size = 50
    end
    object cdsDadosVLRNOTA: TBCDField
      DisplayLabel = 'Vlr.Nota'
      FieldName = 'VLRNOTA'
      Origin = 'JAEADMIN.NFCOMPR.VLRNOTA'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'JAEADMIN.NFCOMPR.VENDECOD'
      Visible = False
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.NFCOMPR.CODIGO'
      Visible = False
    end
    object cdsDadosCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Origin = 'JAEADMIN.NFCOMPR.CANCELADA'
      Visible = False
      Size = 1
    end
    object cdsDadosNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'JAEADMIN.NFCOMPR.NATURCOD'
      Visible = False
    end
    object cdsDadosDADOSCOD: TIntegerField
      FieldName = 'DADOSCOD'
      Origin = 'JAEADMIN.NFCOMPR.DADOSCOD'
      Visible = False
    end
    object cdsDadosTRTIPO: TStringField
      FieldName = 'TRTIPO'
      Origin = 'JAEADMIN.NFCOMPR.TRTIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosTRCOD: TIntegerField
      FieldName = 'TRCOD'
      Origin = 'JAEADMIN.NFCOMPR.TRCOD'
      Visible = False
    end
    object cdsDadosTRDES: TStringField
      FieldName = 'TRDES'
      Origin = 'JAEADMIN.NFCOMPR.TRDES'
      Visible = False
      Size = 50
    end
    object cdsDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.NFCOMPR.FORMA'
      Visible = False
      Size = 1
    end
    object cdsDadosPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'JAEADMIN.NFCOMPR.PARCELA'
      Visible = False
    end
    object cdsDadosVLRENTRADA: TBCDField
      FieldName = 'VLRENTRADA'
      Origin = 'JAEADMIN.NFCOMPR.VLRENTRADA'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosDESCP: TBCDField
      FieldName = 'DESCP'
      Origin = 'JAEADMIN.NFCOMPR.DESCP'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'JAEADMIN.NFCOMPR.VLRDESC'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'JAEADMIN.NFCOMPR.VLRBASE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'JAEADMIN.NFCOMPR.VLRICMS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Origin = 'JAEADMIN.NFCOMPR.VLRFRETE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Origin = 'JAEADMIN.NFCOMPR.VLRPRODUTO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'JAEADMIN.NFCOMPR.VLRIPI'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.NFCOMPR.PESOBRU'
      Visible = False
    end
    object cdsDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.NFCOMPR.PESOLIQ'
      Visible = False
    end
    object cdsDadosRECEITU: TIntegerField
      FieldName = 'RECEITU'
      Origin = 'JAEADMIN.NFCOMPR.RECEITU'
      Visible = False
    end
    object cdsDadosQTDESP: TStringField
      FieldName = 'QTDESP'
      Origin = 'JAEADMIN.NFCOMPR.QTDESP'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'JAEADMIN.NFCOMPR.OBS1'
      Visible = False
      Size = 122
    end
    object cdsDadosNIMPRE: TStringField
      FieldName = 'NIMPRE'
      Origin = 'JAEADMIN.NFCOMPR.NIMPRE'
      Visible = False
      Size = 1
    end
    object cdsDadosDIF: TStringField
      FieldName = 'DIF'
      Origin = 'JAEADMIN.NFCOMPR.DIF'
      Visible = False
      Size = 1
    end
    object cdsDadosVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Origin = 'JAEADMIN.NFCOMPR.VLRSEGURO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRICMSFRE: TBCDField
      FieldName = 'VLRICMSFRE'
      Origin = 'JAEADMIN.NFCOMPR.VLRICMSFRE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.NFCOMPR.ESTADO'
      Visible = False
      Size = 2
    end
    object cdsDadosTIPONF: TStringField
      FieldName = 'TIPONF'
      Origin = 'JAEADMIN.NFCOMPR.TIPONF'
      Visible = False
      Size = 10
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.NFCOMPR.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.NFCOMPR.ACESOCOD'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.NFCOMPR.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.NFCOMPR.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 658
    Top = 134
  end
  inherited dsDados: TDataSource
    Left = 722
    Top = 134
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from nfcompr where lanc = -1')
    Left = 626
    Top = 134
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.NFCOMPR.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'JAEADMIN.NFCOMPR.NOTA'
    end
    object sqlDadosSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.NFCOMPR.SERIE'
      Size = 2
    end
    object sqlDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'JAEADMIN.NFCOMPR.VENDECOD'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.NFCOMPR.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.NFCOMPR.DESCRICAO'
      Size = 50
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.NFCOMPR.DATA'
    end
    object sqlDadosENTREGA: TSQLTimeStampField
      FieldName = 'ENTREGA'
      Origin = 'JAEADMIN.NFCOMPR.ENTREGA'
    end
    object sqlDadosCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Origin = 'JAEADMIN.NFCOMPR.CANCELADA'
      Size = 1
    end
    object sqlDadosNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'JAEADMIN.NFCOMPR.NATURCOD'
    end
    object sqlDadosDADOSCOD: TIntegerField
      FieldName = 'DADOSCOD'
      Origin = 'JAEADMIN.NFCOMPR.DADOSCOD'
    end
    object sqlDadosTRTIPO: TStringField
      FieldName = 'TRTIPO'
      Origin = 'JAEADMIN.NFCOMPR.TRTIPO'
      Size = 1
    end
    object sqlDadosTRCOD: TIntegerField
      FieldName = 'TRCOD'
      Origin = 'JAEADMIN.NFCOMPR.TRCOD'
    end
    object sqlDadosTRDES: TStringField
      FieldName = 'TRDES'
      Origin = 'JAEADMIN.NFCOMPR.TRDES'
      Size = 50
    end
    object sqlDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.NFCOMPR.FORMA'
      Size = 1
    end
    object sqlDadosPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'JAEADMIN.NFCOMPR.PARCELA'
    end
    object sqlDadosVLRENTRADA: TBCDField
      FieldName = 'VLRENTRADA'
      Origin = 'JAEADMIN.NFCOMPR.VLRENTRADA'
    end
    object sqlDadosDESCP: TBCDField
      FieldName = 'DESCP'
      Origin = 'JAEADMIN.NFCOMPR.DESCP'
    end
    object sqlDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'JAEADMIN.NFCOMPR.VLRDESC'
    end
    object sqlDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'JAEADMIN.NFCOMPR.VLRBASE'
    end
    object sqlDadosVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'JAEADMIN.NFCOMPR.VLRICMS'
    end
    object sqlDadosVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Origin = 'JAEADMIN.NFCOMPR.VLRFRETE'
    end
    object sqlDadosVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Origin = 'JAEADMIN.NFCOMPR.VLRPRODUTO'
    end
    object sqlDadosVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'JAEADMIN.NFCOMPR.VLRIPI'
    end
    object sqlDadosVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Origin = 'JAEADMIN.NFCOMPR.VLRNOTA'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.NFCOMPR.PESOBRU'
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.NFCOMPR.PESOLIQ'
    end
    object sqlDadosRECEITU: TIntegerField
      FieldName = 'RECEITU'
      Origin = 'JAEADMIN.NFCOMPR.RECEITU'
    end
    object sqlDadosQTDESP: TStringField
      FieldName = 'QTDESP'
      Origin = 'JAEADMIN.NFCOMPR.QTDESP'
      Size = 100
    end
    object sqlDadosNIMPRE: TStringField
      FieldName = 'NIMPRE'
      Origin = 'JAEADMIN.NFCOMPR.NIMPRE'
      Size = 1
    end
    object sqlDadosDIF: TStringField
      FieldName = 'DIF'
      Origin = 'JAEADMIN.NFCOMPR.DIF'
      Size = 1
    end
    object sqlDadosVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Origin = 'JAEADMIN.NFCOMPR.VLRSEGURO'
    end
    object sqlDadosVLRICMSFRE: TBCDField
      FieldName = 'VLRICMSFRE'
      Origin = 'JAEADMIN.NFCOMPR.VLRICMSFRE'
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.NFCOMPR.ESTADO'
      Size = 2
    end
    object sqlDadosTIPONF: TStringField
      FieldName = 'TIPONF'
      Origin = 'JAEADMIN.NFCOMPR.TIPONF'
      Size = 10
    end
    object sqlDadosOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'JAEADMIN.NFCOMPR.OBS1'
      Size = 122
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.NFCOMPR.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.NFCOMPR.ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.NFCOMPR.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.NFCOMPR.REG_ID'
    end
  end
  object dsFinan: TDataSource
    DataSet = cdsFinan
    Left = 722
    Top = 198
  end
  object cdsFinan: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspFinan'
    BeforePost = cdsFinanBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 690
    Top = 198
    object cdsFinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFinanLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsFinanPARC: TIntegerField
      FieldName = 'PARC'
      Origin = 'PARC'
    end
    object cdsFinanVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
      EditMask = '!99/99/9999;1; '
    end
    object cdsFinanVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsFinanPERC: TBCDField
      FieldName = 'PERC'
      Origin = 'PERC'
      DisplayFormat = '#,0.00'
    end
    object cdsFinanVLR: TBCDField
      FieldName = 'VLR'
      Origin = 'VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsFinanCAR: TIntegerField
      FieldName = 'CAR'
      Origin = 'CAR'
    end
    object cdsFinanTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object cdsFinanBANCOD: TIntegerField
      FieldName = 'BANCOD'
      Origin = 'BANCOD'
    end
    object cdsFinanBANDOC: TStringField
      FieldName = 'BANDOC'
      Origin = 'BANDOC'
      Size = 15
    end
    object cdsFinanBANEMI: TStringField
      FieldName = 'BANEMI'
      Origin = 'BANEMI'
      Size = 50
    end
    object cdsFinanEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsFinanACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsFinanBANDES: TStringField
      FieldName = 'BANDES'
      Origin = 'BANDES'
    end
    object cdsFinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsFinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspFinan: TDataSetProvider
    DataSet = sqlFinan
    UpdateMode = upWhereKeyOnly
    Left = 658
    Top = 198
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 722
    Top = 166
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    BeforePost = cdsDetalheBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 690
    Top = 166
    object cdsDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsDetalheDATA: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDetalheFORNECED: TIntegerField
      FieldName = 'FORNECED'
      Origin = 'FORNECED'
    end
    object cdsDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object cdsDetalheUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object cdsDetalhePESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      DisplayFormat = '#,0.###'
    end
    object cdsDetalhePESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      DisplayFormat = '#,0.###'
    end
    object cdsDetalheICMSP: TBCDField
      FieldName = 'ICMSP'
      Origin = 'ICMSP'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheIPIP: TBCDField
      FieldName = 'IPIP'
      Origin = 'IPIP'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheCST: TBCDField
      FieldName = 'CST'
      Origin = 'CST'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'VLRICMS'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'VLRIPI'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheSUBST: TBCDField
      FieldName = 'SUBST'
      Origin = 'SUBST'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.###'
    end
    object cdsDetalheUNIT: TBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVENDA: TBCDField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 10
    end
    object cdsDetalhePERVEN: TBCDField
      FieldName = 'PERVEN'
      Origin = 'PERVEN'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'GRUPOCOD'
    end
    object cdsDetalheCTCCOD: TIntegerField
      FieldName = 'CTCCOD'
      Origin = 'CTCCOD'
    end
    object cdsDetalheCTCDES: TStringField
      FieldName = 'CTCDES'
      Origin = 'CTCDES'
      Size = 30
    end
    object cdsDetalheEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsDetalheACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsDetalheQTDE_DIV: TBCDField
      FieldName = 'QTDE_DIV'
      Origin = 'QTDE_DIV'
    end
    object cdsDetalheQTDE_REAL: TBCDField
      FieldName = 'QTDE_REAL'
      Origin = 'QTDE_REAL'
    end
    object cdsDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = sqlDetalhe
    UpdateMode = upWhereKeyOnly
    Left = 658
    Top = 166
  end
  object PopupMenu1: TPopupMenu
    Left = 800
    Top = 192
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 808
    Top = 232
    object MenuItem2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem2Click
    end
  end
  object sqlDetalhe: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfcompco where lanc = -1')
    Left = 626
    Top = 166
    object sqlDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlDetalheDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlDetalheFORNECED: TIntegerField
      FieldName = 'FORNECED'
      Origin = 'FORNECED'
    end
    object sqlDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlDetalheUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object sqlDetalhePESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlDetalhePESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      Precision = 18
    end
    object sqlDetalheICMSP: TBCDField
      FieldName = 'ICMSP'
      Origin = 'ICMSP'
      Precision = 18
    end
    object sqlDetalheIPIP: TBCDField
      FieldName = 'IPIP'
      Origin = 'IPIP'
      Precision = 18
    end
    object sqlDetalheCST: TBCDField
      FieldName = 'CST'
      Origin = 'CST'
      Precision = 18
    end
    object sqlDetalheVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'VLRICMS'
      Precision = 18
    end
    object sqlDetalheVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'VLRIPI'
      Precision = 18
    end
    object sqlDetalheSUBST: TBCDField
      FieldName = 'SUBST'
      Origin = 'SUBST'
      Precision = 18
    end
    object sqlDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlDetalheUNIT: TBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Precision = 18
    end
    object sqlDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlDetalheVENDA: TBCDField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      Precision = 18
    end
    object sqlDetalheLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 10
    end
    object sqlDetalhePERVEN: TBCDField
      FieldName = 'PERVEN'
      Origin = 'PERVEN'
      Precision = 18
    end
    object sqlDetalheGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'GRUPOCOD'
    end
    object sqlDetalheCTCCOD: TIntegerField
      FieldName = 'CTCCOD'
      Origin = 'CTCCOD'
    end
    object sqlDetalheCTCDES: TStringField
      FieldName = 'CTCDES'
      Origin = 'CTCDES'
      Size = 30
    end
    object sqlDetalheEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlDetalheACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlDetalheQTDE_DIV: TBCDField
      FieldName = 'QTDE_DIV'
      Origin = 'QTDE_DIV'
      Precision = 18
    end
    object sqlDetalheQTDE_REAL: TBCDField
      FieldName = 'QTDE_REAL'
      Origin = 'QTDE_REAL'
      Precision = 18
    end
    object sqlDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqlFinan: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from NFCOMPFI where lanc = -1')
    Left = 626
    Top = 198
    object sqlFinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlFinanLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlFinanPARC: TIntegerField
      FieldName = 'PARC'
      Origin = 'PARC'
    end
    object sqlFinanVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object sqlFinanVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlFinanPERC: TBCDField
      FieldName = 'PERC'
      Origin = 'PERC'
      Precision = 18
    end
    object sqlFinanVLR: TBCDField
      FieldName = 'VLR'
      Origin = 'VLR'
      Precision = 18
    end
    object sqlFinanCAR: TIntegerField
      FieldName = 'CAR'
      Origin = 'CAR'
    end
    object sqlFinanTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object sqlFinanBANCOD: TIntegerField
      FieldName = 'BANCOD'
      Origin = 'BANCOD'
    end
    object sqlFinanBANDOC: TStringField
      FieldName = 'BANDOC'
      Origin = 'BANDOC'
      Size = 15
    end
    object sqlFinanBANEMI: TStringField
      FieldName = 'BANEMI'
      Origin = 'BANEMI'
      Size = 50
    end
    object sqlFinanEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlFinanACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlFinanBANDES: TStringField
      FieldName = 'BANDES'
      Origin = 'BANDES'
    end
    object sqlFinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlFinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
