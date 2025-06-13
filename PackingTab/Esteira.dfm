object FEsteira: TFEsteira
  Left = 229
  Top = 179
  Caption = 'Controle da Produ'#231#227'o - Impress'#227'o etiqueta fundo.'
  ClientHeight = 487
  ClientWidth = 1033
  Color = 14273198
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 487
    Align = alClient
    BevelInner = bvRaised
    BevelWidth = 3
    Caption = 'Aguarde Carregando Sistema...'
    Color = 15592935
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 6
      Top = 6
      Width = 1021
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'ESTEIRA'
      Color = 14930883
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 117
    end
    object PTela: TPanel
      Left = 6
      Top = 38
      Width = 1021
      Height = 433
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = 'Aguarde rotinas sendo inicializadas...'
      Color = 15395562
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 423
      object PImprimir: TPanel
        Left = 2
        Top = 2
        Width = 1017
        Height = 429
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 419
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 1015
          Height = 427
          Align = alClient
          Color = 14930883
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 417
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 1011
            Height = 350
            Cursor = crHandPoint
            Align = alClient
            DataSource = dsBotao
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -27
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnCellClick = DBGrid2CellClick
            Columns = <
              item
                Alignment = taCenter
                Color = 12713983
                Expanded = False
                FieldName = 'CAT01'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E1'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 12582847
                Expanded = False
                FieldName = 'CAT02'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777153
                Expanded = False
                FieldName = 'CAT03'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E3'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16761992
                Expanded = False
                FieldName = 'CAT04'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C1'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 14663679
                Expanded = False
                FieldName = 'CAT05'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C1'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 12500702
                Expanded = False
                FieldName = 'CAT06'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C12'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 9554175
                Expanded = False
                FieldName = 'CAT07'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C42'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777124
                Expanded = False
                FieldName = 'CAT08'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16753478
                Expanded = False
                FieldName = 'CAT09'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 13144575
                Expanded = False
                FieldName = 'CAT10'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 10461183
                Expanded = False
                FieldName = 'CAT11'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C3'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 6599167
                Expanded = False
                FieldName = 'CAT12'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C3'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 11599871
                Expanded = False
                FieldName = 'CAT13'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C31'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 12320699
                Expanded = False
                FieldName = 'CAT14'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C32'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777166
                Expanded = False
                FieldName = 'CAT15'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C40'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16768443
                Expanded = False
                FieldName = 'CAT16'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C41'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -21
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end>
          end
          object Panel13: TPanel
            Left = 2
            Top = 365
            Width = 1011
            Height = 60
            Align = alBottom
            TabOrder = 1
            ExplicitLeft = 3
            ExplicitTop = 364
            object lblEsteira: TLabel
              Left = 677
              Top = 1
              Width = 123
              Height = 58
              Align = alRight
              Alignment = taCenter
              Caption = 'ESTEIRA 01'
              Color = 9431241
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -21
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              Visible = False
              ExplicitLeft = 615
            end
            object Label1: TLabel
              Left = 241
              Top = 1
              Width = 88
              Height = 58
              Align = alLeft
              Caption = 'C'#243'digo: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              ExplicitLeft = 281
              ExplicitHeight = 23
            end
            object lblCodigo: TLabel
              Left = 329
              Top = 1
              Width = 154
              Height = 58
              Align = alLeft
              AutoSize = False
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -32
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              ExplicitHeight = 23
            end
            object Panel10: TPanel
              Left = 1
              Top = 1
              Width = 240
              Height = 58
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label2: TLabel
                Left = 0
                Top = 0
                Width = 125
                Height = 58
                Align = alLeft
                Caption = 'Quantidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                Layout = tlCenter
                ExplicitHeight = 23
              end
              object edQtde: TSpinEdit
                Left = 143
                Top = 5
                Width = 74
                Height = 52
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -37
                Font.Name = 'Times New Roman'
                Font.Style = []
                MaxLength = 3
                MaxValue = 200
                MinValue = 1
                ParentFont = False
                TabOrder = 0
                Value = 20
              end
              object edContador: TSpinEdit
                Left = 195
                Top = 5
                Width = 39
                Height = 26
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 3
                MaxValue = 10000
                MinValue = 1
                ParentFont = False
                TabOrder = 1
                Value = 1
                Visible = False
              end
            end
            object titVersao: TPanel
              Tag = 111
              Left = 890
              Top = 1
              Width = 120
              Height = 58
              Cursor = crHandPoint
              Align = alRight
              BevelOuter = bvLowered
              Caption = 'Vers'#227'o: 2020.10.04'
              Color = 9431241
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
            object btnPrint: TBitBtn
              Left = 483
              Top = 1
              Width = 90
              Height = 58
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu1
              TabOrder = 2
              OnClick = btnPrintClick
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
              Spacing = 0
              ExplicitLeft = 281
            end
            object btnFechar: TBitBtn
              Left = 800
              Top = 1
              Width = 90
              Height = 58
              Align = alRight
              Caption = 'FECHAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnClick = btnFecharClick
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
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8A774748E595989
                5F5FF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8
                F3DEC8F3DEC8DCCBCBD4A6A6A87575936161895757926C6CBFABABF3DEC8F3DE
                C8F3DEC8F3DEC8F3DEC8F6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8F3DEC8AAABAAB1B2B1AEAEAFA8AAAA988A8ADAAFAEAA78789C
                6B6BA16F6F966262865252805553A28585F3DEC8F3DEC8F3DEC8F2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCF3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8898A8A6263635E5E5E
                91898FA7A1A9988587DDB3B1A979799D6D6DA06F6FA06F6FA37272A06D6D8953
                547C4D4DA38686F3DEC8F3DEC8F0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC88D8E8E7F7C7F65736A44B1675EC47E7DA177E0AEB3AC7B7CA0
                6D6DA27070A27171A17070A17070A37373A674748451514B4040F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8919091837E82637369
                1AA73E0BAF36388E45E7B3BCAF7E7EA36F6FA57272A57272A47272A37171A170
                70A67474916363484141F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8CFE4
                CF78B276F3DEC89391948884886370661896320EA02F3D8842E9B7BEB07F7FA5
                7171A77474A77474A77474A67373A57373A774748F63634D4646F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCF3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8D4E8D203820E79B47BACA4AC898289657067
                128D2206921F398036EAB8C0B38081A87474AA7777A67373A67373A77474A774
                74AB7676916464504A4AF8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8E5EC
                DE229E3F149E346EAA6CA292A2606C610C801401840E35752DEBBBC3B58484AA
                7474AA7373A26D6DA57272A87575A87575AC7878916464504A4AF5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD05A
                A15D5DA5625CA3615CA8635BAB6346984A2BAE4C46DA7D22AB3D70A76F7A7F79
                006100006400296319ECBDC6B68384A87C7C9180808E7777A37171A77676AB77
                77AE7A7A946666524C4CF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD00B7C1829B6572AB5562CBA5A2ABF5A2FC1
                6041D1724CE88046D77A25AA3F62A66153AA7737AA6A5B936AE9B9BEB78686BB
                ADADC3CBCCABAEAEA17777AE7878AD7A7AAF7A7A996C6C585352F5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCE25
                8C3047DA773FD77243DC7645E07948E37B4BE47E4EE78151EB8548D67A23A839
                8BE5B3BEFFFFAED5D8E5B4B4B68787D6C9C9F0FBFBCDCACAAC7C7CAF7A7AAD7A
                7AB17C7D9A6D6D585352F7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0298B3151DC7E3FD97143DD7646E07A4AE3
                7D4EE78151E98454EB8659F38D4FD88117A12DA3F4CBCED4DCE4B7B7B88888BA
                9090C4AEAEB59596B17A7AB07D7DB07D7DB37E7E9A6D6C5B5453F6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCE26
                8E335CE2883CDA6F40DF7544E27948E67D4CE98154ED8757ED8960FA973EDE6B
                57B860E6F9ECDFD3D5E3B8B8BD8E8EB27B7BB37B7BB37C7CB37F7FB27F7FB17E
                7EB380809F7070605858F5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCE228C2E78F0A175EEA176F1A27AF4A683FB
                AF84F6AB64F1935EF99545EA754BB851F3FAF3FFFFFFE4D0D0E4B9B9BF9090B6
                8181B78383B78383B68282B48080B37F7FB58080A17472635C5BF5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCD17
                822232B04D39B6523AB8533CBB5538BA5268DE8972FAA346ED773BAC41A4A69F
                FFFEFEFFFFF9E4CECAE4B9B9C19393B78383B98686B88484B78484B78383B682
                82B68081A27774625E5BF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCEE0ECE0D9E3D5D8E5D4D7E5D3D7E4D3AAC7
                A248C6624FF38243B84A9DA29B90888DFFF8E9FFFCEEE7CDC6E6BCBDC39595B8
                8383B68181B68383B68383B78383B78383B98384A37673635F5CF2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D1F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8DAE9D722B53C3EB54AB2B6AE9F99A2898784
                FFF2DFFFF5E2E8C9BFE7BDBEC29494C89595D4A6A6C89696BE8A8AB98484B37D
                7DB88282A4787566625FEFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D4F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8CCE6
                CD28912ADCE5DBB2AAB29B9D9E8B8885FFEDD5FFEED5E8C5B7E6BEC0C29393D6
                A9A9FFF2F2FFE3E3F9D6D6EEC6C7E6B9B9CD9A9BA47675686362F1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCF8E7DAF5E7D5F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8A8A8A89D9FA18C8884
                FFE7CAFFEACCE8C4B2E8C2C4C49595D0A7A7FFF1F1FFE9E9FFE5E5FFE3E3FFE4
                E4DEAFAFA47576696464F4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6F3E3D2F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8AAA9AAA0A2A48F8984FFE0BEFFE3BFEAC1ACE9C3C6C79898CB
                A4A3FFF6F5FFF5F6FFF2F2FFE8E8FFE6E6D9A8A8A476766A6464F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D4F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8ACABACA3A3A8908982
                FFE4B8FFE6B8F1C3A9E9C3C7C99C9CC08D8DC79A9ACA9F9FD0A8A8D8B3B3E5BC
                BCCE9B9BA77A7A6B6565F8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D4F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8AEAFAFA9ABAD87827EBFA487C3AB8CCDA794F7D1D4D4ABAAC7
                9696C39090BE8989BB8484B98383B68080B98383AB7F7F6F6969F5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8B1B1B2ADADAD898A8A
                8485877E8283948787D7B0B0D6AFAFD2A8A9D2A7A8D0A2A2CF9E9ECE9C9CCC98
                98CD9494B385856F6A6AF9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8AEADAEBFBEBFADAEAEAAABACA7A8A9A3A5A59C99999C95969C
                95969D9595A09696A19595A49090A08D8DA68888927C7C696B6BF3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC89FA0A0AAABAB
                A8A9A9A8A9A9A7A8A9A0A3A39EA0A09C9E9E9699999195958C9090888D8D858A
                8A808686818686C2C3C3F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
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
              Layout = blGlyphTop
              Margin = 0
              Spacing = 0
              ExplicitLeft = 806
            end
            object btnLote: TBitBtn
              Left = 587
              Top = 1
              Width = 90
              Height = 58
              Align = alRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = btnLoteClick
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
              Spacing = 0
              ExplicitLeft = 281
            end
          end
        end
      end
    end
    object GBDados: TGroupBox
      Left = 6
      Top = 471
      Width = 1021
      Height = 10
      Align = alBottom
      Color = 14930883
      ParentColor = False
      TabOrder = 1
      Visible = False
    end
  end
  object THora: TTimer
    Enabled = False
    Interval = 500
    OnTimer = THoraTimer
    Left = 776
    Top = 304
  end
  object ppRelatorio: TppReport
    AutoStop = False
    DataPipeline = ppDados
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\MaxiWeb\RateioRural\Programa\RelModelo.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 656
    Top = 329
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppDados'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppDados: TppBDEPipeline
    DataSource = dsRelat
    UserName = 'Dados'
    Left = 624
    Top = 329
  end
  object dsRelat: TDataSource
    DataSet = DM.TEtiqueta
    Left = 592
    Top = 329
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 408
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
  object cdsCateg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 216
    object cdsCategITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsCategCAT01: TStringField
      FieldName = 'CAT01'
      Size = 10
    end
    object cdsCategCAT02: TStringField
      FieldName = 'CAT02'
      Size = 10
    end
    object cdsCategCAT03: TStringField
      FieldName = 'CAT03'
      Size = 10
    end
    object cdsCategCAT04: TStringField
      FieldName = 'CAT04'
      Size = 10
    end
    object cdsCategCAT05: TStringField
      FieldName = 'CAT05'
      Size = 10
    end
    object cdsCategCAT06: TStringField
      FieldName = 'CAT06'
      Size = 10
    end
    object cdsCategCAT07: TStringField
      FieldName = 'CAT07'
      Size = 10
    end
    object cdsCategCAT08: TStringField
      FieldName = 'CAT08'
      Size = 10
    end
    object cdsCategCAT09: TStringField
      FieldName = 'CAT09'
      Size = 10
    end
    object cdsCategCAT10: TStringField
      FieldName = 'CAT10'
      Size = 10
    end
    object cdsCategCAT11: TStringField
      FieldName = 'CAT11'
      Size = 10
    end
    object cdsCategCAT12: TStringField
      FieldName = 'CAT12'
      Size = 10
    end
    object cdsCategCAT13: TStringField
      FieldName = 'CAT13'
      Size = 10
    end
    object cdsCategCAT14: TStringField
      FieldName = 'CAT14'
      Size = 10
    end
    object cdsCategCAT15: TStringField
      FieldName = 'CAT15'
      Size = 10
    end
    object cdsCategCAT16: TStringField
      FieldName = 'CAT16'
      Size = 10
    end
    object cdsCategCAT17: TStringField
      FieldName = 'CAT17'
      Size = 10
    end
    object cdsCategCAT18: TStringField
      FieldName = 'CAT18'
      Size = 10
    end
    object cdsCategCAT19: TStringField
      FieldName = 'CAT19'
      Size = 10
    end
    object cdsCategCAT20: TStringField
      FieldName = 'CAT20'
      Size = 10
    end
    object cdsCategCAT21: TStringField
      FieldName = 'CAT21'
      Size = 10
    end
    object cdsCategCAT22: TStringField
      FieldName = 'CAT22'
      Size = 10
    end
    object cdsCategCOL01: TIntegerField
      FieldName = 'COL01'
    end
    object cdsCategCOL02: TIntegerField
      FieldName = 'COL02'
    end
    object cdsCategCOL03: TIntegerField
      FieldName = 'COL03'
    end
    object cdsCategCOL04: TIntegerField
      FieldName = 'COL04'
    end
    object cdsCategCOL05: TIntegerField
      FieldName = 'COL05'
    end
    object cdsCategCOL06: TIntegerField
      FieldName = 'COL06'
    end
    object cdsCategCOL07: TIntegerField
      FieldName = 'COL07'
    end
    object cdsCategCOL08: TIntegerField
      FieldName = 'COL08'
    end
    object cdsCategCOL09: TIntegerField
      FieldName = 'COL09'
    end
    object cdsCategCOL10: TIntegerField
      FieldName = 'COL10'
    end
    object cdsCategCOL11: TIntegerField
      FieldName = 'COL11'
    end
    object cdsCategCOL12: TIntegerField
      FieldName = 'COL12'
    end
    object cdsCategCOL13: TIntegerField
      FieldName = 'COL13'
    end
    object cdsCategCOL14: TIntegerField
      FieldName = 'COL14'
    end
    object cdsCategCOL15: TIntegerField
      FieldName = 'COL15'
    end
    object cdsCategCOL16: TIntegerField
      FieldName = 'COL16'
    end
    object cdsCategCOL17: TIntegerField
      FieldName = 'COL17'
    end
    object cdsCategCOL18: TIntegerField
      FieldName = 'COL18'
    end
    object cdsCategCOL19: TIntegerField
      FieldName = 'COL19'
    end
    object cdsCategCOL20: TIntegerField
      FieldName = 'COL20'
    end
    object cdsCategCOL21: TIntegerField
      FieldName = 'COL21'
    end
    object cdsCategCOL22: TIntegerField
      FieldName = 'COL22'
    end
  end
  object dsBotao: TDataSource
    DataSet = cdsCateg
    Left = 800
    Top = 216
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 594
    Top = 410
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDados'
    Left = 562
    Top = 410
    object cdsDadosCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 8
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object cdsDadosPESO: TStringField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Size = 10
    end
    object cdsDadosLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Size = 10
    end
    object cdsDadosLINHA1: TStringField
      DisplayLabel = 'Linha1'
      FieldName = 'LINHA1'
      Size = 30
    end
    object cdsDadosLINHA2: TStringField
      DisplayLabel = 'Linha2'
      FieldName = 'LINHA2'
      Size = 30
    end
    object cdsDadosLINHA3: TStringField
      DisplayLabel = 'Linha3'
      FieldName = 'LINHA3'
      Size = 30
    end
    object cdsDadosLINHA4: TStringField
      DisplayLabel = 'Linha4'
      FieldName = 'LINHA4'
      Size = 30
    end
    object cdsDadosLINHA5: TStringField
      DisplayLabel = 'Linha5'
      FieldName = 'LINHA5'
      Size = 30
    end
    object cdsDadosQTDE: TIntegerField
      FieldName = 'QTDE'
      Visible = False
    end
    object cdsDadosCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Visible = False
    end
    object cdsDadosVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Size = 120
    end
    object cdsDadosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object cdsDadosCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Size = 5
    end
    object cdsDadosBARRA: TStringField
      FieldName = 'BARRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
  end
  object dspDados: TDataSetProvider
    DataSet = sqlDados
    UpdateMode = upWhereKeyOnly
    Left = 530
    Top = 410
  end
  object sqlDados: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'Select * From etiqfundo')
    Left = 497
    Top = 411
    object sqlDadosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.ETIQUETA.CODIGO'
      Size = 8
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.ETIQUETA.DESCRICAO'
      Size = 120
    end
    object sqlDadosPESO: TStringField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.ETIQUETA.PESO'
      Size = 10
    end
    object sqlDadosLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ETIQUETA.LOTE'
      Size = 10
    end
    object sqlDadosLINHA1: TStringField
      FieldName = 'LINHA1'
      Origin = 'JAEADMIN.ETIQUETA.LINHA1'
      Size = 30
    end
    object sqlDadosLINHA2: TStringField
      FieldName = 'LINHA2'
      Origin = 'JAEADMIN.ETIQUETA.LINHA2'
      Size = 30
    end
    object sqlDadosLINHA3: TStringField
      FieldName = 'LINHA3'
      Origin = 'JAEADMIN.ETIQUETA.LINHA3'
      Size = 30
    end
    object sqlDadosLINHA4: TStringField
      FieldName = 'LINHA4'
      Origin = 'JAEADMIN.ETIQUETA.LINHA4'
      Size = 30
    end
    object sqlDadosLINHA5: TStringField
      FieldName = 'LINHA5'
      Origin = 'JAEADMIN.ETIQUETA.LINHA5'
      Size = 30
    end
    object sqlDadosQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.ETIQUETA.QTDE'
    end
    object sqlDadosCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Origin = 'JAEADMIN.ETIQUETA.CONTADOR'
    end
    object sqlDadosVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Origin = 'JAEADMIN.ETIQUETA.VARIEDADE'
      Size = 120
    end
    object sqlDadosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'JAEADMIN.ETIQUETA.CATEGORIA'
      Size = 30
    end
    object sqlDadosCALIBRE: TStringField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.ETIQUETA.CALIBRE'
      Size = 5
    end
    object sqlDadosBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'JAEADMIN.ETIQUETA.BARRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
  end
end
