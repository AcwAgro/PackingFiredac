inherited FfrmCadBancoCob: TFfrmCadBancoCob
  Caption = 'Cadastro cobran'#231'a'
  ClientHeight = 452
  ClientWidth = 1236
  ExplicitWidth = 1242
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 436
    Width = 1236
    ExplicitTop = 436
    ExplicitWidth = 1236
    inherited PStatusHistorico: TPanel
      Width = 1055
      ExplicitWidth = 1055
    end
    inherited pnlTela: TPanel
      Left = 1168
      ExplicitLeft = 1168
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1226
      ExplicitLeft = 1226
    end
  end
  inherited pMenu: TRzPanel
    Height = 436
    ExplicitHeight = 436
    inherited rzpMenu: TRzPanel
      Height = 332
      ExplicitHeight = 332
      inherited rbgAtivo: TRadioGroup
        Top = 292
        OnClick = rbgAtivoClick
        ExplicitTop = 292
      end
      inherited PPeriodo: TPanel
        Top = 212
        ExplicitTop = 212
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        ExplicitLeft = -2
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1099
    Height = 436
    ExplicitWidth = 1099
    ExplicitHeight = 436
    inherited pcItem: TRzPageControl
      Width = 1091
      Height = 428
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 1091
      ExplicitHeight = 428
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1089
        ExplicitHeight = 407
        inherited pPesquisa: TRzPanel
          Top = 341
          Width = 1089
          ExplicitTop = 341
          ExplicitWidth = 1089
          inherited Label1: TLabel
            Width = 1081
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 968
            ExplicitLeft = 606
          end
          inherited rbPesquisa: TRzPanel
            Width = 1081
            ExplicitWidth = 1081
          end
          inherited edPesquisa: TMaskEdit
            Width = 964
            ExplicitWidth = 964
          end
        end
        inherited Panel2: TPanel
          Width = 1089
          ExplicitWidth = 1089
          inherited Label3: TLabel
            Width = 951
            ExplicitLeft = 671
          end
        end
        inherited dbDados: TcxGrid
          Width = 1089
          Height = 321
          ExplicitWidth = 1089
          ExplicitHeight = 321
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 1089
        ExplicitHeight = 407
        inherited pDados: TPanel
          Width = 1089
          Height = 407
          ExplicitWidth = 1089
          ExplicitHeight = 407
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
          object DBRadioGroup4: TDBRadioGroup
            Left = 91
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
          object GroupBox5: TGroupBox
            Left = 5
            Top = 203
            Width = 702
            Height = 194
            Caption = 'Informa'#231#245'es Sobre a Cobran'#231'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object GroupBox6: TGroupBox
              Left = 449
              Top = 17
              Width = 106
              Height = 32
              Caption = ' Esp'#233'cie doc. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object DBEdit3: TDBEdit
                Left = 2
                Top = 15
                Width = 102
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ESPECIE'
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
            object GroupBox7: TGroupBox
              Left = 13
              Top = 17
              Width = 430
              Height = 32
              Caption = ' Mensagem local pagamento '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object DBEdit5: TDBEdit
                Left = 2
                Top = 15
                Width = 426
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'MENSAGEM'
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
              Left = 561
              Top = 17
              Width = 128
              Height = 32
              Caption = ' Aceite '
              Columns = 2
              DataField = 'ACEITE'
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
              ParentShowHint = False
              ShowHint = False
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 464
              Top = 51
              Width = 128
              Height = 32
              Caption = ' CNAB '
              Columns = 2
              DataField = 'LAYOUT'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Items.Strings = (
                '400'
                '240')
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 6
              Values.Strings = (
                '400'
                '240')
            end
            object GroupBox2: TGroupBox
              Left = 163
              Top = 51
              Width = 145
              Height = 32
              Caption = ' Nome do arquivo '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object DBEdit2: TDBEdit
                Left = 2
                Top = 15
                Width = 141
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ARQUIVODES'
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
            object GroupBox4: TGroupBox
              Left = 14
              Top = 51
              Width = 145
              Height = 32
              Caption = ' '#218'ltimo Nosso N'#186' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object DBEdit4: TDBEdit
                Left = 2
                Top = 15
                Width = 141
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'NOSSONUMERO'
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
            object GroupBox8: TGroupBox
              Left = 313
              Top = 51
              Width = 145
              Height = 32
              Caption = ' Seq.do Arquivo '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object DBEdit6: TDBEdit
                Left = 2
                Top = 15
                Width = 141
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ARQUIVONUM'
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
            object GroupBox9: TGroupBox
              Left = 14
              Top = 85
              Width = 500
              Height = 32
              Caption = ' Caminho arquivo de remessa '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              object btnRemessa: TSpeedButton
                Left = 475
                Top = 15
                Width = 23
                Height = 15
                Align = alRight
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = btnRemessaClick
                ExplicitLeft = 357
                ExplicitTop = 8
                ExplicitHeight = 24
              end
              object DBEdit7: TDBEdit
                Left = 2
                Top = 15
                Width = 473
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'PASTAENV'
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
            object GroupBox11: TGroupBox
              Left = 15
              Top = 119
              Width = 500
              Height = 32
              Caption = ' Caminho arquivo de retorno '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              object btnRetorno: TSpeedButton
                Left = 475
                Top = 15
                Width = 23
                Height = 15
                Align = alRight
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = btnRetornoClick
                ExplicitLeft = 357
                ExplicitTop = 8
                ExplicitHeight = 24
              end
              object DBEdit8: TDBEdit
                Left = 2
                Top = 15
                Width = 473
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'PASTARET'
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
            object GroupBox10: TGroupBox
              Left = 15
              Top = 154
              Width = 500
              Height = 32
              Caption = ' Mensagem corpo do texto '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object DBEdit9: TDBEdit
                Left = 2
                Top = 15
                Width = 496
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'TEXTO1'
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
          object GroupBox12: TGroupBox
            Left = 5
            Top = 43
            Width = 702
            Height = 159
            Caption = 'Beneficiario'
            TabOrder = 3
            object Label6: TLabel
              Left = 358
              Top = 126
              Width = 96
              Height = 28
              AutoSize = False
              Caption = '* Valor zerado n'#227'o protesta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object GroupBox13: TGroupBox
              Left = 13
              Top = 14
              Width = 400
              Height = 39
              Caption = ' Banco '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object DBComboBox1: TDBComboBox
                Left = 2
                Top = 16
                Width = 396
                Height = 21
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvRaised
                CharCase = ecUpperCase
                DataField = 'BANCODES'
                DataSource = dsDados
                Items.Strings = (
                  '001 - BANCO DO BRASIL')
                TabOrder = 0
              end
            end
            object GroupBox14: TGroupBox
              Left = 15
              Top = 55
              Width = 143
              Height = 32
              Caption = ' Ag'#234'ncia '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object DBEdit10: TDBEdit
                Left = 2
                Top = 15
                Width = 139
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'AGENCIANR'
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
              Left = 162
              Top = 55
              Width = 48
              Height = 32
              Caption = ' DV '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object DBEdit11: TDBEdit
                Left = 2
                Top = 15
                Width = 44
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'AGENCIADV'
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
            object GroupBox16: TGroupBox
              Left = 216
              Top = 55
              Width = 145
              Height = 32
              Caption = ' Conta Corrente '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object DBEdit12: TDBEdit
                Left = 2
                Top = 15
                Width = 141
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTANR'
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
            object GroupBox17: TGroupBox
              Left = 365
              Top = 55
              Width = 48
              Height = 32
              Caption = ' DV '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object DBEdit13: TDBEdit
                Left = 2
                Top = 15
                Width = 44
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTADV'
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
            object GroupBox18: TGroupBox
              Left = 15
              Top = 89
              Width = 143
              Height = 32
              Caption = ' Conv'#234'nio '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object DBEdit14: TDBEdit
                Left = 2
                Top = 15
                Width = 139
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONVENIO'
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
            object GroupBox19: TGroupBox
              Left = 162
              Top = 89
              Width = 81
              Height = 32
              Caption = ' Carteira '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
              object DBEdit15: TDBEdit
                Left = 2
                Top = 15
                Width = 77
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CARTEIRA'
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
            object GroupBox20: TGroupBox
              Left = 247
              Top = 89
              Width = 145
              Height = 32
              Caption = ' Contrato/Varia'#231#227'o '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              object DBEdit16: TDBEdit
                Left = 2
                Top = 15
                Width = 141
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTRATO'
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
            object GroupBox3: TGroupBox
              Left = 15
              Top = 122
              Width = 110
              Height = 32
              Caption = ' % Multa '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              object DBEdit17: TDBEdit
                Left = 2
                Top = 15
                Width = 106
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'MULTAPER'
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
            object GroupBox21: TGroupBox
              Left = 129
              Top = 122
              Width = 110
              Height = 32
              Caption = ' % Juros '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
              object DBEdit18: TDBEdit
                Left = 2
                Top = 15
                Width = 106
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'JUROSPER'
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
            object GroupBox22: TGroupBox
              Left = 242
              Top = 122
              Width = 110
              Height = 32
              Caption = ' Dias Protesto '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              object DBEdit19: TDBEdit
                Left = 2
                Top = 15
                Width = 106
                Height = 15
                Hint = '* Valor zerado n'#227'o protesta'
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'PROTESTO'
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
                OnExit = DBEdit4Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox23: TGroupBox
              Left = 417
              Top = 89
              Width = 102
              Height = 32
              Caption = ' Instru'#231#227'o 1 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4194368
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              object DBEdit20: TDBEdit
                Left = 2
                Top = 15
                Width = 98
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'INSTRUCAO1'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit4Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox24: TGroupBox
              Left = 525
              Top = 89
              Width = 102
              Height = 32
              Caption = ' Instru'#231#227'o 2 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4194368
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object DBEdit21: TDBEdit
                Left = 2
                Top = 15
                Width = 98
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'INSTRUCAO2'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit4Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'JAEADMIN.CADBANCO_CC.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADBANCO_CC.CODIGO'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADBANCO_CC.ATIVO'
      Visible = False
      Size = 1
    end
    object cdsDadosBANCONUM: TIntegerField
      DisplayLabel = 'N'#186' Banco'
      FieldName = 'BANCONUM'
      Origin = 'JAEADMIN.CADBANCO_CC.BANCONUM'
    end
    object cdsDadosBANCODES: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'BANCODES'
      Origin = 'JAEADMIN.CADBANCO_CC.BANCODES'
      Size = 100
    end
    object cdsDadosAGENCIANR: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIANR'
      Origin = 'JAEADMIN.CADBANCO_CC.AGENCIANR'
      Size = 10
    end
    object cdsDadosAGENCIADV: TStringField
      FieldName = 'AGENCIADV'
      Origin = 'JAEADMIN.CADBANCO_CC.AGENCIADV'
      Visible = False
      Size = 2
    end
    object cdsDadosCONTANR: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTANR'
      Origin = 'JAEADMIN.CADBANCO_CC.CONTANR'
      Size = 10
    end
    object cdsDadosCONTADV: TStringField
      FieldName = 'CONTADV'
      Origin = 'JAEADMIN.CADBANCO_CC.CONTADV'
      Visible = False
      Size = 2
    end
    object cdsDadosCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Origin = 'JAEADMIN.CADBANCO_CC.CONVENIO'
    end
    object cdsDadosCONTRATO: TStringField
      DisplayLabel = 'Contrato/Varia'#231#227'o'
      FieldName = 'CONTRATO'
      Origin = 'JAEADMIN.CADBANCO_CC.CONTRATO'
    end
    object cdsDadosCARTEIRA: TStringField
      DisplayLabel = 'Carteira'
      FieldName = 'CARTEIRA'
      Origin = 'JAEADMIN.CADBANCO_CC.CARTEIRA'
      Size = 10
    end
    object cdsDadosINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Origin = 'JAEADMIN.CADBANCO_CC.INSTRUCAO1'
      Visible = False
      Size = 2
    end
    object cdsDadosINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Origin = 'JAEADMIN.CADBANCO_CC.INSTRUCAO2'
      Visible = False
      Size = 2
    end
    object cdsDadosMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Origin = 'JAEADMIN.CADBANCO_CC.MENSAGEM'
      Visible = False
      Size = 100
    end
    object cdsDadosTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Origin = 'JAEADMIN.CADBANCO_CC.TEXTO1'
      Visible = False
      Size = 100
    end
    object cdsDadosARQUIVODES: TStringField
      FieldName = 'ARQUIVODES'
      Origin = 'JAEADMIN.CADBANCO_CC.ARQUIVODES'
      Visible = False
    end
    object cdsDadosARQUIVONUM: TIntegerField
      FieldName = 'ARQUIVONUM'
      Origin = 'JAEADMIN.CADBANCO_CC.ARQUIVONUM'
      Visible = False
    end
    object cdsDadosNOSSONUMERO: TIntegerField
      FieldName = 'NOSSONUMERO'
      Origin = 'JAEADMIN.CADBANCO_CC.NOSSONUMERO'
      Visible = False
    end
    object cdsDadosLAYOUT: TIntegerField
      FieldName = 'LAYOUT'
      Origin = 'JAEADMIN.CADBANCO_CC.LAYOUT'
      Visible = False
    end
    object cdsDadosACEITE: TStringField
      DisplayLabel = 'Aceite'
      FieldName = 'ACEITE'
      Origin = 'JAEADMIN.CADBANCO_CC.ACEITE'
      Size = 1
    end
    object cdsDadosJUROSPER: TBCDField
      DisplayLabel = 'Juros%'
      FieldName = 'JUROSPER'
      Origin = 'JAEADMIN.CADBANCO_CC.JUROSPER'
    end
    object cdsDadosMULTAPER: TBCDField
      DisplayLabel = 'Multa%'
      FieldName = 'MULTAPER'
      Origin = 'JAEADMIN.CADBANCO_CC.MULTAPER'
    end
    object cdsDadosPROTESTO: TIntegerField
      DisplayLabel = 'Protestar dias'
      FieldName = 'PROTESTO'
      Origin = 'JAEADMIN.CADBANCO_CC.PROTESTO'
    end
    object cdsDadosPASTAENV: TStringField
      FieldName = 'PASTAENV'
      Origin = 'JAEADMIN.CADBANCO_CC.PASTAENV'
      Visible = False
      Size = 100
    end
    object cdsDadosPASTARET: TStringField
      FieldName = 'PASTARET'
      Origin = 'JAEADMIN.CADBANCO_CC.PASTARET'
      Visible = False
      Size = 100
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADBANCO_CC.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADBANCO_CC.ACESOCOD'
      Visible = False
    end
    object cdsDadosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'JAEADMIN.CADBANCO_CC.ESPECIE'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADBANCO_CC.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADBANCO_CC.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadbanco_cc where ativo = '#39'S'#39)
    object sqlDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'JAEADMIN.CADBANCO_CC.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADBANCO_CC.CODIGO'
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADBANCO_CC.ATIVO'
      Size = 1
    end
    object sqlDadosBANCONUM: TIntegerField
      FieldName = 'BANCONUM'
      Origin = 'JAEADMIN.CADBANCO_CC.BANCONUM'
    end
    object sqlDadosBANCODES: TStringField
      FieldName = 'BANCODES'
      Origin = 'JAEADMIN.CADBANCO_CC.BANCODES'
      Size = 100
    end
    object sqlDadosAGENCIANR: TStringField
      FieldName = 'AGENCIANR'
      Origin = 'JAEADMIN.CADBANCO_CC.AGENCIANR'
      Size = 10
    end
    object sqlDadosAGENCIADV: TStringField
      FieldName = 'AGENCIADV'
      Origin = 'JAEADMIN.CADBANCO_CC.AGENCIADV'
      Size = 2
    end
    object sqlDadosCONTANR: TStringField
      FieldName = 'CONTANR'
      Origin = 'JAEADMIN.CADBANCO_CC.CONTANR'
      Size = 10
    end
    object sqlDadosCONTADV: TStringField
      FieldName = 'CONTADV'
      Origin = 'JAEADMIN.CADBANCO_CC.CONTADV'
      Size = 2
    end
    object sqlDadosCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Origin = 'JAEADMIN.CADBANCO_CC.CONVENIO'
    end
    object sqlDadosCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'JAEADMIN.CADBANCO_CC.CONTRATO'
    end
    object sqlDadosCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Origin = 'JAEADMIN.CADBANCO_CC.CARTEIRA'
      Size = 10
    end
    object sqlDadosINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Origin = 'JAEADMIN.CADBANCO_CC.INSTRUCAO1'
      Size = 2
    end
    object sqlDadosINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Origin = 'JAEADMIN.CADBANCO_CC.INSTRUCAO2'
      Size = 2
    end
    object sqlDadosMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Origin = 'JAEADMIN.CADBANCO_CC.MENSAGEM'
      Size = 100
    end
    object sqlDadosTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Origin = 'JAEADMIN.CADBANCO_CC.TEXTO1'
      Size = 100
    end
    object sqlDadosARQUIVODES: TStringField
      FieldName = 'ARQUIVODES'
      Origin = 'JAEADMIN.CADBANCO_CC.ARQUIVODES'
    end
    object sqlDadosARQUIVONUM: TIntegerField
      FieldName = 'ARQUIVONUM'
      Origin = 'JAEADMIN.CADBANCO_CC.ARQUIVONUM'
    end
    object sqlDadosNOSSONUMERO: TIntegerField
      FieldName = 'NOSSONUMERO'
      Origin = 'JAEADMIN.CADBANCO_CC.NOSSONUMERO'
    end
    object sqlDadosLAYOUT: TIntegerField
      FieldName = 'LAYOUT'
      Origin = 'JAEADMIN.CADBANCO_CC.LAYOUT'
    end
    object sqlDadosACEITE: TStringField
      FieldName = 'ACEITE'
      Origin = 'JAEADMIN.CADBANCO_CC.ACEITE'
      Size = 1
    end
    object sqlDadosJUROSPER: TBCDField
      FieldName = 'JUROSPER'
      Origin = 'JAEADMIN.CADBANCO_CC.JUROSPER'
    end
    object sqlDadosMULTAPER: TBCDField
      FieldName = 'MULTAPER'
      Origin = 'JAEADMIN.CADBANCO_CC.MULTAPER'
    end
    object sqlDadosPROTESTO: TIntegerField
      FieldName = 'PROTESTO'
      Origin = 'JAEADMIN.CADBANCO_CC.PROTESTO'
    end
    object sqlDadosPASTAENV: TStringField
      FieldName = 'PASTAENV'
      Origin = 'JAEADMIN.CADBANCO_CC.PASTAENV'
      Size = 100
    end
    object sqlDadosPASTARET: TStringField
      FieldName = 'PASTARET'
      Origin = 'JAEADMIN.CADBANCO_CC.PASTARET'
      Size = 100
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADBANCO_CC.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADBANCO_CC.ACESOCOD'
    end
    object sqlDadosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'JAEADMIN.CADBANCO_CC.ESPECIE'
      FixedChar = True
      Size = 10
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADBANCO_CC.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADBANCO_CC.REG_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsDados
    Left = 386
    Top = 6
  end
end
