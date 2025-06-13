object FPalet: TFPalet
  Left = 320
  Top = 191
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o Palet'
  ClientHeight = 580
  ClientWidth = 1173
  Color = 14930883
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PDados: TPanel
    Left = 0
    Top = 0
    Width = 1173
    Height = 580
    Align = alClient
    BevelOuter = bvNone
    Color = 15395562
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1173
      Height = 580
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1173
        Height = 580
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1171
          Height = 30
          Align = alTop
          Caption = 'Paletiza'#231#227'o'
          Color = 10611152
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object dbgProduto: TDBGrid
          Left = 1
          Top = 71
          Width = 1171
          Height = 390
          Hint = 'Duplo clique - Marca/Desmarca...'
          Align = alTop
          DataSource = dsProduto
          FixedColor = 13878195
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = dbgProdutoDrawColumnCell
          OnDblClick = dbgProdutoDblClick
          OnExit = dbgProdutoExit
          Columns = <
            item
              Alignment = taLeftJustify
              Color = 15658734
              Expanded = False
              FieldName = 'CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 1776411
              Font.Height = -21
              Font.Name = 'Times New Roman'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Produto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -21
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 102
              Visible = True
            end
            item
              Color = 15658734
              Expanded = False
              FieldName = 'DESCRICAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 1776411
              Font.Height = -21
              Font.Name = 'Times New Roman'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -21
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 660
              Visible = True
            end
            item
              Color = 15658734
              Expanded = False
              FieldName = 'VQTDE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -21
              Font.Name = 'Times New Roman'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Qtde.cx.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -21
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 110
              Visible = True
            end
            item
              Color = 15658734
              Expanded = False
              FieldName = 'zPalets'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Palets'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -21
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 15658734
              Expanded = False
              FieldName = 'zSel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Sel'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -21
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zQtde'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde.bx'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -21
              Title.Font.Name = 'Verdana'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 1
          Top = 486
          Width = 1171
          Height = 83
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 14273198
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          object sb8: TSpeedButton
            Tag = 100
            Left = 1005
            Top = 0
            Width = 166
            Height = 83
            Hint = 'Imprimir todas as etiquetas da fila...'
            Align = alRight
            Caption = 'Baixar/Imprimir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
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
            Layout = blGlyphTop
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ShowHint = True
            Spacing = 0
            OnClick = sb8Click
            ExplicitLeft = 1011
            ExplicitTop = -6
          end
          object SBP5: TSpeedButton
            Tag = 4
            Left = 0
            Top = 0
            Width = 89
            Height = 83
            Align = alLeft
            Caption = ' Palet Avulso'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              0E060000424D0E06000000000000360000002800000016000000160000000100
              180000000000D805000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9CCB7ACA0786585503571341565230271
              3415855035A07865D3BFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFDED1CB99705B713415713F25764A357A5644
              7D5E4E7453426B4A3B62382368351A99705BEBDDD6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFD3BFB5835139713F257E5947876A5B8667
              588163547B5F517B5F51775C4E775C4E6B4A3B5E341E835139E0CDC3FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFDED1CB89563D844B2E8D6D5D8C75689D
              7D6D9C8376947A6D8C75688C75688C7568846D627A6256715649623823835139
              EBDDD6FFFFFFFFFFFFFFFFFF0000FFFFFFF9F9F99F7661844B2E9D7D6DA28374
              B09384BAA499BCA99FB4A299AE9B92AD9D95AD9D95A4938B907C727A62567156
              495E341EA77861FFFFFFFFFFFFFFFFFF0000FFFFFFCCB7AC844B2E9F76619F76
              61B09384B09384BAA499BAA499B4A299B4A299AD9D95AD9D95AD9D95AB9C948F
              7B717A62566B4A3B68351ADEC6BBFFFFFFFFFFFF0000FFFFFFAF836D9B6144B9
              9888B99888000000000000000000E9D5CCE9D5CCE9D5CCE9D5CCD7CBC5000000
              00000000000000000073594C5E341EAF836DFFFFFFFFFFFF0000FFFFFF9B6144
              A77861C2A08ED3B4A3D3B4A3000000E9D5CCE9D5CCE9D5CCE9D5CCE9D5CC0000
              00D7CBC5D7CBC500000089716673594C654131885136FFFFFFFFFFFF0000FFFF
              FF934B27B88D78C9A694D3B4A3E2C7BA000000EDDBD1EDDBD1EDDBD1EDDBD1ED
              DBD1D7CBC500000000000000000086706573594C6B4A3B713415FFFFFFFFFFFF
              0000FFFFFF924119C49B86C9A694D9B4A2E2C7BA000000000000000000000000
              EDDBD1EDDBD1EDDBD1D7CBC5C6BAB3000000846D6273594B715649652302FFFF
              FFFFFFFF0000FFFFFFA35732C49B86D3AA95DBBAA7E4CCC0000000EDDBD1EDDB
              D1EDDBD1000000EDDBD1EDDBD1000000000000AD9D95897166755B4E74534271
              3415FFFFFFFFFFFF0000FFFFFFBD7F60C78E72D5B19FDFBFAEE7CFC3000000ED
              DBD1EDDBD1ECDAD0000000ECDAD0ECDAD0CABDB6CABDB6B4A2998C75687B5F51
              764A35985737FFFFFFFFFFFF0000FFFFFFD2A791C2886AD9B4A2DFBFAEE7CFC3
              000000EDDBD1ECDAD0ECDAD0000000ECDAD0ECDAD0CABDB6CABDB6A9978F8C75
              68816354713F25B88D78FFFFFFFFFFFF0000FFFFFFE9D5CCBD7F60D3AA95DFBF
              AE000000000000000000000000000000E0CDC3ECDAD0ECDAD0CABDB6B4A2999C
              8376876A5B7A5644804120E4CCC0FFFFFFFFFFFF0000FFFFFFFFFFFFD3AA95C7
              8E72DDBBA9DFBFAEE3C6B7E4CCC0E4CCC0DEC6BBD5BCAFCCB7ACC3AEA4B5A196
              9C8376897166816354794328AF836DFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              F1E3DCC9957BC9957BDBBAA7DDBBA9DFBFAEDAB9A9D5B19FC9A694B99888AC8F
              819C83769374648667587943289B6144F1E3DCFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFECDAD0C9957BC78E72D2A791D9B4A2D4AF9CC9A694B99888B8
              8D789D7D6D937464865F4B7943289B6144E7D2C8FFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFF1E3DCD2A791BD7F60C2886AC9957BC49B86
              C49B86AF836D976952855035844525AF836DF1E3DCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D5CCD2A791BD7F
              60A867469D512B985737A86746B88D78E0CDC3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            Layout = blGlyphTop
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            OnClick = SBP5Click
            ExplicitTop = -6
          end
          object GroupBox2: TGroupBox
            Left = 815
            Top = 0
            Width = 170
            Height = 83
            Align = alRight
            Caption = ' Total de caixas '
            Enabled = False
            TabOrder = 1
            object edzTotal: TDBEdit
              Left = 48
              Top = 20
              Width = 120
              Height = 61
              Align = alRight
              AutoSelect = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 14273198
              DataField = 'zTotal'
              DataSource = dsProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -43
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 383
            Top = 0
            Width = 144
            Height = 83
            Align = alRight
            Caption = ' Palet N'#186' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object lblPalet: TLabel
              Left = 2
              Top = 25
              Width = 140
              Height = 56
              Align = alClient
              Alignment = taRightJustify
              Caption = '0000'
              Color = 14273198
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -35
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              ExplicitLeft = 54
              ExplicitWidth = 88
              ExplicitHeight = 42
            end
          end
          object GroupBox1: TGroupBox
            Left = 547
            Top = 0
            Width = 248
            Height = 83
            Align = alRight
            Caption = ' Qtde. caixas '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Label1: TLabel
              Left = 2
              Top = 25
              Width = 117
              Height = 56
              Align = alLeft
              Alignment = taRightJustify
              Caption = 'por palet:'
              Color = 14273198
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -24
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              ExplicitHeight = 29
            end
            object edPaletQtde: TSpinEdit
              Left = 132
              Top = 25
              Width = 113
              Height = 52
              Hint = 'quantidade tem que ser maior 1...'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -35
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 4
              MaxValue = 9999
              MinValue = 1
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              Value = 49
              OnChange = edPaletQtdeChange
            end
          end
          object Panel5: TPanel
            Left = 985
            Top = 0
            Width = 20
            Height = 83
            Align = alRight
            BevelOuter = bvNone
            Color = 14273198
            ParentBackground = False
            TabOrder = 3
          end
          object Panel6: TPanel
            Left = 795
            Top = 0
            Width = 20
            Height = 83
            Align = alRight
            BevelOuter = bvNone
            Color = 14273198
            ParentBackground = False
            TabOrder = 4
          end
          object Panel7: TPanel
            Left = 527
            Top = 0
            Width = 20
            Height = 83
            Align = alRight
            BevelOuter = bvNone
            Color = 14273198
            ParentBackground = False
            TabOrder = 5
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 569
          Width = 1171
          Height = 10
          Align = alBottom
          BevelOuter = bvNone
          Color = 14273198
          ParentBackground = False
          TabOrder = 3
        end
        object pnlPesquisa: TPanel
          Left = 1
          Top = 31
          Width = 1171
          Height = 40
          Align = alTop
          Alignment = taLeftJustify
          Caption = 'C'#243'digo:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          object Label3: TLabel
            Left = 904
            Top = 24
            Width = 206
            Height = 13
            Caption = 'Duplo clique - Marca/Desmarca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edCodigo: TEdit
            Left = 84
            Top = 7
            Width = 121
            Height = 26
            Hint = 'Codigo'
            AutoSelect = False
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = edCodigoChange
            OnExit = edCodigoExit
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 872
    Top = 210
    object Configurar1: TMenuItem
      Tag = 100
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 1066
    Top = 138
  end
  object dsBxEsteira: TDataSource
    DataSet = cdsBxEsteira
    Left = 1082
    Top = 258
  end
  object cdsProduto: TFDQuery
    OnCalcFields = cdsProdutoCalcFields
    CachedUpdates = True
    AggregatesActive = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      
        'Select codigo, descricao, sum(qtde - (coalesce(palet,0))) as vqt' +
        'de'
      '  From ESTEIRAC010'
      'Where (qtde > (coalesce(palet,0)))'
      ' Group by codigo, descricao'
      ' order by codigo')
    Left = 1016
    Top = 138
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutoVQTDE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VQTDE'
      Origin = 'VQTDE'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cdsProdutomostra: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'mostra'
      Size = 1
    end
    object cdsProdutozPalets: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'zPalets'
    end
    object cdsProdutozSel: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'zSel'
      Size = 1
    end
    object cdsProdutozQtde: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'zQtde'
    end
    object cdsProdutozTotal: TAggregateField
      Alignment = taRightJustify
      FieldName = 'zTotal'
      Active = True
      DisplayName = ''
      DisplayFormat = '0'
      Expression = 'Sum(zQtde)'
    end
  end
  object cdsBxEsteira: TFDQuery
    OnCalcFields = cdsProdutoCalcFields
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT LOTELANC, LANC, LOTE, QTDE, PALET, TEXTO6'
      '  FROM ESTEIRAC011'
      'WHERE CODIGO = 1110150'
      '  AND (qtde > (coalesce(palet,0)))'
      'ORDER BY LOTELANC, LANC')
    Left = 1024
    Top = 258
    object cdsBxEsteiraLOTELANC: TIntegerField
      FieldName = 'LOTELANC'
      Origin = 'LOTELANC'
    end
    object cdsBxEsteiraLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsBxEsteiraLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object cdsBxEsteiraQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object cdsBxEsteiraPALET: TIntegerField
      FieldName = 'PALET'
      Origin = 'PALET'
    end
    object cdsBxEsteiraTEXTO6: TStringField
      FieldName = 'TEXTO6'
      Origin = 'TEXTO6'
      Size = 50
    end
  end
  object cdsPalet: TFDQuery
    OnCalcFields = cdsProdutoCalcFields
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PALETIMP')
    Left = 936
    Top = 138
    object cdsPaletLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsPaletESTEIRA: TIntegerField
      FieldName = 'ESTEIRA'
      Origin = 'ESTEIRA'
    end
    object cdsPaletLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object cdsPaletVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'VARIECOD'
    end
    object cdsPaletCATEGCOD: TIntegerField
      FieldName = 'CATEGCOD'
      Origin = 'CATEGCOD'
    end
    object cdsPaletCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsPaletQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object cdsPaletBARRA: TStringField
      FieldName = 'BARRA'
      Origin = 'BARRA'
      Size = 13
    end
    object cdsPaletNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object cdsPaletVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'VARIEDES'
      Size = 30
    end
    object cdsPaletCATEGDES: TStringField
      FieldName = 'CATEGDES'
      Origin = 'CATEGDES'
      Size = 30
    end
    object cdsPaletDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object cdsPaletUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 5
    end
    object cdsPaletCALIBREDES: TStringField
      FieldName = 'CALIBREDES'
      Origin = 'CALIBREDES'
      Size = 15
    end
    object cdsPaletWEBQRCODEL1: TStringField
      FieldName = 'WEBQRCODEL1'
      Origin = 'WEBQRCODEL1'
      Size = 120
    end
    object cdsPaletWEBQRCODEL2: TStringField
      FieldName = 'WEBQRCODEL2'
      Origin = 'WEBQRCODEL2'
      Size = 120
    end
    object cdsPaletWEBQRCODEL3: TStringField
      FieldName = 'WEBQRCODEL3'
      Origin = 'WEBQRCODEL3'
      Size = 120
    end
    object cdsPaletWEBQRCODEL4: TStringField
      FieldName = 'WEBQRCODEL4'
      Origin = 'WEBQRCODEL4'
      Size = 120
    end
  end
end
