inherited FfrmCadFuncionario: TFfrmCadFuncionario
  Caption = 'Cadastro Funcion'#225'rios'
  ClientHeight = 422
  ClientWidth = 744
  ExplicitWidth = 750
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 406
    Width = 744
    ExplicitTop = 406
    ExplicitWidth = 744
    inherited PStatusHistorico: TPanel
      Width = 563
      ExplicitWidth = 563
    end
    inherited pnlTela: TPanel
      Left = 676
      ExplicitLeft = 676
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 734
      ExplicitLeft = 734
      ExplicitHeight = 21
    end
  end
  inherited pMenu: TRzPanel
    Height = 406
    ExplicitHeight = 406
    inherited rzpMenu: TRzPanel
      Height = 302
      ExplicitHeight = 302
      inherited rbgAtivo: TRadioGroup
        Top = 262
        OnClick = rbgAtivoClick
        ExplicitTop = 262
      end
      inherited PPeriodo: TPanel
        Top = 182
        ExplicitTop = 182
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 607
    Height = 406
    ExplicitWidth = 607
    ExplicitHeight = 406
    inherited pcItem: TRzPageControl
      Width = 599
      Height = 398
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 599
      ExplicitHeight = 398
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 597
        ExplicitHeight = 377
        inherited pPesquisa: TRzPanel
          Top = 311
          Width = 597
          ExplicitTop = 311
          ExplicitWidth = 597
          inherited Label1: TLabel
            Width = 228
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 476
            ExplicitLeft = 476
          end
          inherited rbPesquisa: TRzPanel
            Width = 589
            ExplicitWidth = 589
          end
          inherited edPesquisa: TMaskEdit
            Width = 472
            ExplicitWidth = 472
          end
        end
        inherited Panel2: TPanel
          Width = 597
          ExplicitWidth = 597
          inherited Label3: TLabel
            Left = 179
            Width = 417
            Height = 13
            ExplicitLeft = 179
          end
        end
        inherited dbDados: TcxGrid
          Width = 597
          Height = 291
          ExplicitWidth = 597
          ExplicitHeight = 291
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 597
        ExplicitHeight = 377
        inherited pDados: TPanel
          Width = 597
          Height = 377
          ExplicitWidth = 597
          ExplicitHeight = 377
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
          object GroupBox5: TGroupBox
            Left = 135
            Top = 67
            Width = 412
            Height = 32
            Caption = ' Endere'#231'o '
            TabOrder = 3
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
            TabOrder = 12
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
            Left = 5
            Top = 131
            Width = 316
            Height = 32
            Caption = ' Cidade '
            TabOrder = 5
            OnExit = GroupBox3Exit
            inline frmPesquisaCidade: TfrmPesquisa
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
                Width = 283
                Height = 16
                CharCase = ecUpperCase
                ExplicitWidth = 283
                ExplicitHeight = 16
              end
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 316
            Height = 32
            Caption = ' Descri'#231#227'o  '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 308
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
            Top = 99
            Width = 273
            Height = 32
            Caption = ' Bairro '
            TabOrder = 4
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
            Top = 67
            Width = 100
            Height = 32
            Caption = ' CEP '
            TabOrder = 2
            object DBEdit4: TDBEdit
              Left = 8
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
          object GroupBox8: TGroupBox
            Left = 339
            Top = 163
            Width = 241
            Height = 32
            Caption = ' Telefone '
            TabOrder = 9
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
          object GroupBox7: TGroupBox
            Left = 5
            Top = 163
            Width = 161
            Height = 32
            Caption = ' CNPJ/CPF.'
            TabOrder = 7
            object DBEdit6: TDBEdit
              Left = 6
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
              OnExit = DBEdit6Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox13: TGroupBox
            Left = 326
            Top = 131
            Width = 48
            Height = 32
            Caption = ' UF '
            TabOrder = 6
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
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox10: TGroupBox
            Left = 5
            Top = 196
            Width = 412
            Height = 32
            Caption = ' E-mail '
            TabOrder = 10
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
            Left = 172
            Top = 163
            Width = 161
            Height = 32
            Caption = ' I.E./Doc'
            TabOrder = 8
            object DBEdit10: TDBEdit
              Left = 6
              Top = 14
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
              OnExit = DBEdit6Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object gbPlano: TGroupBox
            Left = 5
            Top = 234
            Width = 356
            Height = 34
            Caption = ' Plano de Contas padr'#227'o '
            TabOrder = 11
            inline frmPesquisaCtc: TfrmPesquisa
              Left = 6
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
              ExplicitLeft = 6
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
          object DBRadioGroup4: TDBRadioGroup
            Left = 100
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
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 666
    Top = 238
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADFORNE.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADFORNE.DESCRICAO'
      Size = 50
    end
    object cdsDadosCIDADEDES: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'CIDADEDES'
      Origin = 'JAEADMIN.CADFORNE.CIDADEDES'
      Size = 30
    end
    object cdsDadosENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'JAEADMIN.CADFORNE.ENDERECO'
      Size = 50
    end
    object cdsDadosCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Origin = 'JAEADMIN.CADFORNE.CIDADECOD'
      Visible = False
    end
    object cdsDadosCOOPER: TStringField
      FieldName = 'COOPER'
      Origin = 'JAEADMIN.CADFORNE.COOPER'
      Visible = False
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADFORNE.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADFORNE.ACESOCOD'
      Visible = False
    end
    object cdsDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'JAEADMIN.CADFORNE.BAIRRO'
      Visible = False
      Size = 30
    end
    object cdsDadosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'JAEADMIN.CADFORNE.CEP'
      Visible = False
      EditMask = '99999\-999;1; '
      Size = 9
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.CADFORNE.ESTADO'
      Visible = False
      Size = 2
    end
    object cdsDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'JAEADMIN.CADFORNE.CPF'
      Visible = False
    end
    object cdsDadosDOC: TStringField
      FieldName = 'DOC'
      Origin = 'JAEADMIN.CADFORNE.DOC'
      Visible = False
    end
    object cdsDadosFONE: TStringField
      FieldName = 'FONE'
      Origin = 'JAEADMIN.CADFORNE.FONE'
      Visible = False
      Size = 30
    end
    object cdsDadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'JAEADMIN.CADFORNE.EMAIL'
      Visible = False
      Size = 120
    end
    object cdsDadosFUNRURALPER: TBCDField
      FieldName = 'FUNRURALPER'
      Origin = 'JAEADMIN.CADFORNE.FUNRURALPER'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosGRUPOCOD: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPOCOD'
      Origin = 'JAEADMIN.CADFORNE.GRUPOCOD'
    end
    object cdsDadosTIPOCOD: TStringField
      FieldName = 'TIPOCOD'
      Origin = 'JAEADMIN.CADFORNE.TIPOCOD'
      Visible = False
      Size = 1
    end
    object cdsDadosWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Origin = 'JAEADMIN.CADFORNE.WEBLOCAL'
      Visible = False
      Size = 50
    end
    object cdsDadosCTC: TIntegerField
      FieldName = 'CTC'
      Visible = False
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADFORNE.ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADFORNE.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADFORNE.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 634
    Top = 238
  end
  inherited dsDados: TDataSource
    Left = 698
    Top = 238
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadforne where tipocod = '#39'U'#39' and ativo = '#39'S'#39)
    Left = 602
    Top = 238
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADFORNE.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADFORNE.DESCRICAO'
      Size = 50
    end
    object sqlDadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'JAEADMIN.CADFORNE.ENDERECO'
      Size = 50
    end
    object sqlDadosCIDADECOD: TIntegerField
      FieldName = 'CIDADECOD'
      Origin = 'JAEADMIN.CADFORNE.CIDADECOD'
    end
    object sqlDadosCOOPER: TStringField
      FieldName = 'COOPER'
      Origin = 'JAEADMIN.CADFORNE.COOPER'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADFORNE.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADFORNE.ACESOCOD'
    end
    object sqlDadosCIDADEDES: TStringField
      FieldName = 'CIDADEDES'
      Origin = 'JAEADMIN.CADFORNE.CIDADEDES'
      Size = 30
    end
    object sqlDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'JAEADMIN.CADFORNE.BAIRRO'
      Size = 30
    end
    object sqlDadosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'JAEADMIN.CADFORNE.CEP'
      EditMask = '99999\-999;1; '
      Size = 9
    end
    object sqlDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'JAEADMIN.CADFORNE.ESTADO'
      Size = 2
    end
    object sqlDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'JAEADMIN.CADFORNE.CPF'
    end
    object sqlDadosDOC: TStringField
      FieldName = 'DOC'
      Origin = 'JAEADMIN.CADFORNE.DOC'
    end
    object sqlDadosFONE: TStringField
      FieldName = 'FONE'
      Origin = 'JAEADMIN.CADFORNE.FONE'
      Size = 30
    end
    object sqlDadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'JAEADMIN.CADFORNE.EMAIL'
      Size = 120
    end
    object sqlDadosFUNRURALPER: TBCDField
      FieldName = 'FUNRURALPER'
      Origin = 'JAEADMIN.CADFORNE.FUNRURALPER'
    end
    object sqlDadosGRUPOCOD: TIntegerField
      FieldName = 'GRUPOCOD'
      Origin = 'JAEADMIN.CADFORNE.GRUPOCOD'
    end
    object sqlDadosTIPOCOD: TStringField
      FieldName = 'TIPOCOD'
      Origin = 'JAEADMIN.CADFORNE.TIPOCOD'
      Size = 1
    end
    object sqlDadosWEBLOCAL: TStringField
      FieldName = 'WEBLOCAL'
      Origin = 'JAEADMIN.CADFORNE.WEBLOCAL'
      Size = 50
    end
    object sqlDadosCTC: TIntegerField
      FieldName = 'CTC'
      Visible = False
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'JAEADMIN.CADFORNE.ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADFORNE.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADFORNE.REG_ID'
    end
  end
end
