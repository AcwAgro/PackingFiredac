inherited FfrmCadCliente: TFfrmCadCliente
  Caption = 'Cadastro cliente'
  ClientHeight = 472
  ClientWidth = 959
  ExplicitWidth = 965
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 456
    Width = 959
    ExplicitTop = 456
    ExplicitWidth = 959
    inherited PStatusHistorico: TPanel
      Width = 778
      ExplicitWidth = 778
    end
    inherited pnlTela: TPanel
      Left = 891
      ExplicitLeft = 891
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 949
      ExplicitLeft = 949
    end
  end
  inherited pMenu: TRzPanel
    Height = 456
    ExplicitHeight = 456
    inherited rzpMenu: TRzPanel
      Height = 352
      ExplicitHeight = 352
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          ExplicitTop = -1
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 232
        OnClick = rbgAtivoClick
        ExplicitTop = 232
      end
      inherited PPeriodo: TPanel
        Top = 272
        ExplicitTop = 272
        inherited sbPeriodo: TSpeedButton
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 822
    Height = 456
    ExplicitWidth = 822
    ExplicitHeight = 456
    inherited pcItem: TRzPageControl
      Width = 814
      Height = 448
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 814
      ExplicitHeight = 448
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 812
        ExplicitHeight = 427
        inherited pPesquisa: TRzPanel
          Top = 361
          Width = 812
          ExplicitTop = 361
          ExplicitWidth = 812
          inherited Label1: TLabel
            Width = 804
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 691
            ExplicitLeft = 691
          end
          inherited rbPesquisa: TRzPanel
            Width = 804
            ExplicitWidth = 804
          end
          inherited edPesquisa: TMaskEdit
            Width = 687
            ExplicitWidth = 687
          end
        end
        inherited Panel2: TPanel
          Width = 812
          ExplicitWidth = 812
          inherited Label3: TLabel
            Width = 674
            ExplicitLeft = 394
          end
        end
        inherited dbDados: TcxGrid
          Width = 812
          Height = 341
          ExplicitWidth = 812
          ExplicitHeight = 341
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 812
        ExplicitHeight = 427
        inherited pDados: TPanel
          Width = 812
          Height = 217
          Align = alTop
          ExplicitWidth = 812
          ExplicitHeight = 217
          object spbCEP: TSpeedButton
            Left = 106
            Top = 71
            Width = 25
            Height = 26
            Cursor = crHandPoint
            Hint = 'Importa dados do CEP...'
            Glyph.Data = {
              06080000424D060800000000000036000000280000001A000000190000000100
              180000000000D0070000C40E0000C40E00000000000000000000FCF1E9FFF7D2
              BF7D1ED88406D78403D68309CD8012C98014CB830DCB840BC88210C88112C880
              14C88112C68211C88210C88210CB820ED1830BD4830AD88309D88309D4830AC6
              8015AB7A2CFFFEBD0000FFF6D5956934B76E12CA7606C67405BA6F0DA96922FF
              FFBEFFFFAEB0701B9C6B21FFFFBBFFFFBBFFFFB79E6B25FFFFB89F6B1FAF721C
              BE7208CB7503CC7305CB7309C7720CB86E169E6A27FFFCC50000FFF6CC8E5821
              AA600EB05C00B06001A86111FFF7C48753259B58199A5A1A875C2BFFF7CA7957
              297D5629815429FFF9CDFFFEC9FFFCBAA6600DAD5E03B55F05B35A02B55D09A8
              5D138A5621FFFBCE0000FFF4D37C491E904507A14E039E4F008E4904FFF7C77A
              491D91470D90460C78471BFFF3D0FFF7D1FFF6D4764126FFF4D185441187480E
              FFF6C4854613904507A34F0D9B46028F460A78451DFFF2D20000FFF3DA683515
              8032078A36028736007E3A05FFF6CE6C341185370C813308703515FFF6DB6436
              1E64331D672F1CFFEED478350E75330AFFF6D87234167D3009873204903A0683
              3608673315FFF5DD0000FFF3E2541F0B78250F7E250A721F0370260A621D09FF
              EEDBFFECD66E210E65200FFFEDDEFFEFE5FFEADE592215FFF1E1FFEFDCFFEDD9
              6C200D711E087B240A8127097C210275250859200AFFF6E10000FFEFE63C170F
              4917114616123B1A17331C1A341C1C2F171932171A371A1D3317172F191B2817
              1B2A1B1F2E1D1A2C1B182A1C1E291619381A194119144B1A125316085F170061
              1F02512006FFEFD60000F8EBE9F6F3F5DFEFFB95BDD04E91A83F91AA398DA740
              91AC4892AC4A8DA45291A5548FA35992A8528BA05591A15290A04F90A5488EA6
              4790AC518FA76D909EC9D0CDFFFFE6FFF6CCFFF8D1FFF9D40000F3F0F2DDEEF7
              90C9DF398FAD248DAE1C90B11B8EAF2798B941AACB55BADA61C2DE70CDE77ACF
              EF78CEEC77D4EB6AC8DF5EBAD751B0D1369ABD439AB4A2D6DDF1FFF2D7C5969C
              7D46A28C62FFFBD60000F0EFF1DBF1FC62A6C32E87A93D91AB61AFC693DBF3A4
              EAFFAEF6FFABF5FFA3EFFF9BE6FF99DFFD9BE1FF9DE9FF9FEAFFAEF1FFB5F1FF
              B1E6FAC9E8E9FFFFE5D9BC83AD7C2EB68841EEDBB6F3EED90000EFF1F2D9F0F8
              60A0B84A9AB796E2F9B4FAFF97D7EF7CBCD462A6BD569CB35499AD4B8EA34F8C
              A64E8AA7488AA35292AA5E93A88CB2BEE5F6F3FFFFECD3B078AA792FB98539FF
              E4A9FFFFEAF4F8ED0000ECEEEFE2F1F496C1CAABECFB7ECDE83E97B92987AA23
              81A42787A52A849D3782984F8FA15B95A85E97AD538FAD48829F6292A4C1DCD9
              FFFFE0C5A36DA2712DAD7F3FFFE7BDFFFFEBF2F6EAE8F2EC0000EDECEEE7F3F7
              C2E9F26CAABC2A7D9C1E7DA41F80A62280A42F839F5FA4B7A6D5DDCFF3F3DBFC
              F8D5F3F4DBF9FFBDD9E0DCF0EBFDFEE4B99C69926728A57B40FFF2C8E6EFE5C8
              DEE3E1EFEEE7F2EF0000F4F1F3DEEFF886B9D3307A9C257DA12680A33884A856
              90AD9CC0D0EDF9F9F0E2D0C0AB8CA89874A69671B4A17CF4DAB2FFEFBEB38E56
              8B5F22A8844EFFF1D0DDECE4679CB1558DA6DFF4FCEDF2F10000F1F0F4D9E9F5
              6599B7317B9F3688A767B3D0A2D8F6D2EDFFF8F6F6C6AF9F866349A48362BBAB
              87BEAE89AD946A9D75449D672A945E1FB58A51FFEDC4EEF6EB8CB1BF357D9B37
              7897D8ECF7EEEEEE0000EDEDF3E1F0F96B96A76AA3B8AEEDFFB4ECFFBFDEF5E9
              EBF5CDB09B7A583AD3C5B3F4FBF4CBE7E8C3E0E4E9F7F1F4E9D39F7247905F2D
              FFE8C0EFEED9C0D7DFBCE8FF86C6DE497E92E4F0FAF8F1F40000EFEFF5E2EEF8
              A0C7D6AADFF372ADC0528496A9BFD1F8EFF2865E42D2B092EDF4F183AAB9457C
              97447C996792A7D1E0E3FFE5CE8F6443D9C4A9E9ECE3698A9E5B91B09ADAF299
              CCDCE1EEF6F3EDF20000EFEFEFE2F2F9AED7F04782A22C6F8E457E97CAE4F2F8
              F3F27D5B43FFFBE998B9C9316F932C6F96256A923071976F98AFF8F1EE9E806F
              9F8372F9F4F16A8EAC2D6B94317A9A85C0D4DDF0F8EEF0F10000EEF1EFDEEFF8
              648EAB2C6A922770963E7C9AD9F6FFF0EFEB7D5F4CFFF2E67AA0B8276C971B66
              94226E9E1D6896497A9ADADDE2AC9389907469EAE3E66E95BB2C6E9F1E698F36
              718BDBEFFAEEEFF30000EBF3F2DCF1F9517D9C33719A19628E3B7B9ECBECFCEB
              EDED6C4D3EFFFDF293B2C12E6D8F1E6A9A1B679B256A956793ABEDEEEC8C766A
              907872EDE9F46890BA246598276C97376A8AE0EDFDF4EDF40000E6EEEEE4F4FB
              A5C7DF336589246591347298A4C7DBF0F5F85F4136CAADA4E1E9F07294AB3B6C
              9232668E5983A0C1D4E1F0E5DD5F4839B2A5A3E6EDFE5078A22E66952D64897C
              A4BDE5EDFAF5EEF30000F3EFF4E8EBF0EFFBFFACCADD5083A43064885C8098F2
              FBFFB29591522821E6C8C7FFF6FDD5D4E4C9C9D9F4EBF5FBE6E5735141795E50
              E3E2EB95ABC441668C456F928FB2C6DDF4FCEBF0F1F4F1ED0000F4EEF3F2EFF1
              F0F2F3EEFBFFCBE7FF9FBFDC7C94AAC0C9D3FFF6F3AC8B82532A27876161B497
              9ABBA0A39778775E3A34886355FAE3DBE3E5EF7F94AA90AAC8C4DEF6E9FCFFEA
              F5F3EEF2ECF2F3EA0000EDEEECF1F2F0EFEDEDEFEDF3EEEDFDEBEDFFE6EDF6E6
              EEEEEDF1E6FFFEF3E3CBCB9676777356526C4F4B896B6AC8B1AFFFF5EFF7F0ED
              F0ECF1E9E9F5ECF1FFE8EEFBEAEFF2EBF1ECF0F2ECF0F3EA0000F0F4EFF0F1ED
              F6F1F2F7EEF1F9E8F5FAECF7F1F0F4EBF2EDE8F6EAEFF5EAFCECEDFFEEF1FFF0
              EBFFEBE4FFF0EFFFEDECF6F1F2EBEDEDFBF4F7F5EEF3F1E9F3F0ECF2F2F2F2F1
              F3EDF0F2ECF0F3EA0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = spbCEPClick
          end
          object spbMapa: TSpeedButton
            Left = 687
            Top = 139
            Width = 25
            Height = 26
            Cursor = crHandPoint
            Hint = 'Importa localiza'#231#227'o, latitude e longitude do google maps...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              AE060000424DAE06000000000000360000002800000018000000170000000100
              1800000000007806000000000000000000000000000000000000FFFFFFCDF2F9
              A4DAE3ECBA95F4B696F4B793F4B796F4B895F4B994F3B893F2B795F2B895F2B8
              95F3B993F3B894F2B791F1B790F1B790F6B692F0EAEEFDFDFDFFFFFFFFFFFFFF
              FFFFDFF7FC43DEFD41DBFB91B8ABEB8943F28848F48848F48848F48848F48848
              F48848F38747F38747F38747F48747F48644F48644F58641F9F4F4F1EFF1F1F1
              F1FDFDFDFFFFFFFFFFFFD6E4C648DBEC45DCFD45DEFB8FBBABF18947F38848F3
              8848F38848F48848F48848F38747F38747F38747F38747F38647F18746EAF0F3
              F0EDEEE9E9E9E0E0E0FBFBFBFFFFFFFFFFFFD9E6CA5BA01746DCF048DDF849DE
              F98DB6AAF28948F28949F28848F38848F38848F38848F48848F48848F38646F1
              8745ECEDF0EEEBECE7E7E7D7D7D7D0D0D0FDFDFDFFFFFFFFFFFFD9E7CB5FA11A
              5BA01544DEF046DEFD46DEFB9FAF9EF28C49F38949F38949F38949F38848F488
              48F48848F1873DEDEBF2EEF0F0E9E9E9D2D2D2C4C4C4CACACAFDFDFDFFFFFFFF
              FFFFD9E7CB5FA11A5FA11A58A11C44E0EF46DCFE4ADEF9B0AC96F48747F38949
              F38949F38949F38949F88848F7F0EDF0EFEFECECEC848BC9C8BFC6C0BDBFC6C6
              C6FDFDFDFFFFFFFFFFFFD9E7CB61A31C61A31C61A81863A31A45DAF14BDDFC45
              E4F5A7AF8DF1874AF38849F08849F1884AEBEDEEF1EFEDECECEEDEDEDE4B50D7
              BAC0BCBBBEB7C2C2C2FDFDFDFFFFFFFFFFFFDAE7CC61A31C61A31C60A21B60A2
              1B55A11A48E1F74ADDFB4FDFFCB49F8AF38A47ED8F4DE7EEEBEFEEEEEFEFEFE2
              E2E2CBCBCB384BD77A78D3B7B6B7BEBEBEFEFEFEFFFFFFFFFFFFDAE8CB62A41D
              62A41D62A41D62A41D62A31E5A9C0E3EDBF348DEFE4CD6FEBBA38EF0F2E5F4F1
              F3F1F1F1E4E4E4CBCAD0C9C8D43747D73B42EBB4B5B8B9B9B9FDFDFDFFFFFFFF
              FFFFDAE8CB63A41F63A41F62A31E62A31E62A31E62A41D63A52049DDF249DDFE
              4DDDFCCCECF8F9EFF1E7E7E7D1D1D1CECAD34954CF3C48DC3A4BD59FAAB6B5B7
              B8FEFEFEFFFFFFFFFFFFDAE8CB63A41F63A41F62A31E62A31E62A31E62A41D66
              A9156BA32146DCF745DEFC54DDFDD5E4EED1D1D1CDCDCDC6CEBA3C4CD23C48DC
              3A41DF3740E0B1AFB4FEFEFEFFFFFFFFFFFFDAE9CA63A41F63A41F63A41F63A4
              1F63A41F62A31E62A31E62A31E53A1124BE0F941E0FE52DAFFCACED8C7C7C63C
              48E1434DE13D4ADC3D49DD3A41DA767DC3FDFDFDFFFFFFFFFFFFDAE8CB64A422
              64A42263A42063A41F68A91E66A72262A31E62A31E62A31E59A20B4CDFF94ADB
              FF51D4F74D65D44149DD404ADD3E4BDD3D49DD3C48DC3B47DCF8F7ECFFFFFFFF
              FFFFDAE8CB64A42263A32061A518BDDAA2E3EDD9E4EDE265A31F63A42162A31E
              63A31E4D9B2144D9EB4CCDF2434DDC404BDC404ADD3E4BDD3D49DC3C48DC3D48
              DD3F4ADEFAF9F9FFFFFFDAE8CB65A52362A324C8D8ACD5E4C967AC1880B247E0
              DFEE5EA01562A31E62A31E55A216499B254153E4424DDD414BDC414BDE3E4BDD
              3D4ADC3D49DC3C48DB3A47DD96A3DAFFFFFFDAE9CC65A52366A420F0ECF668AA
              1E7BB03ED3E5CBEDEAEF7EB54463A41F61A21D5D9B2B599C2A3F4AE1404EDC40
              4BDB4250D82E38B13F47CD3C47DF3C48DC3C48DC3647DAFFFFFFDAE9CC65A524
              64A222EBEAEE68A81F67A02A7CB13E79AC3D68AB2563A41F63A41F5FA3164C5A
              B5404EDD404EDD3E4CDE21247D282D82282C7E303CAF3445D23C48DC3C45DCFF
              FFFFDAE8CC65A52462A426BED2AADBE7D2689E2AB1CF9261A31B62A11F63A41F
              63A41F61A41C4A60B8414DDD404DDD404FE42A2A7E292D82262D7F2128833A4A
              DA3C48DC4046DDFFFFFFDAE8CC66A6256AA52565A52596BD6CEFF0EFCFDECA65
              A62364A42263A41F63A41F62A1194F5BBC424DDD404DDD4151E02A328D2A2D82
              242A7A4247CA3848D53C48DC3E47DBFFFFFFD9E7CB67A72667A72665A52465A5
              2464A32263A42063A32264A42263A41F62A31E619E295CA9174149E0404EDC3D
              4DDB4148DE3F48D53D48DB3E4ADD3C48DB3C48DC4852DCFFFFFFFBFBF969A127
              66A72465A62365A52163A42063A42063A32063A32061A31C62A31D61A31C61A2
              1B5269BA3F4EDC404DDD404BDB414BDE3E4BDD3D4ADC3B48DB3A44DDE6EBF9FF
              FFFFFEFEFEFBFCFCF9FBF8F9FBF8F9FBF8F9FBF8F9FBF8F9FBF8F9FBF8F9FCF8
              F9FCF8F9FCF8F9FCF8F8F9F57078D83B4DD5404BDE424DD93948D8434BE03A4B
              DDDCDCF7FDFDFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFBFBEBEDF49AA1EA5661DE
              6972E6C2C9F4F7F9F3F8FBF9FFFFFFFFFFFF}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = spbMapaClick
          end
          object spbMapaWeb: TSpeedButton
            Left = 716
            Top = 139
            Width = 25
            Height = 26
            Cursor = crHandPoint
            Hint = 'Abrir mapa na Web'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              A60E0000424DA60E000000000000360000002800000025000000210000000100
              180000000000700E000000000000000000000000000000000000F9E1D5F9E1D5
              CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DA
              D6EADED8E9DDD7F4E6E0F2E2DCF1DED6EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3
              D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3
              C8B1A9F9E1D5F9E1D500F9E1D5CABBB2CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EB
              CBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CFC4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4
              EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFECD4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2
              C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0D2B8A8C4B09FF9E1D500D2C5B5C2B0A5
              E1CBBFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDCD0FFE6CEFDE5CE96B8
              D74A95E1187EDE097CE21781E31A85E51786E41080E40577E2167CE35494DE86
              B1DAE3DDCFFFEBCDF2DECEEDDCD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0C3A998D3BDB100C8B9A9C5B2A3E9D2C3EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0FFEDCC4490D8177CE293B9D8C2D3DC87BCE573A9DD559DDE4A99DC
              4899DB5A9ED976AEDF90BFE1B0CFDB79B3E00C78E70E7DE0DAD8D6FDE1CDEDDC
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0CDAD9AD2B7A900CCBCABD0BBAC
              E8D1C2EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD04F95DEB8CED8FFF2CE74AB
              D4469CDEB8C8D1E3DCD6F7E7D8FFF0E1FFF1E4F1E4D8D7D7D59ABCDA3F93DC4F
              9CDEFFF1CACCD5D70073E6CED5D2F3DECFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0D1B09DCFB2A400CFBEABD4BDADE9CFC1EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD00F81E0FFF7CC83B3D3AFCEE0FFEACCF5E0CFF0DDCFF3E3D7CFB49C
              C5AA8BF6E5DBF2DECEF8E0CEFFE6CCD2D5D55FA3D9FFECC9A6CADD71A2D6FBE2
              CFEDDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0D3B1A1CDB0A200CDBCA9D4BBAB
              EBD1C3EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0C4D3D91D88DEB6CFDD5FAC
              E4C2C7CAFDE0CFF5DECDF7ECE79A601791570CF1E7DDF3DECFFCE2CFE4DAD47D
              B6DBCDD0D0B0C9DA4495DDF2E1D4EFDDCFEDDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0D3B1A1CEB1A300CFBDACD3B9ABEBD0C2EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0F8E0CEF8E1D08EBEDC6DB1DD6FBFE785C0D9D7E6EBC3A5808E4A00
              914800C09C75DBE4E795C6DF86B9DAABC2D286B3CCB5C4CFFFE5CEF1DDCFEDDC
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0D5B1A1CEB0A500CFBDACD3B9AB
              EBD1C1EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDCD0EFDDCFFAE1CEF9E1
              CFF0DFD1F4E0D2F2E3DA8D5202995500995500925105EEE0D2F0DFD3EADCCFEC
              DCCFF9E1CFF5E0CFEEDDD0EDDCD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0D7B0A2CEB0A500CFBCADD3B9ABEDD0C1EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EDDDD0EDDCD0EEDDCFEEDCCFFCEEE8AD8757914C00995802
              9B5803944C00B39063F9EBE4EFDDCFEEDDCFEEDDD0EDDCD0EEDDD0EEDDD0EEDD
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0D9AFA2D0B0A500CFBCADD3B9AB
              EDD0C1EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDC
              CFF1E1D6DACDBB8E4A009856019958039A57029856008D4D00E1D3C4F1E0D4ED
              DCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0D9AFA2D2AFA500CFBCADD3BAAAEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDCCFFAF0EC9A6828955200965500985200
              985300985400955000A47A44F9EDE6EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDD
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0D9AFA2D3AFA500CFBCADD4BAAA
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDCCFF4E4
              DAC9B2978C48008F48009B5D17A06F2EA17131945F1D8D4A00904A00D5C2ADF3
              E3D9EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0D7B0A1D3B0A300CFBCADD4BAAAEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EEDDD0EEDDD0F9F0E98C53088D4700C9A888F2E5DDF4E7E0
              F5E7DFF3E7DECDB3978A4D00945F19F4E9E3EEDDD0EEDDD0EEDDD0EEDDD0EEDD
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0D5B19FD2B0A300D1BCADD4BAAA
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDCCFF2E3D8CBB3
              95833900D8C3ACF7EAE3EEDED1EEDDD0EEDDD0EEDDD1F6E8E1DFCDB8834000CA
              AF91F4E5DBEDDCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0D5B19FD0B0A300D3BBAFD4BBABEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EDDCCFFBF3EE995F19A87C43F8ECE6EDDCCFEEDDD0EEDDD0
              EEDDD0EEDDD0EDDCCFF8EBE4BC946A94570CF6EBE4EEDDD0EEDDD0EEDDD0EEDD
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0D4B19DCEAEA100D2BAAED4BBAB
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EFDDD1EDE5D8782F
              00DFCDB9F1E1D7EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDCCFF0E0D4E5D3C283
              4000D7C7B1F1E0D5EEDDD0EEDDCFEDDCCFEEDDD0EEDDD0EFDED2EEDDD0EEDDD0
              EEDDD0D5B29ECCAFA000D2BAAED4BBABEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0F0DFD3E2D4C27D3100EFDECDEFDED3EEDDCFEEDDD0EEDDD0
              EEDDD0EEDDD0EEDDD0EFDED2EBDCCC8B4800D0BA9DF2E1D7EDDCCFEEDDD1F0E1
              D7EEDCD0EEDED3E6D6C7EEDDD0EEDDD0EEDDD0D6B2A0CCAFA000D2B9AFD4BBAB
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0F6EAE37A30
              00DECDB8F1E1D6EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDDCFEFDFD3E9D7C687
              4300E0CFBDF1E4DDEFDED2EADACDDDBF98F0E3DCE3D4BEB47802EEDDD0EEDDD0
              EEDDD0D5B19FCCAFA000D1B8AED3BAAAEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EDDCCFFAEEEAA06E2DB18857F8EAE3EDDCCFEEDDD0EEDDD0
              EEDDD0EEDDD0EDDCCFF6E8E1C5A67F91530FF6ECE6BA9037F1E2DDEDDED1AA66
              00EDE3E5E8DBC7BB7C04EEDDD0EEDDD0EEDDD0D2B19DCBAF9E00CEB5ABD2B9A9
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDCFF0DFD4E0CF
              BC803B00E4D7C7F5E5DCEEDDD0EDDCCFEDDCCFEEDDCFF3E3D9EBDED1844500D0
              BA9DF1E5DCB47C05EFE1DCEADAC8AF7200EFE8EAE5D6C3B77C0DEEDDD0EEDDD0
              EEDDD0D2B19DCBAF9E00CFB6ACD4BDADEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EEDDD0EDDCCFF8EAE3C2A582854300DBC8B0F6E9E2F6E8E0
              F6E8E0F7EAE3E3D2BF8A530BB48F62FEF6FAD7B887BB8527F8EDEFDAC8A0B77C
              0AF8EFF5DAC6A7C28D2BEEDDD0EEDDD0EEDDD0D5B5A2CBB1A100D2B9AFD9C2B3
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDC
              CFF9EBE4D2C0A98C4C06956228B18B5BB48D5B9B6830884C00C9AC90FAF0EDD8
              BA89B27700E5D6C1F4E8E9C69639CEAC6DF7EBEDC7A050CBAA6CEEDDD0EEDDD0
              EEDDD0D7B9A8CDB2A400D2B9AFD8C1B2EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EDDCCFF3E2D8F9EDE6DBC5ABC6A57B
              C6A47BD5BFA5F4E9E0FAEDEBC5A25CB87904DDCDB2F7EAEBE1CCA7B67100EEE2
              DAF4E9ECAF6F00EEDDD0EEDDD0EEDDD0EEDDD0D9BAABC8AEA200D0B6AFD5BEAF
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDD
              D0EEDDD0EDDCCFEEDDD0F0E0D5F2E3D9F2E3D9F1E1D5EEDDD0EFDED1E5D7C9F4
              E8E7F6E9EBE1CEB2B17200D6C49AF8EBEECAAB6EBF8A21EEDDD0EEDDD0EEDDD0
              EEDDD0D8BBACCBB1A500CDB6AED6C0B4EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDCF
              EEDDCFEEDDD0EEDDD0EEDCCFF0E0D7E4D7C1C79E4BB36F00D7C197F9ECEFE1D3
              B9AE6B00E4D8CAEEDDD0EEDDD0EEDDD0EEDDD0D2B8A8C7AEA400C8B1A9D3BDB1
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDD
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD1EADBCCAB
              7200C69C4AEBDFD2F8EBEEE3D4C4B47200D7BF92F3E5E0EEDDD0EEDDD0EEDDD0
              EEDDD0D3B8AAC5ACA200C9B4ACD4BEB2EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0EDDCD0EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0EEDDD0EEDDD0EEDDD0EDDCD1EFE3E0F9ECEFF5EBEDD1B988B56D00CFB6
              82F4E8E8EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0D8BDAFC9B0A600CEB9B1D2BCB0
              EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0F1DDCCEEDCD1EDDDCFEEDD
              D0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDCCFEEDDD1EC
              DDD3D0B785B87E02B57800E0D3BCF5E7E4EDDCCFEEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0CFB4A6CEB8AC00DAC5BDCAB4A9E3CDC1EEDDD0EEDDD0EEDDD0EEDDD0EE
              DDD0EEDDD0F0DCCEEEDDCEEDDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0
              EEDDD0EEDDD0EEDDD0EDDCCFF1E2D9D6BE8FBE851FD8C29DF5ECECF0DED5EDDC
              CFEEDDD0EEDDD0EEDDD0EEDDD0EEDDD0EEDDD0C3A999DEC8BC00F9E1D5CEBEB2
              CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0
              DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DEF4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEF
              E2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDDD4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBF
              C5B1A0C0AB9CF9E1D500F9E1D5F9E1D5C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DF
              C9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2
              F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DDCECBDACCC6D8CAC4D5C9BFD2C7B9CFC2
              B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5
              F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EEDDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEB
              E6ECEAE9EFEDEDF5F0F1F7F1F2F5EDEDF5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EB
              DFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CB
              F9E1D5F9E1D5F9E1D500}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = spbMapaWebClick
          end
          object GroupBox5: TGroupBox
            Left = 135
            Top = 67
            Width = 413
            Height = 32
            Caption = ' Endere'#231'o '
            TabOrder = 7
            object DBEdit5: TDBEdit
              Left = 6
              Top = 15
              Width = 403
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ENDERECO'
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
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 80
            Height = 32
            Caption = ' C'#243'digo '
            TabOrder = 15
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
          object GroupBox3: TGroupBox
            Left = 272
            Top = 101
            Width = 290
            Height = 32
            Caption = ' Cidade '
            TabOrder = 9
            inline frmCidade: TfrmPesquisa
              Left = 5
              Top = 13
              Width = 281
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
              OnExit = frmCidadeExit
              ExplicitLeft = 5
              ExplicitTop = 13
              ExplicitWidth = 281
              ExplicitHeight = 16
              inherited SpeedButton1: TSpeedButton
                Left = 260
                Height = 16
                ExplicitLeft = 260
              end
              inherited edtPesquisa: TEdit
                Width = 255
                Height = 16
                CharCase = ecUpperCase
                ExplicitWidth = 255
                ExplicitHeight = 16
              end
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 520
            Height = 32
            Caption = ' Descri'#231#227'o  '
            TabOrder = 5
            object DBEdit2: TDBEdit
              Left = 3
              Top = 15
              Width = 507
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DESCRICAO'
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
            Top = 101
            Width = 263
            Height = 32
            Caption = ' Bairro '
            TabOrder = 8
            object DBEdit3: TDBEdit
              Left = 6
              Top = 14
              Width = 243
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'BAIRRO'
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
          object GroupBox6: TGroupBox
            Left = 5
            Top = 67
            Width = 100
            Height = 32
            Caption = ' CEP '
            TabOrder = 6
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 89
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CEP'
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
            Left = 330
            Top = 5
            Width = 161
            Height = 32
            Caption = ' CNPJ/CPF.'
            TabOrder = 2
            object DBEdit6: TDBEdit
              Left = 6
              Top = 15
              Width = 150
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
              TabOrder = 0
              OnExit = DBEdit6Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox8: TGroupBox
            Left = 5
            Top = 136
            Width = 241
            Height = 32
            Caption = ' Telefone '
            TabOrder = 11
            object DBEdit7: TDBEdit
              Left = 6
              Top = 15
              Width = 227
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'FONE'
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
          object GroupBox9: TGroupBox
            Left = 423
            Top = 171
            Width = 362
            Height = 32
            Caption = ' Site '
            TabOrder = 14
            object DBEdit8: TDBEdit
              Left = 6
              Top = 15
              Width = 351
              Height = 15
              BorderStyle = bsNone
              CharCase = ecLowerCase
              Color = clWhite
              DataField = 'SITE'
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
          object GroupBox10: TGroupBox
            Left = 5
            Top = 171
            Width = 412
            Height = 32
            Caption = ' E-mail '
            TabOrder = 13
            object DBEdit9: TDBEdit
              Left = 6
              Top = 15
              Width = 403
              Height = 15
              BorderStyle = bsNone
              CharCase = ecLowerCase
              Color = clWhite
              DataField = 'EMAIL'
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
          object GroupBox12: TGroupBox
            Left = 221
            Top = 5
            Width = 103
            Height = 32
            Caption = ' Cadastro '
            TabOrder = 1
            object DBEdit11: TcxDBDateEdit
              Left = 2
              Top = 10
              Align = alBottom
              AutoSize = False
              DataBinding.DataField = 'CADASTRO'
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
              Style.Font.Color = 4868682
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI Semibold'
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
              Height = 20
              Width = 99
            end
          end
          object GroupBox13: TGroupBox
            Left = 566
            Top = 101
            Width = 48
            Height = 32
            Caption = ' UF '
            TabOrder = 10
            object DBEdit12: TDBEdit
              Left = 6
              Top = 15
              Width = 32
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ESTADO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit12Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox14: TGroupBox
            Left = 548
            Top = 5
            Width = 161
            Height = 32
            Caption = ' Insc.Est./Outros '
            TabOrder = 4
            object DBEdit13: TDBEdit
              Left = 7
              Top = 15
              Width = 150
              Height = 15
              Hint = 'ISENTO ou contribuinte...'
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DOC'
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox15: TGroupBox
            Left = 250
            Top = 136
            Width = 241
            Height = 32
            Caption = ' Contato '
            TabOrder = 12
            object DBEdit14: TDBEdit
              Left = 6
              Top = 15
              Width = 227
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CONTATO'
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
          object btnCNPJ: TBitBtn
            Left = 491
            Top = 10
            Width = 50
            Height = 27
            Hint = 'Retorna dados do CNPJ cadastrado na receita federal...'
            Caption = 'CNPJ'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            TabStop = False
            OnClick = btnCNPJClick
          end
          object GroupBox24: TGroupBox
            Left = 507
            Top = 136
            Width = 174
            Height = 32
            Caption = ' Localiza'#231#227'o Mapa '
            TabOrder = 16
            object DBEdit23: TDBEdit
              Left = 5
              Top = 14
              Width = 169
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'WEBLOCAL'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit12Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 88
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
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
        end
        object rzpcGrupo: TRzPageControl
          Left = 0
          Top = 217
          Width = 812
          Height = 210
          Hint = ''
          ActivePage = tsbEntrega
          Align = alTop
          Color = clWhite
          UseColoredTabs = True
          ParentColor = False
          TabIndex = 1
          TabOrder = 1
          FixedDimension = 19
          object tsbFinanceiro: TRzTabSheet
            Color = clWhite
            Caption = 'Financeiro'
            Enabled = False
            object GroupBox18: TGroupBox
              Left = 5
              Top = 8
              Width = 284
              Height = 32
              Caption = ' Prazo de venda '
              TabOrder = 0
              object DBEdit17: TDBEdit
                Left = 6
                Top = 15
                Width = 270
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
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox17: TGroupBox
              Left = 292
              Top = 8
              Width = 138
              Height = 32
              Caption = ' L'#237'mite de cr'#233'dito '
              TabOrder = 1
              object DBEdit16: TDBEdit
                Left = 6
                Top = 15
                Width = 123
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'LIMITE'
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
              Left = 6
              Top = 46
              Width = 280
              Height = 34
              Hint = 'Baixa do t'#237'tulo com desconto - desconta no pre'#231'o m'#233'dio...'
              Caption = ' Baixa de t'#237'tulo desconta Pre'#231'o M'#233'dio '
              Columns = 2
              DataField = 'FG_DESC_PRECO'
              DataSource = dsDados
              Items.Strings = (
                'Desconta'
                'N'#227'o desconta')
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
            end
            object gbPlano: TGroupBox
              Left = 295
              Top = 46
              Width = 356
              Height = 34
              Caption = ' Plano de Contas padr'#227'o '
              TabOrder = 3
              inline frmPesquisaCtc: TfrmPesquisa
                Left = 2
                Top = 15
                Width = 352
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
                ExplicitWidth = 352
                ExplicitHeight = 14
                inherited SpeedButton1: TSpeedButton
                  Left = 331
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
            object GroupBox16: TGroupBox
              Left = -3
              Top = 85
              Width = 799
              Height = 60
              Caption = ' Nota Fiscal '
              TabOrder = 4
              object GroupBox19: TGroupBox
                Left = 675
                Top = 21
                Width = 119
                Height = 32
                Caption = ' Financeiro (%) '
                TabOrder = 5
                Visible = False
                object DBEdit15: TDBEdit
                  Left = 6
                  Top = 15
                  Width = 107
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'FINAN'
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
              object GroupBox20: TGroupBox
                Left = 7
                Top = 21
                Width = 113
                Height = 32
                Caption = ' FunRural (%) '
                TabOrder = 0
                object DBEdit18: TDBEdit
                  Left = 6
                  Top = 15
                  Width = 99
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'FUNPER'
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
                Left = 121
                Top = 21
                Width = 113
                Height = 32
                Caption = ' Comiss'#227'o(%) '
                TabOrder = 1
                object DBEdit19: TDBEdit
                  Left = 6
                  Top = 15
                  Width = 99
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'COMISPER'
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
              object GroupBox26: TGroupBox
                Left = 235
                Top = 21
                Width = 113
                Height = 32
                Caption = ' Adiantamento '
                TabOrder = 2
                object DBEdit20: TDBEdit
                  Left = 6
                  Top = 15
                  Width = 99
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'ADIANTCX'
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
              object DBRadioGroup2: TDBRadioGroup
                Left = 536
                Top = 21
                Width = 138
                Height = 32
                Caption = ' Consumidor final '
                Columns = 2
                DataField = 'FUNSIM'
                DataSource = dsDados
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentShowHint = False
                ShowHint = False
                TabOrder = 4
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 349
                Top = 21
                Width = 186
                Height = 32
                Hint = 'Desconta da Parcela'
                Caption = ' Desconta Parcela '
                Columns = 2
                DataField = 'NFDESCPARC'
                DataSource = dsDados
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentShowHint = False
                ShowHint = False
                TabOrder = 3
                Values.Strings = (
                  'S'
                  'N')
              end
            end
            object GroupBox11: TGroupBox
              Left = 3
              Top = 144
              Width = 676
              Height = 32
              Caption = ' Observa'#231#227'o '
              TabOrder = 5
              object DBEdit10: TDBEdit
                Left = 6
                Top = 15
                Width = 663
                Height = 15
                BorderStyle = bsNone
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
          end
          object tsbEntrega: TRzTabSheet
            Color = clWhite
            Caption = 'Endere'#231'o Entrega'
            Enabled = False
            object Label6: TLabel
              Left = 0
              Top = 0
              Width = 808
              Height = 13
              Align = alTop
              Caption = '*Preencher somente se for para ENTREGA em outro local (NFe)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 413
            end
            object GroupBox29: TGroupBox
              Left = 5
              Top = 20
              Width = 161
              Height = 32
              Caption = ' CNPJ/CPF.'
              TabOrder = 0
              object DBEdit28: TDBEdit
                Left = 2
                Top = 15
                Width = 157
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CPF'
                DataSource = dsEndereco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit28Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox30: TGroupBox
              Left = 167
              Top = 20
              Width = 161
              Height = 32
              Caption = ' Insc.Est./Outros '
              TabOrder = 1
              object DBEdit29: TDBEdit
                Left = 2
                Top = 15
                Width = 157
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'DOC'
                DataSource = dsEndereco
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
            object GroupBox32: TGroupBox
              Left = 109
              Top = 51
              Width = 412
              Height = 32
              Caption = ' Endere'#231'o '
              TabOrder = 4
              object DBEdit31: TDBEdit
                Left = 6
                Top = 15
                Width = 403
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ENDERECO'
                DataSource = dsEndereco
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
            object GroupBox33: TGroupBox
              Left = 5
              Top = 84
              Width = 273
              Height = 32
              Caption = ' Bairro '
              TabOrder = 6
              object DBEdit32: TDBEdit
                Left = 6
                Top = 15
                Width = 255
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'BAIRRO'
                DataSource = dsEndereco
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
            object GroupBox34: TGroupBox
              Left = 5
              Top = 51
              Width = 100
              Height = 32
              Caption = ' CEP '
              TabOrder = 3
              object DBEdit33: TDBEdit
                Left = 6
                Top = 15
                Width = 89
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CEP'
                DataSource = dsEndereco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit33Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox35: TGroupBox
              Left = 284
              Top = 84
              Width = 316
              Height = 32
              Caption = ' Cidade '
              TabOrder = 7
              inline frmEndereco: TfrmPesquisa
                Left = 5
                Top = 14
                Width = 307
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
                OnExit = frmEnderecoExit
                ExplicitLeft = 5
                ExplicitTop = 14
                ExplicitWidth = 307
                ExplicitHeight = 16
                inherited SpeedButton1: TSpeedButton
                  Left = 286
                  Height = 16
                  ExplicitLeft = 287
                end
                inherited edtPesquisa: TEdit
                  Width = 281
                  Height = 16
                  CharCase = ecUpperCase
                  ExplicitWidth = 281
                  ExplicitHeight = 16
                end
              end
            end
            object GroupBox36: TGroupBox
              Left = 605
              Top = 84
              Width = 48
              Height = 32
              Caption = ' UF '
              TabOrder = 8
              object DBEdit34: TDBEdit
                Left = 6
                Top = 15
                Width = 32
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ESTADO'
                DataSource = dsEndereco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit34Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox37: TGroupBox
              Left = 7
              Top = 122
              Width = 241
              Height = 32
              Caption = ' Telefone '
              TabOrder = 9
              object DBEdit35: TDBEdit
                Left = 6
                Top = 15
                Width = 227
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'FONE'
                DataSource = dsEndereco
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
            object GroupBox23: TGroupBox
              Left = 281
              Top = 122
              Width = 412
              Height = 32
              Caption = ' E-mail '
              TabOrder = 10
              object DBEdit22: TDBEdit
                Left = 6
                Top = 15
                Width = 403
                Height = 15
                BorderStyle = bsNone
                CharCase = ecLowerCase
                Color = clWhite
                DataField = 'EMAIL'
                DataSource = dsEndereco
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
            object GroupBox27: TGroupBox
              Left = 525
              Top = 51
              Width = 85
              Height = 32
              Caption = ' N'#250'mero '
              TabOrder = 5
              object DBEdit25: TDBEdit
                Left = 6
                Top = 15
                Width = 32
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'NUMERO'
                DataSource = dsEndereco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit12Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox25: TGroupBox
              Left = 329
              Top = 19
              Width = 448
              Height = 32
              Caption = ' Descri'#231#227'o '
              TabOrder = 2
              object DBEdit24: TDBEdit
                Left = 2
                Top = 15
                Width = 444
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'DESCRICAO'
                DataSource = dsEndereco
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
  inherited cdsDados: TClientDataSet
    Left = 874
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsDadosCIDADEDES: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'CIDADEDES'
      Size = 30
    end
    object cdsDadosESTADO: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsDadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 50
    end
    object cdsDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object cdsDadosCEP: TStringField
      FieldName = 'CEP'
      Visible = False
      EditMask = '99999\-999;1; '
      Size = 9
    end
    object cdsDadosCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Visible = False
    end
    object cdsDadosCPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CPF'
    end
    object cdsDadosDOC: TStringField
      FieldName = 'DOC'
      Visible = False
    end
    object cdsDadosFONE: TStringField
      DisplayLabel = 'TELEFONE'
      DisplayWidth = 20
      FieldName = 'FONE'
      Size = 30
    end
    object cdsDadosCADASTRO: TSQLTimeStampField
      FieldName = 'CADASTRO'
      Visible = False
    end
    object cdsDadosCTC: TIntegerField
      FieldName = 'CTC'
      Visible = False
    end
    object cdsDadosCTCDES: TStringField
      FieldName = 'CTCDES'
      Visible = False
      Size = 60
    end
    object cdsDadosCOOPER: TStringField
      FieldName = 'COOPER'
      Visible = False
      Size = 1
    end
    object cdsDadosCTCCON: TIntegerField
      FieldName = 'CTCCON'
      Visible = False
    end
    object cdsDadosAREA: TBCDField
      FieldName = 'AREA'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
    end
    object cdsDadosMARCA: TStringField
      FieldName = 'MARCA'
      Visible = False
      Size = 1
    end
    object cdsDadosFORMA: TStringField
      DisplayLabel = 'Prazo Pagto.'
      DisplayWidth = 20
      FieldName = 'FORMA'
      EditMask = '000 999 999 999 999;1; '
      Size = 30
    end
    object cdsDadosEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Size = 120
    end
    object cdsDadosCONTATO: TStringField
      FieldName = 'CONTATO'
      Visible = False
      Size = 30
    end
    object cdsDadosSITE: TStringField
      FieldName = 'SITE'
      Visible = False
      Size = 120
    end
    object cdsDadosLIMITE: TBCDField
      FieldName = 'LIMITE'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosFINAN: TBCDField
      FieldName = 'FINAN'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Visible = False
      Size = 100
    end
    object cdsDadosFUNSIM: TStringField
      FieldName = 'FUNSIM'
      Visible = False
      Size = 1
    end
    object cdsDadosFUNPER: TBCDField
      FieldName = 'FUNPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosCOMISPER: TBCDField
      FieldName = 'COMISPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosADIANTCX: TBCDField
      FieldName = 'ADIANTCX'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosFG_DESC_PRECO: TStringField
      FieldName = 'FG_DESC_PRECO'
      Visible = False
      Size = 1
    end
    object cdsDadosWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Visible = False
      Size = 50
    end
    object cdsDadosNFDESCPARC: TStringField
      DisplayLabel = 'Desconta Parcela NF.'
      DisplayWidth = 20
      FieldName = 'NFDESCPARC'
      Size = 1
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
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
  end
  inherited dspDados: TDataSetProvider
    Left = 842
  end
  inherited dsDados: TDataSource
    Left = 906
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadclien where ativo = '#39'S'#39)
    Left = 802
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sqlDadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object sqlDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sqlDadosCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlDadosCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
    end
    object sqlDadosCPF: TStringField
      FieldName = 'CPF'
    end
    object sqlDadosDOC: TStringField
      FieldName = 'DOC'
    end
    object sqlDadosFONE: TStringField
      FieldName = 'FONE'
      Size = 30
    end
    object sqlDadosCADASTRO: TSQLTimeStampField
      FieldName = 'CADASTRO'
    end
    object sqlDadosCTC: TIntegerField
      FieldName = 'CTC'
    end
    object sqlDadosCTCDES: TStringField
      FieldName = 'CTCDES'
      Size = 60
    end
    object sqlDadosCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Size = 30
    end
    object sqlDadosCOOPER: TStringField
      FieldName = 'COOPER'
      Size = 1
    end
    object sqlDadosCTCCON: TIntegerField
      FieldName = 'CTCCON'
    end
    object sqlDadosAREA: TBCDField
      FieldName = 'AREA'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object sqlDadosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 1
    end
    object sqlDadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 120
    end
    object sqlDadosCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sqlDadosSITE: TStringField
      FieldName = 'SITE'
      Size = 120
    end
    object sqlDadosLIMITE: TBCDField
      FieldName = 'LIMITE'
    end
    object sqlDadosFINAN: TBCDField
      FieldName = 'FINAN'
    end
    object sqlDadosMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 100
    end
    object sqlDadosFORMA: TStringField
      FieldName = 'FORMA'
      Size = 30
    end
    object sqlDadosFUNSIM: TStringField
      FieldName = 'FUNSIM'
      Size = 1
    end
    object sqlDadosFUNPER: TBCDField
      FieldName = 'FUNPER'
    end
    object sqlDadosCOMISPER: TBCDField
      FieldName = 'COMISPER'
    end
    object sqlDadosADIANTCX: TBCDField
      FieldName = 'ADIANTCX'
    end
    object sqlDadosFG_DESC_PRECO: TStringField
      FieldName = 'FG_DESC_PRECO'
      Visible = False
      Size = 1
    end
    object sqlDadosWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Size = 50
    end
    object sqlDadosNFDESCPARC: TStringField
      FieldName = 'NFDESCPARC'
      Size = 1
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = sqlEndereco
    UpdateMode = upWhereKeyOnly
    Left = 842
    Top = 61
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndereco'
    Left = 874
    Top = 61
    object cdsEnderecoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      Required = True
    end
    object cdsEnderecoLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsEnderecoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsEnderecoCPF: TStringField
      DisplayWidth = 20
      FieldName = 'CPF'
    end
    object cdsEnderecoDOC: TStringField
      DisplayWidth = 20
      FieldName = 'DOC'
    end
    object cdsEnderecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsEnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsEnderecoCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Size = 30
    end
    object cdsEnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;1; '
      Size = 9
    end
    object cdsEnderecoCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Size = 30
    end
    object cdsEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsEnderecoFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object cdsEnderecoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsEnderecoCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
    end
    object cdsEnderecoEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object cdsEnderecoACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object cdsEnderecoREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object cdsEnderecoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsEndereco: TDataSource
    DataSet = cdsEndereco
    Left = 906
    Top = 61
  end
  object sqlEndereco: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadendereco'
      'where lanc = :pID'
      '    and tipo = '#39'C'#39)
    Left = 810
    Top = 61
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqlEnderecoLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object sqlEnderecoLANC: TIntegerField
      FieldName = 'LANC'
    end
    object sqlEnderecoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqlEnderecoCPF: TStringField
      FieldName = 'CPF'
    end
    object sqlEnderecoDOC: TStringField
      FieldName = 'DOC'
    end
    object sqlEnderecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sqlEnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object sqlEnderecoCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Size = 30
    end
    object sqlEnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sqlEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sqlEnderecoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sqlEnderecoCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Size = 30
    end
    object sqlEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlEnderecoFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object sqlEnderecoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sqlEnderecoCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
    end
    object sqlEnderecoEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlEnderecoACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object sqlEnderecoREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1000
    end
    object sqlEnderecoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
