inherited FfrmReciboAutonomo: TFfrmReciboAutonomo
  Caption = 'Recibo aut'#244'nomo'
  ClientHeight = 593
  ClientWidth = 1123
  ExplicitWidth = 1129
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 577
    Width = 1123
    ExplicitTop = 577
    ExplicitWidth = 1123
    inherited PStatusHistorico: TPanel
      Width = 942
      ExplicitWidth = 942
    end
    inherited pnlTela: TPanel
      Left = 1065
      ExplicitLeft = 1065
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1055
      ExplicitLeft = 1055
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 577
    ExplicitHeight = 577
    inherited rzpMenu: TRzPanel
      Height = 473
      ExplicitHeight = 473
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 2
        ExplicitTop = 10
        ExplicitWidth = 129
      end
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          OnClick = sbImprimirClick
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 353
        ExplicitTop = 353
      end
      inherited PPeriodo: TPanel
        Top = 393
        Visible = True
        ExplicitTop = 393
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
    Width = 986
    Height = 577
    ExplicitWidth = 986
    ExplicitHeight = 577
    inherited pcItem: TRzPageControl
      Width = 978
      Height = 569
      OnChange = pcItemChange
      ExplicitWidth = 978
      ExplicitHeight = 569
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 976
        ExplicitHeight = 548
        inherited pPesquisa: TRzPanel
          Top = 482
          Width = 976
          ExplicitTop = 482
          ExplicitWidth = 976
          inherited Label1: TLabel
            Width = 968
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 855
            ExplicitLeft = 376
          end
          inherited rbPesquisa: TRzPanel
            Width = 968
            ExplicitWidth = 968
          end
          inherited edPesquisa: TMaskEdit
            Width = 851
            ExplicitWidth = 851
          end
        end
        inherited Panel2: TPanel
          Width = 976
          ExplicitWidth = 976
          inherited Label3: TLabel
            Left = 137
            Width = 838
            Height = 18
            ExplicitLeft = 906
          end
        end
        inherited dbDados: TcxGrid
          Width = 976
          Height = 462
          ExplicitWidth = 976
          ExplicitHeight = 462
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALORBRU
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALORLIQ
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              Width = 60
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 200
            end
            object dbDadosDBTableView1VALORBRU: TcxGridDBColumn
              DataBinding.FieldName = 'VALORBRU'
              Width = 100
            end
            object dbDadosDBTableView1VALORLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'VALORLIQ'
              Width = 100
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              Caption = 'Descri'#231#227'o Servi'#231'o'
              DataBinding.FieldName = 'OBS'
              Width = 250
            end
            object dbDadosDBTableView1PREV: TcxGridDBColumn
              DataBinding.FieldName = 'PREV'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CPF: TcxGridDBColumn
              DataBinding.FieldName = 'CPF'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ALIQBASE: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQBASE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRBASE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRBASE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ALIQINSS: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQINSS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRINSS: TcxGridDBColumn
              DataBinding.FieldName = 'VLRINSS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1QTDEDEPE: TcxGridDBColumn
              DataBinding.FieldName = 'QTDEDEPE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRDEPE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRDEPE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRDEPENDE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRDEPENDE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRBASECAL: TcxGridDBColumn
              DataBinding.FieldName = 'VLRBASECAL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ALIQIRRF: TcxGridDBColumn
              DataBinding.FieldName = 'ALIQIRRF'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRIRRF: TcxGridDBColumn
              DataBinding.FieldName = 'VLRIRRF'
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
            object dbDadosDBTableView1TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FREPER: TcxGridDBColumn
              DataBinding.FieldName = 'FREPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FREVAL: TcxGridDBColumn
              DataBinding.FieldName = 'FREVAL'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 976
        ExplicitHeight = 548
        inherited pDados: TPanel
          Width = 976
          Height = 548
          ExplicitWidth = 976
          ExplicitHeight = 548
          object PageControl1: TPageControl
            Left = 2
            Top = 2
            Width = 972
            Height = 544
            ActivePage = tab_lanc
            Align = alClient
            TabOrder = 0
            OnChange = PageControl1Change
            object tab_lanc: TTabSheet
              Caption = 'Lan'#231'amento'
              object rgTipo: TDBRadioGroup
                Left = 111
                Top = 36
                Width = 185
                Height = 32
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
                  'Normal'
                  'Frete')
                ParentFont = False
                TabOrder = 2
                TabStop = True
                Values.Strings = (
                  'N'
                  'F')
                OnChange = rgTipoChange
              end
              object GroupBox4: TGroupBox
                Left = 5
                Top = 165
                Width = 385
                Height = 241
                Caption = ' C'#225'lculos '
                TabOrder = 7
                object Label29: TLabel
                  Left = 160
                  Top = 18
                  Width = 85
                  Height = 13
                  Caption = 'Valor Bruto...'
                  Transparent = True
                end
                object Label27: TLabel
                  Left = 176
                  Top = 42
                  Width = 69
                  Height = 13
                  Caption = 'Valor INSS'
                  Transparent = True
                end
                object Label28: TLabel
                  Left = 176
                  Top = 66
                  Width = 69
                  Height = 13
                  Caption = 'Valor INSS'
                  Transparent = True
                  Visible = False
                end
                object Label22: TLabel
                  Left = 154
                  Top = 98
                  Width = 91
                  Height = 13
                  Caption = 'Valor Depend.'
                  Transparent = True
                end
                object Label11: TLabel
                  Left = 127
                  Top = 130
                  Width = 118
                  Height = 13
                  Caption = 'Base de C'#225'lculo....'
                  Transparent = True
                end
                object Label16: TLabel
                  Left = 177
                  Top = 154
                  Width = 68
                  Height = 13
                  Caption = 'Valor IRRF'
                  Transparent = True
                end
                object Label9: TLabel
                  Left = 34
                  Top = 154
                  Width = 48
                  Height = 13
                  Caption = '% IRRF'
                  Transparent = True
                end
                object Label19: TLabel
                  Left = 130
                  Top = 178
                  Width = 115
                  Height = 13
                  Caption = 'Parcela a Deduzir'
                  Transparent = True
                end
                object Label21: TLabel
                  Left = 103
                  Top = 210
                  Width = 142
                  Height = 13
                  Caption = 'Vlr. L'#237'quido a Receber'
                  Transparent = True
                end
                object Label24: TLabel
                  Left = 5
                  Top = 83
                  Width = 121
                  Height = 13
                  Caption = 'Qtde./Vlr. Depend.'
                  Transparent = True
                end
                object Label26: TLabel
                  Left = 51
                  Top = 42
                  Width = 49
                  Height = 13
                  Caption = '% INSS'
                  Transparent = True
                end
                object Label25: TLabel
                  Left = 12
                  Top = 66
                  Width = 88
                  Height = 13
                  Caption = '% INSS Frete'
                  Transparent = True
                  Visible = False
                end
                object DBEdit1: TDBEdit
                  Left = 250
                  Top = 16
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'VALORBRU'
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
                  OnKeyPress = FormKeyPress
                end
                object DBEdit39: TDBEdit
                  Left = 250
                  Top = 40
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'VLRINSS'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit38: TDBEdit
                  Left = 250
                  Top = 64
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'FREVAL'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                  Visible = False
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit33: TDBEdit
                  Left = 250
                  Top = 96
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'VLRDEPENDE'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 6
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object Panel1: TPanel
                  Left = 219
                  Top = 120
                  Width = 137
                  Height = 2
                  BevelInner = bvRaised
                  Color = clRed
                  TabOrder = 7
                end
                object DBEdit32: TDBEdit
                  Left = 250
                  Top = 128
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'VLRBASECAL'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 8
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit31: TDBEdit
                  Left = 250
                  Top = 152
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'VLRIRRF'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 9
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit10: TDBEdit
                  Left = 87
                  Top = 152
                  Width = 65
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'ALIQIRRF'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 10
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit29: TDBEdit
                  Left = 250
                  Top = 208
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'VALORLIQ'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                  OnExit = DBEdit29Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit34: TDBEdit
                  Left = 50
                  Top = 96
                  Width = 80
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'VLRDEPE'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnExit = DBEdit34Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit35: TDBEdit
                  Left = 5
                  Top = 96
                  Width = 39
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'QTDEDEPE'
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
                object DBEdit36: TDBEdit
                  Left = 103
                  Top = 64
                  Width = 57
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'FREPER'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 11
                  Visible = False
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit37: TDBEdit
                  Left = 103
                  Top = 40
                  Width = 57
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'ALIQINSS'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 13
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit30: TDBEdit
                  Left = 250
                  Top = 175
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 13948116
                  DataField = 'VLRBASE'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 12
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox6: TGroupBox
                Left = 5
                Top = 68
                Width = 356
                Height = 32
                Caption = ' Favorecido '
                TabOrder = 3
                OnExit = GroupBox6Exit
                inline frmPesquisaCFP: TfrmPesquisa
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
              object GroupBox8: TGroupBox
                Left = 5
                Top = 36
                Width = 102
                Height = 32
                Caption = ' Data '
                TabOrder = 1
                object DBEdit45: TcxDBDateEdit
                  Left = 2
                  Top = 13
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
                  Height = 17
                  Width = 98
                end
              end
              object GroupBox9: TGroupBox
                Left = 5
                Top = 5
                Width = 84
                Height = 32
                Caption = ' N'#250'mero '
                Enabled = False
                TabOrder = 0
                object DBEdit46: TDBEdit
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
                  ReadOnly = True
                  TabOrder = 0
                  OnKeyDown = FormKeyDown
                end
              end
              object GroupBox5: TGroupBox
                Left = 147
                Top = 100
                Width = 160
                Height = 32
                Caption = ' Insc.Prev. '
                TabOrder = 5
                object DBEdit43: TDBEdit
                  Left = 4
                  Top = 15
                  Width = 153
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'PREV'
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
              object GroupBox7: TGroupBox
                Left = 5
                Top = 100
                Width = 140
                Height = 32
                Caption = ' C.P.F. '
                TabOrder = 4
                object DBEdit44: TDBEdit
                  Left = 4
                  Top = 15
                  Width = 132
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'CPF'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  OnExit = DBEdit44Exit
                  OnKeyDown = FormKeyDown
                end
              end
              object GroupBox10: TGroupBox
                Left = 5
                Top = 131
                Width = 357
                Height = 32
                Caption = ' Descri'#231#227'o servi'#231'o '
                TabOrder = 6
                object DBEdit47: TDBEdit
                  Left = 4
                  Top = 15
                  Width = 350
                  Height = 15
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
                  ReadOnly = True
                  TabOrder = 0
                  OnKeyDown = FormKeyDown
                end
              end
            end
            object tab_tabela: TTabSheet
              Caption = 'Tabela Inss/Irrf'
              ImageIndex = 1
              object sbSalvaTabela: TSpeedButton
                Tag = 15
                Left = 0
                Top = 476
                Width = 964
                Height = 40
                Hint = 'Salva o registro atual...'
                Align = alBottom
                Caption = ' Salvar Altera'#231#227'o tabela'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  160F0000424D160F000000000000360000002800000025000000220000000100
                  180000000000E00E000000000000000000000000000000000000FCE4D2FCE4D2
                  FCE4D2D3C7BBD1C5B9D2C5BDD9CBC5E0D1CEE3D5CFE3D8D0E5DAD2E9DDD7EBDF
                  D9EBDFDBEEE3DFF7EEEBF1E8E5F9EDEBF1E2E0F9E6E3F3E0DDEEE0DAEBDFD9D8
                  D0C9DBD1CADED0CADCCAC3D7C8BFD8C8BCD5C4B7D4C1B2CFBBAACEBAA9D3BCAD
                  FCE4D2FCE4D2FCE4D200FCE4D2E0D3C5CFBFAECFBCADD2C2B2DBC8C0DDCAC3DF
                  C9C3D8C5BEDCCABFE0D0C4E0CFC6E6D3CBEBD8D1EBD9D2EADAD3F1E1DAEDDBD4
                  EBD5CFEDD3CDEDD3CDE8D3CBE5D4CBE4D5CCDFCEC5E0C9C1E5CBC4DBC5B9D8C5
                  B6DBC4B4DEC6B2DCC3AFDBC0ABD1B3A0D1B2A3E0C5B7FCE4D200FCE4D2CEBBAC
                  D5BFADE1C8B8E6CFBFEAD4C9E4CDC5E7CDC6E5CEC6E9D3C7E4D1C4EAD4C8EAD2
                  C6EDD2C8EDD2C8E9D1C5E8D2C6E6D1C2EBD4C5E9CCC3EACDC4E4CCC0DFC9BDEA
                  D7C8EDD5C9F0D2C7F0D2C7E9D3C7E5D2C3E8D1C1ECD4C0EBD2BEEED3BEE1C3B0
                  D5B7A6C5AA9CFCE4D200D6C6BACFB6A6EACEBDF1D5C4EFD5C4F2D8CCEFD4CAF5
                  DAD0F3D8CEF4DDCEEEDAC9F1DACBF2D7C9F3D5CAF8D8CDF2D7C9F0D7C7EBD5C3
                  F1D8C8F1D6C8F2D6CBF6DCCEF1DACAEFD9C7EED5C5F6D6C9F5D5C8F0DBCCEBD9
                  C8EEDAC9F0DBC6EED6C2F6DBC6F0D2BFE7C9B8C7AC9ED2BFB200CDB9AED3B6A7
                  F3D3C0F0D2BFEED0BDF2D7C9F9DDD2FBDFD4F1D7CBF1DACAF4E0CEF2DBCBF6DD
                  CDFCDBD2F8D7CEFBDBCEFCE2D2FAE2D0F3DCCCF8DED2F4DACEF1DACBF5DFCDF2
                  DDC8F1DCC7F5DBCBF9DED0EFDACBECDAC9F2DECDF6E1CCF2DAC6F5DDC7F3D6C1
                  EFD1BECCAFA0C2AFA200CCB9ACD9BDACEECFBAF1D2BDF6D8C5F7DDCDF8DED0F6
                  DCD0F6DFD0F4E0CFF2E1CEEEDAC8ECD5C6F4D7CEF8D8D2EBCDC2FDE3D5E5CEBE
                  EFDACBECD6CBF3DDD2EDD7CBEDD9C8F2E0C9F8E6CFF2DECCF4E0CFEEDECEEDDD
                  CCF2E0CFF8E4D2F6E1CCF9E1CBF5D8C3F3D6C1D3B7A6C1AC9D00CBB8ABDDC1B0
                  EFD0BBF1D4BFFBE0CBF7DFCDF2DBCBEED9CAFAE8D7F2E3D0E7D8C5E4D6C3E1D1
                  C1D8C1B9D3B9B3D5BCB2A89586C2B2A2B9A99CB2A099C4B1AAD1BDB2D8C5B6DF
                  D1BBE7DAC4E9DDCBEEE1D1EDDFCDECDCCBEDDBCAF1DDCBF3DEC9F7E0CAF1D7BF
                  F2D6BED3B8A4BFAB9A00C3B2A5D9BDACEFD2BDEFD4BFF5DDC7F1DBC9F4E2D1F0
                  DDCEF5E5D4E9DBC8E0D5C1DDD4C0D1C4B4C5B5A8B7A79AA89D89AFA88FBFBBA2
                  DDD8C3BFB6A9ADA197B9A69ECEBBAEDAC8B7DDCFBCE7DDCCEBE1D0EEE2D0F0E2
                  D0EFDDCCEEDDCAF2DFCAF9E2CCF1D8BEF3D8BED4B9A4C2AB9B00CAB9ACD9BDAC
                  EFD2BDEED3BEF7DFCBEEDAC9F0E0D0F0E0D0EEDECDEEE3CFECE3CFE8E1CDCFCA
                  B5CFCBB3CECEB0CFD4ADEAF4C9D6E3B7E0EBC5E9ECD2CFC8B7D4C4B8E2CCC1EF
                  D7CBECD7C8F0DFD2EFE0D0EFE1CFECDECCF1DECFF3E1D0F2DECCF3DEC8F5DCC2
                  F1D6BCD5B8A3C3AD9B00CCB8ADD9BCADF1D1BEECD1BCF4DCC8F4E0CFF2E2D2EB
                  DBCBF0E0D0F0E4D2E1DAC6E7E5CDE4E8CBFAFFDDEFFFCFDAF3B794B370608241
                  48662BADC196F9FFE2F9F2DEEBDACDF6DED2FAE0D4F0DACEF1DECFEFDFCEEEDE
                  CDF0E0D0F2DFD0F1DDCBF3DEC8F6DDC3F1D6BBD5B9A1C5AD9B00D0B7ADDBBCAD
                  F1D0BDF2D4C1F4DCCAF1DCCDF0DDD0EFDCCFF7E4D5F0E0CFE0D7C3F0F1D7F1FD
                  D9E1F8C49CBF7C5D8B3840741A487E24518532638E4BB0CC97F2FCD8E5DFC8EE
                  DAC9F8DED0FAE0D2F4DDCDF0DECDEFDFCFF1E0D3F2DFD2F1DDCCF4DFC9F5DCC2
                  F0D5BAD7B8A1C5AD9B00D0B7ADDDBCADF1D0BDEFD1BEF8DECDF3DECFF0DDD0F4
                  DED2F4DED2EEDBCCF5ECD8F9FDE0B2C49B70905737641B40761D48852541811E
                  4987294B83306C9A52DEFAC5FAFFDDEFE8CFEDD9C8F7E0D0F4DDCDF1DFCEEFDF
                  CFF0DED3F0DFD2F1DFCEF4DFCAF4DCC0F1D7B9D6B89FC6AD9900D0B7ADDCBBAC
                  F1D0BDEDD2BEF5DDCBF2DDCEF1DED1F6E0D5F4DED2F2DDCEFEF3DFEAEFD26174
                  4D36561F537F3A4A7A2C55893567A1484683284B8C304D8A327EAC64E8FFD0E7
                  EECBF1ECD3EEE0CDF0DECDF0E0CFEEDECEEEDCD1F0DED3F3E0D1F3DEC9F3DBBF
                  F2D8BAD6B89FC6AD9900D0B8ACDABCABF0D0BDF1D6C2EFD9C7EDDACBF0DFD2F0
                  DCD1F3E0D3F1DECFE9DECAFCFFE5B5C6A1435D2D54743D9EBF86E3FFCADAFFBD
                  679A4A4584264C913055923C77A45FEDFFD5E0E8C9E7E3CAEEE3CFEDDFCDEEDD
                  D0EDDBD0EFDDD2F3E0D1F1DEC9F2DABEF2D8BAD7BA9FC6AD9900CEB8ACD8BCAB
                  ECD1BCEAD3BDF0DDC8EFDFCEF2E3D3E9D8CBEAD9CCEDDDCDE3D8C4FCFAE2E5EA
                  CDAFBA99CCDAB8F6FDE2E9F1D2F0FED4BEDDA0548A314D8F2A4186254D883497
                  BD83EEFFDCE7EFD1DBD8C3E9DBC9F2DFD2F2DED3EFDBD0F1DECFF2DFCAF3DBBF
                  F2D8BAD7BA9FC8AD9900CBB8A9D6BDA9ECD1BCEBD4BEF4E1CCEBDBCAEEDFCFEF
                  DED1EDDDCDF1DECFEBDDCAF1E9D2F8F4DCF2EFDAFFFEEDEDE1D5DFD5C4EAE6CD
                  F8FFD792B76D447D225BA13D51953651893EB3DAA2EEFFDAE3E8CBE1D8C4F3E0
                  D1F4E0D5EEDBCEEFDCCDF2DFCAF2DBC1F1D7B9D8BAA1C6AD9900C9B9A9D9C0AC
                  ECD2BAEDD5BDF5DEC8F3DFCEF3DECFF5DDD1F6DFD0F8E3D4F5E4D1E8DAC3EFE0
                  CDF9E5DAF4DDD5EDD7CBF6E2D1E5D7C1F9F7D5E9F9C96B924E569539418D2745
                  8D2D629D4CCDF2B4F2FFD8E4DFC6EFDFCFEDD8C9F2DDCEEFDFCEF1E0CBF1DBC2
                  F0D7BDD4B99FC5AD9900C8B8A8D7BEAAECD2BAEDD3BBF6DFC9F6DDCDF4DDCEFA
                  E0D4F8DED2F4DDCEF3DFCDF6E3CEEDD9C7F5D9D2F2D5D0FAE0D2F3DBC9F5E2CD
                  DFD4B9FCFFDDC6E0AA5189364F9834499B324A933175A95CDEFBC3FDFFE1DDD5
                  BEF6E7D4EEDCCBE8D8C7F1E0CDF2DBC5EFD5BDD6B9A4C7AF9B00C8B7AAD6BCAB
                  ECD1BCECD1BCF7DFCBF5DBCDF2DACEFBE0D6F7DDD1F1DACBF2DECDF9E5D3F7E3
                  D2FAE2D6F9E0D6F5DECFF3DFCDFAE7D2E9DDC5ECEACBF2FFD37DA96247872D49
                  97324F9D384B8D3484B46CE1FCCAF2FCD8E3DFC3EEE0CDF3E3D2F2DECDF2D6C5
                  F4D4C1D7B7A4C5AC9C00C9B7ACD6BCACEFD1BEEDD2BEF5DDC9F5DBCDF3DBCFF9
                  DED4F7DCD2F4DCD0F4DFD0F6E2D1F1DDCCF1DDCCEDD9C8F2E0CFF9E8D5DBCAB7
                  FEF2DAE2D9BEF9FFD9CCE9B1578B3E50973743942D519E3D4D913A92C17DE4FF
                  CFE3EBC6E9E5C9EDDFCDEDD6C7FCDBCCF3D1C1D6B5A5C5AB9D00CBB7ACD7BAAB
                  EFD1BEEFD4C0F2DAC8F6DCD0F7DED4F7DBD4F6DBD1F8E0D4F3DECFF0DBCCF6E2
                  D1F3E0CBF0DFCAEDDECBEFE1CEF8EAD7E9DCC6EADCC5ECE8CBF6FFDAAFD49650
                  8D3749993449A03850A43E529740A1D38DEEFFD3DCE2BFEEE3CDF8DFCFFAD8C8
                  F9D5C5D7B4A6C7ADA100CBB7ACD7BAACF1D3C2F3D8C4F3DBC9F6DED2FBE2D8F5
                  DBD4F5DCD2F7E1D5F1DCCDF1DBCFEFDACBF1E0CBEEE0C9EFE1CEE3D7C5EADCC9
                  F1E4CEF0DFCCE0D4BCF0F0D2F1FFD780B26A519A3E439B314DAA3D3B8F2961A2
                  4CC6EBADF3FFD7E6E2C6EDD7C5F2D1C1FBD7C5D5B3A3C5AB9D00CAB8ADD8BDAF
                  F6DAC9F7DECAF9E1CFF7E2D3FAE4D8F8E2D7F7E1D6F8E2D6F2DFD0F5E2D5F3E0
                  D1EEDDC8F0E2CBECDECBEADECCECE0CEF1E3D0F2E0CFF0E1CEE7DFC8F0F7D4DA
                  FDC45895454A9C3949A73850AC3D5DA84673A159D7ECBBFCFDDDFAECD5F5D8C3
                  FCDBC7D4B4A1C3AC9C00CBB9AEDBC2B2FEE2D1FCE4D0FEE8D6F6E3D4F7E4D7FA
                  E6DBF9E6D9F8E5D6F7E4D5F6E3D6F9E6D7F6E5D2F1E3CDF1E3D0ECE0CEEBDECE
                  F3E4D4F1DFCEEEDCCBF0E0CFEAE6CDF2FFDBA6D190559B4143962F57AD41529C
                  3C5A874295AB7AEBF0D0F1E7CFFBE5CCFFE3CBD9BCA7C8B2A000CCBCB0D7C0B0
                  FDE4D0FFE7D3FCE8D6F4E4D4F4E3D6F8E7DAF8E7DAF6E6D6F8E8D8F7E6D9F7E6
                  D9F7E5D4F6E4D3F3E3D2F1E2D2EFE2D4F1E1D4F1E1D1F1DFCEF4E1D2E9DDCBE4
                  E8CBEAFFD47DAD654F8E385CA2475D9B4989AF73889C72D3DBBDE5E1C9F9EAD0
                  FFF1D7DBC3ABC1AD9B00CABAADD8C1B1FFE7D3FDE8D3FAE6D4F4E4D4F4E4D7F7
                  E6D9F6E5D8F4E5D5F5E7D5F5E4D7F5E4D7F7E4D7F7E4D5F7E4D5F5E5D5F3E3D7
                  F3E3D6F3E4D4F4E4D3F2DFD0F6E6D6E8E1CEF4FADBB7D49D7FAB6682B46C98C5
                  86B5D0A4CEDDBEDDE2CDE9E5D2F4E8D0FFEFD6D0BAA1BDA99700C5B8AAD7C0B0
                  FCE4D0FCE7D2F4E3D0F3E3D3F5E5D8F6E4D9F5E4D7F5E6D6F5E7D5F4E3D6F5E4
                  D7F5E3D8F7E3D8F7E4D7F8E5D8F5E3D8F4E4D8F2E3D3F8EAD8FBE8D9F7E4D7F3
                  E1D6ECE5D2E3ECC4B9CF9FB5D1A3CBE5BDDAE5CBECEFDFE7E7DBEDEADCF2E6D4
                  F7E6D1D1BCA7C2B09F00C6B8ACD8C1B1FBE3CFFFEAD5F4E3D0F3E3D3F5E5D9F4
                  E2D7F3E1D6F3E4D4F2E3D3F4E3D6F5E3D8F6E3DBF6E3DBF8E4D9FAE4D9F9E4DC
                  F8E6DBF7E8D8F6E7D7F2DFD0FCE6DAF9E1DBFBEADDF1EDD1E1E6C6E0E8CAE6EC
                  D5E8E5D7E5DED5EAE5DCECE6DBEFE3D1FAEBD8D5C1AFC4B1A200C8B8ACD7C0B0
                  FFE9D7FEE8D6F6E2D1F4E1D4F6E3DBF8E3DBF7E5DAF8E7DAF7E6D9F4E3D6F5E3
                  D8F6E3DBF6E3DBF7E2DAF9E2DAFCE4DEFCE7DFFAEADDEEDED1F6E5D8F9E3D8FE
                  E4DDF8E2D7F7ECD8EBE5CEEAE3D0EFE6D8F5E3DCF8E8E1F4E8DEEDE2D4EEE0CE
                  FDECD9D2BEACC2AFA000CDBDB1D1BAABFDE3D2FCE4D2F5E0D1F3DFD4F3E0D8F5
                  E0D8F6E1D9F7E3D8F5E4D7F7E3D8F6E4D9F5E5D9F5E2DAF5DFD9F7DFD9F8E0DA
                  F8E3DBF1E1D5FAEADEF5E3D8FEE8DDF7DED4F7E1D5F5E5D4F6E8D6F6E6D6F9E6
                  D9F9E0D6FAE4D9F1E0D3F0E2D0FEEDD8F3E0CBC8B2A0CAB7AA00E2D0C5D0B6A8
                  E8CBBCFFE7D7FFE8DCFDE6DEF9E3DDFBE3DDF8E2DCF7E3D8F7E3D8F6E1D9F5E3
                  D8F4E4D8F4E3DAF7E1DCF8DFDBFAE0DAF8E1D9F3E1D6F8E8DCF4E1D9F4DED3FF
                  EBDCFAE6D5F9E9D8F6E8D6FDE9D7FFE9D7FFEBDAFFEBD7FFF0DAFFEFD5FFEDD2
                  DFC9B0C2AA96DECBBC00FCE4D2D1BBAFD1B7A9E3CCBDE9D3C7E9D3CDE7D3CEEA
                  D6D1ECD8D3EDDAD2EFDCD4F3E0D8F3E0D8F4E3DAF6E4DDFAE5E4FDE5E5FEE5E1
                  FAE4DEF9E8DFEDDFD3F5E4DBF3E1D6F1DECFEEDBCCECDCCFEADACDEED9CAEED4
                  C4F5D6C7F2D4C3EBD4BEE4CFB9D0BEA7C7B49FC9B6A7FCE4D200FCE4D2EEE4DA
                  D5C5B9D6C4B9D2C0B5D2BFBAD8C7C4DDCCC9DCCBC8DDCDC7E2D2CBEAD8D1EBD9
                  D2ECDBD8F1DFDEF9E4E7FBE6E9F6E4E3F0E1DEECDFD7E9E0D3E6DDD0E3D7CBE0
                  D2C6DBCCC3D6C9C1D6C6C0D7C1BCD8BDB9D8BBB4D7BAB1D4BCB0C7B4A7BEB0A4
                  CABFB7EAE0D9FCE4D200FCE4D2FCE4D2FCE4D2EEE2D6EADED4E6DAD4E7DBD9EA
                  DEDCEBDFDDEEE3DFF2E8E1F6EAE6F7EBE7F9EBECFBEDEFFEF0F2FDF0F2FBEEF0
                  F5ECE9F4EBE7EFE9E2EEE7DEEEE7DEEEE7DEEFE5DEECE0DEEADDDBEBDBDCE8D6
                  D5EBD6D4ECD6D0EAD7CFECDCD5EFE7E0FCE4D2FCE4D2FCE4D200}
                Margin = 0
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Spacing = 5
                OnClick = sbSalvaTabelaClick
                ExplicitTop = 96
                ExplicitWidth = 102
              end
              object GroupBox1: TGroupBox
                Left = 0
                Top = 0
                Width = 964
                Height = 123
                Align = alTop
                Caption = ' INSS '
                TabOrder = 0
                object Label7: TLabel
                  Left = 53
                  Top = 7
                  Width = 16
                  Height = 13
                  Caption = 'de'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label20: TLabel
                  Left = 220
                  Top = 7
                  Width = 36
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Vlr.%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label10: TLabel
                  Left = 133
                  Top = 7
                  Width = 21
                  Height = 13
                  Caption = 'at'#233
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object DBEdit4: TDBEdit
                  Left = 29
                  Top = 26
                  Width = 70
                  Height = 21
                  DataField = 'INSSD1'
                  DataSource = dsTabela
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
                object DBEdit9: TDBEdit
                  Left = 197
                  Top = 26
                  Width = 70
                  Height = 21
                  DataField = 'INSSV1'
                  DataSource = dsTabela
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
                object DBEdit22: TDBEdit
                  Left = 109
                  Top = 26
                  Width = 70
                  Height = 21
                  DataField = 'INSSA1'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit2: TDBEdit
                  Left = 197
                  Top = 50
                  Width = 70
                  Height = 21
                  DataField = 'INSSV2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit5: TDBEdit
                  Left = 109
                  Top = 50
                  Width = 70
                  Height = 21
                  DataField = 'INSSA2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit6: TDBEdit
                  Left = 29
                  Top = 50
                  Width = 70
                  Height = 21
                  DataField = 'INSSD2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit7: TDBEdit
                  Left = 197
                  Top = 74
                  Width = 70
                  Height = 21
                  DataField = 'INSSV3'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit8: TDBEdit
                  Left = 109
                  Top = 74
                  Width = 70
                  Height = 21
                  DataField = 'INSSA3'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit12: TDBEdit
                  Left = 29
                  Top = 74
                  Width = 70
                  Height = 21
                  DataField = 'INSSD3'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit13: TDBEdit
                  Left = 197
                  Top = 98
                  Width = 70
                  Height = 21
                  DataField = 'INSSV4'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit14: TDBEdit
                  Left = 109
                  Top = 98
                  Width = 70
                  Height = 21
                  DataField = 'INSSA4'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit15: TDBEdit
                  Left = 29
                  Top = 98
                  Width = 70
                  Height = 21
                  DataField = 'INSSD4'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 123
                Width = 964
                Height = 95
                Align = alTop
                Caption = ' IRRF '
                TabOrder = 1
                object Label13: TLabel
                  Left = 53
                  Top = 7
                  Width = 16
                  Height = 13
                  Caption = 'de'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label14: TLabel
                  Left = 133
                  Top = 7
                  Width = 21
                  Height = 13
                  Caption = 'at'#233
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label15: TLabel
                  Left = 213
                  Top = 7
                  Width = 36
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Vlr.%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label17: TLabel
                  Left = 282
                  Top = 7
                  Width = 55
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Redu'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object DBEdit16: TDBEdit
                  Left = 29
                  Top = 22
                  Width = 70
                  Height = 21
                  DataField = 'IRRFD1'
                  DataSource = dsTabela
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
                object DBEdit17: TDBEdit
                  Left = 109
                  Top = 22
                  Width = 70
                  Height = 21
                  DataField = 'IRRFA1'
                  DataSource = dsTabela
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
                object DBEdit18: TDBEdit
                  Left = 197
                  Top = 22
                  Width = 70
                  Height = 21
                  DataField = 'IRRFV1'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit19: TDBEdit
                  Left = 277
                  Top = 22
                  Width = 70
                  Height = 21
                  DataField = 'IRRFR1'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit20: TDBEdit
                  Left = 29
                  Top = 46
                  Width = 70
                  Height = 21
                  DataField = 'IRRFD2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit21: TDBEdit
                  Left = 109
                  Top = 46
                  Width = 70
                  Height = 21
                  DataField = 'IRRFA2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit23: TDBEdit
                  Left = 197
                  Top = 46
                  Width = 70
                  Height = 21
                  DataField = 'IRRFV2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit24: TDBEdit
                  Left = 277
                  Top = 46
                  Width = 70
                  Height = 21
                  DataField = 'IRRFR2'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit25: TDBEdit
                  Left = 29
                  Top = 70
                  Width = 70
                  Height = 21
                  DataField = 'IRRFD3'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit26: TDBEdit
                  Left = 197
                  Top = 70
                  Width = 70
                  Height = 21
                  DataField = 'IRRFV3'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object DBEdit27: TDBEdit
                  Left = 277
                  Top = 70
                  Width = 70
                  Height = 21
                  DataField = 'IRRFR3'
                  DataSource = dsTabela
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox3: TGroupBox
                Left = 0
                Top = 218
                Width = 964
                Height = 58
                Align = alTop
                Caption = ' Dependente '
                TabOrder = 2
                object Label18: TLabel
                  Left = 29
                  Top = 16
                  Width = 34
                  Height = 13
                  Caption = 'Valor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object DBEdit28: TDBEdit
                  Left = 29
                  Top = 32
                  Width = 90
                  Height = 21
                  DataField = 'DEPENDE'
                  DataSource = dsTabela
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
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 482
    Top = 30
    object cdsDadosNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.FIRPA.NUMERO'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FIRPA.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Favorecido'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.FIRPA.DESCRICAO'
      Size = 50
    end
    object cdsDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'JAEADMIN.FIRPA.CPF'
      Visible = False
      Size = 18
    end
    object cdsDadosPREV: TStringField
      FieldName = 'PREV'
      Origin = 'JAEADMIN.FIRPA.PREV'
      Visible = False
      Size = 15
    end
    object cdsDadosVALORBRU: TBCDField
      DisplayLabel = 'Valor Bruto'
      FieldName = 'VALORBRU'
      Origin = 'JAEADMIN.FIRPA.VALORBRU'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVALORLIQ: TBCDField
      DisplayLabel = 'Valor L'#237'quido'
      FieldName = 'VALORLIQ'
      Origin = 'JAEADMIN.FIRPA.VALORLIQ'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosALIQBASE: TBCDField
      FieldName = 'ALIQBASE'
      Origin = 'JAEADMIN.FIRPA.ALIQBASE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'JAEADMIN.FIRPA.VLRBASE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosALIQINSS: TBCDField
      FieldName = 'ALIQINSS'
      Origin = 'JAEADMIN.FIRPA.ALIQINSS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRINSS: TBCDField
      FieldName = 'VLRINSS'
      Origin = 'JAEADMIN.FIRPA.VLRINSS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosQTDEDEPE: TIntegerField
      FieldName = 'QTDEDEPE'
      Origin = 'JAEADMIN.FIRPA.QTDEDEPE'
      Visible = False
    end
    object cdsDadosVLRDEPE: TBCDField
      FieldName = 'VLRDEPE'
      Origin = 'JAEADMIN.FIRPA.VLRDEPE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRDEPENDE: TBCDField
      FieldName = 'VLRDEPENDE'
      Origin = 'JAEADMIN.FIRPA.VLRDEPENDE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRBASECAL: TBCDField
      FieldName = 'VLRBASECAL'
      Origin = 'JAEADMIN.FIRPA.VLRBASECAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosALIQIRRF: TBCDField
      FieldName = 'ALIQIRRF'
      Origin = 'JAEADMIN.FIRPA.ALIQIRRF'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      Origin = 'JAEADMIN.FIRPA.VLRIRRF'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FIRPA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FIRPA.ACESOCOD'
      Visible = False
    end
    object cdsDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.FIRPA.TIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.FIRPA.OBS'
      Visible = False
      Size = 50
    end
    object cdsDadosFREPER: TBCDField
      FieldName = 'FREPER'
      Origin = 'JAEADMIN.FIRPA.FREPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosFREVAL: TBCDField
      FieldName = 'FREVAL'
      Origin = 'JAEADMIN.FIRPA.FREVAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FIRPA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FIRPA.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 450
    Top = 30
  end
  inherited dsDados: TDataSource
    Left = 514
    Top = 30
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from firpa where numero = -1')
    Left = 418
    Top = 30
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.FIRPA.NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FIRPA.DATA'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.FIRPA.DESCRICAO'
      Size = 50
    end
    object sqlDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'JAEADMIN.FIRPA.CPF'
      Size = 18
    end
    object sqlDadosPREV: TStringField
      FieldName = 'PREV'
      Origin = 'JAEADMIN.FIRPA.PREV'
      Size = 15
    end
    object sqlDadosVALORBRU: TBCDField
      FieldName = 'VALORBRU'
      Origin = 'JAEADMIN.FIRPA.VALORBRU'
    end
    object sqlDadosALIQBASE: TBCDField
      FieldName = 'ALIQBASE'
      Origin = 'JAEADMIN.FIRPA.ALIQBASE'
    end
    object sqlDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'JAEADMIN.FIRPA.VLRBASE'
    end
    object sqlDadosALIQINSS: TBCDField
      FieldName = 'ALIQINSS'
      Origin = 'JAEADMIN.FIRPA.ALIQINSS'
    end
    object sqlDadosVLRINSS: TBCDField
      FieldName = 'VLRINSS'
      Origin = 'JAEADMIN.FIRPA.VLRINSS'
    end
    object sqlDadosQTDEDEPE: TIntegerField
      FieldName = 'QTDEDEPE'
      Origin = 'JAEADMIN.FIRPA.QTDEDEPE'
    end
    object sqlDadosVLRDEPE: TBCDField
      FieldName = 'VLRDEPE'
      Origin = 'JAEADMIN.FIRPA.VLRDEPE'
    end
    object sqlDadosVLRDEPENDE: TBCDField
      FieldName = 'VLRDEPENDE'
      Origin = 'JAEADMIN.FIRPA.VLRDEPENDE'
    end
    object sqlDadosVLRBASECAL: TBCDField
      FieldName = 'VLRBASECAL'
      Origin = 'JAEADMIN.FIRPA.VLRBASECAL'
    end
    object sqlDadosALIQIRRF: TBCDField
      FieldName = 'ALIQIRRF'
      Origin = 'JAEADMIN.FIRPA.ALIQIRRF'
    end
    object sqlDadosVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      Origin = 'JAEADMIN.FIRPA.VLRIRRF'
    end
    object sqlDadosVALORLIQ: TBCDField
      FieldName = 'VALORLIQ'
      Origin = 'JAEADMIN.FIRPA.VALORLIQ'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FIRPA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FIRPA.ACESOCOD'
    end
    object sqlDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.FIRPA.TIPO'
      Size = 1
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.FIRPA.OBS'
      Size = 50
    end
    object sqlDadosFREPER: TBCDField
      FieldName = 'FREPER'
      Origin = 'JAEADMIN.FIRPA.FREPER'
    end
    object sqlDadosFREVAL: TBCDField
      FieldName = 'FREVAL'
      Origin = 'JAEADMIN.FIRPA.FREVAL'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FIRPA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FIRPA.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspTabela: TDataSetProvider
    DataSet = sqlTabela
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 530
    Top = 326
  end
  object cdsTabela: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspTabela'
    OnReconcileError = cdsDadosReconcileError
    Left = 562
    Top = 326
    object cdsTabelaINSSD1: TBCDField
      FieldName = 'INSSD1'
      Origin = 'INSSD1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSA1: TBCDField
      FieldName = 'INSSA1'
      Origin = 'INSSA1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSV1: TBCDField
      FieldName = 'INSSV1'
      Origin = 'INSSV1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFD1: TBCDField
      FieldName = 'IRRFD1'
      Origin = 'IRRFD1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFA1: TBCDField
      FieldName = 'IRRFA1'
      Origin = 'IRRFA1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFR1: TBCDField
      FieldName = 'IRRFR1'
      Origin = 'IRRFR1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFV1: TBCDField
      FieldName = 'IRRFV1'
      Origin = 'IRRFV1'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSD2: TBCDField
      FieldName = 'INSSD2'
      Origin = 'INSSD2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSA2: TBCDField
      FieldName = 'INSSA2'
      Origin = 'INSSA2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSV2: TBCDField
      FieldName = 'INSSV2'
      Origin = 'INSSV2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFD2: TBCDField
      FieldName = 'IRRFD2'
      Origin = 'IRRFD2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFA2: TBCDField
      FieldName = 'IRRFA2'
      Origin = 'IRRFA2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFR2: TBCDField
      FieldName = 'IRRFR2'
      Origin = 'IRRFR2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFV2: TBCDField
      FieldName = 'IRRFV2'
      Origin = 'IRRFV2'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSD3: TBCDField
      FieldName = 'INSSD3'
      Origin = 'INSSD3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSA3: TBCDField
      FieldName = 'INSSA3'
      Origin = 'INSSA3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSV3: TBCDField
      FieldName = 'INSSV3'
      Origin = 'INSSV3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFD3: TBCDField
      FieldName = 'IRRFD3'
      Origin = 'IRRFD3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFA3: TBCDField
      FieldName = 'IRRFA3'
      Origin = 'IRRFA3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFR3: TBCDField
      FieldName = 'IRRFR3'
      Origin = 'IRRFR3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFV3: TBCDField
      FieldName = 'IRRFV3'
      Origin = 'IRRFV3'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSD4: TBCDField
      FieldName = 'INSSD4'
      Origin = 'INSSD4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSA4: TBCDField
      FieldName = 'INSSA4'
      Origin = 'INSSA4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSV4: TBCDField
      FieldName = 'INSSV4'
      Origin = 'INSSV4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFD4: TBCDField
      FieldName = 'IRRFD4'
      Origin = 'IRRFD4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFA4: TBCDField
      FieldName = 'IRRFA4'
      Origin = 'IRRFA4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFR4: TBCDField
      FieldName = 'IRRFR4'
      Origin = 'IRRFR4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFV4: TIntegerField
      FieldName = 'IRRFV4'
      Origin = 'IRRFV4'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSD5: TBCDField
      FieldName = 'INSSD5'
      Origin = 'INSSD5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSA5: TBCDField
      FieldName = 'INSSA5'
      Origin = 'INSSA5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaINSSV5: TBCDField
      FieldName = 'INSSV5'
      Origin = 'INSSV5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFD5: TBCDField
      FieldName = 'IRRFD5'
      Origin = 'IRRFD5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFA5: TBCDField
      FieldName = 'IRRFA5'
      Origin = 'IRRFA5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFR5: TBCDField
      FieldName = 'IRRFR5'
      Origin = 'IRRFR5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaIRRFV5: TBCDField
      FieldName = 'IRRFV5'
      Origin = 'IRRFV5'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaDEPENDE: TBCDField
      FieldName = 'DEPENDE'
      Origin = 'DEPENDE'
      DisplayFormat = '#,0.00'
    end
    object cdsTabelaEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsTabelaACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsTabelaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsTabelaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsTabela: TDataSource
    DataSet = cdsTabela
    Left = 594
    Top = 326
  end
  object sqlTabela: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from firpapar')
    Left = 498
    Top = 326
    object sqlTabelaINSSD1: TBCDField
      FieldName = 'INSSD1'
      Origin = 'INSSD1'
      Precision = 18
    end
    object sqlTabelaINSSA1: TBCDField
      FieldName = 'INSSA1'
      Origin = 'INSSA1'
      Precision = 18
    end
    object sqlTabelaINSSV1: TBCDField
      FieldName = 'INSSV1'
      Origin = 'INSSV1'
      Precision = 18
    end
    object sqlTabelaIRRFD1: TBCDField
      FieldName = 'IRRFD1'
      Origin = 'IRRFD1'
      Precision = 18
    end
    object sqlTabelaIRRFA1: TBCDField
      FieldName = 'IRRFA1'
      Origin = 'IRRFA1'
      Precision = 18
    end
    object sqlTabelaIRRFR1: TBCDField
      FieldName = 'IRRFR1'
      Origin = 'IRRFR1'
      Precision = 18
    end
    object sqlTabelaIRRFV1: TBCDField
      FieldName = 'IRRFV1'
      Origin = 'IRRFV1'
      Precision = 18
    end
    object sqlTabelaINSSD2: TBCDField
      FieldName = 'INSSD2'
      Origin = 'INSSD2'
      Precision = 18
    end
    object sqlTabelaINSSA2: TBCDField
      FieldName = 'INSSA2'
      Origin = 'INSSA2'
      Precision = 18
    end
    object sqlTabelaINSSV2: TBCDField
      FieldName = 'INSSV2'
      Origin = 'INSSV2'
      Precision = 18
    end
    object sqlTabelaIRRFD2: TBCDField
      FieldName = 'IRRFD2'
      Origin = 'IRRFD2'
      Precision = 18
    end
    object sqlTabelaIRRFA2: TBCDField
      FieldName = 'IRRFA2'
      Origin = 'IRRFA2'
      Precision = 18
    end
    object sqlTabelaIRRFR2: TBCDField
      FieldName = 'IRRFR2'
      Origin = 'IRRFR2'
      Precision = 18
    end
    object sqlTabelaIRRFV2: TBCDField
      FieldName = 'IRRFV2'
      Origin = 'IRRFV2'
      Precision = 18
    end
    object sqlTabelaINSSD3: TBCDField
      FieldName = 'INSSD3'
      Origin = 'INSSD3'
      Precision = 18
    end
    object sqlTabelaINSSA3: TBCDField
      FieldName = 'INSSA3'
      Origin = 'INSSA3'
      Precision = 18
    end
    object sqlTabelaINSSV3: TBCDField
      FieldName = 'INSSV3'
      Origin = 'INSSV3'
      Precision = 18
    end
    object sqlTabelaIRRFD3: TBCDField
      FieldName = 'IRRFD3'
      Origin = 'IRRFD3'
      Precision = 18
    end
    object sqlTabelaIRRFA3: TBCDField
      FieldName = 'IRRFA3'
      Origin = 'IRRFA3'
      Precision = 18
    end
    object sqlTabelaIRRFR3: TBCDField
      FieldName = 'IRRFR3'
      Origin = 'IRRFR3'
      Precision = 18
    end
    object sqlTabelaIRRFV3: TBCDField
      FieldName = 'IRRFV3'
      Origin = 'IRRFV3'
      Precision = 18
    end
    object sqlTabelaINSSD4: TBCDField
      FieldName = 'INSSD4'
      Origin = 'INSSD4'
      Precision = 18
    end
    object sqlTabelaINSSA4: TBCDField
      FieldName = 'INSSA4'
      Origin = 'INSSA4'
      Precision = 18
    end
    object sqlTabelaINSSV4: TBCDField
      FieldName = 'INSSV4'
      Origin = 'INSSV4'
      Precision = 18
    end
    object sqlTabelaIRRFD4: TBCDField
      FieldName = 'IRRFD4'
      Origin = 'IRRFD4'
      Precision = 18
    end
    object sqlTabelaIRRFA4: TBCDField
      FieldName = 'IRRFA4'
      Origin = 'IRRFA4'
      Precision = 18
    end
    object sqlTabelaIRRFR4: TBCDField
      FieldName = 'IRRFR4'
      Origin = 'IRRFR4'
      Precision = 18
    end
    object sqlTabelaIRRFV4: TIntegerField
      FieldName = 'IRRFV4'
      Origin = 'IRRFV4'
    end
    object sqlTabelaINSSD5: TBCDField
      FieldName = 'INSSD5'
      Origin = 'INSSD5'
      Precision = 18
    end
    object sqlTabelaINSSA5: TBCDField
      FieldName = 'INSSA5'
      Origin = 'INSSA5'
      Precision = 18
    end
    object sqlTabelaINSSV5: TBCDField
      FieldName = 'INSSV5'
      Origin = 'INSSV5'
      Precision = 18
    end
    object sqlTabelaIRRFD5: TBCDField
      FieldName = 'IRRFD5'
      Origin = 'IRRFD5'
      Precision = 18
    end
    object sqlTabelaIRRFA5: TBCDField
      FieldName = 'IRRFA5'
      Origin = 'IRRFA5'
      Precision = 18
    end
    object sqlTabelaIRRFR5: TBCDField
      FieldName = 'IRRFR5'
      Origin = 'IRRFR5'
      Precision = 18
    end
    object sqlTabelaIRRFV5: TBCDField
      FieldName = 'IRRFV5'
      Origin = 'IRRFV5'
      Precision = 18
    end
    object sqlTabelaDEPENDE: TBCDField
      FieldName = 'DEPENDE'
      Origin = 'DEPENDE'
      Precision = 18
    end
    object sqlTabelaEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlTabelaACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlTabelaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlTabelaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
