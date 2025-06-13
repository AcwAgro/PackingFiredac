inherited FfrmNotaFiscal: TFfrmNotaFiscal
  Align = alTop
  Caption = 'Nota Fiscal'
  ClientHeight = 637
  ClientWidth = 1329
  ExplicitWidth = 1335
  ExplicitHeight = 666
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 621
    Width = 1329
    ExplicitTop = 621
    ExplicitWidth = 1329
    inherited PStatusHistorico: TPanel
      Width = 1148
      ExplicitWidth = 1148
    end
    inherited PStatusResgistro: TPanel
      OnDblClick = PStatusResgistroDblClick
    end
    inherited pnlTela: TPanel
      Left = 1271
      OnDblClick = pnlTelaDblClick
      ExplicitLeft = 1271
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1261
      ExplicitLeft = 1261
    end
  end
  inherited pMenu: TRzPanel
    Height = 621
    ExplicitHeight = 621
    inherited rzpMenu: TRzPanel
      Height = 517
      ExplicitHeight = 517
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 2
        ExplicitTop = 10
        ExplicitWidth = 129
      end
      inherited sbProximo: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 170
        ExplicitWidth = 126
      end
      object sbNotaFiscal: TSpeedButton [5]
        Tag = 18
        Left = 0
        Top = 216
        Width = 129
        Height = 40
        Hint = 'Nota Fiscal...'
        Align = alTop
        Caption = 'Gerenciador'
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
          D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFF5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECF
          DAD3C8BEB9AAD4CBC0F8E3D6F6DECEF5DECFF5DECFF5DECFF5DECFF5DECFF5DE
          CFF5DECFF5DECFF5DECFF5DECFF5DECFE2C5B0C3A998D3BDB100C8B9A9C5B2A3
          E9D2C3F5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DE
          CFF5DECFF5DECFF5DECFF5DECFF8E0D2BEB9ABC5BEB0C1BBADD5CDC2F8E4D8F6
          DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECF
          ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2F5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF7DFD0
          C5C0B3C3BCADC5BEB0C0BAABD8D0C5F8E0D2F5DECFF5DECFF5DECFF5DECFF5DE
          CFF5DECFF5DECFF5DECFF5DECFF5DECFECD1BCD1B09DCFB2A400CFBEABD4BDAD
          E9CFC1F5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DE
          CFF5DECFF5DECFF7DED0F9DFD2F8DFD0EFDED1C8C1B4C4BDAFC3BCAECCC3B6F6
          DFD1F5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECF
          E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3F5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFF5DECFF5DECFF6DECFFFE4DAF9E1D1ECD9BEE6DAC7
          FAEAE8E6D9D2C1BAACC3BCAECEC5B9F9E2D4F6DECEF5DECFF5DECFF5DECFF5DE
          CFF5DECFF5DECFF5DECFF5DECFF5DECFEBD1C0D3B1A1CEB1A300CFBDACD3B9AB
          EBD0C2F5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF6DE
          CFFEE3D9ADC29459A262319D6D5EA76A3AAD919DBCAAD3C1B6C9BFB3C4BEB0DB
          D1C6F6E2D5FAE1D2F6DECFF6DECEF5DECFF5DECFF5DECFF5DECFF5DECFF5DECF
          F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFFBE0D3D8D6BD6EA5577FDCFB7CD7F8FFE3CCF2DDD0
          D4C6BFCBBFB58DAA7F4F944897AE89D2C3BBC3BCAEBFBAACCCC6BAC8C3B7E1D6
          CBF5DECEF5DECFF5DECFF5DECFF5DECFF0D0BDD7B0A2CEB0A500CFBCADD3B9AB
          EDD0C1F5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFFFE4DB99BC
          8B9EBF9054D5FFDADEDBFEE1D0D4CDC1C6BFB1C7C0B3D1C3BBB8B9A553964C85
          A878D2C2BBC6BEB0C3BCAEC3BBADC4BFB2F8E0D1F5DECFF5DECFF5DECFF5DECF
          F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFFFE5DB83B176A5C8AF50D0FEF8E0D1FAE1D3D3CBBF
          B8B09FBCB4A4C4BDAFCFC4BAC7BFB258975189A97BD2C2BBC5BEB0C5BEB0C2BB
          ADF4E1D5F6DECEF5DECFF5DECFF5DECFF1D0BDD9AFA2D2AFA500CFBCADD3BAAA
          EBD1C0F5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFFFE3D97EAD
          6DA3C9B84FCCFCFDDFCDFAE3D5D8D0C5B8AD9AABA18D9D937CACA390CBC1B6C7
          C0B253964B9AAF8AD0C2BAC4BEAFC5BEB0E0D2C5F9E1D1F5DECFF5DECFF5DECF
          F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0F5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFFFE5DB82B074A4C9B150D0FEFBE1D2F6DFD1F4E2D6
          FCE5D7F8E4D7DFCFC1A89D879C917AC9BDB2B9BBA64C9346B6B9A3CBC0B5C5BE
          B0D0C8BCF7E1D3F5DECFF5DECFF5DECFEED0BDD7B0A1D3B0A300CFBCADD4BAAA
          EDD2BEF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFFFE4DB95BA
          87A2C2974ED3FFD0DDDEF8E0D1F6DDCDF6E1D3F8E1D2FDE4D5F8E4D7B7AB9899
          8F77CFC0B897AE885D9955CDC1B7C6BEB1C7C1B5F1DED2F6DECFF5DECFF5DECF
          EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEF5DECFF5DECFF5DECFF5DECFF5
          DECFF5DECFF5DECFF5DECFFEE1D5C2CEAC85B37588D5F3B9CCCBFDE2D3F8E1D2
          C7C0B3D2CBBFF0DFD2FCE2D3FDE7DAB4A895ACA28FD4C5BE679D5E8CAA7ED0C2
          BAC7C1B5F1DED1F6DECFF5DECFF5DECFEDD4BAD5B19FD0B0A300D3BBAFD4BBAB
          E9D1BDF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DECFF5DDCEFBE4D7DED8
          CC569750BFB9A5DDCFC4FAE2D3F5E0D3BEB6A7C5BFB2CDC7BBEBDED3F0E0D4E8
          DED5C5C0B2CCC3B8B8BAA551954AC0BCACC6C0B3F1DFD2F8DFCFF5DECFF5DECF
          EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF5DECFF5DECFF5DECFF5DECFF5
          DDCEF9E2D3F7DFD0F8DFCFE6D8CBCDC1BA71A06685A577DECFCAF8E2D4FAE3D6
          9E9580ACA491A9A18DA7A18EA8A18FA9A28FAAA28EB2A996D3C4BC7AA46E79A3
          6EC2BCAED0C9BDF5E1D4F7DFCFF5DECFEED3B9D5B29ECCAFA000D2BAAED4BBAB
          E9D1BDF5DECFF5DECFF5DECEF7E0D1F9E4D7D2C9BCE9DBCFFCE6D7DDD0C2C5BC
          B1AEB69C55954DCDC5BBF5E2D6F8E0D1D3C2B0D5C3B1D5C3B2D5C3B2D5C3B2D5
          C3B2D4C2B19F927BBDB4A5C0BEAD54964DC8BFB2C1BBADCFC7BBF5E0D3F8DFCF
          EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF5DECFF5DECEF9E1D3E6DBD0CD
          C7BBC0B9ABC5C0B3CFC8BCC9C2B5C4BDAFD1C2BA699D5F8BA97FF3DCD5F7DFD0
          FCE4D5FFE7D8FEE5D6FDE4D5FEE4D5FCE3D4FFEADCC1B29FA79E89D5C6C076A2
          6BD0C2BAC5BEB0C1BBACD1C9BDF2E1D5EED0BDD5B19FCCAFA000D1B8AED3BAAA
          EAD2C0F5DECFF8E0D0EFE2D8C4C0B3C2BBACC9C2B5C7C0B2C2BBADC6BFB2C8C2
          B4CAC0B5B1B79F50934AD4CABDFBE2D5EFDCCEDBCAB9E9D9CCECDCD0E9D9CDF2
          DED0FBE2D3E0CFC1A09781CBC1B6AFB69DC9C0B4C5BEB1C5BEB0C3BDAFDCD9D2
          ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2F7DDCDF3DDCEC7BEAFBAB2A2C5
          BEB0B0A694B9B09FC4BDAFB5AC9AB4AB99C4BDAFD2C3BB78A36D76A26CF9E1DC
          F3DFD2ACA28D988F79BAB3A4C1BDB0DDD2C7FAE1D2F0DED0A79D88C2BBACCEC2
          B8A5B394CBC0B5C5BEB0C5BFB1E1DDD5EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
          EFD8C8F7EFEAF2EBE4A0957EA1957FD6D1C8A59984A19680E7E4DFBEB6A79486
          6DC0B8A9C8C0B4C7BFB251934AAFBDA1F8E0D0F5E0D3C1B6A5A0957E9E947EC5
          BCACFBE4D5F5E0D2AEA490C0B9AAD0C3BA77A36DD5C2B7C8BBA9D1CABFF7E6DB
          F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6F1EDF8F8F8BAB2A1968A71E5
          E2DCC3BCAD988B72F1EFECE0DCD594876DB9B1A0CAC3B6CFC4BAABB69A4D9146
          FCE5DBF9DFD0FCE6D8F0DCCDE1CEBDEED9CAF7DFD0F4DFD1B4AB9AC4BCAEC8BE
          B3629953AEBFBFBBD5DAF7DFCFF7DFD0F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
          FAE6D5F7E2D5F7F3F0D7D2C9B5AC9BF7F6F4E4E1DA93876CC9C2B5F9F7F6C6BF
          B1BAB2A1BEB6A7A296809D9179D1C3BB6D9D62D0C4BDD6C9BCE3D0C0F5E2D5F4
          E1D4D7CEC2C6C1B4D6CCC0E7DACFF2DFD278AB66A4E1E75ECEF7FFE0CCF5DECF
          FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0F6DDCDF5EEE9E5E2DDDBD6CEE9
          E6E1F4F3F19F937CB6AD9BF7F5F4F8F6F5FCFBFAFFFFFFD3CEC4AFA693C6BEB1
          689D5E7AA167A9BFC7AFD5DFFFE2CEF5DECFE5D8CCEEDCCFF7E0D2F8DFD0F6DE
          CF77A762A4DEDF57CDF8FFDFCCF5DECFF8E4D3D8BBACCBB1A500CDB6AED6C0B4
          F8E4D3F6DCCBF4E9E2F1F1EFF8F7F5CEC8BDFDFCFCB0A794A39882F6F5F4D5D0
          C6A59B85C5BEB0C9C2B5C5BEB0C4BDAFCCC1B66A9C5E679C607BC8E3B9E0F0FF
          E1CBFADFCEF6DFCFF5DECFF5DECFF6DECF75A9619FE1EB61CFF7FFE0CCF5DECF
          F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFF5DBCBF5E5DAF1F1EFF7F6F4AD
          A491FDFCFDC3BBAD8F8267EAE7E2E1DDD6A39983ABA28DAFA5929A8E76ABA18D
          C3BBAED4C8C182A8735D934849B7CA86DEFFFDE5D9FFE0CBF8DECEF5DECFFEE1
          D680AD627CE1FF8AD7F0FFE0CBF5DECFF0DECDD3B8AAC5ACA200C9B4ACD4BEB2
          FAE5D6F5DDCCF5E2D4F2F2F0F1F1EFC2B9AAF8F8F7DFDDD6B8AD9AE7E4DEF4F5
          F4F3F3F1F4F3F1F6F5F3C0B8AACABFAFDAD3C9F5E0D3F5E0DBA3B59367A35B0B
          A19034C3E0ADDCECF2E4E2FFE6DEFBE3D473C3B03DD4FFE7E2DAF9DECCF5DECF
          F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8F5DECEF5DFD0F4E5DBF4E6DDFB
          E6D9F3E5DAF6E9DFFDE7D9F6E4D9F4E6DDF0E5DDE1DBD3DDDAD2F8EAE1FBE4D5
          F9E2D4F6DECEF5E0D2F9E3DBF8E3D5B5C18F5CA3672FA1794AAC8C7BB2815AA3
          6349CFFDCADCDFFFE0CCF4DECFF5DECFFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
          E3CDC1F2DDD0F5DECFF5DCCBF5DBCBF5DDCEF5DCCBF5DCCBF5DDCEF5DCCCF6DB
          CBF6DDCCEEDBCDE6DACFF6DFCFF5DDCEF5DECEF5DECFF5DECEF7DECEF8DED0FF
          E8E3FFE3D5D2CEA4A2BB8296BA888ECDCBF7E1D6FFDFC8F4DECFF5DECFF5DECF
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
        Spacing = 5
        OnClick = sbNotaFiscalClick
        OnMouseMove = sbIncluirMouseMove
        ExplicitLeft = 8
        ExplicitTop = 235
        ExplicitWidth = 126
      end
      inherited rzpUtil: TRzPanel
        Top = 256
        ExplicitTop = 256
        inherited sbImprimir: TSpeedButton
          OnClick = sbImprimirClick
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 397
        ExplicitTop = 397
      end
      inherited PPeriodo: TPanel
        Top = 437
        Visible = True
        ExplicitTop = 437
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
      object btnDescNota: TButton
        Left = 0
        Top = 296
        Width = 129
        Height = 25
        Align = alTop
        Caption = 'Ajusta desc. nota'
        TabOrder = 4
        OnClick = btnDescNotaClick
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1192
    Height = 621
    ExplicitWidth = 1192
    ExplicitHeight = 621
    inherited pcItem: TRzPageControl
      Width = 1184
      Height = 613
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 1184
      ExplicitHeight = 613
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1182
        ExplicitHeight = 592
        inherited pPesquisa: TRzPanel
          Top = 526
          Width = 1182
          ExplicitTop = 526
          ExplicitWidth = 1182
          inherited Label1: TLabel
            Width = 1174
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 1061
            ExplicitLeft = 917
          end
          inherited rbPesquisa: TRzPanel
            Width = 1174
            ExplicitWidth = 1174
          end
          inherited edPesquisa: TMaskEdit
            Width = 1057
            ExplicitWidth = 1057
          end
        end
        inherited Panel2: TPanel
          Width = 1182
          ExplicitWidth = 1182
          inherited Label3: TLabel
            Width = 1044
            ExplicitLeft = 764
          end
        end
        inherited dbDados: TcxGrid
          Width = 1182
          Height = 506
          ExplicitWidth = 1182
          ExplicitHeight = 506
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRNOTA
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRPRODUTO
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRNOTA
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRFUNRURAL
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1NFE_STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_STATUS'
              Width = 35
            end
            object dbDadosDBTableView1DIFCOD: TcxGridDBColumn
              DataBinding.FieldName = 'DIFCOD'
            end
            object dbDadosDBTableView1DIFDES: TcxGridDBColumn
              DataBinding.FieldName = 'DIFDES'
              Width = 132
            end
            object dbDadosDBTableView1NOTA: TcxGridDBColumn
              DataBinding.FieldName = 'NOTA'
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1SERIE: TcxGridDBColumn
              DataBinding.FieldName = 'SERIE'
              Width = 42
            end
            object dbDadosDBTableView1NFE_MODELO: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_MODELO'
              Width = 33
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 200
            end
            object dbDadosDBTableView1VLRPRODUTO: TcxGridDBColumn
              DataBinding.FieldName = 'VLRPRODUTO'
              Width = 100
            end
            object dbDadosDBTableView1VLRNOTA: TcxGridDBColumn
              DataBinding.FieldName = 'VLRNOTA'
              Width = 100
            end
            object dbDadosDBTableView1QTDESP: TcxGridDBColumn
              DataBinding.FieldName = 'QTDESP'
            end
            object dbDadosDBTableView1PRODNOTA: TcxGridDBColumn
              DataBinding.FieldName = 'PRODNOTA'
              Width = 85
            end
            object dbDadosDBTableView1PRD_FUNRURAL: TcxGridDBColumn
              Caption = 'Fun.Rural%'
              DataBinding.FieldName = 'PRD_FUNRURAL'
            end
            object dbDadosDBTableView1VLRFUNRURAL: TcxGridDBColumn
              Caption = 'Fun.Rural'
              DataBinding.FieldName = 'VLRFUNRURAL'
              Width = 100
            end
            object dbDadosDBTableView1VLRDESC: TcxGridDBColumn
              Caption = 'Vlr.Desconto'
              DataBinding.FieldName = 'VLRDESC'
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1VLRFRETE: TcxGridDBColumn
              Caption = 'Vlr.Frete'
              DataBinding.FieldName = 'VLRFRETE'
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1VLRICMS: TcxGridDBColumn
              Caption = 'Vlr.ICMS'
              DataBinding.FieldName = 'VLRICMS'
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1VLRIPI: TcxGridDBColumn
              Caption = 'Vlr.IPI'
              DataBinding.FieldName = 'VLRIPI'
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1PESOBRU: TcxGridDBColumn
              Caption = 'Peso Bruto'
              DataBinding.FieldName = 'PESOBRU'
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1PESOLIQ: TcxGridDBColumn
              Caption = 'Peso L'#237'q.'
              DataBinding.FieldName = 'PESOLIQ'
              VisibleForEditForm = bFalse
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DIF: TcxGridDBColumn
              DataBinding.FieldName = 'DIF'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VENDECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VENDECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ENTREGA: TcxGridDBColumn
              DataBinding.FieldName = 'ENTREGA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NATURCOD: TcxGridDBColumn
              DataBinding.FieldName = 'NATURCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1DADOSCOD: TcxGridDBColumn
              DataBinding.FieldName = 'DADOSCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRTIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TRTIPO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRCOD: TcxGridDBColumn
              DataBinding.FieldName = 'TRCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRDES: TcxGridDBColumn
              DataBinding.FieldName = 'TRDES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRBASE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRBASE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PSP: TcxGridDBColumn
              DataBinding.FieldName = 'PSP'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FRETECOD: TcxGridDBColumn
              DataBinding.FieldName = 'FRETECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FRETEDES: TcxGridDBColumn
              DataBinding.FieldName = 'FRETEDES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRPLACA: TcxGridDBColumn
              DataBinding.FieldName = 'TRPLACA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRCIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'TRCIDADE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'TRESTADO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRSEGURO: TcxGridDBColumn
              DataBinding.FieldName = 'VLRSEGURO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRICMSFRE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRICMSFRE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS1: TcxGridDBColumn
              DataBinding.FieldName = 'OBS1'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FORPAG: TcxGridDBColumn
              DataBinding.FieldName = 'FORPAG'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SEGTIP: TcxGridDBColumn
              DataBinding.FieldName = 'SEGTIP'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS2: TcxGridDBColumn
              DataBinding.FieldName = 'OBS2'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS3: TcxGridDBColumn
              DataBinding.FieldName = 'OBS3'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS4: TcxGridDBColumn
              DataBinding.FieldName = 'OBS4'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS5: TcxGridDBColumn
              DataBinding.FieldName = 'OBS5'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS6: TcxGridDBColumn
              DataBinding.FieldName = 'OBS6'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1RECEITA: TcxGridDBColumn
              DataBinding.FieldName = 'RECEITA'
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
            object dbDadosDBTableView1FORMA: TcxGridDBColumn
              DataBinding.FieldName = 'FORMA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRODCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ESTOQUE: TcxGridDBColumn
              DataBinding.FieldName = 'ESTOQUE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NSUNUM: TcxGridDBColumn
              DataBinding.FieldName = 'NSUNUM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NSUDAT: TcxGridDBColumn
              DataBinding.FieldName = 'NSUDAT'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NSUHOR: TcxGridDBColumn
              DataBinding.FieldName = 'NSUHOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NFE_CHAVE: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_CHAVE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NFE_RECIBO: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_RECIBO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NFE_PROTOC: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_PROTOC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NFE_CANCEL: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_CANCEL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NFE_XML: TcxGridDBColumn
              DataBinding.FieldName = 'NFE_XML'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CLI_FUNPER: TcxGridDBColumn
              DataBinding.FieldName = 'CLI_FUNPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CLI_COMISPER: TcxGridDBColumn
              DataBinding.FieldName = 'CLI_COMISPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CLI_ADIANTCX: TcxGridDBColumn
              DataBinding.FieldName = 'CLI_ADIANTCX'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBNCM_PER: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBNCM_PER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBNCM_VLR: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBNCM_VLR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRCRED: TcxGridDBColumn
              DataBinding.FieldName = 'VLRCRED'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VLRSERV: TcxGridDBColumn
              DataBinding.FieldName = 'VLRSERV'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PERSERV: TcxGridDBColumn
              DataBinding.FieldName = 'PERSERV'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PIS_VLR: TcxGridDBColumn
              DataBinding.FieldName = 'PIS_VLR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1COFINS_VLR: TcxGridDBColumn
              DataBinding.FieldName = 'COFINS_VLR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1COMISSAOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'COMISSAOCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1COMISSAOVLR: TcxGridDBColumn
              DataBinding.FieldName = 'COMISSAOVLR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1COMISSAOVALOR: TcxGridDBColumn
              DataBinding.FieldName = 'COMISSAOVALOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS7: TcxGridDBColumn
              DataBinding.FieldName = 'OBS7'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS8: TcxGridDBColumn
              DataBinding.FieldName = 'OBS8'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS9: TcxGridDBColumn
              DataBinding.FieldName = 'OBS9'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS10: TcxGridDBColumn
              DataBinding.FieldName = 'OBS10'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS11: TcxGridDBColumn
              DataBinding.FieldName = 'OBS11'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS12: TcxGridDBColumn
              DataBinding.FieldName = 'OBS12'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1vNatOper: TcxGridDBColumn
              DataBinding.FieldName = 'vNatOper'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1vFretePor: TcxGridDBColumn
              DataBinding.FieldName = 'vFretePor'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1OBS13: TcxGridDBColumn
              DataBinding.FieldName = 'OBS13'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBNCM_PERE: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBNCM_PERE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBNCM_VLRE: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBNCM_VLRE'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1182
        ExplicitHeight = 592
        inherited pDados: TPanel
          Width = 1182
          Height = 75
          Align = alTop
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          ExplicitWidth = 1182
          ExplicitHeight = 75
          object GroupBox2: TGroupBox
            Left = 564
            Top = 2
            Width = 102
            Height = 38
            Caption = ' Data '
            TabOrder = 4
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 2
              Top = 16
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
              Height = 20
              Width = 98
            end
          end
          object gbNota: TGroupBox
            Left = 328
            Top = 2
            Width = 116
            Height = 38
            Caption = ' N. F. n'#186' '
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 5
              Top = 17
              Width = 108
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
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
            Top = 39
            Width = 356
            Height = 32
            Caption = ' Nome/Raz'#227'o social '
            TabOrder = 6
            OnExit = GroupBox4Exit
            inline frmPesquisaRazao: TfrmPesquisa
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
          object GroupBox7: TGroupBox
            Left = 5
            Top = 2
            Width = 256
            Height = 38
            Caption = ' Tipo '
            TabOrder = 0
          end
          object GroupBox8: TGroupBox
            Left = 667
            Top = 2
            Width = 114
            Height = 38
            Caption = ' Data entrega '
            TabOrder = 5
            object cxDBDateEdit2: TcxDBDateEdit
              Left = 2
              Top = 16
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
              Height = 20
              Width = 110
            end
          end
          object GroupBox13: TGroupBox
            Left = 446
            Top = 2
            Width = 116
            Height = 38
            Caption = ' Romaneio n'#186' '
            TabOrder = 3
            object dbePSP: TDBEdit
              Left = 5
              Top = 17
              Width = 108
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PSP'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = dbePSPEnter
              OnExit = dbePSPExit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox14: TGroupBox
            Left = 267
            Top = 2
            Width = 59
            Height = 38
            Caption = ' Serie '
            TabOrder = 1
            object DBEdit14: TDBEdit
              Left = 5
              Top = 17
              Width = 50
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
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
          object GroupBox19: TGroupBox
            Left = 363
            Top = 39
            Width = 252
            Height = 32
            Caption = ' Prazo pagamento '
            TabOrder = 7
            object DBEdit18: TDBEdit
              Left = 4
              Top = 13
              Width = 243
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'FORMA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit18Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox11: TGroupBox
            Left = 621
            Top = 39
            Width = 252
            Height = 32
            Caption = ' CFOP Padr'#227'o '
            TabOrder = 8
            object pnlCfop: TPanel
              Left = 4
              Top = 13
              Width = 244
              Height = 15
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 15329769
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 75
          Width = 1182
          Height = 517
          ActivePage = tabCentro
          Align = alClient
          TabOrder = 2
          object tabCentro: TTabSheet
            Caption = 'Produto/Mercadoria'
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 1174
              Height = 285
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
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Color = 13878195
                  Width = 66
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o/Produto'
                  Title.Color = 13878195
                  Width = 243
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'UNIDADE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Und.'
                  Title.Color = 13878195
                  Width = 30
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
                  Width = 45
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'PRUNIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o'
                  Title.Color = 13878195
                  Width = 71
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'PREMB'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'P.Emb.'
                  Title.Color = 13878195
                  Width = 56
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UNIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'V.Unit.'
                  Title.Color = 13878195
                  Width = 66
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERDESC'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = '%Des.'
                  Title.Color = 13878195
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRDESC'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'V.Desc.'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor'
                  Title.Color = 13878195
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODLOTECLASS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Lote'
                  Title.Color = 13878195
                  Width = 45
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'NATURCOD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'CFOP'
                  Title.Color = 13878195
                  Width = 40
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'ICMS_SIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Sit.Trib.'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'ICMS_RED'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Red.%'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'ICMS_PER'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'ICMS%'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'IPI_SIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Sit.IPI'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Color = 14286809
                  Expanded = False
                  FieldName = 'IPI_PER'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'IPI%'
                  Title.Color = 13878195
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IPI_BASE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Base IPI'
                  Title.Color = 13878195
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IPI_VLR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'IPI_Valor'
                  Title.Color = 13878195
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ICMS_BASE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Base Icms'
                  Title.Color = 13878195
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ICMS_VLR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr.Icms'
                  Title.Color = 13878195
                  Width = 70
                  Visible = True
                end>
            end
            object pnlImporta: TPanel
              Left = 0
              Top = 285
              Width = 1174
              Height = 164
              Align = alBottom
              BevelEdges = [beBottom]
              BevelKind = bkTile
              BevelOuter = bvNone
              Color = clWhite
              Enabled = False
              ParentBackground = False
              TabOrder = 1
              Visible = False
              object GroupBox1: TGroupBox
                Left = 4
                Top = 2
                Width = 194
                Height = 50
                Caption = ' Documento de importa'#231#227'o '
                TabOrder = 0
                object Label6: TLabel
                  Left = 3
                  Top = 13
                  Width = 92
                  Height = 13
                  Caption = 'N'#186' DI/DSI/DA'
                end
                object Label7: TLabel
                  Left = 115
                  Top = 13
                  Width = 72
                  Height = 13
                  Caption = 'Dt.Registro'
                end
                object DBEdit11: TDBEdit
                  Left = 3
                  Top = 26
                  Width = 108
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'DI_NR'
                  DataSource = dsImport
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
                object DBEdit12: TDBEdit
                  Left = 115
                  Top = 26
                  Width = 75
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'DI_DT'
                  DataSource = dsImport
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
              end
              object GroupBox23: TGroupBox
                Left = 203
                Top = 2
                Width = 385
                Height = 51
                Caption = ' Dados do desembara'#231'o '
                TabOrder = 1
                object Label8: TLabel
                  Left = 3
                  Top = 13
                  Width = 34
                  Height = 13
                  Caption = 'Local'
                end
                object Label9: TLabel
                  Left = 306
                  Top = 13
                  Width = 74
                  Height = 13
                  Caption = 'Dt.Desemb.'
                end
                object Label10: TLabel
                  Left = 269
                  Top = 13
                  Width = 17
                  Height = 13
                  Caption = 'UF'
                end
                object DBEdit13: TDBEdit
                  Left = 4
                  Top = 26
                  Width = 262
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'LOC_DES'
                  DataSource = dsImport
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
                object DBEdit19: TDBEdit
                  Left = 306
                  Top = 26
                  Width = 75
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'LOC_DT'
                  DataSource = dsImport
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
                object DBEdit20: TDBEdit
                  Left = 269
                  Top = 26
                  Width = 34
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'LOC_UF'
                  DataSource = dsImport
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
              end
              object GroupBox24: TGroupBox
                Left = 4
                Top = 52
                Width = 529
                Height = 54
                Caption = ' Transporte '
                TabOrder = 2
                object Label11: TLabel
                  Left = 3
                  Top = 14
                  Width = 113
                  Height = 13
                  Caption = 'Via de transporte'
                end
                object Label12: TLabel
                  Left = 237
                  Top = 14
                  Width = 105
                  Height = 13
                  Caption = 'Tipo Interm'#233'dio'
                end
                object Label13: TLabel
                  Left = 125
                  Top = 14
                  Width = 103
                  Height = 13
                  Caption = 'Valor da AFRMM'
                end
                object Label14: TLabel
                  Left = 348
                  Top = 14
                  Width = 131
                  Height = 13
                  Caption = 'CNPJ Encomendante'
                end
                object Label15: TLabel
                  Left = 485
                  Top = 14
                  Width = 17
                  Height = 13
                  Caption = 'UF'
                end
                object DBComboBox2: TDBComboBox
                  Left = 3
                  Top = 28
                  Width = 113
                  Height = 21
                  DataField = 'TRA_VIA'
                  DataSource = dsImport
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
                object DBComboBox3: TDBComboBox
                  Left = 234
                  Top = 28
                  Width = 108
                  Height = 21
                  DataField = 'TRA_TIP'
                  DataSource = dsImport
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
                object DBEdit26: TDBEdit
                  Left = 122
                  Top = 28
                  Width = 106
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'TRA_VLR'
                  DataSource = dsImport
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
                object DBEdit27: TDBEdit
                  Left = 348
                  Top = 28
                  Width = 131
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'TRA_CNPJ'
                  DataSource = dsImport
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
                object DBEdit28: TDBEdit
                  Left = 485
                  Top = 28
                  Width = 34
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'TRA_UF'
                  DataSource = dsImport
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
              end
              object GroupBox25: TGroupBox
                Left = 596
                Top = 2
                Width = 240
                Height = 155
                Caption = ' Impostos '
                TabOrder = 6
                object Label16: TLabel
                  Left = 8
                  Top = 15
                  Width = 78
                  Height = 13
                  Caption = 'Valor do IPI'
                end
                object Label18: TLabel
                  Left = 122
                  Top = 15
                  Width = 38
                  Height = 13
                  Caption = '% IPI'
                end
                object Label17: TLabel
                  Left = 178
                  Top = 15
                  Width = 44
                  Height = 13
                  Caption = 'C'#243'digo'
                end
                object Label20: TLabel
                  Left = 7
                  Top = 48
                  Width = 70
                  Height = 13
                  Caption = 'Valor do II'
                end
                object Label21: TLabel
                  Left = 121
                  Top = 48
                  Width = 30
                  Height = 13
                  Caption = '% II'
                end
                object Label23: TLabel
                  Left = 7
                  Top = 83
                  Width = 80
                  Height = 13
                  Caption = 'Valor do PIS'
                end
                object Label24: TLabel
                  Left = 121
                  Top = 83
                  Width = 40
                  Height = 13
                  Caption = '% PIS'
                end
                object Label25: TLabel
                  Left = 177
                  Top = 83
                  Width = 44
                  Height = 13
                  Caption = 'C'#243'digo'
                end
                object Label26: TLabel
                  Left = 8
                  Top = 117
                  Width = 98
                  Height = 13
                  Caption = 'Valor do Cofins'
                end
                object Label27: TLabel
                  Left = 122
                  Top = 117
                  Width = 46
                  Height = 13
                  Caption = '% Con.'
                end
                object Label28: TLabel
                  Left = 178
                  Top = 117
                  Width = 44
                  Height = 13
                  Caption = 'C'#243'digo'
                end
                object DBEdit24: TDBEdit
                  Left = 8
                  Top = 28
                  Width = 108
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_IPI_VLR'
                  DataSource = dsImport
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
                object DBEdit25: TDBEdit
                  Left = 119
                  Top = 28
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_IPI_PER'
                  DataSource = dsImport
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
                object DBEdit29: TDBEdit
                  Left = 175
                  Top = 28
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_IPI_COD'
                  DataSource = dsImport
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
                object DBEdit30: TDBEdit
                  Left = 7
                  Top = 61
                  Width = 108
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_II_VLR'
                  DataSource = dsImport
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
                object DBEdit31: TDBEdit
                  Left = 118
                  Top = 61
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_II_PER'
                  DataSource = dsImport
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
                object DBEdit33: TDBEdit
                  Left = 7
                  Top = 96
                  Width = 108
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_PIS_VLR'
                  DataSource = dsImport
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
                object DBEdit34: TDBEdit
                  Left = 118
                  Top = 96
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_PIS_PER'
                  DataSource = dsImport
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
                object DBEdit35: TDBEdit
                  Left = 174
                  Top = 96
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_PIS_COD'
                  DataSource = dsImport
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
                object DBEdit36: TDBEdit
                  Left = 8
                  Top = 131
                  Width = 108
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_COF_VLR'
                  DataSource = dsImport
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
                object DBEdit37: TDBEdit
                  Left = 119
                  Top = 131
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_COF_PER'
                  DataSource = dsImport
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
                object DBEdit38: TDBEdit
                  Left = 175
                  Top = 131
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_COF_COD'
                  DataSource = dsImport
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  OnExit = DBEdit38Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox26: TGroupBox
                Left = 4
                Top = 106
                Width = 197
                Height = 54
                Caption = ' Adi'#231#227'o '
                TabOrder = 3
                object Label22: TLabel
                  Left = 3
                  Top = 14
                  Width = 51
                  Height = 13
                  Caption = 'N'#250'mero'
                end
                object Label29: TLabel
                  Left = 115
                  Top = 14
                  Width = 56
                  Height = 13
                  Caption = 'C'#243'd.Fab.'
                end
                object Label30: TLabel
                  Left = 60
                  Top = 14
                  Width = 28
                  Height = 13
                  Caption = 'Seq.'
                end
                object DBEdit32: TDBEdit
                  Left = 3
                  Top = 28
                  Width = 50
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'ADC_NR'
                  DataSource = dsImport
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
                object DBEdit39: TDBEdit
                  Left = 60
                  Top = 28
                  Width = 50
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'ADC_SEQ'
                  DataSource = dsImport
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
                object DBEdit40: TDBEdit
                  Left = 115
                  Top = 28
                  Width = 76
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'ADC_COD'
                  DataSource = dsImport
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
              end
              object GroupBox27: TGroupBox
                Left = 203
                Top = 106
                Width = 180
                Height = 54
                Caption = ' ICMS '
                TabOrder = 4
                object Label31: TLabel
                  Left = 3
                  Top = 14
                  Width = 38
                  Height = 13
                  Caption = 'Valor '
                end
                object Label32: TLabel
                  Left = 100
                  Top = 14
                  Width = 50
                  Height = 13
                  Caption = '% ICMS'
                end
                object DBEdit41: TDBEdit
                  Left = 3
                  Top = 28
                  Width = 94
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_ICM_VLR'
                  DataSource = dsImport
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
                object DBEdit43: TDBEdit
                  Left = 100
                  Top = 28
                  Width = 76
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_ICM_PER'
                  DataSource = dsImport
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
              end
              object GroupBox28: TGroupBox
                Left = 384
                Top = 106
                Width = 167
                Height = 54
                Caption = ' Outras despesas '
                TabOrder = 5
                object Label33: TLabel
                  Left = 3
                  Top = 14
                  Width = 89
                  Height = 13
                  Caption = 'Vlr.Aduaneira'
                end
                object Label34: TLabel
                  Left = 97
                  Top = 14
                  Width = 49
                  Height = 13
                  Caption = 'Vlr. IOF'
                end
                object DBEdit42: TDBEdit
                  Left = 3
                  Top = 28
                  Width = 89
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_OUT_ADV'
                  DataSource = dsImport
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
                object DBEdit44: TDBEdit
                  Left = 97
                  Top = 28
                  Width = 66
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'IMP_OUT_IOF'
                  DataSource = dsImport
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
              end
            end
            object Panel3: TPanel
              Left = 0
              Top = 449
              Width = 1174
              Height = 40
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              object GroupBox6: TGroupBox
                Left = 1
                Top = 0
                Width = 110
                Height = 38
                Caption = ' Sub.Total '
                Enabled = False
                TabOrder = 0
                object DBEdit2: TDBEdit
                  Left = 5
                  Top = 17
                  Width = 100
                  Height = 15
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
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox16: TGroupBox
                Left = 139
                Top = 0
                Width = 108
                Height = 38
                Caption = ' Vlr.Desconto '
                TabOrder = 1
                object DBEdit15: TDBEdit
                  Left = 5
                  Top = 17
                  Width = 99
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 15329769
                  DataField = 'VLRDESC'
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
              object GroupBox5: TGroupBox
                Left = 249
                Top = 0
                Width = 164
                Height = 38
                Caption = ' Vlr.Seguro '
                TabOrder = 2
                object DBEdit21: TDBEdit
                  Left = 94
                  Top = 17
                  Width = 63
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 15329769
                  DataField = 'VLRSEGURO'
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
                object DBComboBox1: TDBComboBox
                  Left = 4
                  Top = 14
                  Width = 85
                  Height = 21
                  DataField = 'SEGTIP'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnExit = DBComboBox1Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox20: TGroupBox
                Left = 421
                Top = 0
                Width = 94
                Height = 38
                Caption = ' Vlr.Frete '
                TabOrder = 3
                object DBEdit22: TDBEdit
                  Left = 5
                  Top = 17
                  Width = 84
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'VLRFRETE'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnExit = DBEdit22Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox21: TGroupBox
                Left = 516
                Top = 0
                Width = 109
                Height = 38
                Caption = ' Icms Frete  '
                TabOrder = 4
                object DBEdit23: TDBEdit
                  Left = 15
                  Top = 17
                  Width = 65
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 15329769
                  DataField = 'VLRICMSFRE'
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
              object GroupBox18: TGroupBox
                Left = 643
                Top = 0
                Width = 101
                Height = 38
                Caption = ' Qtde.Itens. '
                Enabled = False
                TabOrder = 5
                object DBEdit17: TDBEdit
                  Left = 5
                  Top = 17
                  Width = 89
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 15329769
                  DataField = 'QTDESP'
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
              object GroupBox17: TGroupBox
                Left = 755
                Top = 0
                Width = 110
                Height = 38
                Caption = ' Total '
                TabOrder = 6
                object DBEdit16: TDBEdit
                  Left = 7
                  Top = 17
                  Width = 100
                  Height = 15
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
                  OnExit = DBEdit16Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
            end
          end
          object tabfinanceiro: TTabSheet
            Caption = 'Financeiro'
            ImageIndex = 1
            object pnlabafinan: TPanel
              Left = 0
              Top = 0
              Width = 1174
              Height = 489
              Align = alClient
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object DBGrid2: TDBGrid
                Left = 1
                Top = 1
                Width = 1172
                Height = 319
                Hint = '999 - sai da planilha'
                Align = alClient
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
                    Width = 110
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
                    Width = 155
                    Visible = True
                  end>
              end
              object pnlComissao: TPanel
                Left = 1
                Top = 352
                Width = 1172
                Height = 136
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object gbCliente: TGroupBox
                  Left = 0
                  Top = 71
                  Width = 1172
                  Height = 57
                  Align = alTop
                  Caption = ' Cliente Acerto '
                  TabOrder = 0
                  object GroupBox12: TGroupBox
                    Left = 8
                    Top = 19
                    Width = 102
                    Height = 32
                    Caption = ' FunRural % '
                    TabOrder = 0
                    object DBEdit8: TDBEdit
                      Left = 3
                      Top = 14
                      Width = 89
                      Height = 15
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      Color = clWhite
                      DataField = 'CLI_FUNPER'
                      DataSource = dsDados
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnExit = DBEdit8Exit
                      OnKeyDown = FormKeyDown
                      OnKeyPress = FormKeyPress
                    end
                  end
                  object GroupBox15: TGroupBox
                    Left = 116
                    Top = 19
                    Width = 102
                    Height = 32
                    Caption = ' Comiss'#227'o % '
                    TabOrder = 1
                    object DBEdit9: TDBEdit
                      Left = 3
                      Top = 14
                      Width = 89
                      Height = 15
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      Color = clWhite
                      DataField = 'CLI_COMISPER'
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
                  object GroupBox22: TGroupBox
                    Left = 224
                    Top = 19
                    Width = 102
                    Height = 32
                    Caption = ' Adiant.CX '
                    TabOrder = 2
                    object DBEdit10: TDBEdit
                      Left = 3
                      Top = 14
                      Width = 89
                      Height = 15
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      Color = clWhite
                      DataField = 'CLI_ADIANTCX'
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
                object gbComissao: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 1172
                  Height = 71
                  Align = alTop
                  Caption = ' Comiss'#227'o '
                  TabOrder = 1
                  Visible = False
                  object GroupBox29: TGroupBox
                    Left = 641
                    Top = 16
                    Width = 99
                    Height = 32
                    Caption = 'Valor ou %'
                    TabOrder = 2
                    object DBEdit45: TDBEdit
                      Left = 2
                      Top = 15
                      Width = 95
                      Height = 15
                      Align = alTop
                      BorderStyle = bsNone
                      CharCase = ecLowerCase
                      Color = clWhite
                      DataField = 'COMISSAOVLR'
                      DataSource = dsDados
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnExit = DBEdit45Exit
                      OnKeyDown = FormKeyDown
                      OnKeyPress = FormKeyPress
                    end
                  end
                  object GroupBox31: TGroupBox
                    Left = 754
                    Top = 16
                    Width = 109
                    Height = 32
                    Caption = 'Valor a pagar '
                    TabOrder = 3
                    object DBEdit46: TDBEdit
                      Left = 2
                      Top = 15
                      Width = 105
                      Height = 14
                      Align = alTop
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      Color = 15329769
                      DataField = 'COMISSAOVALOR'
                      DataSource = dsDados
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = []
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 0
                      OnExit = DBEdit46Exit
                      OnKeyDown = FormKeyDown
                      OnKeyPress = FormKeyPress
                    end
                  end
                  object dbgComissao: TDBRadioGroup
                    Left = 316
                    Top = 15
                    Width = 319
                    Height = 50
                    Caption = ' Op'#231#245'es '
                    Columns = 2
                    DataField = 'COMISSAOCOD'
                    DataSource = dsDados
                    Items.Strings = (
                      'Sem comiss'#227'o'
                      'Valor por caixa'
                      '% de venda'
                      'Valor Fixo')
                    TabOrder = 1
                    TabStop = True
                    Values.Strings = (
                      '0'
                      '1'
                      '2'
                      '3')
                    OnExit = dbgComissaoExit
                  end
                  object GroupBox30: TGroupBox
                    Left = 8
                    Top = 16
                    Width = 302
                    Height = 35
                    Caption = ' Vendedor '
                    TabOrder = 0
                    OnExit = GroupBox30Exit
                    inline frmPesquisaVendedor: TfrmPesquisa
                      Left = 2
                      Top = 15
                      Width = 298
                      Height = 14
                      Align = alTop
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
                      ExplicitWidth = 298
                      ExplicitHeight = 14
                      inherited SpeedButton1: TSpeedButton
                        Left = 277
                        Height = 14
                        ExplicitLeft = 331
                        ExplicitTop = 1
                        ExplicitHeight = 14
                      end
                      inherited edtPesquisa: TEdit
                        Width = 275
                        Height = 14
                        CharCase = ecUpperCase
                        ExplicitWidth = 275
                        ExplicitHeight = 14
                      end
                    end
                  end
                end
              end
              object Panel5: TPanel
                Left = 1
                Top = 320
                Width = 1172
                Height = 32
                Align = alBottom
                BevelEdges = [beBottom]
                BevelKind = bkTile
                BevelOuter = bvNone
                TabOrder = 2
                object Label19: TLabel
                  Left = 71
                  Top = 8
                  Width = 49
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Total...:'
                  Transparent = True
                end
                object pnlfinan: TPanel
                  Left = 122
                  Top = 4
                  Width = 97
                  Height = 22
                  Alignment = taRightJustify
                  BevelInner = bvLowered
                  Color = 15329769
                  ParentBackground = False
                  TabOrder = 0
                end
              end
            end
          end
          object TabReferenciada: TTabSheet
            Caption = 'NFe referenciada'
            ImageIndex = 2
            object pnlReferenciada: TPanel
              Left = 0
              Top = 0
              Width = 1174
              Height = 489
              Align = alClient
              TabOrder = 0
              object gbNFeRef: TGroupBox
                Left = 1
                Top = 1
                Width = 1172
                Height = 487
                Align = alClient
                Caption = ' Chave de acesso NFe - referenciada  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Panel1: TPanel
                  Left = 2
                  Top = 15
                  Width = 1168
                  Height = 37
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Caption = '  NFe.:'
                  TabOrder = 0
                  object rzNfe: TRzNumericEdit
                    Left = 48
                    Top = 8
                    Width = 107
                    Height = 21
                    TabOrder = 0
                    OnExit = rzNfeExit
                    DisplayFormat = '0'
                  end
                  object btnInserir: TBitBtn
                    Left = 161
                    Top = 6
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
                    TabOrder = 1
                    OnClick = btnInserirClick
                  end
                  object BitBtn2: TBitBtn
                    Left = 253
                    Top = 6
                    Width = 146
                    Height = 25
                    Caption = 'Importar produtos'
                    TabOrder = 2
                    OnClick = BitBtn2Click
                  end
                end
                object DBGrid3: TDBGrid
                  Left = 2
                  Top = 52
                  Width = 1168
                  Height = 433
                  Align = alClient
                  DataSource = dsReferenciada
                  FixedColor = 15592935
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  PopupMenu = PopupMenu3
                  ShowHint = True
                  TabOrder = 1
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
                      FieldName = 'NOTA'
                      Title.Alignment = taCenter
                      Title.Caption = 'Nota'
                      Title.Color = 13878195
                      Width = 91
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CAMPO1'
                      Title.Alignment = taCenter
                      Title.Color = 13878195
                      Width = 384
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NFP_MMAA'
                      Title.Alignment = taCenter
                      Title.Caption = 'Mes/Ano'
                      Title.Color = 13878195
                      Width = 60
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NFP_MODELO'
                      Title.Alignment = taCenter
                      Title.Caption = 'Modelo'
                      Title.Color = 13878195
                      Width = 50
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NFP_SERIE'
                      Title.Alignment = taCenter
                      Title.Caption = 'Serie'
                      Title.Color = 13878195
                      Width = 40
                      Visible = True
                    end>
                end
              end
            end
          end
          object TabOutros: TTabSheet
            Caption = 'Outros'
            ImageIndex = 3
            OnShow = TabOutrosShow
            object DBRGFrete: TDBRadioGroup
              Left = 3
              Top = 0
              Width = 566
              Height = 57
              Caption = ' Tipo Frete '
              Columns = 2
              DataField = 'TRTIPO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Contrata'#231#227'o Emitente (CIF);'
                'Contrata'#231#227'o Destinat'#225'rio (FOB)'
                'Contrata'#231#227'o Terceiros'
                'Transporte Pr'#243'prio Remetente'
                'Transporte Pr'#243'prio Destinat'#225'rio'
                'Sem Frete')
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                '1'
                '2'
                '0'
                '3'
                '4'
                '9')
              OnExit = DBRGFreteExit
            end
            object GroupBox9: TGroupBox
              Left = 3
              Top = 59
              Width = 356
              Height = 32
              Caption = ' Transportadora '
              TabOrder = 1
              OnExit = GroupBox9Exit
              inline frmPesquisaMot: TfrmPesquisa
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
            object GroupBox10: TGroupBox
              Left = 3
              Top = 93
              Width = 593
              Height = 211
              Caption = ' Dados Adicionais '
              TabOrder = 2
              object sbDadosAdic: TSpeedButton
                Tag = 13
                AlignWithMargins = True
                Left = 5
                Top = 141
                Width = 583
                Height = 15
                Hint = 
                  'Refaz os dados adicionais conforme configura'#231#227'o no tipo de nota.' +
                  '..'
                Align = alBottom
                Caption = 'Refaz dados adicionais'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                Margin = 0
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Spacing = 5
                OnClick = sbDadosAdicClick
                ExplicitLeft = 7
                ExplicitTop = 183
              end
              object memDados: TMemo
                Left = 2
                Top = 15
                Width = 589
                Height = 123
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 1000
                ParentFont = False
                TabOrder = 0
                OnEnter = memDadosEnter
                OnExit = memDadosExit
                OnKeyPress = memDadosKeyPress
              end
              object GroupBox3: TGroupBox
                Left = 2
                Top = 159
                Width = 589
                Height = 50
                Align = alBottom
                Caption = ' Volume '
                TabOrder = 1
                object GroupBox32: TGroupBox
                  Left = 3
                  Top = 14
                  Width = 62
                  Height = 32
                  Caption = ' Qtde. '
                  TabOrder = 0
                  TabStop = True
                  object DBEdit3: TDBEdit
                    Left = 2
                    Top = 15
                    Width = 58
                    Height = 15
                    Align = alClient
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    DataField = 'VOL_QTDE'
                    DataSource = dsDados
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnExit = DBEdit5Exit
                    OnKeyDown = FormKeyDown
                    OnKeyPress = FormKeyPress
                  end
                end
                object GroupBox33: TGroupBox
                  Left = 69
                  Top = 15
                  Width = 205
                  Height = 32
                  Caption = ' Esp'#233'cie '
                  TabOrder = 1
                  TabStop = True
                  object DBEdit4: TDBEdit
                    Left = 2
                    Top = 15
                    Width = 201
                    Height = 15
                    Align = alClient
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    DataField = 'VOL_ESPECIE'
                    DataSource = dsDados
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnExit = DBEdit7Exit
                    OnKeyDown = FormKeyDown
                    OnKeyPress = FormKeyPress
                  end
                end
                object GroupBox34: TGroupBox
                  Left = 278
                  Top = 15
                  Width = 205
                  Height = 32
                  Caption = ' Marca '
                  TabOrder = 2
                  TabStop = True
                  object DBEdit6: TDBEdit
                    Left = 2
                    Top = 15
                    Width = 201
                    Height = 15
                    Align = alClient
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    DataField = 'VOL_MARCA'
                    DataSource = dsDados
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnExit = DBEdit5Exit
                    OnKeyDown = FormKeyDown
                    OnKeyPress = FormKeyPress
                  end
                end
                object GroupBox35: TGroupBox
                  Left = 486
                  Top = 15
                  Width = 99
                  Height = 32
                  Caption = ' N'#250'mera'#231#227'o '
                  TabOrder = 3
                  TabStop = True
                  object DBEdit47: TDBEdit
                    Left = 2
                    Top = 15
                    Width = 95
                    Height = 15
                    Align = alClient
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    DataField = 'VOL_NUMERACAO'
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
            end
            object gbFisco: TGroupBox
              Left = 600
              Top = 94
              Width = 358
              Height = 186
              Caption = ' Informa'#231#245'es ao Fisco '
              TabOrder = 3
              Visible = False
              object DBMemo1: TDBMemo
                Left = 2
                Top = 15
                Width = 354
                Height = 169
                Align = alClient
                DataField = 'OBS13'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 100
                ParentFont = False
                TabOrder = 0
                OnEnter = DBMemo1Enter
                OnExit = DBMemo1Exit
                OnKeyPress = memDadosKeyPress
              end
            end
            object pnlProdutor: TPanel
              Left = 575
              Top = 6
              Width = 383
              Height = 88
              BevelKind = bkTile
              BevelOuter = bvNone
              TabOrder = 4
              object gbProdutor: TGroupBox
                Left = 2
                Top = 41
                Width = 356
                Height = 32
                Caption = ' Produtor  '
                TabOrder = 2
                OnExit = gbProdutorExit
                inline frmPesquisaPro: TfrmPesquisa
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
              object gbProdutorNF: TGroupBox
                Left = 2
                Top = 3
                Width = 116
                Height = 32
                Caption = ' N. F. P. n'#186' '
                TabOrder = 0
                object DBEdit5: TDBEdit
                  Left = 5
                  Top = 13
                  Width = 108
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'PRODNOTA'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnExit = DBEdit5Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
              object gbProdutorFun: TGroupBox
                Left = 141
                Top = 3
                Width = 116
                Height = 32
                Caption = ' Vlr.Funrural '
                TabOrder = 1
                object DBEdit7: TDBEdit
                  Left = 5
                  Top = 13
                  Width = 108
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'VLRFUNRURAL'
                  DataSource = dsDados
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnExit = DBEdit7Exit
                  OnKeyDown = FormKeyDown
                  OnKeyPress = FormKeyPress
                end
              end
            end
          end
        end
        object DBLCBox: TDBLookupComboBox
          Left = 12
          Top = 14
          Width = 246
          Height = 21
          DataField = 'DIFCOD'
          DataSource = dsDados
          DropDownRows = 15
          DropDownWidth = 350
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          KeyField = 'CODIGO'
          ListField = 'CODIGO;DESCRICAO'
          ListFieldIndex = 1
          ListSource = dsCadNota
          ParentFont = False
          TabOrder = 0
          OnExit = DBLCBoxExit
          OnKeyDown = FormKeyDown
          OnKeyPress = FormKeyPress
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    PacketRecords = 30
    OnCalcFields = cdsDadosCalcFields
    Left = 1178
    Top = 298
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'LANC'
      Origin = 'JAEADMIN.NFVENDA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.NFVENDA.DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosNFE_STATUS: TStringField
      DisplayLabel = 'NFe'
      FieldName = 'NFE_STATUS'
      Origin = 'JAEADMIN.NFVENDA.NFE_STATUS'
      Size = 2
    end
    object cdsDadosDIFCOD: TIntegerField
      DisplayLabel = 'Tipo'
      DisplayWidth = 6
      FieldName = 'DIFCOD'
      Origin = 'JAEADMIN.NFVENDA.DIFCOD'
    end
    object cdsDadosDIF: TStringField
      FieldName = 'DIF'
      Origin = 'JAEADMIN.NFVENDA.DIF'
      Visible = False
      Size = 1
    end
    object cdsDadosNOTA: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'NOTA'
      Origin = 'JAEADMIN.NFVENDA.NOTA'
    end
    object cdsDadosSERIE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.NFVENDA.SERIE'
      Size = 2
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.NFVENDA.DESCRICAO'
      Size = 50
    end
    object cdsDadosVLRPRODUTO: TBCDField
      DisplayLabel = 'Vlr.Produto'
      FieldName = 'VLRPRODUTO'
      Origin = 'JAEADMIN.NFVENDA.VLRPRODUTO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRNOTA: TBCDField
      DisplayLabel = 'Vlr.Nota'
      FieldName = 'VLRNOTA'
      Origin = 'JAEADMIN.NFVENDA.VLRNOTA'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'JAEADMIN.NFVENDA.VENDECOD'
      Visible = False
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.NFVENDA.CODIGO'
      Visible = False
    end
    object cdsDadosENTREGA: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'ENTREGA'
      Origin = 'JAEADMIN.NFVENDA.ENTREGA'
      Visible = False
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'JAEADMIN.NFVENDA.NATURCOD'
      Visible = False
      DisplayFormat = '0.000'
    end
    object cdsDadosDADOSCOD: TIntegerField
      FieldName = 'DADOSCOD'
      Origin = 'JAEADMIN.NFVENDA.DADOSCOD'
      Visible = False
    end
    object cdsDadosTRTIPO: TStringField
      FieldName = 'TRTIPO'
      Origin = 'JAEADMIN.NFVENDA.TRTIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosTRCOD: TIntegerField
      FieldName = 'TRCOD'
      Origin = 'JAEADMIN.NFVENDA.TRCOD'
      Visible = False
    end
    object cdsDadosTRDES: TStringField
      FieldName = 'TRDES'
      Origin = 'JAEADMIN.NFVENDA.TRDES'
      Visible = False
      Size = 50
    end
    object cdsDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'JAEADMIN.NFVENDA.VLRDESC'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'JAEADMIN.NFVENDA.VLRBASE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosDIFDES: TStringField
      DisplayLabel = 'Tipo nota'
      DisplayWidth = 50
      FieldName = 'DIFDES'
      Origin = 'JAEADMIN.NFVENDA.DIFDES'
      Size = 50
    end
    object cdsDadosVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'JAEADMIN.NFVENDA.VLRICMS'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Origin = 'JAEADMIN.NFVENDA.VLRFRETE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'JAEADMIN.NFVENDA.VLRIPI'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.NFVENDA.PESOBRU'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.NFVENDA.PESOLIQ'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosQTDESP: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Qtde.Cx.'
      DisplayWidth = 6
      FieldName = 'QTDESP'
      Origin = 'JAEADMIN.NFVENDA.QTDESP'
      Size = 100
    end
    object cdsDadosPSP: TIntegerField
      FieldName = 'PSP'
      Origin = 'JAEADMIN.NFVENDA.PSP'
      Visible = False
    end
    object cdsDadosFRETECOD: TIntegerField
      FieldName = 'FRETECOD'
      Origin = 'JAEADMIN.NFVENDA.FRETECOD'
      Visible = False
    end
    object cdsDadosFRETEDES: TStringField
      FieldName = 'FRETEDES'
      Origin = 'JAEADMIN.NFVENDA.FRETEDES'
      Visible = False
      Size = 50
    end
    object cdsDadosTRPLACA: TStringField
      FieldName = 'TRPLACA'
      Origin = 'JAEADMIN.NFVENDA.TRPLACA'
      Visible = False
      Size = 15
    end
    object cdsDadosTRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'JAEADMIN.NFVENDA.TRCIDADE'
      Visible = False
      Size = 30
    end
    object cdsDadosTRESTADO: TStringField
      FieldName = 'TRESTADO'
      Origin = 'JAEADMIN.NFVENDA.TRESTADO'
      Visible = False
      Size = 2
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.NFVENDA.ESTADO'
      Visible = False
      Size = 2
    end
    object cdsDadosVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Origin = 'JAEADMIN.NFVENDA.VLRSEGURO'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRICMSFRE: TBCDField
      FieldName = 'VLRICMSFRE'
      Origin = 'JAEADMIN.NFVENDA.VLRICMSFRE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'JAEADMIN.NFVENDA.OBS1'
      Visible = False
      Size = 100
    end
    object cdsDadosFORPAG: TIntegerField
      FieldName = 'FORPAG'
      Origin = 'JAEADMIN.NFVENDA.FORPAG'
      Visible = False
    end
    object cdsDadosSEGTIP: TStringField
      FieldName = 'SEGTIP'
      Origin = 'JAEADMIN.NFVENDA.SEGTIP'
      Visible = False
      Size = 10
    end
    object cdsDadosOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'JAEADMIN.NFVENDA.OBS2'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'JAEADMIN.NFVENDA.OBS3'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'JAEADMIN.NFVENDA.OBS4'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'JAEADMIN.NFVENDA.OBS5'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'JAEADMIN.NFVENDA.OBS6'
      Visible = False
      Size = 100
    end
    object cdsDadosRECEITA: TIntegerField
      FieldName = 'RECEITA'
      Origin = 'JAEADMIN.NFVENDA.RECEITA'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.NFVENDA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.NFVENDA.ACESOCOD'
      Visible = False
    end
    object cdsDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.NFVENDA.FORMA'
      Visible = False
      EditMask = '999 999 999 999 999;1; '
      Size = 30
    end
    object cdsDadosVLRFUNRURAL: TBCDField
      FieldName = 'VLRFUNRURAL'
      Origin = 'JAEADMIN.NFVENDA.VLRFUNRURAL'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPRODNOTA: TIntegerField
      DisplayLabel = 'Nota Produtor'
      DisplayWidth = 7
      FieldName = 'PRODNOTA'
      Origin = 'JAEADMIN.NFVENDA.PRODNOTA'
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.NFVENDA.PRODDES'
      Size = 50
    end
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.NFVENDA.PRODCOD'
      Visible = False
    end
    object cdsDadosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'JAEADMIN.NFVENDA.ESTOQUE'
      Visible = False
      Size = 1
    end
    object cdsDadosNSUNUM: TIntegerField
      FieldName = 'NSUNUM'
      Origin = 'JAEADMIN.NFVENDA.NSUNUM'
      Visible = False
    end
    object cdsDadosNSUDAT: TSQLTimeStampField
      FieldName = 'NSUDAT'
      Origin = 'JAEADMIN.NFVENDA.NSUDAT'
      Visible = False
    end
    object cdsDadosNSUHOR: TStringField
      FieldName = 'NSUHOR'
      Origin = 'JAEADMIN.NFVENDA.NSUHOR'
      Visible = False
      Size = 8
    end
    object cdsDadosNFE_MODELO: TStringField
      DisplayLabel = 'Mod.'
      FieldName = 'NFE_MODELO'
      Origin = 'JAEADMIN.NFVENDA.NFE_MODELO'
      Size = 2
    end
    object cdsDadosNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Origin = 'JAEADMIN.NFVENDA.NFE_CHAVE'
      Visible = False
      Size = 50
    end
    object cdsDadosNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Origin = 'JAEADMIN.NFVENDA.NFE_RECIBO'
      Visible = False
      Size = 30
    end
    object cdsDadosNFE_PROTOC: TStringField
      FieldName = 'NFE_PROTOC'
      Origin = 'JAEADMIN.NFVENDA.NFE_PROTOC'
      Visible = False
      Size = 30
    end
    object cdsDadosNFE_CANCEL: TStringField
      FieldName = 'NFE_CANCEL'
      Origin = 'JAEADMIN.NFVENDA.NFE_CANCEL'
      Visible = False
      Size = 30
    end
    object cdsDadosNFE_XML: TStringField
      FieldName = 'NFE_XML'
      Origin = 'JAEADMIN.NFVENDA.NFE_XML'
      Visible = False
      Size = 120
    end
    object cdsDadosCLI_FUNPER: TBCDField
      FieldName = 'CLI_FUNPER'
      Origin = 'JAEADMIN.NFVENDA.CLI_FUNPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosCLI_COMISPER: TBCDField
      FieldName = 'CLI_COMISPER'
      Origin = 'JAEADMIN.NFVENDA.CLI_COMISPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosCLI_ADIANTCX: TBCDField
      FieldName = 'CLI_ADIANTCX'
      Origin = 'JAEADMIN.NFVENDA.CLI_ADIANTCX'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTRIBNCM_PER: TBCDField
      FieldName = 'TRIBNCM_PER'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_PER'
      Visible = False
    end
    object cdsDadosTRIBNCM_VLR: TBCDField
      FieldName = 'TRIBNCM_VLR'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_VLR'
      Visible = False
    end
    object cdsDadosVLRCRED: TBCDField
      FieldName = 'VLRCRED'
      Origin = 'JAEADMIN.NFVENDA.VLRCRED'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRSERV: TBCDField
      FieldName = 'VLRSERV'
      Origin = 'JAEADMIN.NFVENDA.VLRSERV'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPERSERV: TBCDField
      FieldName = 'PERSERV'
      Origin = 'JAEADMIN.NFVENDA.PERSERV'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'JAEADMIN.NFVENDA.PIS_VLR'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'JAEADMIN.NFVENDA.COFINS_VLR'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosCOMISSAOCOD: TIntegerField
      FieldName = 'COMISSAOCOD'
      Origin = 'JAEADMIN.NFVENDA.COMISSAOCOD'
      Visible = False
    end
    object cdsDadosCOMISSAOVLR: TBCDField
      FieldName = 'COMISSAOVLR'
      Origin = 'JAEADMIN.NFVENDA.COMISSAOVLR'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosCOMISSAOVALOR: TBCDField
      FieldName = 'COMISSAOVALOR'
      Origin = 'JAEADMIN.NFVENDA.COMISSAOVALOR'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'JAEADMIN.NFVENDA.OBS7'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'JAEADMIN.NFVENDA.OBS8'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS9: TStringField
      FieldName = 'OBS9'
      Origin = 'JAEADMIN.NFVENDA.OBS9'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS10: TStringField
      FieldName = 'OBS10'
      Origin = 'JAEADMIN.NFVENDA.OBS10'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS11: TStringField
      FieldName = 'OBS11'
      Origin = 'JAEADMIN.NFVENDA.OBS11'
      Visible = False
      Size = 100
    end
    object cdsDadosOBS12: TStringField
      FieldName = 'OBS12'
      Origin = 'JAEADMIN.NFVENDA.OBS12'
      Visible = False
      Size = 100
    end
    object cdsDadosvNatOper: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vNatOper'
      ProviderFlags = []
      Visible = False
      Size = 60
    end
    object cdsDadosvFretePor: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vFretePor'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object cdsDadosOBS13: TStringField
      FieldName = 'OBS13'
      Origin = 'JAEADMIN.NFVENDA.OBS13'
      Visible = False
      Size = 100
    end
    object cdsDadosTRIBNCM_PERE: TBCDField
      FieldName = 'TRIBNCM_PERE'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_PERE'
    end
    object cdsDadosTRIBNCM_VLRE: TBCDField
      FieldName = 'TRIBNCM_VLRE'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_VLRE'
    end
    object cdsDadosPRD_FUNRURAL: TBCDField
      FieldName = 'PRD_FUNRURAL'
      Origin = 'JAEADMIN.NFVENDA.PRD_FUNRURAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.NFVENDA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.NFVENDA.REG_ID'
      Visible = False
    end
    object cdsDadosVOL_QTDE: TIntegerField
      FieldName = 'VOL_QTDE'
      Visible = False
    end
    object cdsDadosVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
      Visible = False
      Size = 50
    end
    object cdsDadosVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
      Visible = False
      Size = 50
    end
    object cdsDadosVOL_NUMERACAO: TStringField
      FieldName = 'VOL_NUMERACAO'
      Visible = False
      Size = 50
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 1146
    Top = 298
  end
  inherited dsDados: TDataSource
    Left = 1210
    Top = 298
  end
  inherited ImageList1: TImageList
    Left = 1047
    Top = 19
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from nfVenda where lanc = -1 order by lanc desc')
    Left = 1114
    Top = 298
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.NFVENDA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDIF: TStringField
      FieldName = 'DIF'
      Origin = 'JAEADMIN.NFVENDA.DIF'
      Size = 1
    end
    object sqlDadosNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'JAEADMIN.NFVENDA.NOTA'
    end
    object sqlDadosSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.NFVENDA.SERIE'
      Size = 2
    end
    object sqlDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'JAEADMIN.NFVENDA.VENDECOD'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.NFVENDA.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.NFVENDA.DESCRICAO'
      Size = 50
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.NFVENDA.DATA'
    end
    object sqlDadosENTREGA: TSQLTimeStampField
      FieldName = 'ENTREGA'
      Origin = 'JAEADMIN.NFVENDA.ENTREGA'
    end
    object sqlDadosNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'JAEADMIN.NFVENDA.NATURCOD'
    end
    object sqlDadosDADOSCOD: TIntegerField
      FieldName = 'DADOSCOD'
      Origin = 'JAEADMIN.NFVENDA.DADOSCOD'
    end
    object sqlDadosTRTIPO: TStringField
      FieldName = 'TRTIPO'
      Origin = 'JAEADMIN.NFVENDA.TRTIPO'
      Size = 1
    end
    object sqlDadosTRCOD: TIntegerField
      FieldName = 'TRCOD'
      Origin = 'JAEADMIN.NFVENDA.TRCOD'
    end
    object sqlDadosTRDES: TStringField
      FieldName = 'TRDES'
      Origin = 'JAEADMIN.NFVENDA.TRDES'
      Size = 50
    end
    object sqlDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'JAEADMIN.NFVENDA.VLRDESC'
    end
    object sqlDadosVLRBASE: TBCDField
      FieldName = 'VLRBASE'
      Origin = 'JAEADMIN.NFVENDA.VLRBASE'
    end
    object sqlDadosVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Origin = 'JAEADMIN.NFVENDA.VLRICMS'
    end
    object sqlDadosVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Origin = 'JAEADMIN.NFVENDA.VLRFRETE'
    end
    object sqlDadosVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Origin = 'JAEADMIN.NFVENDA.VLRPRODUTO'
    end
    object sqlDadosVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Origin = 'JAEADMIN.NFVENDA.VLRIPI'
    end
    object sqlDadosVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Origin = 'JAEADMIN.NFVENDA.VLRNOTA'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.NFVENDA.PESOBRU'
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.NFVENDA.PESOLIQ'
    end
    object sqlDadosQTDESP: TStringField
      FieldName = 'QTDESP'
      Origin = 'JAEADMIN.NFVENDA.QTDESP'
      Size = 100
    end
    object sqlDadosPSP: TIntegerField
      FieldName = 'PSP'
      Origin = 'JAEADMIN.NFVENDA.PSP'
    end
    object sqlDadosFRETECOD: TIntegerField
      FieldName = 'FRETECOD'
      Origin = 'JAEADMIN.NFVENDA.FRETECOD'
    end
    object sqlDadosFRETEDES: TStringField
      FieldName = 'FRETEDES'
      Origin = 'JAEADMIN.NFVENDA.FRETEDES'
      Size = 50
    end
    object sqlDadosTRPLACA: TStringField
      FieldName = 'TRPLACA'
      Origin = 'JAEADMIN.NFVENDA.TRPLACA'
      Size = 15
    end
    object sqlDadosTRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'JAEADMIN.NFVENDA.TRCIDADE'
      Size = 30
    end
    object sqlDadosTRESTADO: TStringField
      FieldName = 'TRESTADO'
      Origin = 'JAEADMIN.NFVENDA.TRESTADO'
      Size = 2
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.NFVENDA.ESTADO'
      Size = 2
    end
    object sqlDadosVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Origin = 'JAEADMIN.NFVENDA.VLRSEGURO'
    end
    object sqlDadosVLRICMSFRE: TBCDField
      FieldName = 'VLRICMSFRE'
      Origin = 'JAEADMIN.NFVENDA.VLRICMSFRE'
    end
    object sqlDadosOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'JAEADMIN.NFVENDA.OBS1'
      Size = 100
    end
    object sqlDadosFORPAG: TIntegerField
      FieldName = 'FORPAG'
      Origin = 'JAEADMIN.NFVENDA.FORPAG'
    end
    object sqlDadosSEGTIP: TStringField
      FieldName = 'SEGTIP'
      Origin = 'JAEADMIN.NFVENDA.SEGTIP'
      Size = 10
    end
    object sqlDadosOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'JAEADMIN.NFVENDA.OBS2'
      Size = 100
    end
    object sqlDadosOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'JAEADMIN.NFVENDA.OBS3'
      Size = 100
    end
    object sqlDadosOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'JAEADMIN.NFVENDA.OBS4'
      Size = 100
    end
    object sqlDadosOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'JAEADMIN.NFVENDA.OBS5'
      Size = 100
    end
    object sqlDadosOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'JAEADMIN.NFVENDA.OBS6'
      Size = 100
    end
    object sqlDadosRECEITA: TIntegerField
      FieldName = 'RECEITA'
      Origin = 'JAEADMIN.NFVENDA.RECEITA'
    end
    object sqlDadosDIFCOD: TIntegerField
      FieldName = 'DIFCOD'
      Origin = 'JAEADMIN.NFVENDA.DIFCOD'
    end
    object sqlDadosDIFDES: TStringField
      FieldName = 'DIFDES'
      Origin = 'JAEADMIN.NFVENDA.DIFDES'
      Size = 50
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.NFVENDA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.NFVENDA.ACESOCOD'
    end
    object sqlDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.NFVENDA.FORMA'
      Size = 30
    end
    object sqlDadosVLRFUNRURAL: TBCDField
      FieldName = 'VLRFUNRURAL'
      Origin = 'JAEADMIN.NFVENDA.VLRFUNRURAL'
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.NFVENDA.PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.NFVENDA.PRODDES'
      Size = 50
    end
    object sqlDadosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'JAEADMIN.NFVENDA.ESTOQUE'
      Size = 1
    end
    object sqlDadosNSUNUM: TIntegerField
      FieldName = 'NSUNUM'
      Origin = 'JAEADMIN.NFVENDA.NSUNUM'
    end
    object sqlDadosNSUDAT: TSQLTimeStampField
      FieldName = 'NSUDAT'
      Origin = 'JAEADMIN.NFVENDA.NSUDAT'
    end
    object sqlDadosNSUHOR: TStringField
      FieldName = 'NSUHOR'
      Origin = 'JAEADMIN.NFVENDA.NSUHOR'
      Size = 8
    end
    object sqlDadosPRODNOTA: TIntegerField
      FieldName = 'PRODNOTA'
      Origin = 'JAEADMIN.NFVENDA.PRODNOTA'
    end
    object sqlDadosNFE_MODELO: TStringField
      FieldName = 'NFE_MODELO'
      Origin = 'JAEADMIN.NFVENDA.NFE_MODELO'
      Visible = False
      Size = 2
    end
    object sqlDadosNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      Origin = 'JAEADMIN.NFVENDA.NFE_STATUS'
      Visible = False
      Size = 2
    end
    object sqlDadosNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Origin = 'JAEADMIN.NFVENDA.NFE_CHAVE'
      Visible = False
      Size = 50
    end
    object sqlDadosNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Origin = 'JAEADMIN.NFVENDA.NFE_RECIBO'
      Visible = False
      Size = 30
    end
    object sqlDadosNFE_PROTOC: TStringField
      FieldName = 'NFE_PROTOC'
      Origin = 'JAEADMIN.NFVENDA.NFE_PROTOC'
      Visible = False
      Size = 30
    end
    object sqlDadosNFE_CANCEL: TStringField
      FieldName = 'NFE_CANCEL'
      Origin = 'JAEADMIN.NFVENDA.NFE_CANCEL'
      Visible = False
      Size = 30
    end
    object sqlDadosNFE_XML: TStringField
      FieldName = 'NFE_XML'
      Origin = 'JAEADMIN.NFVENDA.NFE_XML'
      Visible = False
      Size = 120
    end
    object sqlDadosCLI_FUNPER: TBCDField
      FieldName = 'CLI_FUNPER'
      Origin = 'JAEADMIN.NFVENDA.CLI_FUNPER'
    end
    object sqlDadosCLI_COMISPER: TBCDField
      FieldName = 'CLI_COMISPER'
      Origin = 'JAEADMIN.NFVENDA.CLI_COMISPER'
    end
    object sqlDadosCLI_ADIANTCX: TBCDField
      FieldName = 'CLI_ADIANTCX'
      Origin = 'JAEADMIN.NFVENDA.CLI_ADIANTCX'
    end
    object sqlDadosTRIBNCM_PER: TBCDField
      FieldName = 'TRIBNCM_PER'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_PER'
    end
    object sqlDadosTRIBNCM_VLR: TBCDField
      FieldName = 'TRIBNCM_VLR'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_VLR'
    end
    object sqlDadosVLRCRED: TBCDField
      FieldName = 'VLRCRED'
      Origin = 'JAEADMIN.NFVENDA.VLRCRED'
    end
    object sqlDadosVLRSERV: TBCDField
      FieldName = 'VLRSERV'
      Origin = 'JAEADMIN.NFVENDA.VLRSERV'
    end
    object sqlDadosPERSERV: TBCDField
      FieldName = 'PERSERV'
      Origin = 'JAEADMIN.NFVENDA.PERSERV'
    end
    object sqlDadosPIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'JAEADMIN.NFVENDA.PIS_VLR'
    end
    object sqlDadosCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'JAEADMIN.NFVENDA.COFINS_VLR'
    end
    object sqlDadosCOMISSAOCOD: TIntegerField
      FieldName = 'COMISSAOCOD'
      Origin = 'JAEADMIN.NFVENDA.COMISSAOCOD'
      Visible = False
    end
    object sqlDadosCOMISSAOVLR: TBCDField
      FieldName = 'COMISSAOVLR'
      Origin = 'JAEADMIN.NFVENDA.COMISSAOVLR'
      Visible = False
    end
    object sqlDadosCOMISSAOVALOR: TBCDField
      FieldName = 'COMISSAOVALOR'
      Origin = 'JAEADMIN.NFVENDA.COMISSAOVALOR'
    end
    object sqlDadosOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'JAEADMIN.NFVENDA.OBS7'
      Size = 100
    end
    object sqlDadosOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'JAEADMIN.NFVENDA.OBS8'
      Size = 100
    end
    object sqlDadosOBS9: TStringField
      FieldName = 'OBS9'
      Origin = 'JAEADMIN.NFVENDA.OBS9'
      Size = 100
    end
    object sqlDadosOBS10: TStringField
      FieldName = 'OBS10'
      Origin = 'JAEADMIN.NFVENDA.OBS10'
      Size = 100
    end
    object sqlDadosOBS11: TStringField
      FieldName = 'OBS11'
      Origin = 'JAEADMIN.NFVENDA.OBS11'
      Size = 100
    end
    object sqlDadosOBS12: TStringField
      FieldName = 'OBS12'
      Origin = 'JAEADMIN.NFVENDA.OBS12'
      Size = 100
    end
    object sqlDadosOBS13: TStringField
      FieldName = 'OBS13'
      Origin = 'JAEADMIN.NFVENDA.OBS13'
      Size = 100
    end
    object sqlDadosTRIBNCM_PERE: TBCDField
      FieldName = 'TRIBNCM_PERE'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_PERE'
    end
    object sqlDadosTRIBNCM_VLRE: TBCDField
      FieldName = 'TRIBNCM_VLRE'
      Origin = 'JAEADMIN.NFVENDA.TRIBNCM_VLRE'
    end
    object sqlDadosPRD_FUNRURAL: TBCDField
      FieldName = 'PRD_FUNRURAL'
      Origin = 'JAEADMIN.NFVENDA.PRD_FUNRURAL'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.NFVENDA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.NFVENDA.REG_ID'
    end
    object sqlDadosVOL_QTDE: TIntegerField
      FieldName = 'VOL_QTDE'
      Origin = 'VOL_QTDE'
    end
    object sqlDadosVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
      Origin = 'VOL_ESPECIE'
      Size = 50
    end
    object sqlDadosVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
      Origin = 'VOL_MARCA'
      Size = 50
    end
    object sqlDadosVOL_NUMERACAO: TStringField
      FieldName = 'VOL_NUMERACAO'
      Origin = 'VOL_NUMERACAO'
      Size = 50
    end
  end
  object dsFinan: TDataSource
    DataSet = cdsFinan
    Left = 1210
    Top = 388
  end
  object cdsFinan: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspFinan'
    BeforePost = cdsFinanBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 1178
    Top = 388
    object cdsFinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
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
      DisplayWidth = 10
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
    Left = 1146
    Top = 388
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 1210
    Top = 342
  end
  object cdsDetalhe: TClientDataSet
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
        Name = 'DATA'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PESOLIQ'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PESOBRU'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'UNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 8
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'GRUPOCOD'
        DataType = ftInteger
      end
      item
        Name = 'PERDESC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VLRDESC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VENCTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'RUNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 8
      end
      item
        Name = 'RVALOR'
        DataType = ftBCD
        Precision = 18
        Size = 4
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
        Name = 'ESTOQUE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NATURCOD'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'ICMS_SIT'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ICMS_PER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'ICMS_RED'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'ICMS_BASE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'ICMS_VLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'IPI_SIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'IPI_PER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'IPI_BASE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'IPI_VLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CODLOTECLASS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NCM_COD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NCM_PER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'NCM_VLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'ICMS_CREDPER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'ICMS_CREDVLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'EHSERVICO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'EHSERVPER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'EHSERVVLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'RVLRMEDIO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PIS_SIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PIS_PER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PIS_BASE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PIS_VLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'COFINS_SIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COFINS_PER'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'COFINS_BASE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'COFINS_VLR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'IPI_CENQ'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PRODUTOCOD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NCM_PERE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'NCM_VLRE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'NCM_PERM'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'NCM_VLRM'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'UTRIB'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QTRIB'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'VUNTRIB'
        DataType = ftFMTBcd
        Precision = 18
        Size = 8
      end
      item
        Name = 'CBENEF'
        DataType = ftString
        Size = 20
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
        Name = 'PRUNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 8
      end
      item
        Name = 'PREMB'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'cdsDetalheIndex1'
        Fields = 'LANC;CODIGO;LANCIT'
      end>
    IndexFieldNames = 'LANC;CODIGO;LANCIT'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    StoreDefs = True
    BeforePost = cdsDetalheBeforePost
    AfterScroll = cdsDetalheAfterScroll
    OnReconcileError = cdsDadosReconcileError
    Left = 1178
    Top = 342
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
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsDetalheCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object cdsDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 90
    end
    object cdsDetalhePRODUTOCOD: TStringField
      FieldName = 'PRODUTOCOD'
      Origin = 'PRODUTOCOD'
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
    object cdsDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.###'
    end
    object cdsDetalheUNIT: TFMTBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      DisplayFormat = '#,0.00######'
      Precision = 18
    end
    object cdsDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'GRUPOCOD'
    end
    object cdsDetalhePERDESC: TBCDField
      FieldName = 'PERDESC'
      Origin = 'PERDESC'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      DisplayFormat = '#,0.00##'
    end
    object cdsDetalheVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object cdsDetalheRUNIT: TFMTBCDField
      FieldName = 'RUNIT'
      Origin = 'RUNIT'
      DisplayFormat = '#,0.00######'
      Precision = 18
    end
    object cdsDetalheRVALOR: TBCDField
      FieldName = 'RVALOR'
      Origin = 'RVALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsDetalheACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsDetalheESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Size = 1
    end
    object cdsDetalheNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'NATURCOD'
    end
    object cdsDetalheICMS_PER: TBCDField
      FieldName = 'ICMS_PER'
      Origin = 'ICMS_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheICMS_RED: TBCDField
      FieldName = 'ICMS_RED'
      Origin = 'ICMS_RED'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheICMS_BASE: TBCDField
      FieldName = 'ICMS_BASE'
      Origin = 'ICMS_BASE'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheICMS_VLR: TBCDField
      FieldName = 'ICMS_VLR'
      Origin = 'ICMS_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheIPI_SIT: TStringField
      FieldName = 'IPI_SIT'
      Origin = 'IPI_SIT'
      Size = 3
    end
    object cdsDetalheIPI_PER: TBCDField
      FieldName = 'IPI_PER'
      Origin = 'IPI_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheIPI_BASE: TBCDField
      FieldName = 'IPI_BASE'
      Origin = 'IPI_BASE'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheIPI_VLR: TBCDField
      FieldName = 'IPI_VLR'
      Origin = 'IPI_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalhePRUNIT: TFMTBCDField
      FieldName = 'PRUNIT'
      DisplayFormat = '#,0.00######'
      Precision = 18
    end
    object cdsDetalhePREMB: TBCDField
      FieldName = 'PREMB'
      Precision = 18
    end
    object cdsDetalheCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'CODLOTECLASS'
      Size = 10
    end
    object cdsDetalheNCM_PER: TBCDField
      FieldName = 'NCM_PER'
      Origin = 'NCM_PER'
    end
    object cdsDetalheNCM_VLR: TBCDField
      FieldName = 'NCM_VLR'
      Origin = 'NCM_VLR'
    end
    object cdsDetalheNCM_COD: TStringField
      FieldName = 'NCM_COD'
      Origin = 'NCM_COD'
    end
    object cdsDetalheICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Origin = 'ICMS_CREDPER'
    end
    object cdsDetalheICMS_CREDVLR: TBCDField
      FieldName = 'ICMS_CREDVLR'
      Origin = 'ICMS_CREDVLR'
    end
    object cdsDetalheEHSERVICO: TStringField
      FieldName = 'EHSERVICO'
      Origin = 'EHSERVICO'
      Size = 1
    end
    object cdsDetalheEHSERVPER: TBCDField
      FieldName = 'EHSERVPER'
      Origin = 'EHSERVPER'
    end
    object cdsDetalheEHSERVVLR: TBCDField
      FieldName = 'EHSERVVLR'
      Origin = 'EHSERVVLR'
    end
    object cdsDetalheICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'ICMS_SIT'
      Size = 4
    end
    object cdsDetalheRVLRMEDIO: TBCDField
      FieldName = 'RVLRMEDIO'
      Origin = 'RVLRMEDIO'
      Visible = False
      DisplayFormat = '#,0.00##'
    end
    object cdsDetalhePIS_SIT: TStringField
      FieldName = 'PIS_SIT'
      Origin = 'PIS_SIT'
      Size = 3
    end
    object cdsDetalhePIS_PER: TBCDField
      FieldName = 'PIS_PER'
      Origin = 'PIS_PER'
    end
    object cdsDetalhePIS_BASE: TBCDField
      FieldName = 'PIS_BASE'
      Origin = 'PIS_BASE'
    end
    object cdsDetalhePIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'PIS_VLR'
    end
    object cdsDetalheCOFINS_SIT: TStringField
      FieldName = 'COFINS_SIT'
      Origin = 'COFINS_SIT'
      Size = 3
    end
    object cdsDetalheCOFINS_PER: TBCDField
      FieldName = 'COFINS_PER'
      Origin = 'COFINS_PER'
    end
    object cdsDetalheCOFINS_BASE: TBCDField
      FieldName = 'COFINS_BASE'
      Origin = 'COFINS_BASE'
    end
    object cdsDetalheCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'COFINS_VLR'
    end
    object cdsDetalheIPI_CENQ: TStringField
      FieldName = 'IPI_CENQ'
      Origin = 'IPI_CENQ'
      Size = 3
    end
    object cdsDetalheNCM_PERE: TBCDField
      FieldName = 'NCM_PERE'
      Origin = 'NCM_PERE'
    end
    object cdsDetalheNCM_VLRE: TBCDField
      FieldName = 'NCM_VLRE'
      Origin = 'NCM_VLRE'
    end
    object cdsDetalheNCM_PERM: TBCDField
      FieldName = 'NCM_PERM'
      Origin = 'NCM_PERM'
    end
    object cdsDetalheNCM_VLRM: TBCDField
      FieldName = 'NCM_VLRM'
      Origin = 'NCM_VLRM'
    end
    object cdsDetalheUTRIB: TStringField
      FieldName = 'UTRIB'
      Origin = 'UTRIB'
      Size = 5
    end
    object cdsDetalheQTRIB: TBCDField
      FieldName = 'QTRIB'
      Origin = 'QTRIB'
    end
    object cdsDetalheVUNTRIB: TFMTBCDField
      FieldName = 'VUNTRIB'
      Origin = 'VUNTRIB'
      Precision = 18
    end
    object cdsDetalheCBENEF: TStringField
      FieldName = 'CBENEF'
      Origin = 'CBENEF'
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
    Left = 1146
    Top = 342
  end
  object dsCadNota: TDataSource
    DataSet = TCadNota
    Left = 1248
    Top = 137
  end
  object PopupMenu1: TPopupMenu
    Left = 1000
    Top = 152
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 1032
    Top = 152
    object MenuItem2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem2Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 104
    Top = 417
    object EspelhoNota1: TMenuItem
      Caption = 'Espelho Nota'
      OnClick = EspelhoNota1Click
    end
    object NotaFiscal1: TMenuItem
      Tag = 1
      Caption = 'Nota Fiscal - NFe'
      OnClick = NotaFiscal1Click
    end
    object RomaneiodeVenda1: TMenuItem
      Tag = 5
      Caption = 'Romaneio de Venda'
      OnClick = NotaFiscal1Click
    end
    object Promissria1: TMenuItem
      Tag = 4
      Caption = 'Permiss'#227'o Transito'
      OnClick = NotaFiscal1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
  object dspImport: TDataSetProvider
    DataSet = sqlImport
    UpdateMode = upWhereKeyOnly
    Left = 1143
    Top = 438
  end
  object cdsImport: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspImport'
    BeforePost = cdsImportBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 1175
    Top = 438
    object cdsImportLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsImportLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsImportDI_NR: TStringField
      FieldName = 'DI_NR'
      Origin = 'DI_NR'
      Size = 12
    end
    object cdsImportDI_DT: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'DI_DT'
      Origin = 'DI_DT'
      EditMask = '99/99/9999;1; '
    end
    object cdsImportLOC_DES: TStringField
      FieldName = 'LOC_DES'
      Origin = 'LOC_DES'
      Size = 60
    end
    object cdsImportLOC_UF: TStringField
      FieldName = 'LOC_UF'
      Origin = 'LOC_UF'
      Size = 2
    end
    object cdsImportLOC_DT: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'LOC_DT'
      Origin = 'LOC_DT'
      EditMask = '99/99/9999;1; '
    end
    object cdsImportTRA_VLR: TBCDField
      FieldName = 'TRA_VLR'
      Origin = 'TRA_VLR'
    end
    object cdsImportTRA_CNPJ: TStringField
      FieldName = 'TRA_CNPJ'
      Origin = 'TRA_CNPJ'
      EditMask = '99\.999\.999\/9999\-99;1; '
      Size = 18
    end
    object cdsImportTRA_UF: TStringField
      FieldName = 'TRA_UF'
      Origin = 'TRA_UF'
      Size = 2
    end
    object cdsImportADC_NR: TIntegerField
      FieldName = 'ADC_NR'
      Origin = 'ADC_NR'
    end
    object cdsImportADC_SEQ: TIntegerField
      FieldName = 'ADC_SEQ'
      Origin = 'ADC_SEQ'
    end
    object cdsImportADC_COD: TStringField
      FieldName = 'ADC_COD'
      Origin = 'ADC_COD'
      Size = 60
    end
    object cdsImportIMP_ICM_VLR: TBCDField
      FieldName = 'IMP_ICM_VLR'
      Origin = 'IMP_ICM_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_ICM_PER: TBCDField
      FieldName = 'IMP_ICM_PER'
      Origin = 'IMP_ICM_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_OUT_ADV: TBCDField
      FieldName = 'IMP_OUT_ADV'
      Origin = 'IMP_OUT_ADV'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_OUT_IOF: TBCDField
      FieldName = 'IMP_OUT_IOF'
      Origin = 'IMP_OUT_IOF'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_IPI_VLR: TBCDField
      FieldName = 'IMP_IPI_VLR'
      Origin = 'IMP_IPI_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_IPI_PER: TBCDField
      FieldName = 'IMP_IPI_PER'
      Origin = 'IMP_IPI_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_IPI_COD: TIntegerField
      FieldName = 'IMP_IPI_COD'
      Origin = 'IMP_IPI_COD'
    end
    object cdsImportIMP_II_VLR: TBCDField
      FieldName = 'IMP_II_VLR'
      Origin = 'IMP_II_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_II_PER: TBCDField
      FieldName = 'IMP_II_PER'
      Origin = 'IMP_II_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_II_COD: TIntegerField
      FieldName = 'IMP_II_COD'
      Origin = 'IMP_II_COD'
    end
    object cdsImportIMP_PIS_VLR: TBCDField
      FieldName = 'IMP_PIS_VLR'
      Origin = 'IMP_PIS_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_PIS_PER: TBCDField
      FieldName = 'IMP_PIS_PER'
      Origin = 'IMP_PIS_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_PIS_COD: TIntegerField
      FieldName = 'IMP_PIS_COD'
      Origin = 'IMP_PIS_COD'
    end
    object cdsImportIMP_COF_VLR: TBCDField
      FieldName = 'IMP_COF_VLR'
      Origin = 'IMP_COF_VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_COF_PER: TBCDField
      FieldName = 'IMP_COF_PER'
      Origin = 'IMP_COF_PER'
      DisplayFormat = '#,0.00'
    end
    object cdsImportIMP_COF_COD: TIntegerField
      FieldName = 'IMP_COF_COD'
      Origin = 'IMP_COF_COD'
    end
    object cdsImportTRA_VIA: TStringField
      FieldName = 'TRA_VIA'
      Origin = 'TRA_VIA'
      Size = 50
    end
    object cdsImportTRA_TIP: TStringField
      FieldName = 'TRA_TIP'
      Origin = 'TRA_TIP'
      Size = 50
    end
    object cdsImportREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsImportREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsImport: TDataSource
    DataSet = cdsImport
    Left = 1207
    Top = 438
  end
  object dspReferenciada: TDataSetProvider
    DataSet = sqlReferenciada
    UpdateMode = upWhereKeyOnly
    Left = 1146
    Top = 487
  end
  object cdsReferenciada: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspReferenciada'
    BeforePost = cdsReferenciadaBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 1178
    Top = 487
    object cdsReferenciadaLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsReferenciadaLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsReferenciadaCAMPO1: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'CAMPO1'
      Origin = 'CAMPO1'
      Size = 50
    end
    object cdsReferenciadaNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
    end
    object cdsReferenciadaNFP_MMAA: TStringField
      FieldName = 'NFP_MMAA'
      Origin = 'NFP_MMAA'
      EditMask = '!99/99;1; '
      Size = 5
    end
    object cdsReferenciadaNFP_MODELO: TIntegerField
      FieldName = 'NFP_MODELO'
      Origin = 'NFP_MODELO'
      DisplayFormat = '00'
    end
    object cdsReferenciadaNFP_SERIE: TIntegerField
      FieldName = 'NFP_SERIE'
      Origin = 'NFP_SERIE'
      DisplayFormat = '000'
    end
    object cdsReferenciadaNFP_AAMM: TStringField
      FieldName = 'NFP_AAMM'
      Origin = 'NFP_AAMM'
      Size = 4
    end
    object cdsReferenciadaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsReferenciadaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsReferenciada: TDataSource
    DataSet = cdsReferenciada
    Left = 1210
    Top = 487
  end
  object PopupMenu3: TPopupMenu
    Left = 1064
    Top = 152
    object MenuItem1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem1Click
    end
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 1248
    Top = 185
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 920
    Top = 208
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 952
    Top = 208
  end
  object dsTrans: TDataSource
    DataSet = qrTrans
    Left = 1250
    Top = 234
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
    Left = 984
    Top = 208
  end
  object frxTransp: TfrxDBDataset
    UserName = 'frxTransp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'ESTADO=ESTADO'
      'CIDADECOD=CIDADECOD'
      'CPF=CPF'
      'DOC=DOC'
      'FONE=FONE'
      'CADASTRO=CADASTRO'
      'TRPLACA=TRPLACA'
      'TRESTADO=TRESTADO'
      'MODELO=MODELO'
      'ANO=ANO'
      'FORMA=FORMA'
      'CIDADEDES=CIDADEDES'
      'EMPRECOD=EMPRECOD'
      'ACESOCOD=ACESOCOD'
      'IMPORTEMP=IMPORTEMP'
      'IMPORTLANC=IMPORTLANC'
      'EMAIL=EMAIL')
    DataSet = qrTrans
    BCDToCurrency = False
    Left = 944
    Top = 256
  end
  object frxCadastro: TfrxDBDataset
    UserName = 'frxCadastro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'ESTADO=ESTADO'
      'CPF=CPF'
      'DOC=DOC'
      'FONE=FONE'
      'CIDADEDES=CIDADEDES')
    DataSet = cdsCadastro
    BCDToCurrency = False
    Left = 912
    Top = 256
  end
  object frxFinan: TfrxDBDataset
    UserName = 'frxFinan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LANCIT=LANCIT'
      'LANC=LANC'
      'PARC=PARC'
      'VENCTO=VENCTO'
      'VALOR=VALOR'
      'PERC=PERC'
      'VLR=VLR'
      'CAR=CAR'
      'TIPO=TIPO'
      'BANCOD=BANCOD'
      'BANDOC=BANDOC'
      'BANEMI=BANEMI'
      'EMPRECOD=EMPRECOD'
      'ACESOCOD=ACESOCOD'
      'BANDES=BANDES')
    DataSet = cdsFinan
    BCDToCurrency = False
    Left = 880
    Top = 256
  end
  object frxDetalhe: TfrxDBDataset
    UserName = 'frxDetalhe'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LANCIT=LANCIT'
      'LANC=LANC'
      'DATA=DATA'
      'CLIENTE=CLIENTE'
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'PRODUTOCOD=PRODUTOCOD'
      'UNIDADE=UNIDADE'
      'PESOLIQ=PESOLIQ'
      'PESOBRU=PESOBRU'
      'QTDE=QTDE'
      'UNIT=UNIT'
      'VALOR=VALOR'
      'GRUPOCOD=GRUPOCOD'
      'PERDESC=PERDESC'
      'VLRDESC=VLRDESC'
      'VENCTO=VENCTO'
      'RUNIT=RUNIT'
      'RVALOR=RVALOR'
      'EMPRECOD=EMPRECOD'
      'ACESOCOD=ACESOCOD'
      'ESTOQUE=ESTOQUE'
      'NATURCOD=NATURCOD'
      'ICMS_PER=ICMS_PER'
      'ICMS_RED=ICMS_RED'
      'ICMS_BASE=ICMS_BASE'
      'ICMS_VLR=ICMS_VLR'
      'IPI_SIT=IPI_SIT'
      'IPI_PER=IPI_PER'
      'IPI_BASE=IPI_BASE'
      'IPI_VLR=IPI_VLR'
      'PRUNIT=PRUNIT'
      'PREMB=PREMB'
      'CODLOTECLASS=CODLOTECLASS'
      'NCM_PER=NCM_PER'
      'NCM_VLR=NCM_VLR'
      'NCM_COD=NCM_COD'
      'ICMS_CREDPER=ICMS_CREDPER'
      'ICMS_CREDVLR=ICMS_CREDVLR'
      'EHSERVICO=EHSERVICO'
      'EHSERVPER=EHSERVPER'
      'EHSERVVLR=EHSERVVLR'
      'ICMS_SIT=ICMS_SIT'
      'RVLRMEDIO=RVLRMEDIO'
      'PIS_SIT=PIS_SIT'
      'PIS_PER=PIS_PER'
      'PIS_BASE=PIS_BASE'
      'PIS_VLR=PIS_VLR'
      'COFINS_SIT=COFINS_SIT'
      'COFINS_PER=COFINS_PER'
      'COFINS_BASE=COFINS_BASE'
      'COFINS_VLR=COFINS_VLR'
      'IPI_CENQ=IPI_CENQ'
      'NCM_PERE=NCM_PERE'
      'NCM_VLRE=NCM_VLRE'
      'NCM_PERM=NCM_PERM'
      'NCM_VLRM=NCM_VLRM'
      'UTRIB=UTRIB'
      'QTRIB=QTRIB'
      'VUNTRIB=VUNTRIB'
      'CBENEF=CBENEF')
    DataSet = cdsDetalhe
    BCDToCurrency = False
    Left = 848
    Top = 256
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LANC=LANC'
      'DATA=DATA'
      'NFE_STATUS=NFE_STATUS'
      'DIFCOD=DIFCOD'
      'DIF=DIF'
      'NOTA=NOTA'
      'SERIE=SERIE'
      'DESCRICAO=DESCRICAO'
      'VLRPRODUTO=VLRPRODUTO'
      'VLRNOTA=VLRNOTA'
      'VENDECOD=VENDECOD'
      'CODIGO=CODIGO'
      'ENTREGA=ENTREGA'
      'NATURCOD=NATURCOD'
      'DADOSCOD=DADOSCOD'
      'TRTIPO=TRTIPO'
      'TRCOD=TRCOD'
      'TRDES=TRDES'
      'VLRDESC=VLRDESC'
      'VLRBASE=VLRBASE'
      'DIFDES=DIFDES'
      'VLRICMS=VLRICMS'
      'VLRFRETE=VLRFRETE'
      'VLRIPI=VLRIPI'
      'PESOBRU=PESOBRU'
      'PESOLIQ=PESOLIQ'
      'QTDESP=QTDESP'
      'PSP=PSP'
      'FRETECOD=FRETECOD'
      'FRETEDES=FRETEDES'
      'TRPLACA=TRPLACA'
      'TRCIDADE=TRCIDADE'
      'TRESTADO=TRESTADO'
      'ESTADO=ESTADO'
      'VLRSEGURO=VLRSEGURO'
      'VLRICMSFRE=VLRICMSFRE'
      'OBS1=OBS1'
      'FORPAG=FORPAG'
      'SEGTIP=SEGTIP'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'RECEITA=RECEITA'
      'EMPRECOD=EMPRECOD'
      'ACESOCOD=ACESOCOD'
      'FORMA=FORMA'
      'VLRFUNRURAL=VLRFUNRURAL'
      'PRODNOTA=PRODNOTA'
      'PRODDES=PRODDES'
      'PRODCOD=PRODCOD'
      'ESTOQUE=ESTOQUE'
      'NSUNUM=NSUNUM'
      'NSUDAT=NSUDAT'
      'NSUHOR=NSUHOR'
      'NFE_MODELO=NFE_MODELO'
      'NFE_CHAVE=NFE_CHAVE'
      'NFE_RECIBO=NFE_RECIBO'
      'NFE_PROTOC=NFE_PROTOC'
      'NFE_CANCEL=NFE_CANCEL'
      'NFE_XML=NFE_XML'
      'CLI_FUNPER=CLI_FUNPER'
      'CLI_COMISPER=CLI_COMISPER'
      'CLI_ADIANTCX=CLI_ADIANTCX'
      'TRIBNCM_PER=TRIBNCM_PER'
      'TRIBNCM_VLR=TRIBNCM_VLR'
      'VLRCRED=VLRCRED'
      'VLRSERV=VLRSERV'
      'PERSERV=PERSERV'
      'PIS_VLR=PIS_VLR'
      'COFINS_VLR=COFINS_VLR'
      'COMISSAOCOD=COMISSAOCOD'
      'COMISSAOVLR=COMISSAOVLR'
      'COMISSAOVALOR=COMISSAOVALOR'
      'OBS7=OBS7'
      'OBS8=OBS8'
      'OBS9=OBS9'
      'OBS10=OBS10'
      'OBS11=OBS11'
      'OBS12=OBS12'
      'vNatOper=vNatOper'
      'vFretePor=vFretePor'
      'OBS13=OBS13'
      'TRIBNCM_PERE=TRIBNCM_PERE'
      'TRIBNCM_VLRE=TRIBNCM_VLRE'
      'PRD_FUNRURAL=PRD_FUNRURAL'
      'REGLOG=REGLOG'
      'REG_ID=REG_ID'
      'VOL_QTDE=VOL_QTDE'
      'VOL_ESPECIE=VOL_ESPECIE'
      'VOL_MARCA=VOL_MARCA'
      'VOL_NUMERACAO=VOL_NUMERACAO')
    DataSet = cdsDados
    BCDToCurrency = False
    Left = 816
    Top = 256
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'frxEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'ENDERECO=ENDERECO'
      'CIDADECOD=CIDADECOD'
      'CIDADEDES=CIDADEDES'
      'BAIRRO=BAIRRO'
      'ESTADO=ESTADO'
      'CEP=CEP'
      'CPF=CPF'
      'DOC=DOC'
      'FONE=FONE'
      'SENHA=SENHA'
      'EMAIL=EMAIL'
      'ENDGERAL=ENDGERAL'
      'FOLDER=FOLDER'
      'SENHADES=SENHADES'
      'ANO=ANO'
      'MES=MES'
      'LANC=LANC'
      'PROTECAO=PROTECAO'
      'LANCIT=LANCIT'
      'BANINS=BANINS'
      'BANAGE=BANAGE'
      'BANCTA=BANCTA'
      'BANDES=BANDES'
      'BANCVE=BANCVE'
      'BANCTR=BANCTR'
      'SIMPLES=SIMPLES'
      'NSU=NSU'
      'CNAE=CNAE'
      'CONTADOR=CONTADOR'
      'CONTADORCRC=CONTADORCRC'
      'CODCIDIBGE=CODCIDIBGE'
      'NUMERO=NUMERO'
      'TPREGIME=TPREGIME'
      'TRIBUTO1=TRIBUTO1'
      'TRIBUTO2=TRIBUTO2'
      'TRIBUTO3=TRIBUTO3'
      'ICMS_CREDITO=ICMS_CREDITO'
      'ICMS_CREDPER=ICMS_CREDPER'
      'SERVICOPER=SERVICOPER'
      'IM=IM'
      'WEBLOCAL=WEBLOCAL')
    DataSet = DM.TEmpresa
    BCDToCurrency = False
    Left = 784
    Top = 256
  end
  object frxReportNota: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    EngineOptions.IgnoreDevByZero = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44003.620024467600000000
    ReportOptions.LastChange = 44523.374979004600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 984
    Top = 256
    Datasets = <
      item
        DataSet = frxCadastro
        DataSetName = 'frxCadastro'
      end
      item
        DataSet = frxDados
        DataSetName = 'frxDados'
      end
      item
        DataSet = frxDetalhe
        DataSetName = 'frxDetalhe'
      end
      item
        DataSet = frxEmpresa
        DataSetName = 'frxEmpresa'
      end
      item
        DataSet = frxFinan
        DataSetName = 'frxFinan'
      end
      item
        DataSet = frxTransp
        DataSetName = 'frxTransp'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object frxEmpresaDESCRICAO: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."DESCRICAO"] - [frxEmpresa."CPF"]')
        end
        object frxEmpresaCIDADEDES: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 551.811380000000000000
          Height = 18.897650000000000000
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."CIDADEDES"]/[frxEmpresa."ESTADO"]')
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 604.149970000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Impresso em: [Date] [Time]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 564.354670000000000000
          Top = 22.677180000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pagina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 755.905511810000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 92.488250000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Child3OnBeforePrint'
        Stretched = True
        ToNRows = 0
        ToNRowsMode = rmCount
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
          Memo.UTF8W = (
            'DUPLICATAS')
          ParentFont = False
        end
        object Subreport1: TfrxSubreport
          AllowVectorExport = True
          Top = 14.118120000000000000
          Width = 752.126470000000000000
          Height = 18.897650000000000000
          Page = frxReportNota.Page2
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Top = 54.913420000000120000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464537640000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259813230000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'DESCR_CST')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716506140000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 372.283493860000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960659210000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'VALOR'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'VALOR'
            'TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 79.370130000000270000
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
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 79.370130000000270000
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
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 68.031539999999970000
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
          Memo.UTF8W = (
            'AL'#205'QUOTA %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 11.338582680000000000
        Top = 389.291590000000000000
        Width = 755.906000000000000000
        DataSet = frxDetalhe
        DataSetName = 'frxDetalhe'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DataField = 'PRODUTOCOD'
          DataSet = frxDetalhe
          DataSetName = 'frxDetalhe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDetalhe."PRODUTOCOD"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 222.992125984252000000
          Height = 11.338582680000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDetalhe."DESCRICAO"]')
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
          Memo.UTF8W = (
            '[frxDetalhe."NCM_COD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259813230000000000
          Width = 26.456695350000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."ICMS_SIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716506140000000000
          Width = 24.566929130000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."NATURCOD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 372.283493860000000000
          Width = 22.677180000000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960659210000000000
          Width = 43.464574250000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."QTDE"]')
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
          Memo.UTF8W = (
            '[frxDetalhe."UNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDetalhe."VLRDESC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."RVALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."ICMS_BASE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
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
          Memo.UTF8W = (
            '[frxDetalhe."ICMS_VLR"]')
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
          Memo.UTF8W = (
            '[frxDetalhe."IPI_VLR"]')
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
          Memo.UTF8W = (
            '[frxDetalhe."ICMS_PER"]')
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
          Memo.UTF8W = (
            '[frxDetalhe."IPI_PER"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 298.582870000000000000
        Top = 461.102660000000000000
        Width = 755.906000000000000000
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 30.000000000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO IMPOSTO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Top = 41.338590000000010000
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
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 50.787330790000000000
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
          Memo.UTF8W = (
            '[frxDados."VLRBASE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 41.338590000000010000
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
          Memo.UTF8W = (
            'VALOR DO ICMS')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 50.787330790000000000
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
          Memo.UTF8W = (
            '[frxDados."VLRICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 41.338590000000010000
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
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 50.787330790000000000
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
          Top = 41.338590000000010000
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
          Memo.UTF8W = (
            'VALOR DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 50.787330790000000000
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
          Top = 41.338590000000010000
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
          Memo.UTF8W = (
            'VALOR TOTAL DOS PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 49.787330790000000000
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
          Memo.UTF8W = (
            '[frxDados."VLRPRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 459.590848000000000000
          Top = 67.795300000000000000
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
          Memo.UTF8W = (
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 459.590848000000000000
          Top = 77.244040790000100000
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
          Memo.UTF8W = (
            '[frxDados."VLRIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 344.693136000000000000
          Top = 67.795300000000000000
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
          Memo.UTF8W = (
            'OUTRAS DESPESAS ACESS'#211'RIAS')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 344.693136000000000000
          Top = 77.244040790000100000
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
          Top = 67.795300000000000000
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
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 229.795424000000000000
          Top = 77.244040790000100000
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
          Memo.UTF8W = (
            '[frxDados."VLRDESC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 114.897712000000000000
          Top = 67.795300000000000000
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
          Memo.UTF8W = (
            'VALOR DO SEGURO')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 114.897712000000000000
          Top = 77.244040790000100000
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
          Memo.UTF8W = (
            '[frxDados."VLRSEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Top = 67.795300000000000000
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
          Memo.UTF8W = (
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = 77.244040790000100000
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
          Memo.UTF8W = (
            '[frxDados."VLRFRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 67.795300000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 76.244040790000100000
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
          Memo.UTF8W = (
            '[frxDados."VLRNOTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Top = 96.141729840000150000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADOR / VOLUMES TRANSPORTADOS')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 109.370130000000000000
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
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 118.818870790000000000
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
          Top = 109.370130000000000000
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
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 118.818870790000000000
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
          Memo.UTF8W = (
            '[frxDados."TRESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 109.370130000000000000
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
          Memo.UTF8W = (
            'PLACA DO VE'#205'CULO')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 118.818870790000000000
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
          Memo.UTF8W = (
            '[frxDados."TRPLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 109.370130000000000000
          Width = 60.472480000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO ANTT')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 118.818870790000000000
          Width = 83.149660000000000000
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
          Top = 109.370130000000000000
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
          Memo.UTF8W = (
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 118.818870790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DataField = 'vFretePor'
          DataSet = frxDados
          DataSetName = 'frxDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxDados."vFretePor"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Top = 109.370130000000000000
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
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Top = 118.818870790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          DataField = 'DESCRICAO'
          DataSet = frxTransp
          DataSetName = 'frxTransp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxTransp."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 135.826840000000000000
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
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 145.275580790000100000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          DataField = 'ESTADO'
          DataSet = frxTransp
          DataSetName = 'frxTransp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxTransp."ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 135.826840000000000000
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
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 636.094512600000000000
          Top = 145.275580790000100000
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
          Top = 135.826840000000000000
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
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 145.275580790000100000
          Width = 241.889920000000000000
          Height = 17.007874020000000000
          DataField = 'CIDADEDES'
          DataSet = frxTransp
          DataSetName = 'frxTransp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxTransp."CIDADEDES"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Top = 135.826840000000000000
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
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Top = 145.275580790000100000
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
          Top = 162.283550000000000000
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
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Top = 171.732290790000000000
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
          Top = 162.283550000000000000
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
          Memo.UTF8W = (
            'ESP'#201'CIE')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 1.519686670000000000
          Top = 171.732290790000000000
          Width = 47.874046670000000000
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
          Memo.UTF8W = (
            '[frxDados."QTDESP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 186.456813330000000000
          Top = 162.283550000000000000
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
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 186.456813330000000000
          Top = 171.732290790000000000
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
          Top = 162.283550000000000000
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
          Memo.UTF8W = (
            'NUMERA'#199#195'O')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 171.732290790000000000
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
          Top = 162.283550000000000000
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
          Memo.UTF8W = (
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 516.535766670000000000
          Top = 171.732290790000000000
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
          Memo.UTF8W = (
            '[frxDados."PESOBRU"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 636.220883330000000000
          Top = 162.283550000000000000
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
          Memo.UTF8W = (
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 636.220883330000000000
          Top = 171.732290790000000000
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
          Memo.UTF8W = (
            '[frxDados."PESOLIQ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Top = 200.519790000000100000
          Width = 521.575140000000100000
          Height = 94.488250000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            
              '[frxDados."OBS2"] [frxDados."OBS3"] [frxDados."OBS4"] [frxDados.' +
              '"OBS5"] [frxDados."OBS6"] [frxDados."OBS7"] [frxDados."OBS8"] [f' +
              'rxDados."OBS9"] [frxDados."OBS10"] [frxDados."OBS11"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456709999999990000
          Width = 755.906000000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 755.905511810000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 188.976500000000000000
          Width = 521.575140000000100000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Dados adicionais')
          ParentFont = False
        end
        object frxTranspENDERECO: TfrxMemoView
          AllowVectorExport = True
          Top = 145.275580790000100000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxTransp
          DataSetName = 'frxTransp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxTransp."ENDERECO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 143.622140000000000000
          Width = 114.519738740000000000
          Height = 17.007874020000000000
          DataField = 'DOC'
          DataSet = frxTransp
          DataSetName = 'frxTransp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxTransp."DOC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 118.818870790000000000
          Width = 118.299268740000000000
          Height = 17.007874020000000000
          DataField = 'CPF'
          DataSet = frxTransp
          DataSetName = 'frxTransp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxTransp."CPF"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 125.488232910000000000
        Top = 86.929190000000000000
        Width = 755.906000000000000000
        Child = frxReportNota.Child3
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 109.606308980000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 113.740260000000000000
          Top = 3.000000000000000000
          Width = 109.606308980000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 116.960730000000000000
          Top = 10.559060000000000000
          Width = 102.047310000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxDados."DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 226.582870000000000000
          Top = 3.000000000000000000
          Width = 109.606299210000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 230.141930000000000000
          Top = 10.559060000000000000
          Width = 102.047310000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxDados."DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 10.559060000000000000
          Width = 102.047310000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxDados."NOTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 46.118120000000010000
          Width = 593.386210000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 55.566860790000000000
          Width = 582.047620000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxDados."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 108.480280790000000000
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
          Left = 593.661720000000000000
          Top = 46.118120000000010000
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
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 680.590910000000000000
          Top = 72.574829999999990000
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
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 679.590910000000000000
          Top = 82.023570790000010000
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
          Memo.UTF8W = (
            '[frxCadastro."CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 72.574829999999990000
          Width = 294.803340000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BAIRRO / DISTRITO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 82.023570790000010000
          Width = 283.464750000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxCadastro."BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 72.574829999999990000
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
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 82.023570790000010000
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
          Memo.UTF8W = (
            '[frxCadastro."ENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 99.031540000000010000
          Width = 480.000310000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 108.480280790000000000
          Width = 472.441250000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxCadastro."CIDADEDES"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 480.275820000000000000
          Top = 99.031540000000010000
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
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 479.275820000000000000
          Top = 108.480280790000000000
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
          Memo.UTF8W = (
            '[frxCadastro."ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 510.512060000000000000
          Top = 99.031540000000010000
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
          Memo.UTF8W = (
            'TELEFONE / FAX')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 509.512060000000000000
          Top = 108.480280790000000000
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
          Memo.UTF8W = (
            '[frxCadastro."FONE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 623.897960000000000000
          Top = 99.031540000000010000
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
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 622.897960000000000000
          Top = 108.480280790000000000
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
          Memo.UTF8W = (
            '[frxCadastro."DOC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 33.000000000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / REMETENTE')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 595.882190000000000000
          Top = 55.566860789999990000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxCadastro."CPF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 342.937230000000000000
          Top = 2.779529999999994000
          Width = 404.409639210000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Natureza Opera'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 10.559060000000000000
          Width = 400.630180000000000000
          Height = 17.007874020000000000
          DataField = 'vNatOper'
          DataSet = frxDados
          DataSetName = 'frxDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[frxDados."vNatOper"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 5
        ColumnWidth = 151.181102362205000000
        DataSet = frxFinan
        DataSetName = 'frxFinan'
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
          Memo.UTF8W = (
            '[frxDados."NOTA"]'
            '[frxFinan."VENCTO"]'
            '[frxFinan."VALOR" #n%2,2n]')
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
          Memo.UTF8W = (
            'N'#250'mero'
            'Vencimento'
            'Valor R$')
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
          Memo.UTF8W = (
            ':'
            ':'
            ':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
  object sqlDetalhe: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfvendco where lanc = -1')
    Left = 1114
    Top = 342
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
    object sqlDetalheCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object sqlDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 90
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
    object sqlDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlDetalheUNIT: TFMTBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Precision = 18
    end
    object sqlDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlDetalheGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'GRUPOCOD'
    end
    object sqlDetalhePERDESC: TBCDField
      FieldName = 'PERDESC'
      Origin = 'PERDESC'
      Precision = 18
    end
    object sqlDetalheVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      Precision = 18
    end
    object sqlDetalheVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object sqlDetalheRUNIT: TFMTBCDField
      FieldName = 'RUNIT'
      Origin = 'RUNIT'
      Precision = 18
    end
    object sqlDetalheRVALOR: TBCDField
      FieldName = 'RVALOR'
      Origin = 'RVALOR'
      Precision = 18
    end
    object sqlDetalheEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlDetalheACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlDetalheESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Size = 1
    end
    object sqlDetalheNATURCOD: TBCDField
      FieldName = 'NATURCOD'
      Origin = 'NATURCOD'
      Precision = 18
    end
    object sqlDetalheICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'ICMS_SIT'
      Size = 4
    end
    object sqlDetalheICMS_PER: TBCDField
      FieldName = 'ICMS_PER'
      Origin = 'ICMS_PER'
      Precision = 18
    end
    object sqlDetalheICMS_RED: TBCDField
      FieldName = 'ICMS_RED'
      Origin = 'ICMS_RED'
      Precision = 18
    end
    object sqlDetalheICMS_BASE: TBCDField
      FieldName = 'ICMS_BASE'
      Origin = 'ICMS_BASE'
      Precision = 18
    end
    object sqlDetalheICMS_VLR: TBCDField
      FieldName = 'ICMS_VLR'
      Origin = 'ICMS_VLR'
      Precision = 18
    end
    object sqlDetalheIPI_SIT: TStringField
      FieldName = 'IPI_SIT'
      Origin = 'IPI_SIT'
      Size = 3
    end
    object sqlDetalheIPI_PER: TBCDField
      FieldName = 'IPI_PER'
      Origin = 'IPI_PER'
      Precision = 18
    end
    object sqlDetalheIPI_BASE: TBCDField
      FieldName = 'IPI_BASE'
      Origin = 'IPI_BASE'
      Precision = 18
    end
    object sqlDetalheIPI_VLR: TBCDField
      FieldName = 'IPI_VLR'
      Origin = 'IPI_VLR'
      Precision = 18
    end
    object sqlDetalheCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'CODLOTECLASS'
      Size = 10
    end
    object sqlDetalheNCM_COD: TStringField
      FieldName = 'NCM_COD'
      Origin = 'NCM_COD'
    end
    object sqlDetalheNCM_PER: TBCDField
      FieldName = 'NCM_PER'
      Origin = 'NCM_PER'
      Precision = 18
    end
    object sqlDetalheNCM_VLR: TBCDField
      FieldName = 'NCM_VLR'
      Origin = 'NCM_VLR'
      Precision = 18
    end
    object sqlDetalheICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Origin = 'ICMS_CREDPER'
      Precision = 18
    end
    object sqlDetalheICMS_CREDVLR: TBCDField
      FieldName = 'ICMS_CREDVLR'
      Origin = 'ICMS_CREDVLR'
      Precision = 18
    end
    object sqlDetalheEHSERVICO: TStringField
      FieldName = 'EHSERVICO'
      Origin = 'EHSERVICO'
      Size = 4
    end
    object sqlDetalheEHSERVPER: TBCDField
      FieldName = 'EHSERVPER'
      Origin = 'EHSERVPER'
      Precision = 18
    end
    object sqlDetalheEHSERVVLR: TBCDField
      FieldName = 'EHSERVVLR'
      Origin = 'EHSERVVLR'
      Precision = 18
    end
    object sqlDetalheRVLRMEDIO: TBCDField
      FieldName = 'RVLRMEDIO'
      Origin = 'RVLRMEDIO'
      Precision = 18
    end
    object sqlDetalhePIS_SIT: TStringField
      FieldName = 'PIS_SIT'
      Origin = 'PIS_SIT'
      Size = 3
    end
    object sqlDetalhePIS_PER: TBCDField
      FieldName = 'PIS_PER'
      Origin = 'PIS_PER'
      Precision = 18
    end
    object sqlDetalhePIS_BASE: TBCDField
      FieldName = 'PIS_BASE'
      Origin = 'PIS_BASE'
      Precision = 18
    end
    object sqlDetalhePIS_VLR: TBCDField
      FieldName = 'PIS_VLR'
      Origin = 'PIS_VLR'
      Precision = 18
    end
    object sqlDetalheCOFINS_SIT: TStringField
      FieldName = 'COFINS_SIT'
      Origin = 'COFINS_SIT'
      Size = 3
    end
    object sqlDetalheCOFINS_PER: TBCDField
      FieldName = 'COFINS_PER'
      Origin = 'COFINS_PER'
      Precision = 18
    end
    object sqlDetalheCOFINS_BASE: TBCDField
      FieldName = 'COFINS_BASE'
      Origin = 'COFINS_BASE'
      Precision = 18
    end
    object sqlDetalheCOFINS_VLR: TBCDField
      FieldName = 'COFINS_VLR'
      Origin = 'COFINS_VLR'
      Precision = 18
    end
    object sqlDetalheIPI_CENQ: TStringField
      FieldName = 'IPI_CENQ'
      Origin = 'IPI_CENQ'
      Size = 3
    end
    object sqlDetalhePRODUTOCOD: TStringField
      FieldName = 'PRODUTOCOD'
      Origin = 'PRODUTOCOD'
    end
    object sqlDetalheNCM_PERE: TBCDField
      FieldName = 'NCM_PERE'
      Origin = 'NCM_PERE'
      Precision = 18
    end
    object sqlDetalheNCM_VLRE: TBCDField
      FieldName = 'NCM_VLRE'
      Origin = 'NCM_VLRE'
      Precision = 18
    end
    object sqlDetalheNCM_PERM: TBCDField
      FieldName = 'NCM_PERM'
      Origin = 'NCM_PERM'
      Precision = 18
    end
    object sqlDetalheNCM_VLRM: TBCDField
      FieldName = 'NCM_VLRM'
      Origin = 'NCM_VLRM'
      Precision = 18
    end
    object sqlDetalheUTRIB: TStringField
      FieldName = 'UTRIB'
      Origin = 'UTRIB'
      Size = 5
    end
    object sqlDetalheQTRIB: TBCDField
      FieldName = 'QTRIB'
      Origin = 'QTRIB'
      Precision = 18
    end
    object sqlDetalheVUNTRIB: TFMTBCDField
      FieldName = 'VUNTRIB'
      Origin = 'VUNTRIB'
      Precision = 18
    end
    object sqlDetalheCBENEF: TStringField
      FieldName = 'CBENEF'
      Origin = 'CBENEF'
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
    object sqlDetalhePRUNIT: TFMTBCDField
      FieldName = 'PRUNIT'
      Origin = 'PRUNIT'
      Precision = 18
    end
    object sqlDetalhePREMB: TBCDField
      FieldName = 'PREMB'
      Origin = 'PREMB'
      Precision = 18
    end
  end
  object sqlFinan: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from fipave where lanc = -1')
    Left = 1114
    Top = 388
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
  object sqlImport: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfvendimp where lanc = -1')
    Left = 1114
    Top = 439
    object sqlImportLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlImportLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlImportDI_NR: TStringField
      FieldName = 'DI_NR'
      Origin = 'DI_NR'
      Size = 12
    end
    object sqlImportDI_DT: TSQLTimeStampField
      FieldName = 'DI_DT'
      Origin = 'DI_DT'
    end
    object sqlImportLOC_DES: TStringField
      FieldName = 'LOC_DES'
      Origin = 'LOC_DES'
      Size = 60
    end
    object sqlImportLOC_UF: TStringField
      FieldName = 'LOC_UF'
      Origin = 'LOC_UF'
      Size = 2
    end
    object sqlImportLOC_DT: TSQLTimeStampField
      FieldName = 'LOC_DT'
      Origin = 'LOC_DT'
    end
    object sqlImportTRA_VIA: TStringField
      FieldName = 'TRA_VIA'
      Origin = 'TRA_VIA'
      Size = 50
    end
    object sqlImportTRA_VLR: TBCDField
      FieldName = 'TRA_VLR'
      Origin = 'TRA_VLR'
      Precision = 18
    end
    object sqlImportTRA_TIP: TStringField
      FieldName = 'TRA_TIP'
      Origin = 'TRA_TIP'
      Size = 50
    end
    object sqlImportTRA_CNPJ: TStringField
      FieldName = 'TRA_CNPJ'
      Origin = 'TRA_CNPJ'
      Size = 18
    end
    object sqlImportTRA_UF: TStringField
      FieldName = 'TRA_UF'
      Origin = 'TRA_UF'
      Size = 2
    end
    object sqlImportADC_NR: TIntegerField
      FieldName = 'ADC_NR'
      Origin = 'ADC_NR'
    end
    object sqlImportADC_SEQ: TIntegerField
      FieldName = 'ADC_SEQ'
      Origin = 'ADC_SEQ'
    end
    object sqlImportADC_COD: TStringField
      FieldName = 'ADC_COD'
      Origin = 'ADC_COD'
      Size = 60
    end
    object sqlImportIMP_ICM_VLR: TBCDField
      FieldName = 'IMP_ICM_VLR'
      Origin = 'IMP_ICM_VLR'
      Precision = 18
    end
    object sqlImportIMP_ICM_PER: TBCDField
      FieldName = 'IMP_ICM_PER'
      Origin = 'IMP_ICM_PER'
      Precision = 18
    end
    object sqlImportIMP_OUT_ADV: TBCDField
      FieldName = 'IMP_OUT_ADV'
      Origin = 'IMP_OUT_ADV'
      Precision = 18
    end
    object sqlImportIMP_OUT_IOF: TBCDField
      FieldName = 'IMP_OUT_IOF'
      Origin = 'IMP_OUT_IOF'
      Precision = 18
    end
    object sqlImportIMP_IPI_VLR: TBCDField
      FieldName = 'IMP_IPI_VLR'
      Origin = 'IMP_IPI_VLR'
      Precision = 18
    end
    object sqlImportIMP_IPI_PER: TBCDField
      FieldName = 'IMP_IPI_PER'
      Origin = 'IMP_IPI_PER'
      Precision = 18
    end
    object sqlImportIMP_IPI_COD: TIntegerField
      FieldName = 'IMP_IPI_COD'
      Origin = 'IMP_IPI_COD'
    end
    object sqlImportIMP_II_VLR: TBCDField
      FieldName = 'IMP_II_VLR'
      Origin = 'IMP_II_VLR'
      Precision = 18
    end
    object sqlImportIMP_II_PER: TBCDField
      FieldName = 'IMP_II_PER'
      Origin = 'IMP_II_PER'
      Precision = 18
    end
    object sqlImportIMP_II_COD: TIntegerField
      FieldName = 'IMP_II_COD'
      Origin = 'IMP_II_COD'
    end
    object sqlImportIMP_PIS_VLR: TBCDField
      FieldName = 'IMP_PIS_VLR'
      Origin = 'IMP_PIS_VLR'
      Precision = 18
    end
    object sqlImportIMP_PIS_PER: TBCDField
      FieldName = 'IMP_PIS_PER'
      Origin = 'IMP_PIS_PER'
      Precision = 18
    end
    object sqlImportIMP_PIS_COD: TIntegerField
      FieldName = 'IMP_PIS_COD'
      Origin = 'IMP_PIS_COD'
    end
    object sqlImportIMP_COF_VLR: TBCDField
      FieldName = 'IMP_COF_VLR'
      Origin = 'IMP_COF_VLR'
      Precision = 18
    end
    object sqlImportIMP_COF_PER: TBCDField
      FieldName = 'IMP_COF_PER'
      Origin = 'IMP_COF_PER'
      Precision = 18
    end
    object sqlImportIMP_COF_COD: TIntegerField
      FieldName = 'IMP_COF_COD'
      Origin = 'IMP_COF_COD'
    end
    object sqlImportREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlImportREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqlReferenciada: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from nfvendref where lanc = -1 order by nota')
    Left = 1114
    Top = 487
    object sqlReferenciadaLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlReferenciadaLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlReferenciadaCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Origin = 'CAMPO1'
      Size = 50
    end
    object sqlReferenciadaNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'NOTA'
    end
    object sqlReferenciadaNFP_MMAA: TStringField
      FieldName = 'NFP_MMAA'
      Origin = 'NFP_MMAA'
      Size = 5
    end
    object sqlReferenciadaNFP_AAMM: TStringField
      FieldName = 'NFP_AAMM'
      Origin = 'NFP_AAMM'
      Size = 4
    end
    object sqlReferenciadaNFP_MODELO: TIntegerField
      FieldName = 'NFP_MODELO'
      Origin = 'NFP_MODELO'
    end
    object sqlReferenciadaNFP_SERIE: TIntegerField
      FieldName = 'NFP_SERIE'
      Origin = 'NFP_SERIE'
    end
    object sqlReferenciadaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlReferenciadaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TCadNota: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadnota')
    Left = 1210
    Top = 139
    object TCadNotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TCadNotaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object TCadNotaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object TCadNotaNATURDEN: TBCDField
      FieldName = 'NATURDEN'
      Origin = 'NATURDEN'
      Precision = 18
    end
    object TCadNotaNATURFOR: TBCDField
      FieldName = 'NATURFOR'
      Origin = 'NATURFOR'
      Precision = 18
    end
    object TCadNotaICMSTIPO: TStringField
      FieldName = 'ICMSTIPO'
      Origin = 'ICMSTIPO'
    end
    object TCadNotaICMSDEN: TBCDField
      FieldName = 'ICMSDEN'
      Origin = 'ICMSDEN'
      Precision = 18
    end
    object TCadNotaICMSFOR: TBCDField
      FieldName = 'ICMSFOR'
      Origin = 'ICMSFOR'
      Precision = 18
    end
    object TCadNotaESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Size = 1
    end
    object TCadNotaFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      Origin = 'FINANCEIRO'
      Size = 1
    end
    object TCadNotaFUNRURAL: TStringField
      FieldName = 'FUNRURAL'
      Origin = 'FUNRURAL'
      Size = 1
    end
    object TCadNotaFUNVALOR: TBCDField
      FieldName = 'FUNVALOR'
      Origin = 'FUNVALOR'
      Precision = 18
    end
    object TCadNotaITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      Size = 15
    end
    object TCadNotaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 1
    end
    object TCadNotaEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object TCadNotaACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object TCadNotaALIQIPI: TBCDField
      FieldName = 'ALIQIPI'
      Origin = 'ALIQIPI'
      Precision = 18
    end
    object TCadNotaALIQFUN: TBCDField
      FieldName = 'ALIQFUN'
      Origin = 'ALIQFUN'
      Precision = 18
    end
    object TCadNotaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object TCadNotaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object TCadNotaIMPORTACAO: TStringField
      FieldName = 'IMPORTACAO'
      Origin = 'IMPORTACAO'
      Size = 1
    end
    object TCadNotaICMS_ORI: TStringField
      FieldName = 'ICMS_ORI'
      Origin = 'ICMS_ORI'
      Size = 1
    end
    object TCadNotaICMS_SIT: TStringField
      FieldName = 'ICMS_SIT'
      Origin = 'ICMS_SIT'
      Size = 3
    end
    object TCadNotaFINNFE: TStringField
      FieldName = 'FINNFE'
      Origin = 'FINNFE'
      Size = 1
    end
    object TCadNotaCFOPDESC: TStringField
      FieldName = 'CFOPDESC'
      Origin = 'CFOPDESC'
      Size = 50
    end
    object TCadNotaREL_VENDA: TStringField
      FieldName = 'REL_VENDA'
      Origin = 'REL_VENDA'
      Size = 1
    end
    object TCadNotaCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Size = 1
    end
    object TCadNotaDADOSADIC: TStringField
      FieldName = 'DADOSADIC'
      Origin = 'DADOSADIC'
      Size = 100
    end
    object TCadNotaIEPRODUTOR: TStringField
      FieldName = 'IEPRODUTOR'
      Origin = 'IEPRODUTOR'
    end
    object TCadNotaFGIMPOSTO: TStringField
      FieldName = 'FGIMPOSTO'
      Origin = 'FGIMPOSTO'
      Size = 1
    end
    object TCadNotaFGTRANS: TStringField
      FieldName = 'FGTRANS'
      Origin = 'FGTRANS'
      Size = 1
    end
    object TCadNotaFGTRANSPL: TStringField
      FieldName = 'FGTRANSPL'
      Origin = 'FGTRANSPL'
      Size = 1
    end
    object TCadNotaFGREFER: TStringField
      FieldName = 'FGREFER'
      Origin = 'FGREFER'
      Size = 1
    end
    object TCadNotaICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Origin = 'ICMS_CREDPER'
      Precision = 18
    end
    object TCadNotaFGFISCO: TStringField
      FieldName = 'FGFISCO'
      Origin = 'FGFISCO'
      Size = 1
    end
    object TCadNotaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object TCadNotaGERAROMENT: TStringField
      FieldName = 'GERAROMENT'
      Origin = 'GERAROMENT'
      Size = 1
    end
    object TCadNotaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object TCadNotaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsCadastro: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadclien')
    Left = 1210
    Top = 185
  end
  object qrTrans: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadtrans where codigo = 0')
    Left = 1210
    Top = 234
  end
end
