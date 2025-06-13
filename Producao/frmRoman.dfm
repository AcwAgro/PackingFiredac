inherited FfrmRoman: TFfrmRoman
  Caption = 'Romaneio de lotes de classifica'#231#227'o'
  ClientHeight = 619
  ClientWidth = 1133
  ExplicitWidth = 1139
  ExplicitHeight = 648
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 603
    Width = 1133
    ExplicitTop = 603
    ExplicitWidth = 1133
    inherited PStatusHistorico: TPanel
      Width = 952
      ExplicitWidth = 952
    end
    inherited pnlTela: TPanel
      Left = 1075
      ExplicitLeft = 1075
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1065
      ExplicitLeft = 1065
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 603
    ExplicitHeight = 603
    inherited rzpMenu: TRzPanel
      Height = 499
      ExplicitHeight = 499
      inherited sbEditar: TSpeedButton
        ExplicitLeft = 2
        ExplicitWidth = 129
      end
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 2
        ExplicitTop = 10
        ExplicitWidth = 129
      end
      inherited sbProximo: TSpeedButton
        ExplicitLeft = 2
        ExplicitTop = 170
        ExplicitWidth = 129
      end
      inherited rbgAtivo: TRadioGroup
        Top = 379
        ExplicitTop = 379
      end
      inherited PPeriodo: TPanel
        Top = 419
        Visible = True
        ExplicitTop = 419
        inherited sbPeriodo: TSpeedButton
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 60
          ExplicitWidth = 129
        end
        inherited rbPeriodo: TGroupBox
          Visible = True
        end
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
        ExplicitLeft = 1
        ExplicitWidth = 126
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 996
    Height = 603
    ExplicitWidth = 996
    ExplicitHeight = 603
    inherited pcItem: TRzPageControl
      Width = 988
      Height = 595
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 988
      ExplicitHeight = 595
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 986
        ExplicitHeight = 574
        inherited pPesquisa: TRzPanel
          Top = 508
          Width = 986
          ExplicitTop = 508
          ExplicitWidth = 986
          inherited Label1: TLabel
            Width = 978
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 865
            ExplicitLeft = 865
          end
          inherited rbPesquisa: TRzPanel
            Width = 978
            ExplicitWidth = 978
          end
          inherited edPesquisa: TMaskEdit
            Width = 861
            ExplicitWidth = 861
          end
        end
        inherited Panel2: TPanel
          Width = 986
          ExplicitWidth = 986
          inherited Label3: TLabel
            Left = 137
            Width = 848
            Height = 18
            ExplicitLeft = 568
          end
        end
        inherited dbDados: TcxGrid
          Width = 986
          Height = 488
          ExplicitWidth = 986
          ExplicitHeight = 488
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDEBIN
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDEMER
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1DATAFIN: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFIN'
            end
            object dbDadosDBTableView1LOTE: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE'
            end
            object dbDadosDBTableView1QTDEBIN: TcxGridDBColumn
              Caption = 'Qtde. Bins.'
              DataBinding.FieldName = 'QTDEBIN'
            end
            object dbDadosDBTableView1QTDEMER: TcxGridDBColumn
              Caption = 'Qtde.Cx.'
              DataBinding.FieldName = 'QTDEMER'
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 200
            end
            object dbDadosDBTableView1prodnom: TcxGridDBColumn
              Caption = 'Produtor'
              DataBinding.FieldName = 'ZZPRODNOM'
              Width = 250
            end
            object dbDadosDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
            end
            object dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn
              DataBinding.FieldName = 'CODLOTECLASS'
            end
            object dbDadosDBTableView1PESOBRU: TcxGridDBColumn
              Caption = 'Peso Bruto'
              DataBinding.FieldName = 'PESOBRU'
            end
            object dbDadosDBTableView1PESOLIQ: TcxGridDBColumn
              Caption = 'Peso Liq.'
              DataBinding.FieldName = 'PESOLIQ'
            end
            object dbDadosDBTableView1LOCALCOD: TcxGridDBColumn
              DataBinding.FieldName = 'LOCALCOD'
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              DataBinding.FieldName = 'OBS'
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
            end
            object dbDadosDBTableView1vBinsMediaLiq: TcxGridDBColumn
              Caption = 'M'#233'dia'
              DataBinding.FieldName = 'vBinsMediaLiq'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1vBinsMediaBru: TcxGridDBColumn
              Caption = 'M'#233'dia Proc.'
              DataBinding.FieldName = 'vBinsMediaBru'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1HORINI: TcxGridDBColumn
              DataBinding.FieldName = 'HORINI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1HORFIM: TcxGridDBColumn
              DataBinding.FieldName = 'HORFIM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOPRO: TcxGridDBColumn
              DataBinding.FieldName = 'PESOPRO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PERCA: TcxGridDBColumn
              DataBinding.FieldName = 'PERCA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PEREC: TcxGridDBColumn
              DataBinding.FieldName = 'PEREC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VARIECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VARIECOD'
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
            object dbDadosDBTableView1SAFRA: TcxGridDBColumn
              DataBinding.FieldName = 'SAFRA'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 986
        ExplicitHeight = 574
        inherited pDados: TPanel
          Width = 986
          Height = 114
          Align = alTop
          ExplicitWidth = 986
          ExplicitHeight = 114
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 0
            object DBEdit14: TDBEdit
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
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 84
            Height = 36
            Caption = ' Lote '
            TabOrder = 2
            OnExit = GroupBox2Exit
            object DBEdit15: TDBEdit
              Left = 5
              Top = 18
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'LOTE'
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
            Left = 91
            Top = 5
            Width = 356
            Height = 32
            Caption = ' Variedade '
            TabOrder = 1
            inline frmPesquisaVarie: TfrmPesquisa
              Left = 4
              Top = 14
              Width = 347
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
              OnExit = frmPesquisaVarieExit
              ExplicitLeft = 4
              ExplicitTop = 14
              ExplicitWidth = 347
              ExplicitHeight = 16
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 16
                ExplicitLeft = 318
              end
              inherited edtPesquisa: TEdit
                Width = 318
                Height = 16
                CharCase = ecUpperCase
                ExplicitWidth = 318
                ExplicitHeight = 16
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 91
            Top = 36
            Width = 173
            Height = 36
            Caption = ' Abertura Data/Hora '
            TabOrder = 3
            object DBEdit18: TDBEdit
              Left = 106
              Top = 15
              Width = 65
              Height = 19
              Align = alRight
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'HORINI'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit23: TcxDBDateEdit
              Left = 2
              Top = 13
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
              Height = 22
              Width = 100
            end
          end
          object GroupBox5: TGroupBox
            Left = 264
            Top = 36
            Width = 181
            Height = 36
            Caption = ' Fechamento Data/Hora '
            TabOrder = 4
            object DBEdit19: TDBEdit
              Left = 114
              Top = 15
              Width = 65
              Height = 19
              Align = alRight
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'HORFIM'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyDown = FormKeyDown
            end
            object DBEdit24: TcxDBDateEdit
              Left = 4
              Top = 13
              AutoSize = False
              DataBinding.DataField = 'DATAFIN'
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
              Height = 22
              Width = 100
            end
          end
          object GroupBox6: TGroupBox
            Left = 5
            Top = 76
            Width = 88
            Height = 36
            Caption = ' Lote/Clas.'
            TabOrder = 5
            object DBEdit1: TDBEdit
              Left = 5
              Top = 17
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CODLOTECLASS'
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
          object GroupBox9: TGroupBox
            Left = 97
            Top = 76
            Width = 356
            Height = 36
            Caption = ' Local armazenagem '
            TabOrder = 6
            inline frmPesquisaLocal: TfrmPesquisa
              Left = 3
              Top = 16
              Width = 347
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
              OnExit = frmPesquisaLocalExit
              ExplicitLeft = 3
              ExplicitTop = 16
              ExplicitWidth = 347
              ExplicitHeight = 16
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 16
                ExplicitLeft = 318
              end
              inherited edtPesquisa: TEdit
                Width = 318
                Height = 16
                CharCase = ecUpperCase
                ExplicitWidth = 318
                ExplicitHeight = 16
              end
            end
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 459
            Top = 76
            Width = 110
            Height = 36
            Caption = ' Fechado '
            Columns = 2
            DataField = 'FECHA'
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
            TabOrder = 7
            TabStop = True
            Values.Strings = (
              'S'
              'N')
            OnExit = DBRadioGroup4Exit
          end
          object GroupBox10: TGroupBox
            Left = 449
            Top = 36
            Width = 243
            Height = 36
            Caption = ' Observa'#231#227'o '
            TabOrder = 8
            object DBEdit4: TDBEdit
              Left = 2
              Top = 15
              Width = 239
              Height = 19
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'OBS'
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
        object Panel1: TPanel
          Left = 0
          Top = 533
          Width = 986
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object Label15: TLabel
            Left = 445
            Top = 2
            Width = 233
            Height = 13
            Caption = 'Perda %          em kg        M'#233'dia Liq.'
            Transparent = True
          end
          object Label14: TLabel
            Left = 352
            Top = 2
            Width = 63
            Height = 13
            Caption = 'Peso Real'
            Transparent = True
          end
          object Label13: TLabel
            Left = 259
            Top = 2
            Width = 58
            Height = 13
            Caption = 'Peso L'#237'q.'
            Transparent = True
          end
          object Label9: TLabel
            Left = 164
            Top = 2
            Width = 70
            Height = 13
            Caption = 'Peso Bruto'
            Transparent = True
          end
          object Label7: TLabel
            Left = 8
            Top = 2
            Width = 30
            Height = 13
            Caption = 'Qtde'
            Transparent = True
          end
          object Label6: TLabel
            Left = 85
            Top = 2
            Width = 68
            Height = 13
            Caption = 'Qtde.Prod.'
            Transparent = True
          end
          object DBEdit13: TDBEdit
            Left = 540
            Top = 17
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'PERCA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit8: TDBEdit
            Left = 444
            Top = 17
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'PEREC'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit12: TDBEdit
            Left = 353
            Top = 17
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'PESOBRU'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit7: TDBEdit
            Left = 260
            Top = 17
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'PESOLIQ'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit9: TDBEdit
            Left = 164
            Top = 17
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'PESOPRO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 17
            Width = 70
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'QTDEBIN'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit2: TDBEdit
            Left = 84
            Top = 17
            Width = 72
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'QTDEMER'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
          object DBEdit3: TDBEdit
            Left = 615
            Top = 17
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'vBinsMediaLiq'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 114
          Width = 986
          Height = 111
          Align = alTop
          Caption = ' Entrada '
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 982
            Height = 94
            Align = alClient
            DataSource = dsRomanPro
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
                FieldName = 'QTDEBIN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOTEENTRA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Rec.Ent.'
                Title.Color = 13878195
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESOBRU'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Caption = 'M'#233'dia Kg.'
                Title.Color = 13878195
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODCOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 44
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PRODDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Produtor'
                Title.Color = 13878195
                Width = 389
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PESOLIQ'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Peso Liq.'
                Title.Color = 13878195
                Width = 59
                Visible = True
              end>
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 225
          Width = 986
          Height = 308
          Align = alClient
          Caption = ' Classifica'#231#227'o '
          TabOrder = 2
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 982
            Height = 291
            Hint = '999 - sai da planilha'
            Align = alClient
            DataSource = dsRomanMer
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu2
            ShowHint = True
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
                FieldName = 'PRODCOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 90
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
                Width = 40
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PRODDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Produto/Mercadoria'
                Title.Color = 13878195
                Width = 447
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PESOLIQ'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Peso L.'
                Title.Color = 13878195
                Width = 49
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PESOREAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Peso R.'
                Title.Color = 13878195
                Visible = False
              end
              item
                Alignment = taCenter
                Color = 15329769
                Expanded = False
                FieldName = 'LANCMANUAL'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Lanc.'
                Title.Color = 13878195
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    PacketRecords = 30
    OnCalcFields = cdsDadosCalcFields
    Left = 322
    Top = 294
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data Abre'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosDATAFIN: TSQLTimeStampField
      DisplayLabel = 'Data Fecha'
      DisplayWidth = 10
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 6
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object cdsDadosQTDEBIN: TBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 15
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
    end
    object cdsDadosHORINI: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
      Visible = False
      DisplayFormat = '#,0'
    end
    object cdsDadosPEREC: TBCDField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
      Visible = False
    end
    object cdsDadosFECHA: TStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosCODLOTECLASS: TStringField
      DisplayLabel = 'Lote/Clas.'
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEADMIN.ROMAN.CODLOTECLASS'
      Size = 10
    end
    object cdsDadosLOCALCOD: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCALCOD'
    end
    object cdsDadosOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Size = 50
    end
    object cdsDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
    end
    object cdsDadosvBinsMediaLiq: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vBinsMediaLiq'
      ProviderFlags = []
      DisplayFormat = '#,0.##'
    end
    object cdsDadosvBinsMediaBru: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vBinsMediaBru'
      ProviderFlags = []
      DisplayFormat = '#,0.##'
    end
    object cdsDadosFGENVIAWEB: TStringField
      FieldName = 'FGENVIAWEB'
      Visible = False
      Size = 1
    end
    object cdsDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsDadosZZPRODNOM: TStringField
      FieldName = 'ZZPRODNOM'
      ProviderFlags = []
      Size = 50
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 290
    Top = 294
  end
  inherited dsDados: TDataSource
    Left = 354
    Top = 294
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      
        'select roman.*, CAST('#39#39' AS VARCHAR(50)) as ZZPRODNOM from roman ' +
        'where lanc = -1')
    Left = 258
    Top = 294
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
    end
    object sqlDadosHORINI: TStringField
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Size = 5
    end
    object sqlDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Size = 5
    end
    object sqlDadosQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
    end
    object sqlDadosDATAFIN: TSQLTimeStampField
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
    end
    object sqlDadosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object sqlDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
    end
    object sqlDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
    end
    object sqlDadosPEREC: TBCDField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
    end
    object sqlDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
      Size = 30
    end
    object sqlDadosFECHA: TStringField
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Size = 9
    end
    object sqlDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEADMIN.ROMAN.CODLOTECLASS'
      Size = 10
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object sqlDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
    end
    object sqlDadosQTDEMER: TBCDField
      DisplayLabel = 'Qtde.Prod.'
      FieldName = 'QTDEMER'
    end
    object sqlDadosFGENVIAWEB: TStringField
      FieldName = 'FGENVIAWEB'
      Size = 1
    end
    object sqlDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosZZPRODNOM: TStringField
      FieldName = 'ZZPRODNOM'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsRomanMer: TDataSource
    DataSet = cdsRomanMer
    Left = 354
    Top = 374
  end
  object cdsRomanMer: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LANCIT'
        DataType = ftInteger
      end
      item
        Name = 'LANC'
        DataType = ftInteger
      end
      item
        Name = 'PRODCOD'
        DataType = ftInteger
      end
      item
        Name = 'PRODDES'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CODIAUX'
        DataType = ftInteger
      end
      item
        Name = 'CALIBRE'
        DataType = ftInteger
      end
      item
        Name = 'PESOLIQ'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PESOREAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'SAFRA'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'LANCMANUAL'
        DataType = ftString
        Size = 1
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
      end
      item
        Name = 'vCATEGCOD'
        DataType = ftInteger
      end
      item
        Name = 'vCATEGDES'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'vCATEGCLC'
        DataType = ftInteger
      end
      item
        Name = 'vCATEGCLD'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'vPerc'
        DataType = ftCurrency
      end
      item
        Name = 'vpesoReal'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'vcodauxi'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'LANC;PRODCOD;LANCIT'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMer'
    StoreDefs = True
    BeforePost = cdsRomanMerBeforePost
    OnCalcFields = cdsRomanMerCalcFields
    OnReconcileError = cdsDadosReconcileError
    Left = 322
    Top = 374
    object cdsRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object cdsRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 40
    end
    object cdsRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object cdsRomanMerQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'CODIAUX'
    end
    object cdsRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object cdsRomanMerPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      DisplayFormat = '#,0.##'
    end
    object cdsRomanMerPESOREAL: TBCDField
      FieldName = 'PESOREAL'
      Origin = 'PESOREAL'
      DisplayFormat = '#,0.##'
    end
    object cdsRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object cdsRomanMervCATEGCOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCOD'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanMervCATEGDES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGDES'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object cdsRomanMervCATEGCLC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCLC'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanMervCATEGCLD: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vCATEGCLD'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object cdsRomanMervPerc: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'vPerc'
      ProviderFlags = []
      Visible = False
    end
    object cdsRomanMervpesoReal: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vpesoReal'
      ProviderFlags = []
    end
    object cdsRomanMerLANCMANUAL: TStringField
      FieldName = 'LANCMANUAL'
      Origin = 'LANCMANUAL'
      Size = 1
    end
    object cdsRomanMervcodauxi: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'vcodauxi'
    end
    object cdsRomanMerREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsRomanMerREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dspRomanMer: TDataSetProvider
    DataSet = sqlRomanMer
    UpdateMode = upWhereKeyOnly
    Left = 290
    Top = 374
  end
  object dsRomanPro: TDataSource
    DataSet = cdsRomanPro
    Left = 354
    Top = 326
  end
  object cdsRomanPro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanPro'
    BeforePost = cdsRomanProBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 322
    Top = 328
    object cdsRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsRomanProLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 40
    end
    object cdsRomanProQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      DisplayFormat = '0.###'
      Precision = 18
    end
    object cdsRomanProPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Precision = 18
    end
    object cdsRomanProPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Precision = 18
    end
    object cdsRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
    end
    object cdsRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
    object cdsRomanProREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1000
    end
    object cdsRomanProREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspRomanPro: TDataSetProvider
    DataSet = sqlRomanPro
    UpdateMode = upWhereKeyOnly
    Left = 290
    Top = 326
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 296
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
    Left = 656
    Top = 344
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
  object sqlRomanPro: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanpro'
      'where lancit = -1')
    Left = 258
    Top = 326
    object sqlRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlRomanProLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 40
    end
    object sqlRomanProQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      Origin = 'QTDEBIN'
      Precision = 18
    end
    object sqlRomanProPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      Precision = 18
    end
    object sqlRomanProPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
      Origin = 'LOTEENTRA'
    end
    object sqlRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object sqlRomanProREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlRomanProREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sqlRomanMer: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanmer'
      'where lancit = -1'
      'order by prodcod')
    Left = 258
    Top = 374
    object sqlRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 40
    end
    object sqlRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object sqlRomanMerQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'CODIAUX'
    end
    object sqlRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object sqlRomanMerPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlRomanMerPESOREAL: TBCDField
      FieldName = 'PESOREAL'
      Origin = 'PESOREAL'
      Precision = 18
    end
    object sqlRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object sqlRomanMerLANCMANUAL: TStringField
      FieldName = 'LANCMANUAL'
      Origin = 'LANCMANUAL'
      Size = 1
    end
    object sqlRomanMerREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlRomanMerREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
