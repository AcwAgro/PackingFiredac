object FfrmGerenciadorNFE: TFfrmGerenciadorNFE
  Left = 646
  Top = 209
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Nota Fiscal Eletr'#244'nica 4.0'
  ClientHeight = 565
  ClientWidth = 1112
  Color = 14930883
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblRodape: TLabel
    Left = 0
    Top = 552
    Width = 1112
    Height = 13
    Align = alBottom
    Caption = 'Servi'#231'o:'
    Color = 13878195
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 45
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 552
    Align = alClient
    BorderInner = fsLowered
    BorderOuter = fsFlatRounded
    BorderColor = 14273198
    BorderHighlight = clWhite
    BorderShadow = clSilver
    BorderWidth = 3
    Color = 15987699
    GradientColorStyle = gcsCustom
    GradientColorStop = clWhite
    GridXSize = 5
    GridYSize = 5
    TabOrder = 0
    VisualStyle = vsGradient
    object PageControl1: TPageControl
      Left = 7
      Top = 7
      Width = 1098
      Height = 538
      ActivePage = TabGerenciador
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabGerenciador: TTabSheet
        Caption = 'Gerenciador'
        object pn_nfe: TPanel
          Left = 0
          Top = 0
          Width = 1090
          Height = 69
          Align = alTop
          BevelOuter = bvNone
          Color = 15921906
          ParentBackground = False
          TabOrder = 0
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 1090
            Height = 3
            Align = alTop
            ExplicitWidth = 869
          end
          object Image1: TImage
            Left = 0
            Top = 3
            Width = 53
            Height = 63
            Align = alLeft
            Center = True
            Picture.Data = {
              0A544A504547496D616765A4040000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC00011080028002F03012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F719
              A786D6DE4B8B86DB120CB1F4E71597FDA774350D32C9E244967798CF9EC91F19
              1F5E2A4D7A3F3F4EFB3B394491D4B600E4039C7E958F74647BB96FA5BC2AE2D8
              C0A768FDDA1EA47BFBD6D0A4E4B9BA194EA28BB138F13E2E1433D8185433BF93
              3990EDCE0738C03ED5524F12EA975208AC6D9532789245CE7F0E82A858D82CD6
              B1CD3CB1DAE9D6E0246F3B04071DFDCD6CBC7140906C922921981F29E36CABE3
              AE0D1EC15556E6B7E664EA4F7E8361D6755B4BD36FA82C2C42AB7CAB824138FC
              EBA5460E8AC3A11915C1A335F6AF3CA24611C584073C1DBD7F0C93F95761A45D
              8BDD3629426DFE1C7D2B08509C1393778B7A1AD3AAA5A752D4F6F15CC4629903
              21EC6B8DD72DA24BA163679DC0AB4AEE4B1624FCAA7DBBD76D5C6DBAF9D7CD3C
              BFF2D2F245627B11C01F956588AD3843962ED76BF348A9423269343F5616275C
              8ED1F4DBAB93A7C2BB144A8B17CDCEE00F53DB3ED5435BBE92782CACADECA4B4
              749CCCA5E4563F748E8BDB9ADBF116B234F9E2480D9CF7246DF2648F7381F507
              81F5AC1B2B2BCFED392FAEA46B9BA987C904698551FD00AEDA6FDAFB91F9BBED
              FF0004E7A8ECEC8B769A6E52D74F0FB04A7321EE4019C57670C31DBC2B144A15
              146001595A5E9F3A5D35DDDA047DBB5101CE07739AD8AAC44D36A11D91A50859
              5DEE15897DE1D8AEE79248E79A1129DD222390AC7D71EB4515C928C64AD25736
              693DC8A2F0BDB59A17801793A9DDCE7FFAF57B4BB39222F712E559C6153FBA28
              A2B68CDC69F22D88E45CD734A8A28ACCD0FFD9}
            Stretch = True
            OnClick = Image1Click
          end
          object Bevel5: TBevel
            Left = 53
            Top = 3
            Width = 2
            Height = 63
            Align = alLeft
            ExplicitLeft = 47
            ExplicitHeight = 40
          end
          object Bevel6: TBevel
            Left = 0
            Top = 66
            Width = 1090
            Height = 3
            Align = alBottom
            ExplicitTop = 43
            ExplicitWidth = 869
          end
          object GroupBox8: TGroupBox
            Left = 53
            Top = 4
            Width = 202
            Height = 60
            Caption = ' Data inicial        Data final '
            TabOrder = 0
            object dtInicial: TDateTimePicker
              Left = 5
              Top = 14
              Width = 94
              Height = 21
              Date = 41314.000000000000000000
              Time = 41314.000000000000000000
              TabOrder = 0
              OnChange = dtInicialChange
            end
            object dtFinal: TDateTimePicker
              Left = 104
              Top = 14
              Width = 94
              Height = 21
              Date = 41314.000000000000000000
              Time = 41314.000000000000000000
              TabOrder = 1
              OnChange = dtFinalChange
            end
            object btnFiltro: TBitBtn
              Left = 60
              Top = 38
              Width = 90
              Height = 19
              Caption = 'Filtrar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = btnFiltroClick
            end
          end
          object GroupBox9: TGroupBox
            Left = 256
            Top = 4
            Width = 261
            Height = 60
            Caption = ' Padr'#227'o '
            TabOrder = 1
            object bt_nfe_validar: TBitBtn
              Left = 5
              Top = 18
              Width = 75
              Height = 25
              Caption = 'Enviar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = bt_nfe_validarClick
            end
            object bt_nfe_danfe: TBitBtn
              Left = 82
              Top = 18
              Width = 85
              Height = 25
              Caption = 'Imprimir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu1
              TabOrder = 1
              OnClick = bt_nfe_danfeClick
            end
            object btnEmailUnico: TButton
              Left = 169
              Top = 18
              Width = 89
              Height = 25
              Caption = 'E-mail'
              TabOrder = 2
              OnClick = btnEmailUnicoClick
            end
          end
          object GroupBox10: TGroupBox
            Left = 517
            Top = 4
            Width = 292
            Height = 60
            Caption = ' Servi'#231'o '
            TabOrder = 2
            object cbPdf: TCheckBox
              Left = 239
              Top = 36
              Width = 49
              Height = 15
              Caption = 'PDF'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object cbXml: TCheckBox
              Left = 240
              Top = 17
              Width = 46
              Height = 15
              Caption = 'XML'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              State = cbChecked
              TabOrder = 1
            end
            object bt_nfe_status: TBitBtn
              Left = 13
              Top = 14
              Width = 97
              Height = 21
              Caption = 'Status/Servidor'
              TabOrder = 2
              OnClick = bt_nfe_statusClick
            end
            object bt_nfe_consultar: TBitBtn
              Left = 13
              Top = 36
              Width = 97
              Height = 21
              Caption = 'Consultar NFe.'
              TabOrder = 3
              OnClick = bt_nfe_consultarClick
            end
            object btnEmailOutlook: TBitBtn
              Tag = 20
              Left = 126
              Top = 36
              Width = 105
              Height = 21
              Caption = 'E-mail outlook'
              TabOrder = 4
              OnClick = btnEmailOutlookClick
            end
            object btnEmailLote: TBitBtn
              Tag = 10
              Left = 126
              Top = 14
              Width = 105
              Height = 21
              Caption = 'E-mail em lote'
              TabOrder = 5
              OnClick = btnEmailOutlookClick
            end
          end
          object GroupBox11: TGroupBox
            Left = 811
            Top = 4
            Width = 262
            Height = 60
            Caption = ' Outros '
            TabOrder = 3
            object bt_nfe_cancelar: TBitBtn
              Left = 5
              Top = 14
              Width = 75
              Height = 21
              Caption = 'Cancelar'
              TabOrder = 0
              OnClick = bt_nfe_cancelarClick
            end
            object bt_nfe_carta: TButton
              Left = 82
              Top = 14
              Width = 98
              Height = 21
              Caption = 'Carta Corre'#231#227'o'
              TabOrder = 1
              OnClick = bt_nfe_cartaClick
            end
            object bt_nfe_inutilizar: TBitBtn
              Left = 5
              Top = 36
              Width = 75
              Height = 21
              Caption = 'Inutilizar N'#186' '
              TabOrder = 2
              OnClick = bt_nfe_inutilizarClick
            end
            object bt_nfe_Contigencia: TBitBtn
              Left = 82
              Top = 36
              Width = 98
              Height = 21
              Caption = 'NF.Contig'#234'ncia'
              TabOrder = 3
              OnClick = bt_nfe_ContigenciaClick
            end
            object bt_nfe_rejeitar: TBitBtn
              Left = 182
              Top = 14
              Width = 75
              Height = 21
              Caption = 'Rejeitar'
              TabOrder = 4
              OnClick = bt_nfe_rejeitarClick
            end
          end
        end
        object pnl_log: TPanel
          Left = 0
          Top = 312
          Width = 1090
          Height = 198
          Align = alBottom
          TabOrder = 1
          Visible = False
          object pgLog: TPageControl
            Left = 1
            Top = 1
            Width = 981
            Height = 177
            ActivePage = TabSheet10
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object TabSheet10: TTabSheet
              Caption = 'Retorno (Resumo)'
              ImageIndex = 2
              object memoLog: TMemo
                Left = 0
                Top = 0
                Width = 973
                Height = 149
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Retorno (XML)'
              ImageIndex = 1
              object WBResposta: TWebBrowser
                Left = 0
                Top = 0
                Width = 973
                Height = 149
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 969
                ControlData = {
                  4C00000090640000660F00000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E126208000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Retorno (Completo)'
              object MemoResp: TMemo
                Left = 0
                Top = 0
                Width = 973
                Height = 149
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'NFe'
              ImageIndex = 3
              TabVisible = False
              object trvwNFe: TTreeView
                Left = 0
                Top = 0
                Width = 973
                Height = 149
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                Indent = 19
                ParentFont = False
                TabOrder = 0
              end
            end
            object TabSheet12: TTabSheet
              Caption = 'Retorno Completo WS'
              ImageIndex = 4
              TabVisible = False
              object memoRespWS: TMemo
                Left = 0
                Top = 0
                Width = 973
                Height = 149
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'RetornoConsulta NFe 2.01'
              ImageIndex = 6
              TabVisible = False
              object TreeViewRetornoConsulta: TTreeView
                Left = 0
                Top = 0
                Width = 973
                Height = 149
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                Indent = 19
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object Panel4: TPanel
            Left = 1
            Top = 178
            Width = 1088
            Height = 19
            Align = alBottom
            Color = 13878195
            TabOrder = 1
            object BitBtn1: TBitBtn
              Left = 8
              Top = 0
              Width = 90
              Height = 19
              Caption = 'Recuar tela'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = BitBtn1Click
            end
          end
          object Panel5: TPanel
            Left = 982
            Top = 1
            Width = 107
            Height = 177
            Align = alRight
            TabOrder = 2
            object bt_nfe_assinar: TBitBtn
              Left = 4
              Top = 6
              Width = 98
              Height = 21
              Caption = 'Assinar NFe'
              TabOrder = 0
              OnClick = bt_nfe_assinarClick
            end
          end
        end
        object PStatus: TPanel
          Left = 0
          Top = 69
          Width = 1090
          Height = 243
          Align = alClient
          TabOrder = 2
          object pLegenda: TPanel
            Left = 1
            Top = 1
            Width = 1088
            Height = 19
            Align = alTop
            Color = 13878195
            TabOrder = 0
            object Label29: TLabel
              Left = 529
              Top = 4
              Width = 94
              Height = 13
              Caption = '(CA - Cancelada)'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label30: TLabel
              Left = 409
              Top = 4
              Width = 119
              Height = 13
              Caption = '(ER - Erro/Rejeitada)'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label31: TLabel
              Left = 335
              Top = 4
              Width = 72
              Height = 13
              Caption = '(OK - Aceita)'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label32: TLabel
              Left = 255
              Top = 4
              Width = 78
              Height = 13
              Caption = '(EV - Enviada)'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = 16512
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label33: TLabel
              Left = 168
              Top = 4
              Width = 84
              Height = 13
              Caption = '(VA - Validada)'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label34: TLabel
              Left = 63
              Top = 4
              Width = 103
              Height = 13
              Caption = '(NN - N'#227'o Enviada)'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 4
              Top = 4
              Width = 58
              Height = 13
              Caption = 'Legenda: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblRegistro: TLabel
              Left = 915
              Top = 1
              Width = 82
              Height = 17
              Align = alRight
              Caption = 'Registro: 0000'
              Color = 13878195
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              OnDblClick = lblRegistroDblClick
              ExplicitHeight = 13
            end
            object spbTudo: TCheckBox
              Left = 795
              Top = 1
              Width = 120
              Height = 17
              Align = alRight
              Caption = 'Marca/desmarca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = spbTudoClick
            end
            object BitBtn2: TBitBtn
              Left = 997
              Top = 1
              Width = 90
              Height = 17
              Align = alRight
              Caption = 'Abrir Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = BitBtn2Click
            end
          end
          object pnl_msg: TPanel
            Left = 1
            Top = 20
            Width = 1088
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Aguarde...'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            OnClick = ACBrNFe1StatusChange
          end
          object dbDados: TDBGrid
            Left = 1
            Top = 45
            Width = 1088
            Height = 197
            Align = alClient
            DataSource = dsNota
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            PopupMenu = PopupMenu2
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = dbDadosDrawColumnCell
            OnDblClick = dbDadosDblClick
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'XSEL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = '*'
                Width = 10
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFE_STATUS'
                Title.Alignment = taCenter
                Title.Caption = 'Status'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTA'
                Title.Alignment = taCenter
                Title.Caption = 'Nota N'#186
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIE'
                Title.Alignment = taCenter
                Title.Caption = 'S'#233'rie'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Cliente'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRNOTA'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Nota'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'EMAIL'
                Title.Alignment = taCenter
                Title.Caption = 'eMail'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBS1'
                Title.Alignment = taCenter
                Title.Caption = 'Observa'#231#227'o'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFE_CHAVE'
                Title.Alignment = taCenter
                Title.Caption = 'Chave de Acesso'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFE_RECIBO'
                Title.Alignment = taCenter
                Title.Caption = 'NFe.Recibo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFE_PROTOC'
                Title.Alignment = taCenter
                Title.Caption = 'NFe.Protocolo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFE_CANCEL'
                Title.Alignment = taCenter
                Title.Caption = 'NFe.Cancelado'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LANC'
                Title.Alignment = taCenter
                Title.Caption = 'registro'
                Width = 50
                Visible = True
              end>
          end
        end
      end
      object TabConfig: TTabSheet
        Caption = 'Configura'#231#245'es'
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1090
          Height = 510
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object PageControl2: TPageControl
            Left = 1
            Top = 1
            Width = 1088
            Height = 508
            ActivePage = TabSheet3
            Align = alClient
            MultiLine = True
            TabOrder = 0
            object TabSheet3: TTabSheet
              Caption = 'Certificado'
              object GroupBox2: TGroupBox
                Left = 5
                Top = 5
                Width = 380
                Height = 358
                Caption = 'Certificado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label1: TLabel
                  Left = 8
                  Top = 16
                  Width = 56
                  Height = 13
                  Caption = 'Caminho'
                end
                object Label2: TLabel
                  Left = 8
                  Top = 56
                  Width = 40
                  Height = 13
                  Caption = 'Senha'
                end
                object sbtnCaminhoCert: TSpeedButton
                  Left = 353
                  Top = 30
                  Width = 23
                  Height = 24
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
                  OnClick = sbtnCaminhoCertClick
                end
                object Label25: TLabel
                  Left = 8
                  Top = 96
                  Width = 109
                  Height = 13
                  Caption = 'N'#250'mero de S'#233'rie'
                end
                object sbtnGetCert: TSpeedButton
                  Left = 353
                  Top = 110
                  Width = 23
                  Height = 24
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
                  OnClick = sbtnGetCertClick
                end
                object Label12: TLabel
                  Left = 239
                  Top = 55
                  Width = 90
                  Height = 13
                  Caption = 'Data Validade'
                end
                object lSSLLib: TLabel
                  Left = 37
                  Top = 147
                  Width = 42
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'SSLLib'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lCryptLib: TLabel
                  Left = 25
                  Top = 174
                  Width = 54
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'CryptLib'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lHttpLib: TLabel
                  Left = 33
                  Top = 201
                  Width = 46
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'HttpLib'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lXmlSign: TLabel
                  Left = 7
                  Top = 228
                  Width = 72
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'XMLSignLib'
                  Color = clBtnFace
                  ParentColor = False
                end
                object sbData: TSpeedButton
                  Left = 354
                  Top = 69
                  Width = 23
                  Height = 24
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
                  OnClick = sbDataClick
                end
                object lSSLLib1: TLabel
                  Left = 22
                  Top = 253
                  Width = 55
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'SSLType'
                  Color = clBtnFace
                  ParentColor = False
                end
                object sbtnPathSalvar: TSpeedButton
                  Left = 354
                  Top = 295
                  Width = 23
                  Height = 24
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
                  OnClick = sbtnPathSalvarClick
                end
                object spPathSchemas: TSpeedButton
                  Left = 354
                  Top = 331
                  Width = 23
                  Height = 24
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
                  OnClick = spPathSchemasClick
                end
                object Label19: TLabel
                  Left = 8
                  Top = 318
                  Width = 275
                  Height = 13
                  Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
                end
                object edtCaminho: TDBEdit
                  Left = 8
                  Top = 32
                  Width = 344
                  Height = 21
                  DataField = 'CER_CAMINHO'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object edtSenha: TDBEdit
                  Left = 8
                  Top = 72
                  Width = 225
                  Height = 21
                  DataField = 'CER_SENHA'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '*'
                  TabOrder = 1
                end
                object edtNumSerie: TDBEdit
                  Left = 8
                  Top = 112
                  Width = 344
                  Height = 21
                  DataField = 'CER_NUMSERIE'
                  DataSource = dsConfig
                  TabOrder = 3
                end
                object edtValidade: TDBEdit
                  Left = 239
                  Top = 74
                  Width = 113
                  Height = 21
                  DataField = 'CER_VALIDADE'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object cbSSLLib: TComboBox
                  Left = 90
                  Top = 139
                  Width = 160
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnChange = cbSSLLibChange
                end
                object cbCryptLib: TComboBox
                  Left = 90
                  Top = 166
                  Width = 160
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnChange = cbCryptLibChange
                end
                object cbHttpLib: TComboBox
                  Left = 90
                  Top = 193
                  Width = 160
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnChange = cbHttpLibChange
                end
                object cbXmlSignLib: TComboBox
                  Left = 90
                  Top = 220
                  Width = 160
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnChange = cbXmlSignLibChange
                end
                object cbSSLType: TComboBox
                  Left = 89
                  Top = 245
                  Width = 160
                  Height = 21
                  Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnChange = cbSSLTypeChange
                end
                object ckSalvar: TDBCheckBox
                  Left = 8
                  Top = 277
                  Width = 265
                  Height = 17
                  Caption = 'Salvar Arquivos de Envio e Resposta'
                  DataField = 'GER_SALVAR'
                  DataSource = dsConfig
                  TabOrder = 9
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object edtPathLogs: TDBEdit
                  Left = 8
                  Top = 295
                  Width = 345
                  Height = 21
                  DataField = 'GER_PATHSALVAR'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                end
                object edtPathSchemas: TDBEdit
                  Left = 8
                  Top = 332
                  Width = 345
                  Height = 21
                  DataField = 'GER_PATSCHEMAS'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                end
              end
              object GroupBox3: TGroupBox
                Left = 391
                Top = 5
                Width = 370
                Height = 358
                Caption = 'Geral'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label6: TLabel
                  Left = 8
                  Top = 227
                  Width = 85
                  Height = 13
                  Caption = 'Selecione UF :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 8
                  Top = 265
                  Width = 74
                  Height = 13
                  Caption = 'Logo Marca'
                end
                object sbtnLogoMarca: TSpeedButton
                  Left = 330
                  Top = 277
                  Width = 23
                  Height = 24
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
                  OnClick = sbtnLogoMarcaClick
                end
                object rgTipoDanfe: TDBRadioGroup
                  Left = 8
                  Top = 20
                  Width = 169
                  Height = 77
                  Caption = ' DANFE '
                  DataField = 'GER_DANFE'
                  DataSource = dsConfig
                  Items.Strings = (
                    'Retrato'
                    'Paisagem')
                  TabOrder = 0
                  Values.Strings = (
                    'R'
                    'P')
                end
                object rgFormaEmissao: TDBRadioGroup
                  Left = 183
                  Top = 20
                  Width = 184
                  Height = 150
                  Caption = ' Forma de emiss'#227'o '
                  Columns = 2
                  DataField = 'GER_FORMAEMISSAO'
                  DataSource = dsConfig
                  Items.Strings = (
                    'Normal'
                    'Conting'#234'ncia'
                    'SCAN'
                    'DPEC'
                    'FSDA'
                    'SVCAN'
                    'SVCRS'
                    'SVCSP'
                    'OffLine')
                  TabOrder = 1
                  Values.Strings = (
                    'N'
                    'C'
                    'S'
                    'D'
                    'F'
                    'X'
                    'Y'
                    'Z'
                    'W')
                end
                object cbVersaoDF: TDBRadioGroup
                  Left = 8
                  Top = 174
                  Width = 359
                  Height = 41
                  Caption = ' Vers'#227'o layout '
                  Columns = 2
                  DataField = 'GER_VERSAO'
                  DataSource = dsConfig
                  Items.Strings = (
                    'Ve 3.10'
                    'Ve 4.00')
                  TabOrder = 2
                  Values.Strings = (
                    '2'
                    '3')
                end
                object cbUF: TDBComboBox
                  Left = 8
                  Top = 241
                  Width = 131
                  Height = 21
                  DataField = 'WEB_UF'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object rgTipoAmb: TDBRadioGroup
                  Left = 8
                  Top = 103
                  Width = 169
                  Height = 67
                  Caption = ' Selecione o Ambiente '
                  DataField = 'WEB_AMBIENTE'
                  DataSource = dsConfig
                  Items.Strings = (
                    'Produ'#231#227'o'
                    'Homologa'#231#227'o')
                  TabOrder = 4
                  Values.Strings = (
                    'P'
                    'H')
                end
                object edtLogoMarca: TDBEdit
                  Left = 8
                  Top = 280
                  Width = 320
                  Height = 21
                  DataField = 'GER_LOGOMARCA'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object ckVisualizar: TDBCheckBox
                  Left = 8
                  Top = 307
                  Width = 249
                  Height = 17
                  Caption = 'Visualizar Mensagem'
                  DataField = 'WEB_VISUALIZAR'
                  DataSource = dsConfig
                  TabOrder = 6
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
              end
              object GroupBox4: TGroupBox
                Left = 767
                Top = 4
                Width = 122
                Height = 210
                Caption = ' DANFE Margem '
                TabOrder = 2
                object Label23: TLabel
                  Left = 10
                  Top = 28
                  Width = 49
                  Height = 13
                  Caption = 'Superior'
                end
                object Label24: TLabel
                  Left = 10
                  Top = 72
                  Width = 53
                  Height = 13
                  Caption = 'Esquerda'
                end
                object Label28: TLabel
                  Left = 10
                  Top = 160
                  Width = 43
                  Height = 13
                  Caption = 'Inferior'
                end
                object Label43: TLabel
                  Left = 10
                  Top = 116
                  Width = 38
                  Height = 13
                  Caption = 'Direita'
                end
                object Label45: TLabel
                  Left = 75
                  Top = 46
                  Width = 22
                  Height = 13
                  Caption = 'mm'
                end
                object Label46: TLabel
                  Left = 75
                  Top = 90
                  Width = 22
                  Height = 13
                  Caption = 'mm'
                end
                object Label47: TLabel
                  Left = 75
                  Top = 134
                  Width = 22
                  Height = 13
                  Caption = 'mm'
                end
                object Label48: TLabel
                  Left = 75
                  Top = 178
                  Width = 22
                  Height = 13
                  Caption = 'mm'
                end
                object DBEdit1: TDBEdit
                  Left = 10
                  Top = 43
                  Width = 63
                  Height = 21
                  DataField = 'MGM_SUP'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit2: TDBEdit
                  Left = 10
                  Top = 87
                  Width = 63
                  Height = 21
                  DataField = 'MGM_ESQ'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit3: TDBEdit
                  Left = 10
                  Top = 175
                  Width = 63
                  Height = 21
                  DataField = 'MGM_INF'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit4: TDBEdit
                  Left = 10
                  Top = 131
                  Width = 63
                  Height = 21
                  DataField = 'MGM_DIR'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object btnSalvarConfig: TBitBtn
                Left = 21
                Top = 380
                Width = 153
                Height = 25
                Caption = 'Salvar Configura'#231#245'es'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
                  7700333333337777777733333333008088003333333377F73377333333330088
                  88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
                  000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
                  FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
                  99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
                  99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                  99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                  93337FFFF7737777733300000033333333337777773333333333}
                NumGlyphs = 2
                TabOrder = 3
                OnClick = btnSalvarConfigClick
              end
              object btn_Testar: TBitBtn
                Left = 195
                Top = 380
                Width = 127
                Height = 25
                Caption = 'Testar conexao'
                TabOrder = 4
                OnClick = btn_TestarClick
              end
              object memConexao: TMemo
                Left = 767
                Top = 223
                Width = 258
                Height = 170
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 5
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'Emitente'
              ImageIndex = 3
              object GroupBox1: TGroupBox
                Left = 5
                Top = 5
                Width = 433
                Height = 301
                Caption = ' Emitente '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label35: TLabel
                  Left = 8
                  Top = 20
                  Width = 82
                  Height = 13
                  Caption = 'Raz'#227'o Social'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label40: TLabel
                  Left = 8
                  Top = 62
                  Width = 61
                  Height = 13
                  Caption = 'Endere'#231'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label17: TLabel
                  Left = 336
                  Top = 62
                  Width = 51
                  Height = 13
                  Caption = 'N'#250'mero'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label41: TLabel
                  Left = 8
                  Top = 102
                  Width = 40
                  Height = 13
                  Caption = 'Bairro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label44: TLabel
                  Left = 216
                  Top = 102
                  Width = 57
                  Height = 13
                  Caption = 'Telefone'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label42: TLabel
                  Left = 8
                  Top = 142
                  Width = 44
                  Height = 13
                  Caption = 'Cidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label36: TLabel
                  Left = 256
                  Top = 142
                  Width = 24
                  Height = 13
                  Caption = 'CEP'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label37: TLabel
                  Left = 352
                  Top = 142
                  Width = 44
                  Height = 13
                  Caption = 'Estado'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label39: TLabel
                  Left = 156
                  Top = 182
                  Width = 56
                  Height = 13
                  Caption = 'Insc.Est.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label38: TLabel
                  Left = 8
                  Top = 182
                  Width = 35
                  Height = 13
                  Caption = 'CNPJ.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label20: TLabel
                  Left = 8
                  Top = 222
                  Width = 91
                  Height = 13
                  Caption = 'C'#243'd. Cid.IBGE.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 112
                  Top = 222
                  Width = 34
                  Height = 13
                  Caption = 'CNAE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 8
                  Top = 262
                  Width = 122
                  Height = 13
                  Caption = 'E-Mail do contador'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 296
                  Top = 182
                  Width = 93
                  Height = 13
                  Caption = 'Insc.Municipal'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object edtEmitRazao: TDBEdit
                  Left = 8
                  Top = 34
                  Width = 377
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'DESCRICAO'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitLogradouro: TDBEdit
                  Left = 8
                  Top = 76
                  Width = 321
                  Height = 21
                  DataField = 'ENDERECO'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitNumero: TDBEdit
                  Left = 336
                  Top = 76
                  Width = 49
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'NUMERO'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitBairro: TDBEdit
                  Left = 8
                  Top = 116
                  Width = 201
                  Height = 21
                  DataField = 'BAIRRO'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitFone: TDBEdit
                  Left = 216
                  Top = 116
                  Width = 169
                  Height = 21
                  DataField = 'FONE'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitCidade: TDBEdit
                  Left = 8
                  Top = 156
                  Width = 241
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'CIDADEDES'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitCEP: TDBEdit
                  Left = 256
                  Top = 156
                  Width = 89
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'CEP'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitUF: TDBEdit
                  Left = 352
                  Top = 156
                  Width = 33
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'ESTADO'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitIE: TDBEdit
                  Left = 156
                  Top = 196
                  Width = 137
                  Height = 21
                  DataField = 'DOC'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitCNPJ: TDBEdit
                  Left = 8
                  Top = 196
                  Width = 143
                  Height = 21
                  DataField = 'CPF'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitCodCidade: TDBEdit
                  Left = 8
                  Top = 236
                  Width = 89
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'CODCIDIBGE'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitCNAE: TDBEdit
                  Left = 112
                  Top = 236
                  Width = 144
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'CNAE'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 12
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object ckSimples: TDBCheckBox
                  Left = 264
                  Top = 237
                  Width = 166
                  Height = 17
                  Caption = 'Emp.Simples Nacional'
                  DataField = 'SIMPLES'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 13
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object edtEmitEmailContador: TDBEdit
                  Left = 8
                  Top = 276
                  Width = 385
                  Height = 21
                  CharCase = ecLowerCase
                  DataField = 'EMAIL'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
                object edtEmitIm: TDBEdit
                  Left = 296
                  Top = 196
                  Width = 132
                  Height = 21
                  DataField = 'IM'
                  DataSource = DM.dsEmpresa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Email'
              ImageIndex = 2
              object GroupBox5: TGroupBox
                Left = 3
                Top = 5
                Width = 416
                Height = 161
                Caption = ' Email Usu'#225'rio '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label3: TLabel
                  Left = 8
                  Top = 16
                  Width = 94
                  Height = 13
                  Caption = 'Servidor SMTP'
                end
                object Label4: TLabel
                  Left = 355
                  Top = 15
                  Width = 35
                  Height = 13
                  Caption = 'Porta'
                end
                object Label5: TLabel
                  Left = 8
                  Top = 56
                  Width = 90
                  Height = 13
                  Caption = 'Email Usu'#225'rio'
                end
                object Label26: TLabel
                  Left = 285
                  Top = 56
                  Width = 40
                  Height = 13
                  Caption = 'Senha'
                end
                object Label27: TLabel
                  Left = 8
                  Top = 96
                  Width = 168
                  Height = 13
                  Caption = 'Assunto do email enviado'
                end
                object edtEmailAssunto: TDBEdit
                  Left = 9
                  Top = 109
                  Width = 399
                  Height = 21
                  DataField = 'EML_ASSUNTO'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object edtSmtpHost: TDBEdit
                  Left = 8
                  Top = 29
                  Width = 338
                  Height = 21
                  DataField = 'EML_HOST'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object edtSmtpPort: TDBEdit
                  Left = 355
                  Top = 29
                  Width = 49
                  Height = 21
                  DataField = 'EML_PORT'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object edtSmtpPass: TDBEdit
                  Left = 286
                  Top = 69
                  Width = 121
                  Height = 21
                  DataField = 'EML_PASS'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '*'
                  TabOrder = 3
                end
                object edtSmtpUser: TDBEdit
                  Left = 9
                  Top = 69
                  Width = 271
                  Height = 21
                  DataField = 'EML_USER'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object cbEmailSSL: TDBCheckBox
                  Left = 9
                  Top = 136
                  Width = 57
                  Height = 17
                  Hint = 'Hotmail = False  Outros = True'
                  Caption = 'SSL'
                  DataField = 'EML_SSL'
                  DataSource = dsConfig
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object cbEmailTLS: TDBCheckBox
                  Left = 72
                  Top = 136
                  Width = 57
                  Height = 17
                  Hint = 'Hotmail = True  Outros = False'
                  Caption = 'TLS'
                  DataField = 'EML_TLS'
                  DataSource = dsConfig
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
              end
              object gbProxy: TGroupBox
                Left = 3
                Top = 201
                Width = 416
                Height = 139
                Caption = ' SMTP - Padr'#227'o '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label8: TLabel
                  Left = 8
                  Top = 16
                  Width = 29
                  Height = 13
                  Caption = 'Host'
                end
                object lblPorta: TLabel
                  Left = 313
                  Top = 16
                  Width = 35
                  Height = 13
                  Caption = 'Porta'
                  OnDblClick = lblPortaDblClick
                end
                object Label10: TLabel
                  Left = 8
                  Top = 56
                  Width = 73
                  Height = 13
                  Caption = 'Email Smtp'
                end
                object Label11: TLabel
                  Left = 234
                  Top = 56
                  Width = 40
                  Height = 13
                  Caption = 'Senha'
                end
                object Label50: TLabel
                  Left = 8
                  Top = 95
                  Width = 93
                  Height = 13
                  Caption = 'Usu'#225'rio/Login'
                end
                object edtSmtp_Porta: TDBEdit
                  Left = 313
                  Top = 30
                  Width = 41
                  Height = 21
                  DataField = 'SMTP_PORTA'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object edtSmtp_User: TDBEdit
                  Left = 8
                  Top = 72
                  Width = 219
                  Height = 21
                  DataField = 'SMTP_USER'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object edtSmtp_Senha: TDBEdit
                  Left = 233
                  Top = 72
                  Width = 121
                  Height = 21
                  DataField = 'SMTP_PASS'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '*'
                  TabOrder = 3
                end
                object edtSmtp_Host: TDBEdit
                  Left = 8
                  Top = 29
                  Width = 299
                  Height = 21
                  DataField = 'SMTP_HOST'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object edtSmtp_UserName: TDBEdit
                  Left = 8
                  Top = 111
                  Width = 219
                  Height = 21
                  DataField = 'SMTP_USERNAME'
                  DataSource = dsConfig
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '*'
                  TabOrder = 4
                end
              end
              object Button1: TButton
                Left = 464
                Top = 33
                Width = 104
                Height = 25
                Caption = 'Testar envio'
                TabOrder = 2
                OnClick = Button1Click
              end
              object mLog: TMemo
                Left = 584
                Top = 5
                Width = 386
                Height = 369
                TabOrder = 3
              end
            end
          end
        end
      end
      object tabCarta: TTabSheet
        Caption = 'Carta de Corre'#231#227'o'
        ImageIndex = 2
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1090
          Height = 510
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label16: TLabel
            Left = 147
            Top = 6
            Width = 340
            Height = 18
            Caption = 'Condi'#231#245'es de uso da carta de corre'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rzpDados: TRzPanel
            Left = 1
            Top = 1
            Width = 140
            Height = 508
            Align = alLeft
            Alignment = taLeftJustify
            BorderInner = fsLowered
            BorderOuter = fsFlatRounded
            BorderColor = 14273198
            BorderHighlight = clWhite
            BorderShadow = clSilver
            BorderWidth = 3
            Color = 15987699
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            GradientColorStyle = gcsCustom
            GradientColorStop = clWhite
            GradientDirection = gdVerticalCenter
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
            object sbSalvar: TSpeedButton
              Tag = 15
              Left = 7
              Top = 23
              Width = 126
              Height = 40
              Hint = 'Salva o registro atual...'
              Align = alTop
              Caption = 'Salvar'
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
              OnClick = sbSalvarClick
              ExplicitLeft = 0
              ExplicitTop = 17
              ExplicitWidth = 140
            end
            object sbCancelar: TSpeedButton
              Tag = 16
              Left = 7
              Top = 103
              Width = 126
              Height = 40
              Hint = 'Cancela a inser'#231#227'o ou edi'#231#227'o do resgistro atual...'
              Align = alTop
              Caption = 'Cancelar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                9E0F0000424D9E0F000000000000360000002800000026000000220000000100
                180000000000680F000000000000000000000000000000000000F2EBD2F2EBD2
                F2EBD2E3D9CFD7C8BFD8C6BFD7C7C0D2C7BFD6CEC7DAD0D0DDD1D1E0D4D2E3D7
                D3EDE2DAF1E6DEF9EEEAF7EEEBFBF2EEF5EBE4F6E9E1F4E2DBECD8D3EAD7D4E5
                D3D2E2D3D1E1CFCEDFCCC9DDC7C1E1CCC4DAC7BFD5C2BBD5BBB5D9BDB6D6BCB0
                DDC5B9F2EBD2F2EBD2F2EBD20000F2EBD2F2EBD2DACDBFC8B7AACDB7ABDCC4B8
                E0CABEDACABEDBCCC3DDCDC7E4D4CEE7D4CFEAD8D1E7D5CAEBDBCFEEDED8F1E3
                DDF0E3DBF3E4DBF0DED3EDD9CEF2DBD3F0D8D2E7D1CCE9D3CEE2CCC6E5CEC6E7
                CBC0E0C5B7DBC3B7DCC1B7DFBEB5DBB8AED1B0A1CCAE9DD1B4A5DCC6BAF2EBD2
                0000F2EBD2E2D4C8CEB9AAD9C2B3E3C9BBE7CCBEE2C7B9DDC7BBE0CBBCE3CEBF
                E4CFC0E1CBC0E5CFC4E4CEC3E9D3C8E4CFC7E4D0C5E1CFC4E3D1C6E2D1C4E2D1
                C4E2CFC0E1CEC1E3CFC4E0CCC1E3CDC1E0C9B9E8CBBCE9CFBFECD5C6E6CEC2EE
                D0C5F3D4C5EFD1BEE1C6B1CDB3A2C1AC9DF2EBD20000F4EBE2CFBCAFCDB3A3E8
                CEBEF0D3C4F5D6C7F4D7C8F4D9CBF5DCCCF2D9C5F1D8C4F4DACCEDD5C9EFD5CE
                ECD3C9EDD6C7EDD6C6EED7C8ECD7C8ECD9CCECDCCCE7D8C5E8D9C6EFDCCDEAD7
                C8EFDBCAF2DAC6F5DAC6F4D9C5F1DACAEFD8C8F1D6C8F0D4C3F0D5C0EDD3BBDA
                C1ADC6B2A1D8CFC50000F4E5DCD7BDAFDDBFAEF2D6C5EED2C1F7D9C8F9DBCAF4
                D7C8F3D7C6F8DBC6F3D8C3F6DDCDF2DACEF5DED6F5DFD4F5DFCDF7E0CAF3D9C8
                F7DECEEFD9CDEADACAEFE0CDEDDFC9ECDBC8EEDCCBF2DECCF2DDC8F5DBC3FADF
                CAF4DECCF4DECCF5DBCBF6DDC9F9E1C9F4DDC3DFC7AFC2AE9CC3BAAD0000F2E2
                D6D3B6A7DFBFACF1D6C2F0D7C3FADECDFADECDF6DAC9FADFCBFBE0CCF4DAC9F1
                D9CDEFDCD4EFDCD9F4E1DCECD9CAEDD9C7F8DFCFF7DDCFF5DFD3EFDED1EEDFCF
                EEDFCFEEDED1F5E3D8F4E3D6F2DECDF4DCC6FEE6CEF7E2CDF3DEC9F2DAC8FCE3
                CFF5DDC5F3DCC2E4CDB3C6B49DCBC2B40000EFDFD3D9BCADDFC1AEE7CFBBECDA
                C3F5E0CBFAE2CEF9E1CDFDE5D3F7DECEF2DCD0F1DFD8E6D8D9D6C9D1D2C5CDC8
                BABBD0C0BACDB9AEC0AA9EC5AFA3C2B0A5C0AFACC9B9BACEBDC0D6C5C8E1D1D2
                EDDAD5F6E2D1F5E0CAF0DEC7F4E2CBF9E1CFF8DECDFADFCAF6DDC3E7CEB4C4B0
                97C7BDAC0000F1E1D5D6B9AAE0C2AFE8D3BEEEDEC7EBDAC5EEDBC6F5E0CBFAE4
                D2F3E0D1EDDCD3F1E1E2E2D4E0D4C9E3C4BCDABBB2CCBFB3C5B5A3AAA28E8D9C
                8A839E8C8BB19FB0C2B2CABEAFCBCBBCD7D5C9DBE3D5DBF5E2DAF6E3CEF3E3CC
                F1DFC8F8E0CEF9DFCFF8DDC9F5D9C1EACFB5CBB59CC8BCAA0000EFDED5D5B8AA
                DFC1AEE9D6C1E5D7C1E6D7C4F4E5D2EBDAC7F4E3D0EFE0D0EADDD5F5E7EDBDAF
                C7A79DCBB1A9E5A59EDB9B91C6C3B5D9CEBFD4B0A2A8C5B6C4CCBBE7A595D2AD
                9FDFB4A9E1A39AC2C7BBD1FBECEAF4E4D3EEE0C9F1E2C8F9E0D0FADCD1FADBCC
                FBDBC8EACBB2CDB39BCABFAB0000EFDED5D8BBADDFC1B0E9D5C3E8DAC4EADBC8
                F1E2CFEAD9C6F1E1D0EADCCAF0E4DAEEDEE5C3B5D1372B65322A77332C87332B
                828A7FC3E1D5FFDDD2F3EADEFF7B6BB9281B77342B852D27742F295EA298B6F6
                E7EBEBDBCEF0E2CBF1E1CAF5DBCDFBDCD3FADACFFBDACAECCAB3CDB49ACCBEAB
                0000EFDED5D8B8ABDEBDADE9D1BFEBDAC7EFDDCCEEDCCBEBD9C8F1DFCEEFDFCE
                EEDED2FAE7EAE2D1EC897DB9271E782E2899302AA14337A1B0A5FFEBE2FFAEA5
                F62E2194352AA6312E9B26257B7571ACE2DAF9EEE0E4EEDED1EEE0CAEFDEC9F8
                DED2FBDBD5FADACFFBDACBECCAB3CFB49ACDBEAB0000F0DDD5DABAAFE2BFB1ED
                D3C2F0DCCAF6E2D1F2DECDF4E0CFF4E2D1EDDBCAEBDACDEED9D7F1DFF0D5C8FC
                463D942E289F3C36BD1C1197685DDBADA6FF5F57CC251CA9433BC81D1D8F3234
                88BBB7EBF0E7FFDECDD0F6E5D8F4E3D0F2DECCFADFD5F5D8D1F8DACFF9DACBEC
                CAB3CFB39BCDBEAB0000F0DDD5D7B7ACE0BDAFEBCFBEEFD7C5F1DACAEEDAC9F2
                DECDEEDCCBF0DDCEF7E2D3F6E0D4E8D7DAE7DCFD9D95DC2724922E2AB23329C3
                3126C34B45D82521B6322CCD241EB125248C9493D7E1DBFEE5DAE4EBD8D3F3DC
                CDF1DDCCF4DDCEF6DCD5F9DDD6F5DBCFF7DBCAEACAB3CFB39BCDBEAB0000EFDE
                D5D9B9ACE4C1B3EFD3C2F1D9C7F1DACAF3DFCEF5E3D2F1DFCEF0DACEEAD6C5ED
                D8C2F3E3D7DBD0E4E5E0FF7D7BDB2A27AC261EBF352BDB201DC72B2AD4231DC8
                1F1AAB7E7BD7E0DBFFE6DEEFE6DAD4F2DDCEF5DBCAF8DFCFF6DED2F3D9D3F5DB
                D4F3DCCDF5DCC8E9CBB2CFB39BCDBEAB0000EDDED5D5B8AAE0BFAFECD0BFF0D8
                C6EDD6C6F2E0CFF0E0CFEDDDCCF2DFD2FFE9D7F5E0C4EDDCC7E3D9DFD5D2F9CC
                CCFF4343B92B23C33027DB3432E91C1ED02C29D3433CC5C5BDFFDACFEFE0D7D4
                F2E4CEF7DDC5FFE2CDFBDED0F4D9CFF4DCD6F5DFD4F1DDCBF4DEC5E7CCB1CDB4
                9ACFBDAC0000EDDED5D6BBADE1C0B0EDD1C0F4DAC9EDD6C6F2DFD0EDDDCDEADB
                CBF5E2D5F6DFCFF8E3C7EDDFC9DCD3D6EAE6FFBCBBFF3F3DB5261EBE3028D925
                25D72829D72421CA3D36BDBEB4FFF7EAFFE2D5D3F1E0CBFFE4CFF8D8C5FADDCE
                F6DCD0F8E2D7EFDCCFEFDEC9F2DFC4E5CDB1CDB49ACFBEAB0000EEDED7D5B9AE
                E0BFB0EFD1C0F0D6C6F2D8CAF8E2D6EFDBD0EBD9CEF5DFD4F3DCCDF1DCC6EFDF
                D2EBE1EECFC8FB5E59BC2922A93328CA221BC42324C22123BE2A23C82B1EAF5A
                50ADD5C9FDEADAEBEEDAD5FBDED5FFE0D1FEDFD0F4DACAF6E2D1F0DECDF0DFCA
                F0DFC5E2CCB0CCB59BD1BDAB0000EDDDD7D4B8ADE2C1B1F0D2C1F2D8C7F2D8CA
                F6DED2F0DCD1EEDCD1F5DFD3F1DBCFE9D8CBEEE0E2E5DBFF6F69B02B2296281F
                AC3C30C8281EB17D7CFC2D2CAC3A2FC53327B52E248F6D62AAF0DFFFEDD7E3E4
                C9CCFDE0D9FCDFD1F7DDCCF6E2D0F2E1CEEFDEC9F0DEC7E2CBB1CBB49AD1BEA9
                0000EDDDD6D3B8AAE3C2B2EED3BFF2D9C5F2D9C9EFDACBEEDDD0EEDECEEDD9C7
                EBDBCBEFE2E0E9DEF8B1A9EA312C8F2921A33429B5221497766CDECCC9FF8482
                DC2A219A2E24A62C2499302782A89AD0F9E6FFF2D9E7F7DDDDF2D9CFF5DECEEF
                DDCCF1E0CDEFDECBF1DCC7E2CCB3C9B39ACFBEAB0000EBDFD5D4B9ABE3C3B0EC
                D1BCF1D9C5F2DCCAEEDAC9EFDFCFEEDECDF0E0C9F2E4D2EBDEE0D7CDEB4F478D
                1E1778231A8E302599312284BFB2FEE6E0FFE1DDFF4D449B231A822A238B3029
                7E42356BDCCEEAF1DEEDEBD6D8F1DDD2EFDBCAF5E3D2EFDECBF1DDCBF1DCC7E5
                CDB7C9B29CCEBEAD0000ECE0D4D4BAAADFC1AEEAD2BCEFDAC5F6E0CEF0DECDF3
                E3D2EEE0CDE7D9C3F8ECDAF2E8E1C9BFCF78719C847CBB8277C07B6DB5B09CD7
                E8D6FDDED3E3E3DBECCABFED796FAB8981C07772A9837DA0C2BACBFDF2F5E0D3
                CBF4E4D4F1E0CBEEDDC8F4E3D0F1DBC9F0D8C6E6CDB9C8B09CCDBDAD0000ECE0
                D4D1B8A8DBC0ACEBD3BFEEDBC6F6E2D0F3E2CFF3E5D3F0E2D0EDDFCCEDE1CFF0
                E4D8E4DADAF0E5F9EADDFDE8DAFEEAD9FBEED9F2EBD7E4E9DBD5E6DAD4ECDDEB
                EFE2FAE9DDF9EFE6FFE8E4F0E5E2E4EBE3DCEFE4D6EBDCC9F3E2CDEEDDC8F5E1
                CFF1D9C7F0D6C5EACEBDC7AF9DCFBCAD0000EBE2D5CFB8A8DDC4B0F3DEC9F3E0
                CBF6E5D2F3E4D1F4E6D4F0E3D3F3E6D8F7EADCEFE0D0F5E5D8EFDCD9EED9DBEA
                D5D7F0DBDDF3DDDFEDD7D2F7E4D5F1E1D0ECDAD3ECD9D6EFDBDAE7D8D5E7E1D6
                DDDBC9E5DECBE0D5BFF5E4CFF0DDC8F5E1D0F7E0D0F6DCCCF6DAC9F2D4C3CBB1
                A1D2BCB00000ECE2D8D3BCADE3C9B8FFE9D7F8E7D4F7E8D5F4E6D4F5E7D5F4E7
                D7F2E3DAF5E5D9F4E4D3FCEAD9F4DED2F6DED2F6DFCFF3DCCDF0D7CDF2DCD0F1
                DEC9EDDBC4F8E4D2F6DFCFFCE2D6F6E1D2EFE4D0ECE6CFEBE1C9EFE2CCF3E2CF
                F3DFCEEED9CAFAE2D6FCE1D3FCDFD0F9DBCACFB5A5D3BFB40000EAE0D6D4BCB0
                E5CBBBFFECDBF9E9D8F6E6D5F5E6D6F6E7D7F5E8DAF6E6DAF7E5DAF7E6D9FAE7
                DAFBE7DCFCE6DAF9E5D4F7E3D2F2DCD0F2DCD0F1DDCBF1DEC9F4DFCAF7DECEF7
                DCD2F6DDD3EFDFCFF1E3D0EDDDCCEEDECDF6E5D8F3DFD4EED9D1FAE4D9FDE3D7
                FFE8DAF7DDCDCFB8A8CBBAAD0000EADFD7D1B8AEE1C7B9FBE8D9F8E8D8F9E9D9
                F7E7D7F4E5D5F2E3D3F6E5D8F6E5D8F6E5D8F5E4D7F5E3D8F8E5D8F9E7D6F9E7
                D6F8E7DAF6E5D8F6E4D3F6E3CEF7E2CDF7DECEF4DAD3F4DAD3F1DBCFF2DFD0F1
                DECFF1E0D3F7E7DAF3E3D7F0DED3F8E5D8F9E4D5FEE7D7F5DFCDC7B5A4CABAAD
                0000E8DDD5CFB9AEE3C9BDFBE8DBF4E3D6F4E3D6F2E1D4F1E1D4F4E5D5F7E5D4
                F7E6D3F3E5D3F2E3D3F1E2D2F2E2D1F4E5D2F6E7D4F8E9D9F5E8DAF6E8D6F9E8
                D5FBE8D3FDE6D6FBE5DAFBE4DCFBE4DCFDE7DCF9E8DBF8E9D9F7EBD9F2E9D5F1
                E6D2F5E7D4FAECD6FAE9D4F1E0CDC2B4A2C6BBAD0000E8DCD6CAB4A9E2C8BCFC
                E9DCF5E4D7F7E5DAF7E5DAF5E5D8F8E8D8F6E5D0F7E6D1F5E7D5F5E6D6F6E6D5
                F6E6D5F9E8D5F8E8D7EEE1D1ECE1D3EFE2D2F3E3D2F9E5D3FCE5D5FBE5D9FCE5
                DDFAE3DBFAE4D9F6E5D8F2E6D4EFE7D0EFEAD1F2EBD2F4EBD0F7EAD0F8E8D1EE
                E0CAC4B6A4C4BDAE0000EBDED6CFB9AEE3C9BDFAE6DBF3E1D6F5E3D8F7E5DAF5
                E4D7F4E4D4F9E8D5F9E8D5F7E6D9F7E6D9F8E5D6F8E3D4F9E2D3F3E0D1F6E6D9
                F2E7D9F5E8D8F7E7D6FBE7D6FDE6D6FBE5D9FBE5D9FAE4D8F6E3D4F4E6D4F1E6
                D0EDE6CDEFE8CDF4ECCFF5EACEF5E7CBFBEAD0EDDCC7C4B6A4C6BEB10000EFE2
                DAD2BCB1DFC5B9F9E5DAF8E6DBF7E5DAF5E3D8F5E4D7F8E5D6F5E1D0F2DFD0F0
                DFD6F2E1D8F8E5D8FEE7D8FEE6DAFBE5DAF2E2D6F1E3D7F1E4D6F5E4D7FAE3D4
                FAE3D4F8E3D4F6E4D3FBE7D6F8E7D4F4E6D3F1E6D2EEE5D1F0E5CFF4E6CFF6E5
                CBFFECD3FFEED8ECD6C4C0B0A0CCC2B80000FBEFE5D5BFB4D3B9ADEDD9CEF9E7
                DCFFEBE0FBE7DCFBE8DBFCE9DCFFEADFFCE6E0F7E4E1F4E4DEF7E5DAF8E5D6FA
                E2D6F6E0D5F3E0D8F3E2D9F6E3DBF8E3DBFDE4DAFBE6D7F7E8D5F6E9D3FBEAD5
                F8E9D6F7E8D8F6E9DBF8E9E0FBE8E0FEE8DCFFE8DAFFE7D6FFDECEE2C5B6C4AC
                A0E3D3CC0000F2EBD2E9D6CECAB3ABD0BDB5DECDC4ECD9D1EDDAD2EFDDD2EFDD
                D2F2DFD8F1DEDBEEDFDDF0E1DEF5E6DDF8E7DAF9E5DAF8E3DBF7E6DDF7E5DEF8
                E5DEF7E4DDF7E2DAF3E1D6EFE3D1EFE4D0F0E2CFEFE0CDEBDBCEECDBD2EFDCD7
                F0DAD5F1D7D1F5D8CFF0D0C5E1C1B4CDB1A6C7B1A6F2EBD20000F2EBD2F2EBD2
                E5D5CFCCBCB6CBBBB5CEC0BACFC1BBD4C4BEDCCCC6DBCDC7DBCFC9DED2CEE0D4
                CEE6D9D1EBDFD5F3E4DBF6E7DEF7E8DFF3E4DBEFDFD8EADAD3E7D7D0E5D5CEE2
                D6CCE0D4C8DDD0C2DBCEBEDACABED6C5BCD2BFB8D1BBB5D1B9B3D2B8B1CFB6AC
                C8B2A7D5C3B8F2EBD2F2EBD20000F2EBD2F2EBD2F2EBD2F5EAE6E6DBD7E2D7D3
                E4D9D5E5DAD6E3D8D4E9E0DCEAE1DDEBE2DEEDE4E0EFE7E0F4EAE3F7EEE5FAF1
                E8FFF6EDFAF1E8F4EAE3F3E9E2F3E8E4F2E7E3EEE3DFEAE0D9EAE1D8E9DFD5E7
                DCD4E6D9D1E5D5CFE3D3CDE2CFCAE0CEC7E2D0C9EEDED7F2EBD2F2EBD2F2EBD2
                0000}
              Margin = 0
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 5
              OnClick = sbCancelarClick
              ExplicitLeft = 0
              ExplicitTop = 50
              ExplicitWidth = 140
            end
            object sbImprimir: TSpeedButton
              Tag = 18
              Left = 7
              Top = 143
              Width = 126
              Height = 40
              Hint = 'Imprimi o registro atual ou registro selecionados...'
              Align = alTop
              Caption = '(F8) Imprimir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                9E0F0000424D9E0F000000000000360000002800000026000000220000000100
                180000000000680F000000000000000000000000000000000000F5E6DDF5E6DD
                F5E6DDD3C9BFD2C8BED6CAC0D5C8C0D8CAC4D8CCC6DCD3CADCD3CAE7DED5E6DE
                D7EBDFDDEFE5E5F2E8E8F2EBE8F4EEE9EFEAE1EBE4DBE9E0D7E6DAD4E7D9D3E5
                D5CFE3D3CDE2D0C9E1D0C7DECDC4DAC7BFD8C3BBD6C1B9D1BEB6D1C1B5CFBFB3
                CEBDB4FEECE5F5E6DDF5E6DD0000F5E6DDF1E3D7D8C5B6D3C2B5D2C1B4DBC5B9
                DEC8BDDEC9C1E0CEC3E1D1C4E2D2C5E2D4C8E4D5CCE6D6D0EBDCD9EADBD8EBDD
                D7ECE2D8ECE3D6EDE0D2EDDDD1EED9D1F0DBD3E8D3CBE9D3C8E9D1C5E6CEC2DF
                CABBDDC6B7DEC4B8DFC3B8DBC1B3D5BEAFD0B9A9CEB7A8D0B7ADEBD7D2F5E6DD
                0000F6EDE3DAC7BAC6AF9FD8C3B4D9C4B5E5CBBDE9CDC2E9CFC3ECD2C4E7D0C0
                E9D3C1E2CEBDE3CEBFDFCBC0E4CFC7E6D1C9E5D3C8E6D5C8E5D5C5E7D3C2E7D0
                C1E8CEC2E6CCC0E6D0C4E2CDBEE2CBBBE5CFBDE6D2C0E9D3C1E8CFBFE7CDBDEB
                D3C1E6CEBCE0C8B4DDC5B1BEA494D4BEB3F5E6DD0000E9DDD1CDB6A7D7BDADE5
                CCBCEAD1C1F3D6C7F3D6C7F3D6C8F3D6C7EED5C1F3DAC6F3DBC7F2DBCBF1D9CD
                EFD9CEECD6CBEFD9CDECD7C8E9D5C4EBD5C3F1D8C8F4D9CBF0D6C8ECD5C5EED8
                C6F3DBC7F2DDC8F0DBC6EED9C4F0D7C7F3D9C8F5DDC9F5DEC8EED8BFECD4BCD2
                B7A3C9AFA1DFD3C90000E0D3C5C9B0A0E7C9B8EDD3C2F5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF0D9BFEFD6BCE3C4AFC4AA99D2C2B50000E0D3
                C5CEB4A4E2C4B1F0D7C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDEEEFF0D3D5D8A2A3A6FCFCFCF5E6DDF5E6DDF5E6DDF0F0F0
                D5D5D5B4B4B4A3A2A2E5E5E5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5DAC0E2C1ADCCAE9BD4C1B20000DED3C5D1B9A7DDC2AEEED6C2F5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2E5E8E6DCDADCBCC0C0C4
                C5C1B3B4B29A999EEDF0EFF8F7F7BBBAB9AFB0B0B1B3B1B4B4B18E9091929494
                CBCBCBF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF8DBC6E0BFABD0AF
                9FD5BFB30000DACFC1CEB7A7DFC6B2ECD4C0F5E6DDF5E6DDF5E6DDEAF1F2C7CD
                D4BFC5CAD0CCC7C0BEB6ABACA0819279826E4B99784CA57D4FCFBEA9756C631D
                1917BAB7B8D0CED0C8C8CAD1D0D28281829494949D9D9D8C8C8CCBCBCBF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5D8C3E6C2B0D0AF9FD6BEB20000DDD2C4CFB8A8
                DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF0EDE4E2CFBBEFCEB4FFFADDD7CDA9A8A9
                858B9A7156623C5A573161502E3B2E231D1C19050505BBBDBDE6E8E5B2B3AFA2
                A39D9B9A9B7E7E7E888888929292838383A6A6A6EBEBEBF5E6DDF5E6DDF5E6DD
                F3D8C3E5C4B1CCAE9DD5BFB30000DED0C4D0B7A7DEC2B1EFD7C3F5E6DDF5E6DD
                F5E6DDF3E7DBF6C29EFFB279FFDFACF8E6BEE2D9B5C0BB953E45341E2211181E
                153337395D595B8F8789C0C0BFC1C8C3929F958A9D8EC2BFBF9492937C7C7C8B
                8A8A9293938585858B8B8BF5E6DDF5E6DDF5E6DDF3D8C3E5C4B0CCAE9DD5C0B1
                0000E0D0C4D1B7A7E0C2B1F0D6C5F5E6DDF5E6DDF5E6DDB3B0B1B0A39DC59B7F
                915B2E695137443C3025251B3F3F406C696B948E93C6C2C4B7B8B89392912422
                22505251B4B9B5B2BBB4989595B6B5B48F8F8F797B7B7C7E7E8E8E8E8D8D8DA9
                A9A9EEEEEEF5E6DDF1D9C1E3C4ADCAAF9BD4C2B10000E0D0C4D4B7A8E2C1B1F2
                D6C5F5E6DDF5E6DDD0CECEAAABAA322E31282728261714322B2855575A86888C
                C9C6C7B9BDBD9FA2A24A49482526291114131C1B1C1815175B5759B1AEAF8E8C
                8BB6B3B2BFBDBC7475757578787577778584857E7E7F8B8B8BCECECDF1DAC0E3
                C4ADCAAF9AD2C2B10000E1CFC4D6B7A8E2C1B1F2D7C3F5E6DDF5E6DDDADADACF
                D0D0C5C6C5C5C6C58B8C8C69696A5353524747464343434746464D4C4C505050
                4E4E4E4C4C4C494949464646434444414142A09C9BC1BDBCBEBBB7C3C0BD9C9B
                997977767676757475767B7A7BA4A4A4F1DAC0E1C5ADC7AF99D1C3B10000E1D0
                C3D4B7A8E2C1B1F1D6C2F5E6DDF5E6DDF1F1F1989C997377737979784746464F
                4F4F575859595B5C5F5F5F6060605F5F5F5E5E5E5D5D5D5C5C5C585858555555
                5959596464645E5E5E8D8A89BCB8B6C2BFBAC8C4BFA9A5A47C7A797777786B6B
                6D97999AF1DAC0E1C5ADC7AE9AD1C2B20000DFD2C4D2B8A8E0C2AFEED6C2F5E6
                DDF5E6DDF5E6DD9397946C716C9897969393936C6C6C626364696B6C6F6F6F6E
                6E6E7070706F6F6F6E6E6E6C6C6C6969696666666D6D6D727272707070676867
                817F7ECAC4C0C8C1BDCBC7C3B8B6B27473716F6F6F97999AF3D9C1E1C3B0C7AD
                9DD1C1B50000DDD2C4D2BAA8DFC4B0EED6C2F5E6DDF5E6DDF5E6DDF5E6DDE4E4
                E3BDBBBABEBCBAB0AFAD8E8D8B7A7A7A8080808181818181818080807E7E7E7D
                7D7D7979797777777F7F7F8080808181817F7E7F787778A7A3A1C5C0BCC8C3C0
                CEC9C79A9794726F6D999898F1D9C1E1C3B0C7AD9DD2C0B50000DED3C5D0BAA8
                DEC3AFEDD5C1F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF1F1F0B6B4AFBAB9B4BEBD
                B9AFACAB8C8C8D8F8F8F9191919292929090908E8E8E8888888C8C8C9191918F
                8F8F908E908F8E908E8F918988889E9C99BCB7B4C9C4BFC9C3BEA39F9BA4A19F
                EFD9C0E2C6AEC7AC98D8C2B60000DDD2C4CFB9A7DCC3AFEED6C2F5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDEAE7E7D1CDCAC3BFB9C4C0BABEB8
                B5B2B0B0B0B0B1AFB0B0ABABABADADADA7A7A7A7A7A7A8A8A8A9A9A9AFAFAFBF
                BFBFCCCCCCCFCECEC5C5C5A6A8A9F5E6DDF5E6DDEEDAC1E3C8AEC7AC97DAC2B6
                0000DDD2C4CEB8A6DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDD6D0CCC9C4BFC9C2BDC7C3BEC1BDBBB7B7B7B6B6
                B6B7B7B7BDBDBDC5C5C5D9D9D9E2E2E2EAEAEAF3F3F3F3F3F3E8E8E8D5D5D57C
                7E7DF1F2F2F5E6DDEEDAC1E1C8AEC5AD97D7C1B50000DCD0C4CEB7A7DCC3AFEC
                D7C2F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF1EDEBDBD7D3D0CCC7D6D1CED8D7D7CBCBCBB8B8B8E5E5E5F4F4F4FBFB
                FBFAFAFAF9F9F9EFEFEFEBEBEBECECECDCDCDC6F6F6FCACBCBF5E6DDEDDCC2E0
                C9AFC4AC96D5C2B50000DCD0C4CEB7A7DCC2B1ECD6C4F5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDD7D7D7ADADADE4E4E4F8F8F8F8F8F8F7F7F7F7F7F7F1F1F1EEEE
                EEEDEDEDEAEAEA767575979797F5E6DDEDDCC1E0C9AFC3AC96D3C2B50000DBCF
                C3CDB6A7DDC3B2EFD9C7F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDDFDFDFA7A7A7
                DCDCDCF8F8F8FAFAFAFBFBFBF9F9F9F2F2F2EEEEEEEAEAEAEBEAEAB5B5B58D8D
                8DEAEBEBECDBC0DFC8AEC2AB95D1C1B40000D9D0C3CCB7A8E0C7B7F5DFCDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCDCDCDD9D9D9F9F9F9FBFBFBFBFBFB
                FAFAFAF2F2F2EFEFEFEBEBEBE8E8E8E7E6E6B9B9B99E9E9EF2DFC4E5CBB3C4AC
                98D0C0B40000DAD0C6CDB8A9E3CABAFBE5D3F5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF3F3F3F3F3F3F9F9F9F9F9F9F7F7F7F1F1F1EDEDEDEBEBEB
                E7E7E7E3E3E3D4D4D4919191FBE6CBEAD0B8C8AF9BD3C1B60000DCD0C6D0B8AC
                E3C9B9FFEAD8F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2EF
                EFEFF4F4F4F4F4F4F3F3F3EFEFEFECECECE9E9E9E5E5E5E0E0E0E2E2E2A2A2A2
                FFE9D1F0D4BCCDB29ED2C0B50000DDD1C7CFB7ABE6CBBDFEE7D7F9E5D3F5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5F5F5ECECECF1F1F1F1F1F1F1F1F1EC
                ECECEAEAEAE8E8E8E5E5E5DEDEDEE4E4E4C4C4C4FFE7CFF3D4BDCCB19DD7C3B8
                0000DBCEC6D0B7ADECD1C3FFE8D8FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDEBEBEBEEEEEEEEEEEEEDEDEDEAEAEAE8E8E8E5E5E5E3E3E3E0
                E0E0E3E3E3E3E3E3FFE6CEF9D8C4CEB09FD3BCB40000DBCEC6D0B7ADECD0C5FA
                E3D4FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDE7E7
                E7E6E6E6E4E4E4DEDEDEDDDDDDDCDCDCDCDCDCDBDBDBE2E2E2E8E8E8FFE6CEF6
                D5C1CBAD9CD5C0B80000DECEC8D2B6AFEDCFC4F9E2D3F6E2D1F5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCCCCCCD6D6D6E1E1E1EBEBEBF5F5
                F5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDFFEAD4F3D3C0C7AA9BD2BFB80000DFCF
                C9CEB2ABE7C9BEFFE9DAFCE8D7F7E3D1F6E2D1FAE5D6F7E4D7F6E4D9F6E6DAF4
                E5DCF5E9DFF8E9E0F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDFFECD6ECCEBBC8AE9ED9C7C00000EEDED8D4B8B1D7B9AEF7DDCFFFE8
                D8FFECDAFFECDCFFE9DDFBE5DAF9E5DAF6E6DAF1E2D9F1E1DAF2E2DBF0E0D9F4
                E1DCF3E1DAF5E3DCEEDFD6F6E5DCF3E4DBF1E2D9F6E6DAF6E4D9F6E4D9F8E3DB
                F6E4D9F2E5D7F3E4D4F4E4D4F6E3D4FEEBDEFFECDDFEE9D4F9E1CBD3B5A2C4AB
                9BE2D2CB0000F5E6DDE5CFC9CAB1A7DCC6BAE7D2C3F0DBCCF4DFD0F2DDD5EED8
                D2EFDCD5F1DFD8EFDCD7EFDFD9F4E3E0F6E5E2F7E6E3F5E6E3F6E8E2F3E5DFF3
                E3DDF0E0DAF6E4DDEFDDD6F3DED6F0DBD3EEDBD3F0E0D4EFDFD3EBDBCEEBD9CE
                EEDACFF2DED3EFDCCFE5CEBEDCC6B4C2AC9AD5C2B3F5E6DD0000F5E6DDFAF2EB
                E3D6CEC7B6ADCFBDB2D0C0B4D3C2B9D2C1BED7C5C4DAC8C7DFCBCAE5D1D0E8D6
                D5ECDAD9EFE0DEF0E4E2EFE6E3EFE6E3EEE2E0ECDDDBEAD8D7EAD5D4ECD5D3E6
                D0CAE1CEC6DDCEC5D7CBC1D6C5BCD5C2BBD3BFBACFBBB6CAB7B0CCB7AFC8B5A8
                BFAEA1DACFC1EFE9DCF5E6DD0000F5E6DDF5E6DDFAF4EDF0E4DEEEE1D9E7DAD2
                E4D8D2E6DAD8E9DDDDE9DBDDE9DBDCEFDFE0F0E2E3F3E5E6F3E9E9F3EEEDF3EF
                EEF4F0EFF4EFEEF5EBEBF6E8E9F8E6E7FAE6E5F6E1DFF3E0DBEBE2D9E7DED5E6
                D9D1E7D7D1E5D6D4E3D4D2DBCCC9DECEC8E8D7CEEFE3D9F5E6DDF5E6DDF5E6DD
                0000}
              Margin = 0
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 5
              OnClick = sbImprimirClick
              ExplicitLeft = 0
              ExplicitTop = 176
              ExplicitWidth = 140
            end
            object sbEmailCartaCor: TSpeedButton
              Tag = 20
              Left = 7
              Top = 183
              Width = 126
              Height = 40
              Hint = 'Envia e-mail dos registros...'
              Align = alTop
              Caption = ' E-Mail'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                160F0000424D160F000000000000360000002800000025000000220000000100
                180000000000E00E000000000000000000000000000000000000F9E1D5F9E1D5
                F9E1D5D5C8C6D0C3C1D1C2C0D9C8C5DECEC7E1D1CAE1D3CDE1D5D3E1D7D7E2DA
                DBE3DEDDE5DDDDF3E9E9F5E9E7F5E9E5F5E6E3F1E2DFEFE0DDEBDCD9E7D9D3E0
                D4CEDDD1CBD9CFC8D7CEC5D5CBC1D1C8BAD3C9B8CDC3B2CCBFB1D2C3BACFBCB9
                F9E1D5F9E1D5F9E1D500F9E1D5F9E1D5CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6
                CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DAD6EADED8E9DDD7F4E6E0F2E2DCF1DED6
                EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6
                B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3C8B1A9F9E1D5F9E1D500F9E1D5CABBB2
                CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EBCBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CF
                C4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFEC
                D4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0
                D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFEBD2C2EED4C4F1D4C5F3D3C6F6
                D4C7F7D5C8F6D6C9F4D7C9F2D8C8EFD8C8EED8C6E9D5C3EBD5C3EAD4C2ECD6C4
                EDD7C5F2DAC8F1D9C5F0D9C3F1D9C3F0D8C2F2D7C3F2D5C6F2D5C7F4D7C9F5D8
                C9F4D9C5F4DAC2F4D9BFF4D9BFEED2BAE2C5B0C3A998D3BDB100C8B9A9C5B2A3
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDFEDED1FEDED1FCDCCFF9DCCDF6DCCBF5E0
                CBF7E2CDF6E3CEF3DFCDF2DECCF2DDCEF2DDCEF2DBCCF2DBCBF3DEC9F5DDC9F6
                DDC9F6DCCBF7DCCEF8DCD1F8DCD1F7DCCEF8DECDF9E1CBF8DEC6F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF9
                DDD2F7DBD0F6DBCDF7DFCDF5E0CBF4DFC9F2DFCAF3E2CFF0DCCBEFDCCDF0DACE
                EDD9CEF2DCD1F4DED2F5E1D0F7E1CFF8E0CEF7DECEF8DED0F9DFD3EFD6CCEED6
                CAF2DBCBF6E1CCF7E2CCF6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDFCE2CDFCE2CDFCE2CDFCE2CDFCE2CDFCE2
                CDFCE2CDFFE8D09FAEB9567996657788757C82938C88BCA99ADEC4AFF2D5BEFF
                E2CAFFE9D2FFEBD4FFEAD3FFE8D2FFE5D0FDE3CEFCE2CDF3E2CDF2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCFC
                E2CDFCE2CDFDE2CDFEE4CFFDE3CEFCE2CDFDE2CDFDE2CB97B4CAA1D2EC94C8E3
                94BDD588ADC6768EA076818A86898B98918DAB9D93BDADA2D3BEAEE7CDB8F7DA
                C2FEE2CCFCE2CEEFE1CBF0DFCAF0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9FCE2CEFCE2CEF9E2CFEDDBC9F9E3D0FFE9
                D4FFEAD4FAE0CDA2BED195E4FC70D8FA7DDCFD84D9FA77AEC66B9CB46C98B071
                93A67EA2B77DA8C47198B47792A7798895BBAEA3FFE7D0F2E3C9F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6FC
                E3CFFEE8D4EEC2A9BB7F65B08671B9A08FD4C1AFDACCBF9CBDD496E4FB70D5F6
                6ED5FA67C2E45F9BB35E9BB45C9CB85CABD061C9FA68CCFD6BCAFB74CDFB73B7
                E2999EA1FFE7CEF3E2C8F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8FCE3D0FDE9D7F3B79BEE9778EBB19CD088
                70BD7055A36C5D90B5CF96E9FE75D9F675D9FA5A9EB95999B65DAACE5EBEE95E
                C6F65CC5F658C3F554C0F44FC1F962B2E0AEA9A6FFEAD2F4DFC9F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCFC
                E4D0FDE8D4F5C9AEF0B6A0FFFFFFFFF5EBFFE4D5DBBCB794BDD894EAFC7CDDF8
                73D7F57C8A8F5F839C4BAEDF51B5E74BAADC46A5D945A4D955BCEF58C6FA61AC
                D6B9AEA7FFECD4F5E0CBF8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEFCE5D0FDE8D3F8D4BBEEAB90FFF8F3FFE7
                D2FFF2DCD9D8D393C5E094EBFB83E1F875DEFBA79AA77739373D576555B2DA55
                B8E94FAFE14EB1E457C2F559C8FC68A9CFC7B6AAFFEED6F3DFCEF5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD0FC
                E5D2FDE8D5F7D4BCEFAE91FFF9F4FFEDDFFFEADFCDCFD596CCE495EFFB87E4F7
                7CE5FE979AABA4575C411E1F0E0D134195BF4CADDF4AA6D869BDF063C5FD72A8
                C7D1BEAFFFEED8F3DFCEF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD0FCE5D2FDE9D7F6CCB2F1B79EFFFEFAFEED
                E3FFC7B1BDA5A99BD6EB98F2FB8CE7F785ECFF84A5B4B8656A7244482309072E
                54616BE1FF87C2D58CB16C9AAC809599A4D6C6B9FFEDD8F4DECCF5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCEFC
                E5D3FDE9D9F3C0A3F5CAB7FFFBF6FFF4ECFFFFFFB2CCE3A2D9E999F5FA91EBF7
                8DF0FF6DA5B4A05C62A763684F2D2F140B0C4DA7CBA3D2DE58AD8475AF7FA5A0
                A2DCCBBEFFECD8F5DFCDF7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0FCE6D3FCEAD8F2B899FAE2D8FFFCF5FDDA
                C8FFC2A6A1ABBDB9EEF8AAFFFFA2F7FD9DF5FF8DEAF7777178BD6B72814C512D
                12121E4150BBDFE66C9FCCB3C2D6AAA8AAE3D1C0FFEBD8F5DECEF6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCEFD
                E8D7FAE1CDF2B99BFEF7F4FFF6EEFFEFE3FFE7D390AAC183B9DA95C8DF91C5DE
                92C5DF94CDE87098AE8D575FB76B725E363A1308087D8F98B9CFD8AEC0C996A9
                B8F4DECBFFE9D7F5DECFF5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCEFDECDBF7D1B9F7CAB3FFFFFFFFF7F2FDE1
                D6FEEBE2EEE1DBD0CDCBD2CDCCD2CFCDD0CECCD1CEC9D1D1C789706CB56A738C
                5459351F1F11141434479F3E52B4C5BDAEFFEFDBFCE7D5F6DED2F5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCDFC
                EBDCF5C8AAFBE1D4FFFFFFFEF5F2FCCEBEFBC5B3FFC7B4FFC3ABFFBFA1FFBD9E
                FFBFA0FFBE9EFFDBBBD7C8B8805960A06066653E4126110D1B143D4942BF9284
                9CFFEBD3FEE9D8F4E0CFF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCEF9E2CEF6CAAEFEF9F7FFFFFFFFFEFDFFFF
                FFFFFFFFFFFFFFFFFFFFFFF7F2FFE7D6FEDECBFDD3BCFFDCC5FFEADB85554FB5
                6C7695595E4C2E311207002E2B53524EB3D3C2ADFFF3DFF4E3C9F2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D1F9
                D4B9FDD9C2FFFFFFFFFDFCFDCBBAFCC1ADFCC2AEFBC3B0FBC4B1FCC8B6FCC4AE
                FCC5AAFCCFB7FFF2E3F8D0BF916A5C8A5A63BD7178724448331D1F160F073E3A
                998379A2F4E2C3F1E3C7EFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D4EDC1A1EDDACDF2F7F9F5F8FAF7F8F8FBF9
                F9FEF7F5FFF1EBFEECE5FDE6DDFDDFD4FCD4C5FCCFBAFFF7EDDCAB98D8C1B085
                716FB26871A05F655934301C0D0229254A4945B8A49694F1E1CAF1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCF8E7DAF5E7D5C9
                A68DBFA698BBA69DB9A198B9A097BAA19BB6AEADD6DADCFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF5F0CF957EF2DFD0D0C1B584545AC171726D4A7028249F0002
                9A4240AFC9B9BCF2E0CFF4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6F3E3D2FBE0CBFAD9C3F6CEBAF1BFA9ECB39FE48B
                70BB6A55CDD3D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE7E0CC9881F4E4D6FE
                F0DF8C74718665A27E72DB563B853D203B564748E5D5C3F6E3D6F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D4FD
                EADAFDEFE4FFFCF9FFF4E9FFF4E4FFE0D4C18370DEE5E7FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF7DCD1C39B87F8E9DAFFF3DED1C3CC4C41AFAF6C7A9E5954A45D
                5EB7978FF5E9D8F9E6D9F8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D4FCE9D9FCE8D7FCECDDFDF0E5FFEDDBFDDA
                CBC09282E3E9EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D7CCBD9B88FAEADBFE
                EADAFFF4E6988588482526634144BCA19AFEEEDDFFEDDCF7E5D4F5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8FC
                EADAFCEADAFCE9D9FBEBDDFDF4EAFFE4D8C49886E0E6EAFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF8E1D7B99582F5E7D9FDEBDCFEEEDDF3E2D1C6B4AAECDACBFFF4
                E4FEECDCFCE9DAFCEBD8F9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7FCEADBFCEADBFCEADBFCE9DAFCECDFFFEC
                E0D5A48DD0CBC9FFF7F1FDF1EAFDEEE6FCEBE2FBE9E0FAD1BECA9C84F0E3D6FE
                ECDDFCEADBFFEDDDFFF4E4FFEEDFFCEADBFCEADBFCEADBF7E3D2F3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7FC
                EADBFCEADBFCEADBFCEADBFCEADBFEEDDDEAC4ACCBA790FBCCADF6C3A6F5C0A2
                F5BEA0F3BC9FF3B89BF2CDB7FAEADCFCEADBFCEADBFCEADBFCEADBFCEADBFCEA
                DBFCEADBFCEADBFAE3D4F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
                E3CDC1FBE5DAFCE6DBFBE4DCFAE3DBFAE3DBF7E1DBF6E0DAF4E1DAF5E3DCF5E3
                DCF5E3DCF3E4DBF4E3DAF4E4D8F4E4D8F5E3D8F6E3DBF6E3DBF5E5D9F5E5D9F3
                E5D9F2E4D8F2E4D8F4E4D8F8E6DBF6E2D7FAE4D9FFE7DBFFECE0FFEDDEFBE4D4
                DFC6B6C3A999DEC8BC00F9E1D5CEBEB2CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0
                DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DE
                F4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEFE2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDD
                D4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBFC5B1A0C0AB9CF9E1D500F9E1D5F9E1D5
                C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DFC9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8
                D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DD
                CECBDACCC6D8CAC4D5C9BFD2C7B9CFC2B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5
                CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EE
                DDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEBE6ECEAE9EFEDEDF5F0F1F7F1F2F5EDED
                F5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EBDFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6
                C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CBF9E1D5F9E1D5F9E1D500}
              Margin = 0
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              OnClick = sbEmailCartaCorClick
              ExplicitLeft = 2
              ExplicitTop = 160
              ExplicitWidth = 140
            end
            object sbEnviarCarta: TSpeedButton
              Tag = 13
              Left = 7
              Top = 63
              Width = 126
              Height = 40
              Hint = 'Edita o registro atual...'
              Align = alTop
              Caption = 'Enviar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                9E0F0000424D9E0F000000000000360000002800000026000000220000000100
                180000000000680F000000000000000000000000000000000000F0E2D6F0E2D6
                F0E2D6CEBFB6D0BFB6D4C1B9D5C2BAD7C4BFD8C9C6DBCECCDED2D0E2D7D3E6DC
                D5EAE0D9EEE3DFF0E4E2F0E4E4EFE4E6EEE6E7E8E2E3E4DCDDE3D9D9DFD1D2E1
                D1D2E1CFCEDAC7C4D8C5C0D9C7C0D3C2B9CEBBB3CEBCB1CCB6ABC8B4A9C1AFA4
                D2C2B6F0E2D6F0E2D6F0E2D60000F0E2D6F0E2D6D0BAAFD0B7ADDDC0B7E4C6BB
                E4C6BBE5C8BFE5CBC4E4CFC7E4D1C9E6D3CBE8D5CDEDDAD2F1DED7F4E0DBF3E0
                DBF0DFDCECDDDAE7DBD5E4D8D2E7D8D5E4D3D0E4D1CEE4CEC9E1C9C3E1C7C0E2
                C7BDE0C4B9E2C5B7DDC0B1DEC1B2DAC0B0CFB6A6C7B3A2CEBEADF0E2D6F0E2D6
                0000F0E2D6CEB8ADD5B9AEE4C4B9EFCCC2EFCBC1EFCCBFEDCDC0EDD0C2E9CFC1
                E5CEBFE4CDBEE4CDBEE4CCC0E6CEC2EAD1C7E9D3C8E5D1C6E0CFC2DFCFC2DED1
                C3E0D1C8E2D0C9E0CDC5E3CCC4E7CFC3EACFC1EBCEC0EFD0C1EFCEBEEBCABAEF
                D1BEEACCB9E4C9B5D4BCA8BBA691D7C7B7F0E2D60000DBCBBFD4BAAEE5C5B8F4
                D1C4FAD3CAF5D1C7F5D2C8F8D9CAF4D8C7F5DDC9EDD5C1F4DCC8F2DAC8F0D7C7
                F4DBCBF1D8C8F5DCCCEFD9C7F1DEC9E2D3B9E9DBC4EADAC9E6D6C6ECDCCCECDA
                C9EEDAC9F0DAC8F3DBC9F1D7C6F5DAC6F3D8C4F4D8C7F6DAC9F1D7C6EDD3C2CD
                B3A2C2ACA0EDE2DE0000D8C8BCD0B6AAE3C3B6F1CEC1F5D2C5F2D2C7FCDED3F7
                DDCDF8DFCBF2DBC5F4DFC9F5DDC9F6DECCF4DBCBF9E0D0F3DACAF4DCCAF6DECA
                F8E3CDF9E5CCF5E4CAF3E2CDEEDDCAF2E3D0F0E1CEF1E0CDEEDDCAF3DFCDF7E1
                CFF4DECCF8E0CEF6DECCF3DBC9F2D8C7F4D8C7D6B5A5C0A69ADDD1CB0000D8C8
                BCD0B9AAE3C9B9F1D4C5F3D6C8FCE2D6FBE3D7F6DFCFEFD9C7FAE5D0F6E3CEF6
                E0CEECD7C8EED8CCE8D2C7E3CBBFE3CBBFD6BFB0DEC7B7DBC1B3DEC5B5E1CABA
                DCC8B7E2D0BFE3D3C2E7D9C7E8DAC8ECDCCCEDDDCDF2E2D1F0DECDEFDDCCF3DF
                CEF3D9C8F0D2C1D8B4A4D1B1A4E1D3CD0000D8CABED1BCADE6CDBDF2D9C9F3DA
                CAF5E0D1F4E1D2EFDBCAF5E1CFEDD9C7EBD7C5E1CCBDD9C6B9CBB9AEC2B2A5BF
                AFA2BDAE9EC2B2A2D0BDB0B39D92B2998FC1AA9BBEA99AC4B4A4C7B7AAD1C1B4
                D8C8BBE0D0C4E7D6C9EBDACDEEDECEEFDFCEF1DDCCF1D7C6F6D6C3DEB9A5D3B2
                A3EBDBD40000D6C7BECEB9AAE1CABAEDD7C5EED8C6EFDDCCEEDCCBF0DCCAFBE5
                D3ECD5C5E7D0C1D8C4B9C9B9ADBFB4A6B3AD9AB0AE96B6B79DDEDBC6D9D2BFAC
                A0949D8C83B19E91B19E91B9A99CC0B0A4C9B9ADCBBBAFD7C2BAE4CFC7EFDBD0
                EEDBCEEEDBCCF2DECCF7DECAFBDCC5DCB8A0C9A996E5D5CE0000D5C6BDCCB7A8
                E1C8B8EED6C4F0DAC8F2E1CCEEDDC8F6E0CEF4DECCF6DDCDF0D9CAEAD9CCD3C9
                B8BABBA1CAD3B2D3E3BAB4C89B76865DD8E3C2B6BAA1A9A592C4BAA8BEB2A0C0
                B6A5C5BAACD2C4B8D7C5BAE4CDC5F5DBD4F8DFD5F0DACEEFDACBF5E1CFF7E0CA
                F2D8C0D5B69DCCAE9BE2D2CB0000D7C8BFD0B9AAE4C7B8F3D7C6F7DECAEEDCC5
                F5E5CEF5E0CBF8E0CEF2D9C9F2DECDEEE0CDE4E3C7F0FED4DBF8C08FB6725A87
                3E58813DC0E5A7D5F2C0CCE0B6C4CBAAD0D1B7DFDDC5E3DEC9F0E4D2F2E1D4F6
                DBD1F6D9D0F5D8CFF9DFD3F6E1D2F0DECDEBD8C3EDD8C2D6BCA4CAB2A0E5D8D0
                0000DAC9C0D3B9ABE5C7B6F5D4C4FADCC9F6DEC8F8E3CDF7E2CCF3DEC9FDEAD5
                EEE0CAE7E0C5DFE6C1AEC69076A059588F384685294D8B3186BE6D9FCE89B3D6
                9DC0D5A8DEEDC7EEFAD6E0E6C7E3DFC6EFE1CFF8E0D4F7DAD1F6D6D0F5D8CFF5
                DDD1F7E3D2F2DECCEDD8C2CFB8A2C4B09EE3D6CE0000D8C8BCD4BAAAE8C8B5F5
                D6C1FCDCC9FDDCCDFBDCCDF9E4CEEDE1C5E0D8BBECE9CAFCFEDABDC89A5F7B3F
                386619488729509A3447902C498F324982335D8C48678D5389A674BDD7A7EBFE
                D3DCE3C2E3DFC7EEDBCEF9DDD6FCDCD7F9D9D4F7DBD0F9E0D0F5E0CBECD5BFD1
                B8A4C6AF9FE1D6CE0000D8C8BCD6B9AAE8C9B4F3D6C1FADCC9FFDDD0FCDACDF6
                E1CCEDE0C6EAE4C7E1DEBFE6E4C2EFF5CCC5DAA37398524178214F9132488C2D
                7CBC6385B86E97C28187AD73789862819F6ABCD4A4EFFDD4E1E3C6E5D8C8F5DE
                D6FCDFDBFADCD7F4D9CFF2D9C9F3DBC7EFD6C2D5BAA6C4AD9EE1D6CE0000D8C8
                BCD4BAAAE8C9B4F3D6C1F8DDC8F6D7C8FCDFD0F4DECCF5E4CFEEDFCCF8E9D6F7
                E8D5F5E9D1F4F4D0DBE9B9A1C081588039709C55D3FCB9E5FFCDE4FCCCE9FFD1
                D5EDBD9EB4847C9061C8D6ADE2E7C7ECE5D1ECDCCFEFDAD2F2DAD4F3DDD2F1DC
                CDF4DCCAEFD6C2D8BAA7C7AE9EE3D6CE0000D8C8BBD5BBABE7CAB5F1D6C1F6DE
                C8F9E0CCFAE2D0F2DCCAF0DCCBFDE6D7E8D0C4F4DBD1ECD7C8E8DAC4F5F2D3E6
                EFC4B5C59592A776E4F5C9DAE5BFD4DDBCDAE4C0F2FFD9F5FFD9C8D6ACABB68E
                D4D9B9E8E4CCEEE1D1EAD9D0ECD9D1EFDDD2F4E1D2F5DFCDEED5C1D6B9A4CAB0
                9FE3D7CD0000D6C9BBD4BBABE7CAB5F1D6C1F4DEC5F0DBC5F3E0CBF7E0D0F5DE
                CFF4D9CFFFE4DDFDE1DAFCE1D7F8E3D4ECDDCAEEE7CCF0EED0FDFADEFAF6DDD5
                D0BBEEE9D4E8E4CCD5D4B8E6E9C9EFF6D1D6DAB7D9DABADEDAC2EBE1CFF0E2D6
                EEDDD4EADACEECDCCCF2DECCF0D8C2D9BAA3C7AE9AE4D8CE0000D6C9BBD4BBAB
                E5CAB5EFD7C1F1DDC4F2E0C9ECDBC6ECD8C7FBE3D7F7DCD2EDD1CAF7DED4F4DE
                D2F2E0CFF0E1CEE4D7C1EDE2CCEDE4D0EAE0CEEFE5D4EBE3D2DFD8C4E8E2CBE5
                E2C6E4E4C6F4F2D3EDEACEEBE3CCEBDECEEDDFD3F0E0D4EDDDD1EADACAEEDAC8
                F1D9C3DBBCA5C8AD99E4D8CE0000D4C9BBD2BBABE6CBB6EED7C1EEDDC3F0E0C9
                EBDDC7F3DFCEF3DECFEED8CCF5E2D3D5C7B4E5DEC5F8F4D8DCD8BBE4E0C4EBE7
                CBE3DEC5EAE6CEDEDCC4EBE9D1F4F2DAF3EFD7DAD9BFE9E6CAE7E2C9EDE5CEEE
                E0CEF0DFD2EAD8CDF0DED3F2E0D5EEDECEEFDCC7F1D9C1DBBDA4C7AF99E4D8CE
                0000D4C8BCD3BCACE4CBB7EDD6C0EEDDC3EFE1CAF0E2CCEEDCCBF2DDCEF4E2D1
                F3E5D2D8D6B89B9F7CB5BC97FEFFDEEEF5D0D6DCB9D8DDBDDEE5C2E4F0CCD7E5
                C1C4D0ACDEE9C8EEF7D6D8DDBEE0DFC5E9E0CCF5E5D5EEDBCEF4DED3F4DED3F1
                DED1F1DFCEF5E0CBF1D9C3D9BBA2C7AE9AE4D8CE0000D3C7BBD0BCABE3CAB6EE
                D7C1EDDBC4ECDEC8EFE0CDEEDCCBF0DECDF9EAD7DDD6BDEAEECBC8D4AA748455
                8EA170ECFECFE9FDCEE6FCCCE0FCC7DDFFC7A2CA906B935991B57FD5F2C4E5FA
                D3E3EBCDE7E3CBE7D8C8EFD9CDF6DCD0F3D9CDF3DCCDF9E2D2F5DDC9EED3BEDC
                BDA6C6AD99E5D9CF0000D3C7BBCFBBAAE2CAB8ECD7C2EDDAC5F3E5CFECDDCAEE
                DBCCF2DDCEEAD9C6F4EAD2EAEBC9E6F0C5BDCD9D657B47637945ACC690C0E1A8
                C4EEADB5EAA17DB86D609E5057914A7CAD6FC8EDBBDFF1CCE0E3C9EBDFCDF4DD
                CEF7DCCEF9DED0F5DCCCF3DBC9F3D9C8EFD4C0DBBCA7C6AC9BE5D9CF0000D4C8
                BCCFBAABE5CDBBF0DAC8EEDDCAEFE0CDEFE0CDF4DFD0F7E0D1F8E3D4E6D7C4F1
                EBCEE3E5C1E5EDC4CFDCAE8194635E78425C814354843C53913F539B415AAA4D
                59A74F4E8F446DA064BBD8ABE0EBCBF5EDD6EFDBC9F3DACAFFE6D6FBE3D1F2DA
                C8F1D7C6F1D6C2DBBBA8C7AD9DE5D8D00000D5C9BDD0BBACECD3C3F8E1D1F5E4
                D1F4E4D3F3E3D2F8E3D4FAE2D6F0D9CAFFF6E5EFE1CBE9E3C6EDECCAE6EAC6E1
                EBC1C1D4A399B97E75A25D76B06151973D4FA14253A34866AA5D6EA163C4E1B4
                E0EBCAF8F3DAF1E0CBF0DAC8FCE4D2FAE4D2F2DCCAF5DDCBF9DDCCE0C0ADC5AB
                9BE4D7CF0000D6CAC0D1BBAFF1D7C9FEE7D8FBE7D6F8E5D6F3E3D3FAE4D8FFEE
                E2FFE9DDF1DACBF8E4D3FFF1DCEFE2CCECE2CAE6E2C5DEE5C0E2F4C5DAFAC1C7
                F2AF78B0635898464F914086BB78D8FECAD6EBC4E8EECFE8E1C8EFDEC9F2DECC
                F1DDCBF1DFCEF3DFCEF9E2D2FFE5D4E4C5B0C4A897E4D8CE0000D5C9BFD1B9AD
                F5DACCFFE8DAFAE5D6F6E3D6F7E6D9F5E2D5FCE6DAFFE9DDF9E4D5FCE5D5F3DF
                CEFAE5D6F3E1D0F1E3D0F2EBD0E2E6C3DDECC0DDF7C28CAE726A9453B3DC9FD8
                F6C5D8EDC6DFE5C6E3DFC7EADCC9F3E2CFF5E3D2F1DFCEF5E5D5F6E6D6F8E4D3
                FCE4D2E3C4ADC6AB97E3D7CD0000D5C8C0D0B7ADF6DACFFFE8DCF7E1D5F8E4D9
                F6E4D9F4E3D6F7E4D5F6E3D4FBE9D8FAE6D5FCE7D8FCE4D8FEE6DAF8E2D6F5E5
                D4F5EAD4E9E6CAE8EECBC5D0AACBD6AEEFF6D3EAEED1E1DEC9F0E3D3F0DFD2FB
                E6D7F8E3D4F7E4D5F4E3D6F7E9DDF6E6D9F8E5D6F9E4CFDEC3A9C7AF99E3D7CD
                0000D9C7C0D3B8AEF8DCD1FFE9DDF7E1D5FAE9DCFBEADDF6E6D6F4E4D3F3E3D2
                F7E7D6F7E5D4F8E6D5FAE4D8FCE6DAFAE4D8F8E5D8F2E2D2F7EBD9EDE7D0E8E4
                CBF7F2D9FEF6DFEBDFCDF5E5D8F5E1D6FAE4D9F5DFD4F7E1D5F5E4D7F2E2D6F0
                E2D6EEE0D4FBEBDBFFEAD8DBC1A9C4AC98E3D7CD0000E0CAC5D6B9B2F8DCD1FF
                E8D9F7E5D4F7E7D6F8EAD8F8EAD8F6E8D5F5E7D4F7E9D6F7E9D6F6E8D6F6E8D6
                F5E6D6F6E7D7F5E6D6F3E3D6F7EADAEDE3D2ECE2D0F5EAD4EBDEC8E9DBC8FCEC
                DBF6E6D6F8E7DAF4E2D7F4E4D8F4E6DAEFE1D5F6E8DCEFDFD2F9E9D9FFEBD9DA
                C1ADC7B0A0E2D8CE0000DDC4C0D4B7B0EED2C7FDE9D8F4E5D2F2E3D0F3E5D2F6
                E6D5F6E8D5F8E8D7F8EAD7F6E8D6F4E6D4F4E6D4F1E4D4F4E5D5F3E6D8F5E5D8
                F6E8DCF5E5D9F4E4D7F8EAD8F6E7D4F9E7D6F3E1D0F5E2D3F1E0D3F6E5D8F5E5
                D9F0E2D6F3E6D8F3E3D6F8E8D8F3E1D0FCE6D4DDC3B2BFAA9BDFD6CC0000DAC4
                BFD4B8B1E8CEC2FBE6D7FFEFDEF9E9D8F6E6D5F7E4D5F6E6D5F8E5D6F6E6D5F5
                E5D5F5E5D5F4E4D4F3E3D6F3E2D5F3E3D7F7E5DAF4E3DAF8E5DDF8E6DBF9E6D7
                FDEBDAFFEDDEF6E1D2FDE7DBF8E2D6FCE6DAF8E5D8F4E3D6FCEBDEF8E5D6FAE6
                D5FFF0E0FCE4D2D9BDACC6AF9FE5DCD30000F0E2D6D1BAB2DCC6BBEAD7C8F8E8
                D8FAEADAF7E4D7F5E2D5F5E2D5F6E3D6F2E1D4F5E2D5F5E4D7F5E3D8F4E4D8F5
                E2DAF5E4DBF7E5DEF0DED7F7E4DFF7E4DDF2DED3F5DFD3F6E0D5FDE4DAFFE7DD
                FFEBDFFFE8DCFEE8DCFFEBDFF7E4D5FEE9DAF9E5D4FFE9D7E9D1BFCEB5A1CFBB
                AAF0E2D60000F0E2D6CDBAB3C9B7ACD3C3B6E1D1C4E8D6CBE7D5CAE9D7CCEEDC
                D1EFDCD4EDDCD3EFDCD4F1E0D7F2E0D9F2E2DBF5E2DDF5E5DFF6E6E0ECDCD6F1
                E0DDEEDDDAF9E7E0F2DFD8EED8D2F6DED8EDD6CEF0DACFECD6CBE9D3C8E5CFC3
                EAD5C6E5D2C3E6D2C1DECAB8CEB8A6C6AE9CE4D1C2F0E2D60000F0E2D6F0E2D6
                DACEC4C6BAAEC8BCB0D5C6BDD4C4BDD7C7C0DDCDC6E0D0CAE0D2CCE3D5CFE7D9
                D3EFE0DDF0E4E0F4E7E5F6E9E7F6E9E7EEE2E0EDE1E1EBDEDCE8D9D6E2D1CEE4
                D1CEE2CFCADAC7C0DBC8C0DCC9C1D5C3B8D7C3B8CAB9ACC6B6A6C8B8A8BAAA99
                C2B2A1F3E1D0F0E2D6F0E2D60000F0E2D6F0E2D6F0E2D6E3DAD1E2D9D0E0D6CF
                DFD4D0DFD4D0E2D7D3E4D9D5E5DCD8E9E0DDEBE2DFEDE4E1EEE7E4F1E9E9F0EB
                EAEDE8E7EEE9E8E9E3E4E9E3E4E7DFDFE7DDDDEBDFDDE6DAD8E3D7D3E1D3CDE2
                D5CDDDD1C7DBCCC3D9CDC1D9CDC1D7CEC0E3DACDF0E2D6F0E2D6F0E2D6F0E2D6
                0000}
              Margin = 0
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 5
              OnClick = sbEnviarCartaClick
              ExplicitLeft = 1
              ExplicitTop = 50
            end
            object RzPanel2: TRzPanel
              Left = 7
              Top = 7
              Width = 126
              Height = 16
              Align = alTop
              BorderOuter = fsFlatRounded
              BorderSides = [sdTop]
              Caption = 'Registro'
              Color = 15987699
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5460819
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStart = 10611152
              GradientColorStop = 10611152
              GradientDirection = gdVerticalEnd
              ParentFont = False
              TabOrder = 0
              VisualStyle = vsGradient
            end
          end
          object Memo1: TMemo
            Left = 147
            Top = 29
            Width = 849
            Height = 124
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Lines.Strings = (
              
                'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186' A do art. 7'#186' do Con' +
                'v'#234'nio S/N, de 15 de dezembro de 1970 e pode '
              
                'ser utilizada para regulariza'#231#227'o de erro ocorrido na emiss'#227'o do ' +
                'documento fiscal, desde que o erro n'#227'o esteja'
              'relacionado com:'
              
                '     I - as vari'#225'veis que determinam o valor do imposto tais com' +
                'o: '
              
                '          base c'#225'lculo, al'#237'quota, diferen'#231'a de pre'#231'o, quantidade' +
                ', valor da opera'#231#227'o ou da presta'#231#227'o;'
              
                '     II - a corre'#231#227'o de dados cadastrais que implicam mudan'#231'a do' +
                ' remetente ou do destinat'#225'rio;'
              '     III - a data de emiss'#227'o ou sa'#237'da.'
              '  ')
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object GroupBox7: TGroupBox
            Left = 149
            Top = 245
            Width = 148
            Height = 32
            Caption = ' Data e Hora '
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DBEdit6: TDBEdit
              Left = 6
              Top = 15
              Width = 138
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NFE_CCEDATA'
              DataSource = dsNota
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
          object GroupBox14: TGroupBox
            Left = 303
            Top = 245
            Width = 114
            Height = 32
            Caption = ' N'#250'mero Seq. '
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object DBEdit13: TDBEdit
              Left = 6
              Top = 15
              Width = 104
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NFE_CCESEQ'
              DataSource = dsNota
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
            Left = 147
            Top = 286
            Width = 764
            Height = 145
            Caption = ' Dados '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object memCarta: TMemo
              Left = 2
              Top = 15
              Width = 760
              Height = 128
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 900
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnEnter = memCartaEnter
              OnExit = memCartaExit
            end
          end
          object Memo2: TMemo
            Left = 147
            Top = 159
            Width = 849
            Height = 74
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Lines.Strings = (
              
                'Exemplo:   Peso bruto correto: 1000kg, CFOP do item 1 correto: 5' +
                '102'
              ''
              
                'A informa'#231#227'o dever'#225' conter TODAS as informa'#231#245'es referente a nota' +
                ', Ser'#225' sempre considerado a '#218'LTIMA corre'#231#227'o enviada.'
              'N'#195'O USE ACENTUA'#199#195'O E NEM CARACTERES DIFERENTES.')
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
        end
      end
      object tabInutilizar: TTabSheet
        Caption = 'Inutilizar'
        ImageIndex = 3
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1090
          Height = 510
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label18: TLabel
            Left = 12
            Top = 6
            Width = 416
            Height = 18
            Caption = 'Exemplo e regra para inutiliza'#231#227'o de uma NF-e:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbInutilizar: TSpeedButton
            Tag = 15
            Left = 12
            Top = 325
            Width = 149
            Height = 40
            Hint = 'Salva o registro atual...'
            Caption = ' Salvar e Enviar '
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
            OnClick = sbInutilizarClick
          end
          object Label21: TLabel
            Left = 176
            Top = 336
            Width = 287
            Height = 42
            AutoSize = False
            Caption = 
              '*N'#250'mera'#231#227'o entre final e Inicial acima de 1.000, envio autom'#225'tic' +
              'o.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblInut: TLabel
            Left = 14
            Top = 384
            Width = 283
            Height = 17
            AutoSize = False
            Caption = 'Enviando de: - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Visible = False
            WordWrap = True
          end
          object Memo3: TMemo
            Left = 12
            Top = 29
            Width = 917
            Height = 210
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Lines.Strings = (
              
                'Durante a emiss'#227'o de NF-e '#233' poss'#237'vel que ocorra, eventualmente, ' +
                'por problemas t'#233'cnicos ou de sistemas do contribuinte, '
              
                'uma quebra da sequ'#234'ncia da numera'#231#227'o. Exemplo: a NF-e n'#186' 100 e a' +
                ' n'#186' 110 foram emitidas, mas a faixa 101 a 109, por '
              
                'motivo de ordem t'#233'cnica, n'#227'o foi utilizada antes da emiss'#227'o da n' +
                #186' 110.'
              ''
              
                'A inutiliza'#231#227'o de n'#250'mero de NF-e tem a finalidade de permitir qu' +
                'e o emissor comunique '#224' SEFAZ, at'#233' o d'#233'cimo dia do m'#234's '
              
                'subsequente, os n'#250'meros de NF-e que n'#227'o ser'#227'o utilizados em raz'#227 +
                'o de ter ocorrido uma quebra de sequ'#234'ncia da numera'#231#227'o '
              
                'da NF-e. A inutiliza'#231#227'o de n'#250'mero s'#243' '#233' poss'#237'vel caso a numera'#231#227'o' +
                ' ainda n'#227'o tenha sido utilizada em nenhuma NF-e '
              '(autorizada, cancelada ou denegada).'
              ''
              
                'A inutiliza'#231#227'o do n'#250'mero tem car'#225'ter de den'#250'ncia espont'#226'nea do c' +
                'ontribuinte de irregularidades de quebra de sequ'#234'ncia de '
              
                'numera'#231#227'o, podendo o fisco n'#227'o reconhecer o pedido nos casos de ' +
                'dolo, fraude ou simula'#231#227'o apurados.')
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object GroupBox12: TGroupBox
            Left = 14
            Top = 245
            Width = 65
            Height = 32
            Caption = ' Ano '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object txtJust_ano: TMaskEdit
              Left = 2
              Top = 15
              Width = 61
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              EditMask = '9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 4
              ParentFont = False
              TabOrder = 0
              Text = '    '
            end
          end
          object GroupBox13: TGroupBox
            Left = 83
            Top = 245
            Width = 78
            Height = 32
            Caption = ' Modelo '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object txtJust_mod: TMaskEdit
              Left = 2
              Top = 15
              Width = 74
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              EditMask = '9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 4
              ParentFont = False
              TabOrder = 0
              Text = '    '
            end
          end
          object GroupBox15: TGroupBox
            Left = 12
            Top = 278
            Width = 455
            Height = 43
            Caption = ' Justificativa '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object txtJust_obs: TMemo
              Left = 2
              Top = 15
              Width = 451
              Height = 26
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 360
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox16: TGroupBox
            Left = 165
            Top = 245
            Width = 67
            Height = 32
            Caption = ' S'#233'rie '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object txtJust_ser: TMaskEdit
              Left = 2
              Top = 15
              Width = 63
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              EditMask = '9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 4
              ParentFont = False
              TabOrder = 0
              Text = '    '
            end
          end
          object GroupBox17: TGroupBox
            Left = 236
            Top = 245
            Width = 114
            Height = 32
            Caption = ' N'#186' Inicial '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object txtJust_ini: TMaskEdit
              Left = 2
              Top = 15
              Width = 110
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              EditMask = '999999999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 0
              Text = '         '
              OnExit = txtJust_iniExit
            end
          end
          object GroupBox18: TGroupBox
            Left = 354
            Top = 245
            Width = 114
            Height = 32
            Caption = ' N'#186' Final '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object txtJust_fim: TMaskEdit
              Left = 2
              Top = 15
              Width = 110
              Height = 15
              Align = alClient
              BorderStyle = bsNone
              EditMask = '999999999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 0
              Text = '         '
            end
          end
          object gbInut: TGroupBox
            Left = 509
            Top = 245
            Width = 420
            Height = 200
            Caption = ' Resposta '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            Visible = False
            object txtJust_resp: TMemo
              Left = 2
              Top = 15
              Width = 416
              Height = 183
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object btnInut: TButton
            Left = 14
            Top = 407
            Width = 115
            Height = 25
            Caption = 'Parar processo'
            TabOrder = 8
            Visible = False
            OnClick = btnInutClick
          end
        end
      end
      object TabCancelar: TTabSheet
        Caption = 'Cancelar'
        ImageIndex = 4
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1090
          Height = 510
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object lblCancelar: TLabel
            Left = 19
            Top = 17
            Width = 116
            Height = 18
            Caption = 'Cancelar NFe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbCancelarEnviar: TSpeedButton
            Tag = 15
            Left = 19
            Top = 279
            Width = 149
            Height = 40
            Hint = 'Salva o registro atual...'
            Caption = ' Salvar e Enviar '
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
            OnClick = sbCancelarEnviarClick
          end
          object GroupBox19: TGroupBox
            Left = 19
            Top = 175
            Width = 167
            Height = 40
            Caption = ' Data e Hora Evento  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object edCancelarData: TEdit
              Left = 2
              Top = 20
              Width = 163
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'edCancelarData'
            end
          end
          object GroupBox20: TGroupBox
            Left = 192
            Top = 174
            Width = 137
            Height = 40
            Caption = ' Lote do evento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object edCancelarLote: TEdit
              Left = 2
              Top = 20
              Width = 133
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'Edit1'
            end
          end
          object GroupBox21: TGroupBox
            Left = 19
            Top = 222
            Width = 518
            Height = 40
            Caption = ' Justificativa (M'#237'nimo 15 letras)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object edCancelarObs: TEdit
              Left = 2
              Top = 20
              Width = 514
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 100
              ParentFont = False
              TabOrder = 0
              Text = 'EDCANCELAROBS'
            end
          end
          object GroupBox22: TGroupBox
            Left = 19
            Top = 56
            Width = 97
            Height = 40
            Caption = ' N'#250'mero '
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object DBEdit8: TDBEdit
              Left = 2
              Top = 20
              Width = 93
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NOTA'
              DataSource = dsNota
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4210816
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox23: TGroupBox
            Left = 122
            Top = 56
            Width = 67
            Height = 40
            Caption = ' S'#233'rie '
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object DBEdit9: TDBEdit
              Left = 2
              Top = 20
              Width = 63
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SERIE'
              DataSource = dsNota
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4210816
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox24: TGroupBox
            Left = 19
            Top = 101
            Width = 478
            Height = 40
            Caption = ' Chave '
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object DBEdit10: TDBEdit
              Left = 2
              Top = 20
              Width = 474
              Height = 18
              Align = alBottom
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NFE_CHAVE'
              DataSource = dsNota
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4210816
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
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
  object dsConfig: TDataSource
    DataSet = tbConfig
    Left = 486
    Top = 273
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 472
    Top = 376
  end
  object ACBrNFe1: TACBrNFe
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 563
    Top = 376
  end
  object dsNota: TDataSource
    DataSet = sqlDados
    Left = 360
    Top = 273
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    Sistema = 'ACW DESENV. SOFTWARE AGRO. LTDA'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.000000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrNFe = ACBrNFe1
    TipoDANFE = tiSemGeracao
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 592
    Top = 376
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 44883.436263425900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  DADOS_ENDERECO: String;                                       ' +
        '          '
      '  DESCR_CST: String;'
      '    '
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while Engine.FreeSpace > 10 do Engine.ShowBand(Child1);  '
      '  Engine.ShowBand(Child2);'
      'end;'
      ''
      'procedure Child3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Child3.Visible := (<Page> = 1) and (MasterData2.DataSet.Record' +
        'Count > 0);                                                     ' +
        '         '
      'end;'
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Header1.Visible := <Page> = 1;                                ' +
        '                              '
      'end;'
      ''
      'procedure Header2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Header1.Visible := not Header2.Visible;                       ' +
        '                                       '
      'end;'
      ''
      'procedure ColumnHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ColumnHeader1.Visible := <Page> > 1;                          ' +
        '                    '
      'end;'
      ''
      'procedure ColumnFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ColumnFooter1.Visible := Engine.FinalPass and (<Page> = 1);   ' +
        '                                                                ' +
        ' '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Trim(<Parametros."Imagem">) <> '#39#39' then'
      '  begin              '
      '    imgLogomarca.Picture.LoadFromFile(<Parametros."Imagem">);'
      '    if Trim(<Parametros."LogoExpandido">) = '#39'1'#39' then'
      '    begin'
      '      Memo10.Visible := False;'
      '      Memo11.Visible := False;'
      
        '      imgLogomarca.Width := imgLogomarca.Width+Memo10.Width;    ' +
        '                                                                ' +
        '  '
      '    end;'
      '  end else'
      '  begin'
      '    Memo10.Width := Memo10.Width + Memo10.Left;'
      '    Memo11.Width := Memo11.Width + Memo11.Left;'
      '    Memo10.Left := 0;'
      '    Memo11.Left := 0;'
      
        '    imgLogomarca.Visible := False;                              ' +
        '                                        '
      '  end;            '
      '    '
      '  if Trim(<Emitente."CRT">) = '#39'3'#39' then'
      '    DESCR_CST := '#39'CST'#39
      '  else'
      '    DESCR_CST := '#39'CSOSN'#39';                      '
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  DADOS_ENDERECO := Trim('
      '    <Emitente."XLgr"> + '#39', '#39' + <Emitente."Nro"> + #13 +       '
      
        '    <Emitente."XBairro"> + '#39' - '#39' + <Emitente."XMun"> + '#39' - '#39' + <' +
        'Emitente."UF"> + #13 +                   '
      
        '    '#39'Fone: '#39' + <Emitente."Fone"> + '#39' CEP: '#39' + <Emitente."CEP"> +' +
        ' #13 +       '
      '    <Parametros."Site"> + #13 +       '
      '    <Parametros."Email">  '
      '  );  '
      'end;'
      ''
      'procedure Overlay1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Overlay1.Visible := <Identificacao."TpAmb"> = '#39'2'#39';'
      '  if Overlay1.Visible then'
      '  begin              '
      '    Overlay1.Height        := Engine.PageHeight;'
      
        '    memWatermark.Width     := Overlay1.Width;                   ' +
        '               '
      '    memWatermark.Height    := Engine.PageHeight;'
      '    memWatermark.Font.Size := 50;'
      '  end;                  '
      'end;'
      ''
      'procedure Memo92OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Trim(<Transportador."ModFrete">) = '#39'0'#39' then'
      '    Memo92.Text := '#39'0-Emitente'#39
      '  else if Trim(<Transportador."ModFrete">) = '#39'1'#39' then'
      '    Memo92.Text := '#39'1-Destinat'#225'rio'#39
      '  else if Trim(<Transportador."ModFrete">) = '#39'2'#39' then'
      '    Memo92.Text := '#39'2-Terceiros'#39
      '  else if Trim(<Transportador."ModFrete">) = '#39'3'#39' then'
      '    Memo92.Text := '#39'9-Sem Frete'#39
      '  else'
      '    Memo92.Text :=  Trim(<Transportador."ModFrete">);  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 624
    Top = 376
    Datasets = <
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 2.000000000000000000
      RightMargin = 8.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      BackPictureVisible = False
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 11.338582680000000000
        Top = 865.512370000000000000
        Width = 755.906000000000000000
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 222.992089370000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464537640000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259813230000000000
          Width = 26.456695350000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716506140000000000
          Width = 24.566929130000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 642.520100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 73.811070000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 113.385802360000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 25.456710000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          LineSpacing = 6.000000000000000000
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 173.858362910000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 309.921460000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 462.236237560000000000
          Top = 7.559060000000000000
          Width = 80.000000000000000000
          Height = 45.354330710000000000
          BarType = bcCode128C
          Expression = '<Identificacao."ID">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ColorBar = clBlack
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 60.472480000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 90.708720000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 70.811070000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 94.488164570000000000
          Height = 120.944960000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 8.338590000000000000
          Width = 219.212740000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 47.574830000000000000
          Width = 219.212740000000000000
          Height = 62.362221810000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          LineSpacing = 4.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 20.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 70.811070000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 359.834880000000000000
          Top = 46.354360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 416.748300000000000000
          Top = 46.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 120.944960000000000000
          Width = 445.984540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 130.393700790000000000
          Width = 442.205010000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 120.944960000000000000
          Width = 309.921460000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 129.393700790000000000
          Width = 309.921460000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 147.401670000000000000
          Width = 249.448980000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 156.850410790000000000
          Width = 249.448980000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
        end
        object imgLogomarca: TfrxPictureView
          AllowVectorExport = True
          Top = 5.118120000000000000
          Width = 124.724490000000000000
          Height = 105.826840000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 9.448816460000000000
        Top = 1288.819730000000000000
        Width = 755.906000000000000000
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Width = 359.055350000000000000
          Height = 9.448816460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 359.055350000000000000
          Height = 9.448816460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 960.000620000000000000
        Visible = False
        Width = 755.906000000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Child = frxReport1.Child1
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779527560000000000
        Top = 982.677800000000000000
        Width = 755.906000000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 26.456695350000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716564720000000000
          Width = 24.566929130000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 35.795300000000000000
        Top = 536.693260000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Child3OnBeforePrint'
        Stretched = True
        ToNRows = 0
        ToNRowsMode = rmCount
        object Subreport1: TfrxSubreport
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 16.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = frxReport1.Page2
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 96.267762910000000000
        Top = 415.748300000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child3
        DataSetName = 'Identificacao'
        RowCount = 0
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 16.897650000000000000
          Width = 468.661720000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 26.346390790000000000
          Width = 464.882190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 16.897650000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 26.346390790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 43.354360000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 52.803100790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 69.811070000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 79.259810790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 16.897650000000000000
          Width = 162.519790000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 26.346390790000000000
          Width = 162.519790000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 43.354360000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 52.803100790000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 43.354360000000000000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 52.803100790000000000
          Width = 170.078850000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 43.354360000000000000
          Width = 385.512060000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 52.803100790000000000
          Width = 381.732530000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 69.811070000000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 79.259810790000000000
          Width = 351.496290000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 69.811070000000000000
          Width = 30.236240000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 79.259810790000000000
          Width = 30.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 69.811070000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 79.259810790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 69.811070000000000000
          Width = 132.283550000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 79.259810790000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 162.519772910000000000
        Top = 597.165740000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 2.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 23.566860790000000000
          Width = 181.417440000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 459.590848000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 459.590848000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 344.693136000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 344.693136000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 229.795424000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 229.795424000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 114.897712000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 114.897712000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 41.574830000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 50.023570790000000000
          Width = 181.417440000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Top = 69.921259840000100000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 83.149660000000000000
          Width = 119.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 92.598400790000000000
          Width = 119.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 83.149660000000000000
          Width = 31.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 92.598400790000000000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 92.598400790000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 462.614173230000000000
          Top = 83.149660000000000000
          Width = 73.700787401574800000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 463.543600000000000000
          Top = 92.598400790000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 83.149660000000000000
          Width = 98.267716535433100000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 361.834880000000000000
          Top = 92.598400790000000000
          Width = 98.267780000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo92OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 362.834880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Top = 92.598400790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 109.606370000000000000
          Width = 31.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 119.055110790000000000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 109.606370000000000000
          Width = 119.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 119.055110790000000000
          Width = 119.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 109.606370000000000000
          Width = 241.889920000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 119.055110790000000000
          Width = 241.889920000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Top = 109.606370000000000000
          Width = 362.834880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Top = 119.055110790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Top = 136.063080000000000000
          Width = 51.653576670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HideZeros = True
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Top = 145.511820790000000000
          Width = 51.653576670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          WordWrap = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 51.653576670000000000
          Top = 136.063080000000000000
          Width = 134.803236670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 51.653576670000000000
          Top = 145.511820790000000000
          Width = 134.803236670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 186.456813330000000000
          Top = 136.063080000000000000
          Width = 142.362296670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 186.456813330000000000
          Top = 145.511820790000000000
          Width = 142.362296670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 136.063080000000000000
          Width = 187.716656670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 145.511820790000000000
          Width = 187.716656670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
          WordWrap = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 516.535766670000000000
          Top = 136.063080000000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 516.535766670000000000
          Top = 145.511820790000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = ',0.00#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 636.220883330000000000
          Top = 136.063080000000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 636.220883330000000000
          Top = 145.511820790000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = ',0.00#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          WordWrap = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795287800000000000
        Top = 805.039890000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Header2OnBeforePrint'
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 15.118120000000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464537640000000000
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259813230000000000
          Top = 15.118120000000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716506140000000000
          Top = 15.118120000000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 372.283493860000000000
          Top = 15.118120000000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960659210000000000
          Top = 15.118120000000000000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 782.362710000000000000
        Width = 755.906000000000000000
        RowCount = 1
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 35.795287800000000000
        Top = 317.480520000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ColumnHeader1OnBeforePrint'
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 13.118120000000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 13.118120000000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464537640000000000
          Top = 13.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259813230000000000
          Top = 13.118120000000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716506140000000000
          Top = 13.118120000000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 372.283493860000000000
          Top = 13.118120000000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960659210000000000
          Top = 13.118120000000000000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 24.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 24.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Top = 1009.134510000000000000
        Width = 755.906000000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 194.535542910000000000
        Top = 1069.606990000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ColumnFooter1OnBeforePrint'
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Top = 16.897650000000100000
          Width = 217.322859060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Top = 26.346390790000200000
          Width = 217.322859060000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 217.322859060000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 217.322859060000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850418110000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850418110000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 576.377977170000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 576.377977170000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 58.472480000000100000
          Width = 238.110216690000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Top = 58.472480000000100000
          Width = 517.795319530000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Top = 68.031539999999900000
          Width = 517.795610000000000000
          Height = 124.724490000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795177950000000000
        Top = 899.528140000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Overlay1OnBeforePrint'
        object memWatermark: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 37.795177950000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 2.000000000000000000
      RightMargin = 8.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 5
        ColumnWidth = 151.181102362205000000
        DataSetName = 'Duplicatas'
        RowCount = 0
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 3.779530000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          LineSpacing = 3.000000000000000000
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 376
    object ConfigurarDANFE1: TMenuItem
      Caption = 'Configurar DANFE'
      OnClick = ConfigurarDANFE1Click
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 664
    Top = 376
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnBeforeMailProcess = ACBrMail1BeforeMailProcess
    OnMailProcess = ACBrMail1MailProcess
    OnAfterMailProcess = ACBrMail1AfterMailProcess
    OnMailException = ACBrMail1MailException
    Left = 496
    Top = 190
  end
  object PopupMenu2: TPopupMenu
    Left = 408
    Top = 376
    object DownloadarquivoXMLePDF1: TMenuItem
      Tag = 100
      Caption = 'Download arquivo XML e PDF'
      OnClick = DownloadarquivoXMLePDF1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopiarXMLMemria2: TMenuItem
      Tag = 200
      Caption = 'Download arquivo XML'
      OnClick = CopiarXMLMemria2Click
    end
    object DownloadarquivoPDF1: TMenuItem
      Tag = 300
      Caption = 'Download arquivo PDF'
      OnClick = DownloadarquivoPDF1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CopiarXMLMemria1: TMenuItem
      Tag = 400
      Caption = 'Copiar arquivo XML Mem'#243'ria'
      OnClick = CopiarXMLMemria1Click
    end
    object CopiararquivoPDFMemria1: TMenuItem
      Tag = 500
      Caption = 'Copiar arquivo PDF Mem'#243'ria'
      OnClick = CopiararquivoPDFMemria1Click
    end
  end
  object sqlDados: TFDQuery
    OnCalcFields = sqlDadosCalcFields
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * '
      'from nfvenda'
      'where lanc = -1'
      'order by lanc desc')
    Left = 322
    Top = 273
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlDadosDIF: TStringField
      FieldName = 'DIF'
      Origin = 'DIF'
      Size = 1
    end
    object sqlDadosNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
    end
    object sqlDadosSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object sqlDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'VENDECOD'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlDadosENTREGA: TSQLTimeStampField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object sqlDadosNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'NATURCOD'
      Precision = 18
    end
    object sqlDadosDADOSCOD: TIntegerField
      FieldName = 'DADOSCOD'
      Origin = 'DADOSCOD'
    end
    object sqlDadosTRTIPO: TStringField
      FieldName = 'TRTIPO'
      Origin = 'TRTIPO'
      Size = 1
    end
    object sqlDadosTRCOD: TIntegerField
      FieldName = 'TRCOD'
      Origin = 'TRCOD'
    end
    object sqlDadosTRDES: TStringField
      FieldName = 'TRDES'
      Origin = 'TRDES'
      Size = 50
    end
    object sqlDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      Precision = 18
    end
    object sqlDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'VLRBASE'
      Precision = 18
    end
    object sqlDadosVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'VLRICMS'
      Precision = 18
    end
    object sqlDadosVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Origin = 'VLRFRETE'
      Precision = 18
    end
    object sqlDadosVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Origin = 'VLRPRODUTO'
      Precision = 18
    end
    object sqlDadosVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'VLRIPI'
      Precision = 18
    end
    object sqlDadosVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Origin = 'VLRNOTA'
      Precision = 18
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      Precision = 18
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlDadosQTDESP: TStringField
      FieldName = 'QTDESP'
      Origin = 'QTDESP'
      Size = 100
    end
    object sqlDadosPSP: TIntegerField
      FieldName = 'PSP'
      Origin = 'PSP'
    end
    object sqlDadosFRETECOD: TIntegerField
      FieldName = 'FRETECOD'
      Origin = 'FRETECOD'
    end
    object sqlDadosFRETEDES: TStringField
      FieldName = 'FRETEDES'
      Origin = 'FRETEDES'
      Size = 50
    end
    object sqlDadosTRPLACA: TStringField
      FieldName = 'TRPLACA'
      Origin = 'TRPLACA'
      Size = 15
    end
    object sqlDadosTRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'TRCIDADE'
      Size = 30
    end
    object sqlDadosTRESTADO: TStringField
      FieldName = 'TRESTADO'
      Origin = 'TRESTADO'
      Size = 2
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object sqlDadosVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Origin = 'VLRSEGURO'
      Precision = 18
    end
    object sqlDadosVLRICMSFRE: TBCDField
      FieldName = 'VLRICMSFRE'
      Origin = 'VLRICMSFRE'
      Precision = 18
    end
    object sqlDadosOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object sqlDadosFORPAG: TIntegerField
      FieldName = 'FORPAG'
      Origin = 'FORPAG'
    end
    object sqlDadosSEGTIP: TStringField
      FieldName = 'SEGTIP'
      Origin = 'SEGTIP'
      Size = 10
    end
    object sqlDadosOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 100
    end
    object sqlDadosOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 100
    end
    object sqlDadosOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 100
    end
    object sqlDadosOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'OBS5'
      Size = 100
    end
    object sqlDadosOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'OBS6'
      Size = 100
    end
    object sqlDadosRECEITA: TIntegerField
      FieldName = 'RECEITA'
      Origin = 'RECEITA'
    end
    object sqlDadosDIFCOD: TIntegerField
      FieldName = 'DIFCOD'
      Origin = 'DIFCOD'
    end
    object sqlDadosDIFDES: TStringField
      FieldName = 'DIFDES'
      Origin = 'DIFDES'
      Size = 50
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Size = 30
    end
    object sqlDadosVLRFUNRURAL: TBCDField
      FieldName = 'VLRFUNRURAL'
      Origin = 'VLRFUNRURAL'
      Precision = 18
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object sqlDadosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Size = 1
    end
    object sqlDadosNSUNUM: TIntegerField
      FieldName = 'NSUNUM'
      Origin = 'NSUNUM'
    end
    object sqlDadosNSUDAT: TSQLTimeStampField
      FieldName = 'NSUDAT'
      Origin = 'NSUDAT'
    end
    object sqlDadosNSUHOR: TStringField
      FieldName = 'NSUHOR'
      Origin = 'NSUHOR'
      Size = 8
    end
    object sqlDadosPRODNOTA: TIntegerField
      FieldName = 'PRODNOTA'
      Origin = 'PRODNOTA'
    end
    object sqlDadosNFE_MODELO: TStringField
      FieldName = 'NFE_MODELO'
      Origin = 'NFE_MODELO'
      Size = 2
    end
    object sqlDadosNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      Size = 2
    end
    object sqlDadosNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Origin = 'NFE_CHAVE'
      Size = 50
    end
    object sqlDadosNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Origin = 'NFE_RECIBO'
      Size = 30
    end
    object sqlDadosNFE_PROTOC: TStringField
      FieldName = 'NFE_PROTOC'
      Origin = 'NFE_PROTOC'
      Size = 30
    end
    object sqlDadosNFE_CANCEL: TStringField
      FieldName = 'NFE_CANCEL'
      Origin = 'NFE_CANCEL'
      Size = 30
    end
    object sqlDadosNFE_XML: TStringField
      FieldName = 'NFE_XML'
      Origin = 'NFE_XML'
      Size = 120
    end
    object sqlDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'CODLOTECLASS'
      Size = 30
    end
    object sqlDadosCLI_FUNPER: TBCDField
      FieldName = 'CLI_FUNPER'
      Origin = 'CLI_FUNPER'
      Precision = 18
    end
    object sqlDadosCLI_COMISPER: TBCDField
      FieldName = 'CLI_COMISPER'
      Origin = 'CLI_COMISPER'
      Precision = 18
    end
    object sqlDadosCLI_ADIANTCX: TBCDField
      FieldName = 'CLI_ADIANTCX'
      Origin = 'CLI_ADIANTCX'
      Precision = 18
    end
    object sqlDadosNFE_CCE1: TStringField
      FieldName = 'NFE_CCE1'
      Origin = 'NFE_CCE1'
      Size = 120
    end
    object sqlDadosNFE_CCE2: TStringField
      FieldName = 'NFE_CCE2'
      Origin = 'NFE_CCE2'
      Size = 120
    end
    object sqlDadosNFE_CCE3: TStringField
      FieldName = 'NFE_CCE3'
      Origin = 'NFE_CCE3'
      Size = 120
    end
    object sqlDadosNFE_CCESEQ: TIntegerField
      FieldName = 'NFE_CCESEQ'
      Origin = 'NFE_CCESEQ'
    end
    object sqlDadosNFE_CCEDATA: TSQLTimeStampField
      FieldName = 'NFE_CCEDATA'
      Origin = 'NFE_CCEDATA'
    end
    object sqlDadosTRIBNCM_PER: TBCDField
      FieldName = 'TRIBNCM_PER'
      Origin = 'TRIBNCM_PER'
      Precision = 18
    end
    object sqlDadosTRIBNCM_VLR: TBCDField
      FieldName = 'TRIBNCM_VLR'
      Origin = 'TRIBNCM_VLR'
      Precision = 18
    end
    object sqlDadosVLRCRED: TBCDField
      FieldName = 'VLRCRED'
      Origin = 'VLRCRED'
      Precision = 18
    end
    object sqlDadosVLRSERV: TBCDField
      FieldName = 'VLRSERV'
      Origin = 'VLRSERV'
      Precision = 18
    end
    object sqlDadosPERSERV: TBCDField
      FieldName = 'PERSERV'
      Origin = 'PERSERV'
      Precision = 18
    end
    object sqlDadosPIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'PIS_VLR'
      Precision = 18
    end
    object sqlDadosCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'COFINS_VLR'
      Precision = 18
    end
    object sqlDadosEMAILENV: TIntegerField
      FieldName = 'EMAILENV'
      Origin = 'EMAILENV'
    end
    object sqlDadosCOMISSAOCOD: TIntegerField
      FieldName = 'COMISSAOCOD'
      Origin = 'COMISSAOCOD'
    end
    object sqlDadosCOMISSAOVLR: TBCDField
      FieldName = 'COMISSAOVLR'
      Origin = 'COMISSAOVLR'
      Precision = 18
    end
    object sqlDadosCOMISSAOVALOR: TBCDField
      FieldName = 'COMISSAOVALOR'
      Origin = 'COMISSAOVALOR'
      Precision = 18
    end
    object sqlDadosOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'OBS7'
      Size = 100
    end
    object sqlDadosOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'OBS8'
      Size = 100
    end
    object sqlDadosOBS9: TStringField
      FieldName = 'OBS9'
      Origin = 'OBS9'
      Size = 100
    end
    object sqlDadosOBS10: TStringField
      FieldName = 'OBS10'
      Origin = 'OBS10'
      Size = 100
    end
    object sqlDadosOBS11: TStringField
      FieldName = 'OBS11'
      Origin = 'OBS11'
      Size = 100
    end
    object sqlDadosOBS12: TStringField
      FieldName = 'OBS12'
      Origin = 'OBS12'
      Size = 100
    end
    object sqlDadosNFE_CCE4: TStringField
      FieldName = 'NFE_CCE4'
      Origin = 'NFE_CCE4'
      Size = 120
    end
    object sqlDadosNFE_CCE5: TStringField
      FieldName = 'NFE_CCE5'
      Origin = 'NFE_CCE5'
      Size = 120
    end
    object sqlDadosNFE_CCE6: TStringField
      FieldName = 'NFE_CCE6'
      Origin = 'NFE_CCE6'
      Size = 120
    end
    object sqlDadosNFE_CCE7: TStringField
      FieldName = 'NFE_CCE7'
      Origin = 'NFE_CCE7'
      Size = 120
    end
    object sqlDadosNFE_CCE8: TStringField
      FieldName = 'NFE_CCE8'
      Origin = 'NFE_CCE8'
      Size = 120
    end
    object sqlDadosOBS13: TStringField
      FieldName = 'OBS13'
      Origin = 'OBS13'
      Size = 120
    end
    object sqlDadosTRIBNCM_PERE: TBCDField
      FieldName = 'TRIBNCM_PERE'
      Origin = 'TRIBNCM_PERE'
      Precision = 18
    end
    object sqlDadosTRIBNCM_VLRE: TBCDField
      FieldName = 'TRIBNCM_VLRE'
      Origin = 'TRIBNCM_VLRE'
      Precision = 18
    end
    object sqlDadosPRD_FUNRURAL: TBCDField
      FieldName = 'PRD_FUNRURAL'
      Origin = 'PRD_FUNRURAL'
      Precision = 18
    end
    object sqlDadosXSEL: TStringField
      FieldName = 'XSEL'
      Origin = 'XSEL'
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlDadosEMAIL: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMAIL'
      Size = 1
      Calculated = True
    end
  end
  object tbConfig: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from NFE_CONFIG')
    Left = 434
    Top = 273
    object tbConfigREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object tbConfigCER_CAMINHO: TStringField
      FieldName = 'CER_CAMINHO'
      Origin = 'CER_CAMINHO'
      Size = 100
    end
    object tbConfigCER_SENHA: TStringField
      FieldName = 'CER_SENHA'
      Origin = 'CER_SENHA'
    end
    object tbConfigCER_NUMSERIE: TStringField
      FieldName = 'CER_NUMSERIE'
      Origin = 'CER_NUMSERIE'
      Size = 100
    end
    object tbConfigGER_DANFE: TStringField
      FieldName = 'GER_DANFE'
      Origin = 'GER_DANFE'
      Size = 1
    end
    object tbConfigGER_FORMAEMISSAO: TStringField
      FieldName = 'GER_FORMAEMISSAO'
      Origin = 'GER_FORMAEMISSAO'
      Size = 1
    end
    object tbConfigGER_LOGOMARCA: TStringField
      FieldName = 'GER_LOGOMARCA'
      Origin = 'GER_LOGOMARCA'
      Size = 100
    end
    object tbConfigGER_SALVAR: TStringField
      FieldName = 'GER_SALVAR'
      Origin = 'GER_SALVAR'
      Size = 100
    end
    object tbConfigGER_PATHSALVAR: TStringField
      FieldName = 'GER_PATHSALVAR'
      Origin = 'GER_PATHSALVAR'
      Size = 100
    end
    object tbConfigWEB_UF: TStringField
      FieldName = 'WEB_UF'
      Origin = 'WEB_UF'
      Size = 2
    end
    object tbConfigWEB_AMBIENTE: TStringField
      FieldName = 'WEB_AMBIENTE'
      Origin = 'WEB_AMBIENTE'
      Size = 1
    end
    object tbConfigWEB_VISUALIZAR: TStringField
      FieldName = 'WEB_VISUALIZAR'
      Origin = 'WEB_VISUALIZAR'
      Size = 1
    end
    object tbConfigPRX_HOST: TStringField
      FieldName = 'PRX_HOST'
      Origin = 'PRX_HOST'
      Size = 100
    end
    object tbConfigPRX_PORTA: TStringField
      FieldName = 'PRX_PORTA'
      Origin = 'PRX_PORTA'
      Size = 10
    end
    object tbConfigPROX_USER: TStringField
      FieldName = 'PROX_USER'
      Origin = 'PROX_USER'
      Size = 30
    end
    object tbConfigPROX_PASS: TStringField
      FieldName = 'PROX_PASS'
      Origin = 'PROX_PASS'
    end
    object tbConfigEML_HOST: TStringField
      FieldName = 'EML_HOST'
      Origin = 'EML_HOST'
      Size = 100
    end
    object tbConfigEML_PORT: TStringField
      FieldName = 'EML_PORT'
      Origin = 'EML_PORT'
      Size = 10
    end
    object tbConfigEML_USER: TStringField
      FieldName = 'EML_USER'
      Origin = 'EML_USER'
      Size = 50
    end
    object tbConfigEML_PASS: TStringField
      FieldName = 'EML_PASS'
      Origin = 'EML_PASS'
      Size = 30
    end
    object tbConfigEML_ASSUNTO: TStringField
      FieldName = 'EML_ASSUNTO'
      Origin = 'EML_ASSUNTO'
      Size = 120
    end
    object tbConfigEML_SSL: TStringField
      FieldName = 'EML_SSL'
      Origin = 'EML_SSL'
      Size = 1
    end
    object tbConfigCER_VALIDADE: TSQLTimeStampField
      FieldName = 'CER_VALIDADE'
      Origin = 'CER_VALIDADE'
    end
    object tbConfigCER_SSLLIB: TIntegerField
      FieldName = 'CER_SSLLIB'
      Origin = 'CER_SSLLIB'
    end
    object tbConfigCER_CRYPTLIB: TIntegerField
      FieldName = 'CER_CRYPTLIB'
      Origin = 'CER_CRYPTLIB'
    end
    object tbConfigCER_HTTPLIB: TIntegerField
      FieldName = 'CER_HTTPLIB'
      Origin = 'CER_HTTPLIB'
    end
    object tbConfigCER_XMLSIGNLIB: TIntegerField
      FieldName = 'CER_XMLSIGNLIB'
      Origin = 'CER_XMLSIGNLIB'
    end
    object tbConfigWEB_SSLTYPE: TIntegerField
      FieldName = 'WEB_SSLTYPE'
      Origin = 'WEB_SSLTYPE'
    end
    object tbConfigGER_VERSAO: TIntegerField
      FieldName = 'GER_VERSAO'
      Origin = 'GER_VERSAO'
    end
    object tbConfigGER_PATSCHEMAS: TStringField
      FieldName = 'GER_PATSCHEMAS'
      Origin = 'GER_PATSCHEMAS'
      Size = 100
    end
    object tbConfigMGM_SUP: TIntegerField
      FieldName = 'MGM_SUP'
      Origin = 'MGM_SUP'
    end
    object tbConfigMGM_INF: TIntegerField
      FieldName = 'MGM_INF'
      Origin = 'MGM_INF'
    end
    object tbConfigMGM_ESQ: TIntegerField
      FieldName = 'MGM_ESQ'
      Origin = 'MGM_ESQ'
    end
    object tbConfigMGM_DIR: TIntegerField
      FieldName = 'MGM_DIR'
      Origin = 'MGM_DIR'
    end
    object tbConfigEML_TLS: TStringField
      FieldName = 'EML_TLS'
      Origin = 'EML_TLS'
      Size = 1
    end
    object tbConfigSMTP_HOST: TStringField
      FieldName = 'SMTP_HOST'
      Origin = 'SMTP_HOST'
      Size = 50
    end
    object tbConfigSMTP_PORTA: TStringField
      FieldName = 'SMTP_PORTA'
      Origin = 'SMTP_PORTA'
      Size = 10
    end
    object tbConfigSMTP_USER: TStringField
      FieldName = 'SMTP_USER'
      Origin = 'SMTP_USER'
      Size = 50
    end
    object tbConfigSMTP_PASS: TStringField
      FieldName = 'SMTP_PASS'
      Origin = 'SMTP_PASS'
    end
    object tbConfigSMTP_USERNAME: TStringField
      FieldName = 'SMTP_USERNAME'
      Origin = 'SMTP_USERNAME'
    end
    object tbConfigREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object tbConfigREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TNota: TFDQuery
    OnCalcFields = TNotaCalcFields
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfvenda where lanc = -1')
    Left = 524
    Top = 273
    object TNotaLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object TNotaDIF: TStringField
      FieldName = 'DIF'
      Origin = 'DIF'
      Size = 1
    end
    object TNotaNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
    end
    object TNotaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object TNotaVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'VENDECOD'
    end
    object TNotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TNotaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object TNotaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object TNotaENTREGA: TSQLTimeStampField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object TNotaNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'NATURCOD'
      Precision = 18
    end
    object TNotaDADOSCOD: TIntegerField
      FieldName = 'DADOSCOD'
      Origin = 'DADOSCOD'
    end
    object TNotaTRTIPO: TStringField
      FieldName = 'TRTIPO'
      Origin = 'TRTIPO'
      Size = 1
    end
    object TNotaTRCOD: TIntegerField
      FieldName = 'TRCOD'
      Origin = 'TRCOD'
    end
    object TNotaTRDES: TStringField
      FieldName = 'TRDES'
      Origin = 'TRDES'
      Size = 50
    end
    object TNotaVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      Precision = 18
    end
    object TNotaVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'VLRBASE'
      Precision = 18
    end
    object TNotaVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'VLRICMS'
      Precision = 18
    end
    object TNotaVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Origin = 'VLRFRETE'
      Precision = 18
    end
    object TNotaVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Origin = 'VLRPRODUTO'
      Precision = 18
    end
    object TNotaVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'VLRIPI'
      Precision = 18
    end
    object TNotaVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Origin = 'VLRNOTA'
      Precision = 18
    end
    object TNotaPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      Precision = 18
    end
    object TNotaPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object TNotaQTDESP: TStringField
      FieldName = 'QTDESP'
      Origin = 'QTDESP'
      Size = 100
    end
    object TNotaPSP: TIntegerField
      FieldName = 'PSP'
      Origin = 'PSP'
    end
    object TNotaFRETECOD: TIntegerField
      FieldName = 'FRETECOD'
      Origin = 'FRETECOD'
    end
    object TNotaFRETEDES: TStringField
      FieldName = 'FRETEDES'
      Origin = 'FRETEDES'
      Size = 50
    end
    object TNotaTRPLACA: TStringField
      FieldName = 'TRPLACA'
      Origin = 'TRPLACA'
      Size = 15
    end
    object TNotaTRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'TRCIDADE'
      Size = 30
    end
    object TNotaTRESTADO: TStringField
      FieldName = 'TRESTADO'
      Origin = 'TRESTADO'
      Size = 2
    end
    object TNotaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object TNotaVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Origin = 'VLRSEGURO'
      Precision = 18
    end
    object TNotaVLRICMSFRE: TBCDField
      FieldName = 'VLRICMSFRE'
      Origin = 'VLRICMSFRE'
      Precision = 18
    end
    object TNotaOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object TNotaFORPAG: TIntegerField
      FieldName = 'FORPAG'
      Origin = 'FORPAG'
    end
    object TNotaSEGTIP: TStringField
      FieldName = 'SEGTIP'
      Origin = 'SEGTIP'
      Size = 10
    end
    object TNotaOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 100
    end
    object TNotaOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 100
    end
    object TNotaOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 100
    end
    object TNotaOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'OBS5'
      Size = 100
    end
    object TNotaOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'OBS6'
      Size = 100
    end
    object TNotaRECEITA: TIntegerField
      FieldName = 'RECEITA'
      Origin = 'RECEITA'
    end
    object TNotaDIFCOD: TIntegerField
      FieldName = 'DIFCOD'
      Origin = 'DIFCOD'
    end
    object TNotaDIFDES: TStringField
      FieldName = 'DIFDES'
      Origin = 'DIFDES'
      Size = 50
    end
    object TNotaEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object TNotaACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object TNotaFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Size = 30
    end
    object TNotaVLRFUNRURAL: TBCDField
      FieldName = 'VLRFUNRURAL'
      Origin = 'VLRFUNRURAL'
      Precision = 18
    end
    object TNotaPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object TNotaPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object TNotaESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Size = 1
    end
    object TNotaNSUNUM: TIntegerField
      FieldName = 'NSUNUM'
      Origin = 'NSUNUM'
    end
    object TNotaNSUDAT: TSQLTimeStampField
      FieldName = 'NSUDAT'
      Origin = 'NSUDAT'
    end
    object TNotaNSUHOR: TStringField
      FieldName = 'NSUHOR'
      Origin = 'NSUHOR'
      Size = 8
    end
    object TNotaPRODNOTA: TIntegerField
      FieldName = 'PRODNOTA'
      Origin = 'PRODNOTA'
    end
    object TNotaNFE_MODELO: TStringField
      FieldName = 'NFE_MODELO'
      Origin = 'NFE_MODELO'
      Size = 2
    end
    object TNotaNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      Size = 2
    end
    object TNotaNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Origin = 'NFE_CHAVE'
      Size = 50
    end
    object TNotaNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Origin = 'NFE_RECIBO'
      Size = 30
    end
    object TNotaNFE_PROTOC: TStringField
      FieldName = 'NFE_PROTOC'
      Origin = 'NFE_PROTOC'
      Size = 30
    end
    object TNotaNFE_CANCEL: TStringField
      FieldName = 'NFE_CANCEL'
      Origin = 'NFE_CANCEL'
      Size = 30
    end
    object TNotaNFE_XML: TStringField
      FieldName = 'NFE_XML'
      Origin = 'NFE_XML'
      Size = 120
    end
    object TNotaCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'CODLOTECLASS'
      Size = 30
    end
    object TNotaCLI_FUNPER: TBCDField
      FieldName = 'CLI_FUNPER'
      Origin = 'CLI_FUNPER'
      Precision = 18
    end
    object TNotaCLI_COMISPER: TBCDField
      FieldName = 'CLI_COMISPER'
      Origin = 'CLI_COMISPER'
      Precision = 18
    end
    object TNotaCLI_ADIANTCX: TBCDField
      FieldName = 'CLI_ADIANTCX'
      Origin = 'CLI_ADIANTCX'
      Precision = 18
    end
    object TNotaNFE_CCE1: TStringField
      FieldName = 'NFE_CCE1'
      Origin = 'NFE_CCE1'
      Size = 120
    end
    object TNotaNFE_CCE2: TStringField
      FieldName = 'NFE_CCE2'
      Origin = 'NFE_CCE2'
      Size = 120
    end
    object TNotaNFE_CCE3: TStringField
      FieldName = 'NFE_CCE3'
      Origin = 'NFE_CCE3'
      Size = 120
    end
    object TNotaNFE_CCESEQ: TIntegerField
      FieldName = 'NFE_CCESEQ'
      Origin = 'NFE_CCESEQ'
    end
    object TNotaNFE_CCEDATA: TSQLTimeStampField
      FieldName = 'NFE_CCEDATA'
      Origin = 'NFE_CCEDATA'
    end
    object TNotaTRIBNCM_PER: TBCDField
      FieldName = 'TRIBNCM_PER'
      Origin = 'TRIBNCM_PER'
      Precision = 18
    end
    object TNotaTRIBNCM_VLR: TBCDField
      FieldName = 'TRIBNCM_VLR'
      Origin = 'TRIBNCM_VLR'
      Precision = 18
    end
    object TNotaVLRCRED: TBCDField
      FieldName = 'VLRCRED'
      Origin = 'VLRCRED'
      Precision = 18
    end
    object TNotaVLRSERV: TBCDField
      FieldName = 'VLRSERV'
      Origin = 'VLRSERV'
      Precision = 18
    end
    object TNotaPERSERV: TBCDField
      FieldName = 'PERSERV'
      Origin = 'PERSERV'
      Precision = 18
    end
    object TNotaPIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'PIS_VLR'
      Precision = 18
    end
    object TNotaCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'COFINS_VLR'
      Precision = 18
    end
    object TNotaEMAILENV: TIntegerField
      FieldName = 'EMAILENV'
      Origin = 'EMAILENV'
    end
    object TNotaCOMISSAOCOD: TIntegerField
      FieldName = 'COMISSAOCOD'
      Origin = 'COMISSAOCOD'
    end
    object TNotaCOMISSAOVLR: TBCDField
      FieldName = 'COMISSAOVLR'
      Origin = 'COMISSAOVLR'
      Precision = 18
    end
    object TNotaCOMISSAOVALOR: TBCDField
      FieldName = 'COMISSAOVALOR'
      Origin = 'COMISSAOVALOR'
      Precision = 18
    end
    object TNotaOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'OBS7'
      Size = 100
    end
    object TNotaOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'OBS8'
      Size = 100
    end
    object TNotaOBS9: TStringField
      FieldName = 'OBS9'
      Origin = 'OBS9'
      Size = 100
    end
    object TNotaOBS10: TStringField
      FieldName = 'OBS10'
      Origin = 'OBS10'
      Size = 100
    end
    object TNotaOBS11: TStringField
      FieldName = 'OBS11'
      Origin = 'OBS11'
      Size = 100
    end
    object TNotaOBS12: TStringField
      FieldName = 'OBS12'
      Origin = 'OBS12'
      Size = 100
    end
    object TNotaNFE_CCE4: TStringField
      FieldName = 'NFE_CCE4'
      Origin = 'NFE_CCE4'
      Size = 120
    end
    object TNotaNFE_CCE5: TStringField
      FieldName = 'NFE_CCE5'
      Origin = 'NFE_CCE5'
      Size = 120
    end
    object TNotaNFE_CCE6: TStringField
      FieldName = 'NFE_CCE6'
      Origin = 'NFE_CCE6'
      Size = 120
    end
    object TNotaNFE_CCE7: TStringField
      FieldName = 'NFE_CCE7'
      Origin = 'NFE_CCE7'
      Size = 120
    end
    object TNotaNFE_CCE8: TStringField
      FieldName = 'NFE_CCE8'
      Origin = 'NFE_CCE8'
      Size = 120
    end
    object TNotaOBS13: TStringField
      FieldName = 'OBS13'
      Origin = 'OBS13'
      Size = 120
    end
    object TNotaTRIBNCM_PERE: TBCDField
      FieldName = 'TRIBNCM_PERE'
      Origin = 'TRIBNCM_PERE'
      Precision = 18
    end
    object TNotaTRIBNCM_VLRE: TBCDField
      FieldName = 'TRIBNCM_VLRE'
      Origin = 'TRIBNCM_VLRE'
      Precision = 18
    end
    object TNotaPRD_FUNRURAL: TBCDField
      FieldName = 'PRD_FUNRURAL'
      Origin = 'PRD_FUNRURAL'
      Precision = 18
    end
    object TNotaXSEL: TStringField
      FieldName = 'XSEL'
      Origin = 'XSEL'
      Size = 1
    end
    object TNotaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TNotaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TNotazMemoCarta: TStringField
      FieldKind = fkCalculated
      FieldName = 'zMemoCarta'
      Size = 1000
      Calculated = True
    end
  end
  object TProduto: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfvendco')
    Left = 600
    Top = 273
    object TProdutoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object TProdutoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object TProdutoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object TProdutoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object TProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 90
    end
    object TProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object TProdutoPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object TProdutoPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      Precision = 18
    end
    object TProdutoQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object TProdutoUNIT: TFMTBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Precision = 18
    end
    object TProdutoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object TProdutoGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'GRUPOCOD'
    end
    object TProdutoPERDESC: TBCDField
      FieldName = 'PERDESC'
      Origin = 'PERDESC'
      Precision = 18
    end
    object TProdutoVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      Precision = 18
    end
    object TProdutoVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object TProdutoRUNIT: TFMTBCDField
      FieldName = 'RUNIT'
      Origin = 'RUNIT'
      Precision = 18
    end
    object TProdutoRVALOR: TBCDField
      FieldName = 'RVALOR'
      Origin = 'RVALOR'
      Precision = 18
    end
    object TProdutoEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object TProdutoACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object TProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Size = 1
    end
    object TProdutoNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'NATURCOD'
      Precision = 18
    end
    object TProdutoICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'ICMS_SIT'
      Size = 4
    end
    object TProdutoICMS_PER: TBCDField
      FieldName = 'ICMS_PER'
      Origin = 'ICMS_PER'
      Precision = 18
    end
    object TProdutoICMS_RED: TBCDField
      FieldName = 'ICMS_RED'
      Origin = 'ICMS_RED'
      Precision = 18
    end
    object TProdutoICMS_BASE: TBCDField
      FieldName = 'ICMS_BASE'
      Origin = 'ICMS_BASE'
      Precision = 18
    end
    object TProdutoICMS_VLR: TBCDField
      FieldName = 'ICMS_VLR'
      Origin = 'ICMS_VLR'
      Precision = 18
    end
    object TProdutoIPI_SIT: TStringField
      FieldName = 'IPI_SIT'
      Origin = 'IPI_SIT'
      Size = 3
    end
    object TProdutoIPI_PER: TBCDField
      FieldName = 'IPI_PER'
      Origin = 'IPI_PER'
      Precision = 18
    end
    object TProdutoIPI_BASE: TBCDField
      FieldName = 'IPI_BASE'
      Origin = 'IPI_BASE'
      Precision = 18
    end
    object TProdutoIPI_VLR: TBCDField
      FieldName = 'IPI_VLR'
      Origin = 'IPI_VLR'
      Precision = 18
    end
    object TProdutoPRUNIT: TFMTBCDField
      FieldName = 'PRUNIT'
      Origin = 'PRUNIT'
      Precision = 18
    end
    object TProdutoPREMB: TBCDField
      FieldName = 'PREMB'
      Origin = 'PREMB'
      Precision = 18
    end
    object TProdutoCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'CODLOTECLASS'
      Size = 10
    end
    object TProdutoNCM_COD: TStringField
      FieldName = 'NCM_COD'
      Origin = 'NCM_COD'
    end
    object TProdutoNCM_PER: TBCDField
      FieldName = 'NCM_PER'
      Origin = 'NCM_PER'
      Precision = 18
    end
    object TProdutoNCM_VLR: TBCDField
      FieldName = 'NCM_VLR'
      Origin = 'NCM_VLR'
      Precision = 18
    end
    object TProdutoICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Origin = 'ICMS_CREDPER'
      Precision = 18
    end
    object TProdutoICMS_CREDVLR: TBCDField
      FieldName = 'ICMS_CREDVLR'
      Origin = 'ICMS_CREDVLR'
      Precision = 18
    end
    object TProdutoEHSERVICO: TStringField
      FieldName = 'EHSERVICO'
      Origin = 'EHSERVICO'
      Size = 4
    end
    object TProdutoEHSERVPER: TBCDField
      FieldName = 'EHSERVPER'
      Origin = 'EHSERVPER'
      Precision = 18
    end
    object TProdutoEHSERVVLR: TBCDField
      FieldName = 'EHSERVVLR'
      Origin = 'EHSERVVLR'
      Precision = 18
    end
    object TProdutoRVLRMEDIO: TBCDField
      FieldName = 'RVLRMEDIO'
      Origin = 'RVLRMEDIO'
      Precision = 18
    end
    object TProdutoPIS_SIT: TStringField
      FieldName = 'PIS_SIT'
      Origin = 'PIS_SIT'
      Size = 3
    end
    object TProdutoPIS_PER: TBCDField
      FieldName = 'PIS_PER'
      Origin = 'PIS_PER'
      Precision = 18
    end
    object TProdutoPIS_BASE: TBCDField
      FieldName = 'PIS_BASE'
      Origin = 'PIS_BASE'
      Precision = 18
    end
    object TProdutoPIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'PIS_VLR'
      Precision = 18
    end
    object TProdutoCOFINS_SIT: TStringField
      FieldName = 'COFINS_SIT'
      Origin = 'COFINS_SIT'
      Size = 3
    end
    object TProdutoCOFINS_PER: TBCDField
      FieldName = 'COFINS_PER'
      Origin = 'COFINS_PER'
      Precision = 18
    end
    object TProdutoCOFINS_BASE: TBCDField
      FieldName = 'COFINS_BASE'
      Origin = 'COFINS_BASE'
      Precision = 18
    end
    object TProdutoCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'COFINS_VLR'
      Precision = 18
    end
    object TProdutoIPI_CENQ: TStringField
      FieldName = 'IPI_CENQ'
      Origin = 'IPI_CENQ'
      Size = 3
    end
    object TProdutoPRODUTOCOD: TStringField
      FieldName = 'PRODUTOCOD'
      Origin = 'PRODUTOCOD'
    end
    object TProdutoNCM_PERE: TBCDField
      FieldName = 'NCM_PERE'
      Origin = 'NCM_PERE'
      Precision = 18
    end
    object TProdutoNCM_VLRE: TBCDField
      FieldName = 'NCM_VLRE'
      Origin = 'NCM_VLRE'
      Precision = 18
    end
    object TProdutoNCM_PERM: TBCDField
      FieldName = 'NCM_PERM'
      Origin = 'NCM_PERM'
      Precision = 18
    end
    object TProdutoNCM_VLRM: TBCDField
      FieldName = 'NCM_VLRM'
      Origin = 'NCM_VLRM'
      Precision = 18
    end
    object TProdutoUTRIB: TStringField
      FieldName = 'UTRIB'
      Origin = 'UTRIB'
      Size = 5
    end
    object TProdutoQTRIB: TBCDField
      FieldName = 'QTRIB'
      Origin = 'QTRIB'
      Precision = 18
    end
    object TProdutoVUNTRIB: TFMTBCDField
      FieldName = 'VUNTRIB'
      Origin = 'VUNTRIB'
      Precision = 18
    end
    object TProdutoCBENEF: TStringField
      FieldName = 'CBENEF'
      Origin = 'CBENEF'
    end
    object TProdutoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TProdutoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TFinan: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from fipave')
    Left = 648
    Top = 273
    object TFinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object TFinanLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object TFinanPARC: TIntegerField
      FieldName = 'PARC'
      Origin = 'PARC'
    end
    object TFinanVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object TFinanVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object TFinanPERC: TBCDField
      FieldName = 'PERC'
      Origin = 'PERC'
      Precision = 18
    end
    object TFinanVLR: TBCDField
      FieldName = 'VLR'
      Origin = 'VLR'
      Precision = 18
    end
    object TFinanCAR: TIntegerField
      FieldName = 'CAR'
      Origin = 'CAR'
    end
    object TFinanTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object TFinanBANCOD: TIntegerField
      FieldName = 'BANCOD'
      Origin = 'BANCOD'
    end
    object TFinanBANDOC: TStringField
      FieldName = 'BANDOC'
      Origin = 'BANDOC'
      Size = 15
    end
    object TFinanBANEMI: TStringField
      FieldName = 'BANEMI'
      Origin = 'BANEMI'
      Size = 50
    end
    object TFinanEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object TFinanACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object TFinanBANDES: TStringField
      FieldName = 'BANDES'
      Origin = 'BANDES'
    end
    object TFinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TFinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TImportac: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfvendimp')
    Left = 693
    Top = 273
    object TImportacLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object TImportacLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object TImportacDI_NR: TStringField
      FieldName = 'DI_NR'
      Origin = 'DI_NR'
      Size = 12
    end
    object TImportacDI_DT: TSQLTimeStampField
      FieldName = 'DI_DT'
      Origin = 'DI_DT'
    end
    object TImportacLOC_DES: TStringField
      FieldName = 'LOC_DES'
      Origin = 'LOC_DES'
      Size = 60
    end
    object TImportacLOC_UF: TStringField
      FieldName = 'LOC_UF'
      Origin = 'LOC_UF'
      Size = 2
    end
    object TImportacLOC_DT: TSQLTimeStampField
      FieldName = 'LOC_DT'
      Origin = 'LOC_DT'
    end
    object TImportacTRA_VIA: TStringField
      FieldName = 'TRA_VIA'
      Origin = 'TRA_VIA'
      Size = 50
    end
    object TImportacTRA_VLR: TBCDField
      FieldName = 'TRA_VLR'
      Origin = 'TRA_VLR'
      Precision = 18
    end
    object TImportacTRA_TIP: TStringField
      FieldName = 'TRA_TIP'
      Origin = 'TRA_TIP'
      Size = 50
    end
    object TImportacTRA_CNPJ: TStringField
      FieldName = 'TRA_CNPJ'
      Origin = 'TRA_CNPJ'
      Size = 18
    end
    object TImportacTRA_UF: TStringField
      FieldName = 'TRA_UF'
      Origin = 'TRA_UF'
      Size = 2
    end
    object TImportacADC_NR: TIntegerField
      FieldName = 'ADC_NR'
      Origin = 'ADC_NR'
    end
    object TImportacADC_SEQ: TIntegerField
      FieldName = 'ADC_SEQ'
      Origin = 'ADC_SEQ'
    end
    object TImportacADC_COD: TStringField
      FieldName = 'ADC_COD'
      Origin = 'ADC_COD'
      Size = 60
    end
    object TImportacIMP_ICM_VLR: TBCDField
      FieldName = 'IMP_ICM_VLR'
      Origin = 'IMP_ICM_VLR'
      Precision = 18
    end
    object TImportacIMP_ICM_PER: TBCDField
      FieldName = 'IMP_ICM_PER'
      Origin = 'IMP_ICM_PER'
      Precision = 18
    end
    object TImportacIMP_OUT_ADV: TBCDField
      FieldName = 'IMP_OUT_ADV'
      Origin = 'IMP_OUT_ADV'
      Precision = 18
    end
    object TImportacIMP_OUT_IOF: TBCDField
      FieldName = 'IMP_OUT_IOF'
      Origin = 'IMP_OUT_IOF'
      Precision = 18
    end
    object TImportacIMP_IPI_VLR: TBCDField
      FieldName = 'IMP_IPI_VLR'
      Origin = 'IMP_IPI_VLR'
      Precision = 18
    end
    object TImportacIMP_IPI_PER: TBCDField
      FieldName = 'IMP_IPI_PER'
      Origin = 'IMP_IPI_PER'
      Precision = 18
    end
    object TImportacIMP_IPI_COD: TIntegerField
      FieldName = 'IMP_IPI_COD'
      Origin = 'IMP_IPI_COD'
    end
    object TImportacIMP_II_VLR: TBCDField
      FieldName = 'IMP_II_VLR'
      Origin = 'IMP_II_VLR'
      Precision = 18
    end
    object TImportacIMP_II_PER: TBCDField
      FieldName = 'IMP_II_PER'
      Origin = 'IMP_II_PER'
      Precision = 18
    end
    object TImportacIMP_II_COD: TIntegerField
      FieldName = 'IMP_II_COD'
      Origin = 'IMP_II_COD'
    end
    object TImportacIMP_PIS_VLR: TBCDField
      FieldName = 'IMP_PIS_VLR'
      Origin = 'IMP_PIS_VLR'
      Precision = 18
    end
    object TImportacIMP_PIS_PER: TBCDField
      FieldName = 'IMP_PIS_PER'
      Origin = 'IMP_PIS_PER'
      Precision = 18
    end
    object TImportacIMP_PIS_COD: TIntegerField
      FieldName = 'IMP_PIS_COD'
      Origin = 'IMP_PIS_COD'
    end
    object TImportacIMP_COF_VLR: TBCDField
      FieldName = 'IMP_COF_VLR'
      Origin = 'IMP_COF_VLR'
      Precision = 18
    end
    object TImportacIMP_COF_PER: TBCDField
      FieldName = 'IMP_COF_PER'
      Origin = 'IMP_COF_PER'
      Precision = 18
    end
    object TImportacIMP_COF_COD: TIntegerField
      FieldName = 'IMP_COF_COD'
      Origin = 'IMP_COF_COD'
    end
    object TImportacREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TImportacREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TCadastro: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadclien')
    Left = 752
    Top = 273
    object TCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object TCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object TCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object TCadastroCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object TCadastroESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object TCadastroCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Origin = 'CIDADECOD'
    end
    object TCadastroCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object TCadastroDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object TCadastroFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 30
    end
    object TCadastroLIMITE: TBCDField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Precision = 18
    end
    object TCadastroFINAN: TBCDField
      FieldName = 'FINAN'
      Origin = 'FINAN'
      Precision = 18
    end
    object TCadastroCADASTRO: TSQLTimeStampField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
    end
    object TCadastroMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGEM'
      Size = 100
    end
    object TCadastroCTC: TIntegerField
      FieldName = 'CTC'
      Origin = 'CTC'
    end
    object TCadastroCTCDES: TStringField
      FieldName = 'CTCDES'
      Origin = 'CTCDES'
      Size = 60
    end
    object TCadastroFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Size = 30
    end
    object TCadastroCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Origin = 'CIDADEDES'
      Size = 30
    end
    object TCadastroCOOPER: TStringField
      FieldName = 'COOPER'
      Origin = 'COOPER'
      Size = 1
    end
    object TCadastroCTCCON: TIntegerField
      FieldName = 'CTCCON'
      Origin = 'CTCCON'
    end
    object TCadastroAREA: TBCDField
      FieldName = 'AREA'
      Origin = 'AREA'
      Precision = 18
    end
    object TCadastroEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object TCadastroACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object TCadastroMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 1
    end
    object TCadastroFUNSIM: TStringField
      FieldName = 'FUNSIM'
      Origin = 'FUNSIM'
      Size = 1
    end
    object TCadastroFUNPER: TBCDField
      FieldName = 'FUNPER'
      Origin = 'FUNPER'
      Precision = 18
    end
    object TCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 120
    end
    object TCadastroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 120
    end
    object TCadastroCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 30
    end
    object TCadastroCOMISPER: TBCDField
      FieldName = 'COMISPER'
      Origin = 'COMISPER'
      Precision = 18
    end
    object TCadastroADIANTCX: TBCDField
      FieldName = 'ADIANTCX'
      Origin = 'ADIANTCX'
      Precision = 18
    end
    object TCadastroFG_DESC_PRECO: TStringField
      FieldName = 'FG_DESC_PRECO'
      Origin = 'FG_DESC_PRECO'
      Size = 1
    end
    object TCadastroWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Origin = 'WEBLOCAL'
      Size = 50
    end
    object TCadastroNFDESCPARC: TStringField
      FieldName = 'NFDESCPARC'
      Origin = 'NFDESCPARC'
      Size = 1
    end
    object TCadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object TCadastroREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TCadastroREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
