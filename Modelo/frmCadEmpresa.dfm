inherited FfrmCadEmpresa: TFfrmCadEmpresa
  Caption = 'Cadastro empresa'
  ClientHeight = 418
  ClientWidth = 987
  ExplicitWidth = 993
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 402
    Width = 987
    ExplicitTop = 402
    ExplicitWidth = 987
    inherited PStatusHistorico: TPanel
      Width = 806
      ExplicitWidth = 806
    end
    inherited pnlTela: TPanel
      Left = 919
      ExplicitLeft = 919
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 977
      ExplicitLeft = 977
    end
  end
  inherited pMenu: TRzPanel
    Height = 402
    ExplicitHeight = 402
    inherited rzpMenu: TRzPanel
      Height = 298
      ExplicitHeight = 298
      inherited sbIncluir: TSpeedButton
        Enabled = False
        ExplicitLeft = 2
        ExplicitTop = 22
        ExplicitWidth = 129
      end
      inherited sbExcluir: TSpeedButton
        Enabled = False
        ExplicitLeft = 2
        ExplicitTop = 90
        ExplicitWidth = 129
      end
      inherited rbgAtivo: TRadioGroup
        Top = 258
        ExplicitTop = 258
      end
      inherited PPeriodo: TPanel
        Top = 178
        ExplicitTop = 178
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 850
    Height = 402
    ExplicitWidth = 850
    ExplicitHeight = 402
    inherited pcItem: TRzPageControl
      Width = 842
      Height = 394
      OnChange = pcItemChange
      ExplicitWidth = 842
      ExplicitHeight = 394
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 840
        ExplicitHeight = 373
        inherited pPesquisa: TRzPanel
          Top = 307
          Width = 840
          ExplicitTop = 307
          ExplicitWidth = 840
          inherited Label1: TLabel
            Width = 832
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 719
            ExplicitLeft = 719
          end
          inherited rbPesquisa: TRzPanel
            Width = 832
            ExplicitWidth = 832
          end
          inherited edPesquisa: TMaskEdit
            Width = 715
            ExplicitWidth = 715
          end
        end
        inherited Panel2: TPanel
          Width = 840
          ExplicitWidth = 840
          inherited Label3: TLabel
            Width = 702
            ExplicitLeft = 422
          end
        end
        inherited dbDados: TcxGrid
          Width = 840
          Height = 287
          ExplicitWidth = 840
          ExplicitHeight = 287
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
            object dbDadosDBTableView1CPF: TcxGridDBColumn
              DataBinding.FieldName = 'CPF'
              Width = 125
            end
            object dbDadosDBTableView1DOC: TcxGridDBColumn
              DataBinding.FieldName = 'DOC'
              Width = 100
            end
            object dbDadosDBTableView1ENDERECO: TcxGridDBColumn
              Caption = 'Endere'#231'o'
              DataBinding.FieldName = 'ENDERECO'
              Width = 150
            end
            object dbDadosDBTableView1CIDADECOD: TcxGridDBColumn
              DataBinding.FieldName = 'CIDADECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CIDADEDES: TcxGridDBColumn
              Caption = 'Cidade'
              DataBinding.FieldName = 'CIDADEDES'
              Width = 150
            end
            object dbDadosDBTableView1ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
            end
            object dbDadosDBTableView1BAIRRO: TcxGridDBColumn
              DataBinding.FieldName = 'BAIRRO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CEP: TcxGridDBColumn
              DataBinding.FieldName = 'CEP'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FONE: TcxGridDBColumn
              DataBinding.FieldName = 'FONE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SENHA: TcxGridDBColumn
              DataBinding.FieldName = 'SENHA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1EMAIL: TcxGridDBColumn
              DataBinding.FieldName = 'EMAIL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ENDGERAL: TcxGridDBColumn
              DataBinding.FieldName = 'ENDGERAL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FOLDER: TcxGridDBColumn
              DataBinding.FieldName = 'FOLDER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SENHADES: TcxGridDBColumn
              DataBinding.FieldName = 'SENHADES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ANO: TcxGridDBColumn
              DataBinding.FieldName = 'ANO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PROTECAO: TcxGridDBColumn
              DataBinding.FieldName = 'PROTECAO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LANCIT: TcxGridDBColumn
              DataBinding.FieldName = 'LANCIT'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BANINS: TcxGridDBColumn
              DataBinding.FieldName = 'BANINS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BANAGE: TcxGridDBColumn
              DataBinding.FieldName = 'BANAGE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BANCTA: TcxGridDBColumn
              DataBinding.FieldName = 'BANCTA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BANDES: TcxGridDBColumn
              DataBinding.FieldName = 'BANDES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BANCVE: TcxGridDBColumn
              DataBinding.FieldName = 'BANCVE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BANCTR: TcxGridDBColumn
              DataBinding.FieldName = 'BANCTR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SIMPLES: TcxGridDBColumn
              DataBinding.FieldName = 'SIMPLES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1NSU: TcxGridDBColumn
              DataBinding.FieldName = 'NSU'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CNAE: TcxGridDBColumn
              DataBinding.FieldName = 'CNAE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CONTADOR: TcxGridDBColumn
              DataBinding.FieldName = 'CONTADOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CONTADORCRC: TcxGridDBColumn
              DataBinding.FieldName = 'CONTADORCRC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBUTO1: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBUTO1'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBUTO2: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBUTO2'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TRIBUTO3: TcxGridDBColumn
              DataBinding.FieldName = 'TRIBUTO3'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMS_CREDITO: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS_CREDITO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ICMS_CREDPER: TcxGridDBColumn
              DataBinding.FieldName = 'ICMS_CREDPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SERVICOPER: TcxGridDBColumn
              DataBinding.FieldName = 'SERVICOPER'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IM: TcxGridDBColumn
              DataBinding.FieldName = 'IM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1WEBLOCAL: TcxGridDBColumn
              DataBinding.FieldName = 'WEBLOCAL'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REGLOG: TcxGridDBColumn
              DataBinding.FieldName = 'REGLOG'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REG_ID: TcxGridDBColumn
              DataBinding.FieldName = 'REG_ID'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 840
        ExplicitHeight = 373
        inherited pDados: TPanel
          Width = 840
          Height = 194
          Align = alTop
          ExplicitWidth = 840
          ExplicitHeight = 194
          object spbMapa: TSpeedButton
            Left = 653
            Top = 111
            Width = 25
            Height = 26
            Cursor = crHandPoint
            Hint = 'Importa localiza'#231#227'o, latitude e longitude do google maps...'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = spbMapaClick
          end
          object spbMapaWeb: TSpeedButton
            Left = 682
            Top = 111
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
            Left = 5
            Top = 73
            Width = 412
            Height = 32
            Caption = ' Endere'#231'o '
            TabOrder = 5
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
          object GroupBox3: TGroupBox
            Left = 106
            Top = 108
            Width = 316
            Height = 32
            Caption = ' Cidade '
            TabOrder = 8
            OnExit = GroupBox3Exit
            inline frmCidade: TfrmPesquisa
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 40
            Width = 484
            Height = 32
            Caption = ' Descri'#231#227'o  '
            TabOrder = 4
            object DBEdit2: TDBEdit
              Left = 3
              Top = 15
              Width = 470
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
            Left = 423
            Top = 73
            Width = 273
            Height = 32
            Caption = ' Bairro '
            TabOrder = 6
            object DBEdit3: TDBEdit
              Left = 6
              Top = 15
              Width = 255
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
            Top = 108
            Width = 100
            Height = 32
            Caption = ' CEP '
            TabOrder = 7
            object DBEdit4: TDBEdit
              Left = 6
              Top = 14
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
            Left = 91
            Top = 5
            Width = 161
            Height = 32
            Caption = ' CNPJ/CPF.'
            TabOrder = 1
            object DBEdit6: TDBEdit
              Left = 8
              Top = 14
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox8: TGroupBox
            Left = 5
            Top = 146
            Width = 241
            Height = 32
            Caption = ' Telefone '
            TabOrder = 10
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
          object GroupBox13: TGroupBox
            Left = 423
            Top = 108
            Width = 48
            Height = 32
            Caption = ' UF '
            TabOrder = 9
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
            Left = 253
            Top = 5
            Width = 161
            Height = 32
            Caption = ' Insc.Est./Outros '
            TabOrder = 2
            object DBEdit13: TDBEdit
              Left = 6
              Top = 15
              Width = 150
              Height = 15
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
              TabOrder = 0
              OnExit = DBEdit13Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox17: TGroupBox
            Left = 417
            Top = 5
            Width = 161
            Height = 32
            Caption = ' Insc.Municipal '
            TabOrder = 3
            object DBEdit16: TDBEdit
              Left = 6
              Top = 15
              Width = 150
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'IM'
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
            Left = 477
            Top = 108
            Width = 175
            Height = 32
            Caption = ' Localiza'#231#227'o Mapa '
            TabOrder = 11
            object DBEdit19: TDBEdit
              Left = 5
              Top = 14
              Width = 146
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
        object rzpcGrupo: TRzPageControl
          Left = 0
          Top = 194
          Width = 840
          Height = 179
          Hint = ''
          ActivePage = tsbContador
          Align = alTop
          Color = clWhite
          UseColoredTabs = True
          ParentColor = False
          TabIndex = 0
          TabOrder = 1
          FixedDimension = 19
          object tsbContador: TRzTabSheet
            Color = clWhite
            Caption = 'Contador'
            Enabled = False
            object GroupBox9: TGroupBox
              Left = 216
              Top = 41
              Width = 130
              Height = 32
              Caption = ' CRC '
              TabOrder = 0
              object DBEdit8: TDBEdit
                Left = 6
                Top = 15
                Width = 115
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTADORCRC'
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
              Left = 3
              Top = 41
              Width = 212
              Height = 32
              Caption = ' Contador '
              TabOrder = 1
              object DBEdit14: TDBEdit
                Left = 6
                Top = 15
                Width = 195
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTADOR'
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
              Left = 3
              Top = 10
              Width = 412
              Height = 32
              Caption = ' E-mail  do contador '
              TabOrder = 2
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
          end
          object tsbFiscal: TRzTabSheet
            Color = clWhite
            Caption = 'Fiscal'
            Enabled = False
            object GroupBox11: TGroupBox
              Left = 3
              Top = 3
              Width = 412
              Height = 32
              Caption = ' CNAE '
              TabOrder = 0
              object DBEdit10: TDBEdit
                Left = 6
                Top = 15
                Width = 403
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CNAE'
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
              Left = 3
              Top = 39
              Width = 189
              Height = 32
              Caption = '  Enquadrada no Simples  '
              Columns = 2
              DataField = 'SIMPLES'
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
              TabOrder = 1
              Values.Strings = (
                'S'
                'N')
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 197
              Top = 39
              Width = 189
              Height = 32
              Caption = ' Gera Cr'#233'dito '
              Columns = 2
              DataField = 'ICMS_CREDITO'
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
              TabOrder = 2
              Values.Strings = (
                'S'
                'N')
            end
            object GroupBox16: TGroupBox
              Left = 3
              Top = 77
              Width = 100
              Height = 32
              Caption = ' % Servi'#231'o '
              TabOrder = 3
              object DBEdit15: TDBEdit
                Left = 2
                Top = 15
                Width = 96
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'SERVICOPER'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit15Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox12: TGroupBox
              Left = 109
              Top = 77
              Width = 136
              Height = 32
              Caption = ' % Imposto Custo '
              TabOrder = 4
              object DBEdit11: TDBEdit
                Left = 2
                Top = 15
                Width = 132
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'TRIBUTO3'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit15Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
          end
          object tsbRetirada: TRzTabSheet
            Color = clWhite
            Caption = 'Endere'#231'o Retirada'
            Enabled = False
            object Label6: TLabel
              Left = 0
              Top = 0
              Width = 836
              Height = 13
              Align = alTop
              Caption = '*Preencher somente se for para RETIRAR em outro local (NFe)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 409
            end
            object GroupBox18: TGroupBox
              Left = 5
              Top = 20
              Width = 161
              Height = 32
              Caption = ' CNPJ/CPF.'
              TabOrder = 0
              object DBEdit17: TDBEdit
                Left = 6
                Top = 15
                Width = 150
                Height = 15
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
                OnExit = DBEdit17Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox19: TGroupBox
              Left = 167
              Top = 20
              Width = 161
              Height = 32
              Caption = ' Insc.Est./Outros '
              TabOrder = 1
              object DBEdit18: TDBEdit
                Left = 6
                Top = 15
                Width = 150
                Height = 15
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
            object GroupBox21: TGroupBox
              Left = 5
              Top = 55
              Width = 412
              Height = 32
              Caption = ' Endere'#231'o '
              TabOrder = 2
              object DBEdit20: TDBEdit
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
            object GroupBox22: TGroupBox
              Left = 519
              Top = 55
              Width = 273
              Height = 32
              Caption = ' Bairro '
              TabOrder = 4
              object DBEdit21: TDBEdit
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
            object GroupBox23: TGroupBox
              Left = 5
              Top = 88
              Width = 100
              Height = 32
              Caption = ' CEP '
              TabOrder = 5
              object DBEdit22: TDBEdit
                Left = 6
                Top = 14
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
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox24: TGroupBox
              Left = 106
              Top = 88
              Width = 316
              Height = 32
              Caption = ' Cidade '
              TabOrder = 6
              OnExit = GroupBox24Exit
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
            object GroupBox25: TGroupBox
              Left = 423
              Top = 88
              Width = 48
              Height = 32
              Caption = ' UF '
              TabOrder = 7
              object DBEdit23: TDBEdit
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
                OnExit = DBEdit23Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox26: TGroupBox
              Left = 477
              Top = 88
              Width = 241
              Height = 32
              Caption = ' Telefone '
              TabOrder = 8
              object DBEdit24: TDBEdit
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
            object GroupBox27: TGroupBox
              Left = 428
              Top = 55
              Width = 85
              Height = 32
              Caption = ' N'#250'mero '
              TabOrder = 3
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
          end
          object tsbEntrega: TRzTabSheet
            Color = clWhite
            Caption = 'Endere'#231'o Entrega'
            object Label7: TLabel
              Left = 0
              Top = 0
              Width = 836
              Height = 13
              Align = alTop
              Caption = '*Preencher somente se for para Entrega em outro local (NFe)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 405
            end
            object GroupBox28: TGroupBox
              Left = 5
              Top = 20
              Width = 161
              Height = 32
              Caption = ' CNPJ/CPF.'
              TabOrder = 0
              object DBEdit26: TDBEdit
                Left = 6
                Top = 15
                Width = 150
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CPF'
                DataSource = dsEndEntrega
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit26Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
            object GroupBox29: TGroupBox
              Left = 167
              Top = 19
              Width = 161
              Height = 32
              Caption = ' Insc.Est./Outros '
              TabOrder = 1
              object DBEdit27: TDBEdit
                Left = 6
                Top = 15
                Width = 150
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'DOC'
                DataSource = dsEndEntrega
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
            object GroupBox30: TGroupBox
              Left = 5
              Top = 55
              Width = 412
              Height = 32
              Caption = ' Endere'#231'o '
              TabOrder = 2
              object DBEdit28: TDBEdit
                Left = 6
                Top = 15
                Width = 403
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ENDERECO'
                DataSource = dsEndEntrega
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
            object GroupBox31: TGroupBox
              Left = 5
              Top = 88
              Width = 100
              Height = 32
              Caption = ' CEP '
              TabOrder = 3
              object DBEdit29: TDBEdit
                Left = 6
                Top = 14
                Width = 89
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CEP'
                DataSource = dsEndEntrega
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
              Left = 106
              Top = 88
              Width = 316
              Height = 32
              Caption = ' Cidade '
              TabOrder = 4
              OnExit = GroupBox32Exit
              inline frmEndEntrega: TfrmPesquisa
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
            object GroupBox33: TGroupBox
              Left = 428
              Top = 55
              Width = 85
              Height = 32
              Caption = ' N'#250'mero '
              TabOrder = 5
              object DBEdit30: TDBEdit
                Left = 6
                Top = 15
                Width = 32
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'NUMERO'
                DataSource = dsEndEntrega
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
            object GroupBox34: TGroupBox
              Left = 519
              Top = 55
              Width = 273
              Height = 32
              Caption = ' Bairro '
              TabOrder = 6
              object DBEdit31: TDBEdit
                Left = 6
                Top = 15
                Width = 255
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'BAIRRO'
                DataSource = dsEndEntrega
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
            object GroupBox35: TGroupBox
              Left = 477
              Top = 88
              Width = 241
              Height = 32
              Caption = ' Telefone '
              TabOrder = 7
              object DBEdit32: TDBEdit
                Left = 6
                Top = 15
                Width = 227
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'FONE'
                DataSource = dsEndEntrega
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
            object GroupBox36: TGroupBox
              Left = 423
              Top = 88
              Width = 48
              Height = 32
              Caption = ' UF '
              TabOrder = 8
              object DBEdit33: TDBEdit
                Left = 6
                Top = 15
                Width = 32
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ESTADO'
                DataSource = dsEndEntrega
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit23Exit
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
    Left = 882
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 41
    end
    object cdsDadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 41
    end
    object cdsDadosCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Visible = False
    end
    object cdsDadosCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Visible = False
      Size = 30
    end
    object cdsDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 31
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Visible = False
      Size = 3
    end
    object cdsDadosCEP: TStringField
      FieldName = 'CEP'
      Visible = False
      EditMask = '99999\-999;1; '
      Size = 10
    end
    object cdsDadosCPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CPF'
      Size = 21
    end
    object cdsDadosDOC: TStringField
      DisplayLabel = 'IE/DOC.'
      FieldName = 'DOC'
      Size = 21
    end
    object cdsDadosFONE: TStringField
      FieldName = 'FONE'
      Visible = False
      Size = 31
    end
    object cdsDadosSENHA: TStringField
      FieldName = 'SENHA'
      Visible = False
      Size = 11
    end
    object cdsDadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 76
    end
    object cdsDadosENDGERAL: TStringField
      FieldName = 'ENDGERAL'
      Visible = False
      Size = 101
    end
    object cdsDadosFOLDER: TStringField
      FieldName = 'FOLDER'
      Visible = False
      Size = 76
    end
    object cdsDadosSENHADES: TStringField
      FieldName = 'SENHADES'
      Visible = False
      Size = 151
    end
    object cdsDadosANO: TStringField
      FieldName = 'ANO'
      Visible = False
      Size = 5
    end
    object cdsDadosMES: TStringField
      FieldName = 'MES'
      Visible = False
      Size = 3
    end
    object cdsDadosLANC: TIntegerField
      FieldName = 'LANC'
      Visible = False
    end
    object cdsDadosPROTECAO: TStringField
      FieldName = 'PROTECAO'
      Visible = False
      Size = 2
    end
    object cdsDadosLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Visible = False
    end
    object cdsDadosBANINS: TStringField
      FieldName = 'BANINS'
      Visible = False
    end
    object cdsDadosBANAGE: TStringField
      FieldName = 'BANAGE'
      Visible = False
      Size = 6
    end
    object cdsDadosBANCTA: TStringField
      FieldName = 'BANCTA'
      Visible = False
      Size = 13
    end
    object cdsDadosBANDES: TStringField
      FieldName = 'BANDES'
      Visible = False
      Size = 30
    end
    object cdsDadosBANCVE: TStringField
      FieldName = 'BANCVE'
      Visible = False
    end
    object cdsDadosBANCTR: TStringField
      FieldName = 'BANCTR'
      Visible = False
      Size = 10
    end
    object cdsDadosSIMPLES: TStringField
      FieldName = 'SIMPLES'
      Visible = False
      Size = 1
    end
    object cdsDadosNSU: TIntegerField
      FieldName = 'NSU'
      Visible = False
    end
    object cdsDadosCNAE: TStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 120
    end
    object cdsDadosCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Visible = False
      Size = 50
    end
    object cdsDadosCONTADORCRC: TStringField
      FieldName = 'CONTADORCRC'
      Visible = False
      Size = 10
    end
    object cdsDadosTRIBUTO1: TBCDField
      FieldName = 'TRIBUTO1'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTRIBUTO2: TBCDField
      FieldName = 'TRIBUTO2'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosTRIBUTO3: TBCDField
      FieldName = 'TRIBUTO3'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosICMS_CREDITO: TStringField
      FieldName = 'ICMS_CREDITO'
      Visible = False
      Size = 1
    end
    object cdsDadosICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSERVICOPER: TBCDField
      FieldName = 'SERVICOPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosIM: TStringField
      FieldName = 'IM'
      Visible = False
    end
    object cdsDadosWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Visible = False
      Size = 50
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 850
  end
  inherited dsDados: TDataSource
    Left = 914
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from empresa')
    Left = 818
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 41
    end
    object sqlDadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 41
    end
    object sqlDadosCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
    end
    object sqlDadosCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Size = 30
    end
    object sqlDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 3
    end
    object sqlDadosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlDadosCPF: TStringField
      FieldName = 'CPF'
      Size = 21
    end
    object sqlDadosDOC: TStringField
      FieldName = 'DOC'
      Size = 21
    end
    object sqlDadosFONE: TStringField
      FieldName = 'FONE'
      Size = 31
    end
    object sqlDadosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 11
    end
    object sqlDadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 76
    end
    object sqlDadosENDGERAL: TStringField
      FieldName = 'ENDGERAL'
      Size = 101
    end
    object sqlDadosFOLDER: TStringField
      FieldName = 'FOLDER'
      Size = 76
    end
    object sqlDadosSENHADES: TStringField
      FieldName = 'SENHADES'
      Size = 151
    end
    object sqlDadosANO: TStringField
      FieldName = 'ANO'
      Size = 5
    end
    object sqlDadosMES: TStringField
      FieldName = 'MES'
      Size = 3
    end
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
    end
    object sqlDadosPROTECAO: TStringField
      FieldName = 'PROTECAO'
      Size = 2
    end
    object sqlDadosLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object sqlDadosBANINS: TStringField
      FieldName = 'BANINS'
    end
    object sqlDadosBANAGE: TStringField
      FieldName = 'BANAGE'
      Size = 6
    end
    object sqlDadosBANCTA: TStringField
      FieldName = 'BANCTA'
      Size = 13
    end
    object sqlDadosBANDES: TStringField
      FieldName = 'BANDES'
      Size = 30
    end
    object sqlDadosBANCVE: TStringField
      FieldName = 'BANCVE'
    end
    object sqlDadosBANCTR: TStringField
      FieldName = 'BANCTR'
      Size = 10
    end
    object sqlDadosSIMPLES: TStringField
      FieldName = 'SIMPLES'
      Size = 1
    end
    object sqlDadosNSU: TIntegerField
      FieldName = 'NSU'
    end
    object sqlDadosCNAE: TStringField
      FieldName = 'CNAE'
      Size = 120
    end
    object sqlDadosCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Size = 50
    end
    object sqlDadosCONTADORCRC: TStringField
      FieldName = 'CONTADORCRC'
      Size = 10
    end
    object sqlDadosTRIBUTO1: TBCDField
      FieldName = 'TRIBUTO1'
    end
    object sqlDadosTRIBUTO2: TBCDField
      FieldName = 'TRIBUTO2'
    end
    object sqlDadosTRIBUTO3: TBCDField
      FieldName = 'TRIBUTO3'
    end
    object sqlDadosICMS_CREDITO: TStringField
      FieldName = 'ICMS_CREDITO'
      Size = 1
    end
    object sqlDadosICMS_CREDPER: TBCDField
      FieldName = 'ICMS_CREDPER'
    end
    object sqlDadosSERVICOPER: TBCDField
      FieldName = 'SERVICOPER'
    end
    object sqlDadosIM: TStringField
      FieldName = 'IM'
    end
    object sqlDadosWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Size = 50
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = sqlEndereco
    UpdateMode = upWhereKeyOnly
    Left = 850
    Top = 46
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndereco'
    OnReconcileError = cdsDadosReconcileError
    Left = 882
    Top = 46
    object cdsEnderecoLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsEnderecoLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsEnderecoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsEnderecoCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsEnderecoDOC: TStringField
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
      Size = 1000
    end
    object cdsEnderecoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsEndereco: TDataSource
    DataSet = cdsEndereco
    Left = 914
    Top = 46
  end
  object dspEndEntrega: TDataSetProvider
    DataSet = sqlEndEntrega
    UpdateMode = upWhereKeyOnly
    Left = 850
    Top = 78
  end
  object cdsEndEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndEntrega'
    OnReconcileError = cdsDadosReconcileError
    Left = 882
    Top = 78
    object cdsEndEntregaLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsEndEntregaLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsEndEntregaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsEndEntregaCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsEndEntregaDOC: TStringField
      FieldName = 'DOC'
    end
    object cdsEndEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsEndEntregaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsEndEntregaCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Size = 30
    end
    object cdsEndEntregaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsEndEntregaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEndEntregaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;1; '
      Size = 9
    end
    object cdsEndEntregaCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Size = 30
    end
    object cdsEndEntregaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsEndEntregaFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object cdsEndEntregaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsEndEntregaCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
    end
    object cdsEndEntregaEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object cdsEndEntregaACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object cdsEndEntregaREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1000
    end
    object cdsEndEntregaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsEndEntrega: TDataSource
    DataSet = cdsEndEntrega
    Left = 914
    Top = 78
  end
  object sqlEndereco: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadendereco'
      'where lanc = :pID'
      '    and tipo = '#39'E'#39)
    Left = 818
    Top = 46
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqlEnderecoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlEnderecoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlEnderecoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object sqlEnderecoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object sqlEnderecoDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object sqlEnderecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlEnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object sqlEnderecoCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Origin = 'COMPLEM'
      Size = 30
    end
    object sqlEnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object sqlEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object sqlEnderecoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object sqlEnderecoCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Origin = 'CIDADEDES'
      Size = 30
    end
    object sqlEnderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object sqlEnderecoFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object sqlEnderecoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object sqlEnderecoCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Origin = 'CIDADECOD'
    end
    object sqlEnderecoEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlEnderecoACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlEnderecoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlEnderecoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqlEndEntrega: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from cadendereco'
      'where lanc = :pID'
      '    and tipo = '#39'T'#39)
    Left = 818
    Top = 78
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqlEndEntregaLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlEndEntregaLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlEndEntregaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object sqlEndEntregaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object sqlEndEntregaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object sqlEndEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlEndEntregaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object sqlEndEntregaCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Origin = 'COMPLEM'
      Size = 30
    end
    object sqlEndEntregaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object sqlEndEntregaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object sqlEndEntregaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object sqlEndEntregaCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Origin = 'CIDADEDES'
      Size = 30
    end
    object sqlEndEntregaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object sqlEndEntregaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object sqlEndEntregaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object sqlEndEntregaCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Origin = 'CIDADECOD'
    end
    object sqlEndEntregaEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlEndEntregaACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlEndEntregaREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlEndEntregaREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
