inherited FfrmRomanAbre: TFfrmRomanAbre
  Caption = 'Abertura de lote.'
  ClientHeight = 456
  ClientWidth = 744
  Visible = False
  ExplicitWidth = 750
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 440
    Width = 744
    ExplicitTop = 440
    ExplicitWidth = 744
    inherited PStatusHistorico: TPanel
      Width = 573
      ExplicitWidth = 573
    end
    inherited pnlTela: TPanel
      Left = 686
      ExplicitLeft = 686
    end
  end
  inherited pMenu: TRzPanel
    Height = 440
    ExplicitHeight = 440
    inherited rzpMenu: TRzPanel
      Height = 301
      ExplicitHeight = 301
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 126
      end
      inherited sbProximo: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 170
        ExplicitWidth = 126
      end
      object SE1: TSpeedButton [5]
        Tag = 1
        Left = 0
        Top = 256
        Width = 126
        Height = 40
        Hint = 'Envia Dados para a Esteira/Produ'#231#227'o.'
        Align = alTop
        Caption = '  ESTEIRA'
        Flat = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF9F9F9CCB7ACA078658550357134156523027134156523
          0271341565230271341565230265230271341565230271341565230271341585
          5035A07865D3BFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDED1CB99705B713415713F25764A357A56447D5E4E7A56447D5E
          4E7A56447D5E4E7A56447D5E4E7D5E4E7A56447D5E4E7A56447D5E4E7453426B
          4A3B62382368351A99705BEBDDD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD3BFB5835139713F257E5947876A5B8667588163547B5F518163547B5F
          518163547B5F518163547B5F517B5F518163547B5F518163547B5F517B5F5177
          5C4E775C4E6B4A3B5E341E835139E0CDC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DED1CB89563D844B2E8D6D5D8C75689D7D6D9C8376947A6D8C7568947A6D8C75
          68947A6D8C7568947A6D8C75688C7568947A6D8C7568947A6D8C75688C75688C
          7568846D627A6256715649623823835139EBDDD6FFFFFFFFFFFFFFFFFFF9F9F9
          9F7661844B2E9D7D6DA28374B09384BAA499B4A299B4A299B4A299B4A299B4A2
          99B4A299B4A299B4A299B4A299B4A299B4A299B4A299B4A299AE9B92AD9D95AD
          9D95B4A299B4A2997A62567156495E341EA77861FFFFFFFFFFFFFFFFFFCCB7AC
          844B2E9F76619F7661B09384B09384BAA499BAA499B4A299B4A299B4A299B4A2
          99B4A299B4A299B4A299B4A299B4A299B4A299B4A299B4A299B4A299AD9D95AD
          9D95AD9D95AB9C948F7B717A62566B4A3B68351ADEC6BBFFFFFFFFFFFFAF836D
          9B6144B99888B99888E7CFC3ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDA
          D0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0EC
          DAD0ECDAD0CABDB6AB9C94846D6273594C5E341EAF836DFFFFFFFFFFFF9B6144
          A77861C2A08ED3B4A3E7CFC3ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDA
          D0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0EC
          DAD0ECDAD0CABDB6AB9C9489716673594C654131885136FFFFFFFFFFFF934B27
          B88D78C9A694D3B4A3E7CFC3ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDA
          D0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0EDDBD1EDDBD1EC
          DAD0ECDAD0C6BAB3AA9B9386706573594C6B4A3B713415FFFFFFFFFFFFA35732
          C49B86D3AA95DBBAA7E4CCC0ECDAD0EDDBD1EDDBD1EDDBD10000000000000000
          00000000ECDAD0EDDBD1EDDBD1EDDBD1EDDBD1ECDAD0EDDBD1000000000000EC
          DAD0ECDAD0CABDB6AD9D95897166755B4E745342713415FFFFFFFFFFFFBD7F60
          C78E72D5B19FDFBFAEE7CFC3ECDAD0EDDBD1EDDBD10000000000000000000000
          00000000000000ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0000000000000EC
          DAD0ECDAD0CABDB6B4A2998C75687B5F51764A35985737FFFFFFFFFFFFD2A791
          C2886AD9B4A2DFBFAEE7CFC3ECDAD0EDDBD1000000000000000000ECDAD0E7D8
          D1000000000000000000E7D8D1E7D8D1ECDAD0ECDAD0ECDAD0000000000000EC
          DAD0ECDAD0CABDB6A9978F8C7568816354713F25B88D78FFFFFFFFFFFFA35732
          C49B86D3AA95DBBAA7E4CCC0ECDAD0ECDAD0000000000000EDDBD1EDDBD1EDDB
          D1EDDBD1000000000000EDDBD1EDDBD1EDDBD1ECDAD0ECDAD0000000000000ED
          DBD1ECDAD0CABDB6AD9D95897166755B4E745342713415FFFFFFFFFFFFBD7F60
          C78E72D5B19FDFBFAEE7CFC3ECDAD0ECDAD0000000000000ECDAD0ECDAD0ECDA
          D0ECDAD0000000000000ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0000000000000EC
          DAD0ECDAD0CABDB6B4A2998C75687B5F51764A35985737FFFFFFFFFFFFD2A791
          C2886AD9B4A2DFBFAEE7CFC3ECDAD0ECDAD0000000000000E7D8D1ECDAD0E7D8
          D1ECDAD0000000000000E7D8D1E7D8D1ECDAD0E7D8D1ECDAD0000000000000EC
          DAD0ECDAD0CABDB6A9978F8C7568816354713F25B88D78FFFFFFFFFFFFA35732
          C49B86D3AA95DBBAA7E4CCC0ECDAD0ECDAD0000000000000EDDBD1EDDBD1EDDB
          D1EDDBD1000000000000EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1000000000000EC
          DAD0ECDAD0CABDB6AD9D95897166755B4E745342713415FFFFFFFFFFFFBD7F60
          C78E72D5B19FDFBFAEE7CFC3ECDAD0EDDBD1000000000000ECDAD0ECDAD0ECDA
          D0ECDAD0000000000000ECDAD0ECDAD0000000ECDAD0ECDAD0000000000000EC
          DAD0ECDAD0CABDB6B4A2998C75687B5F51764A35985737FFFFFFFFFFFFA35732
          C49B86D3AA95DBBAA7E4CCC0ECDAD0ECDAD0000000000000EDDBD1EDDBD1EDDB
          D1EDDBD1000000000000EDDBD1EDDBD1000000000000EDDBD1000000000000EC
          DAD0ECDAD0CABDB6AD9D95897166755B4E745342713415FFFFFFFFFFFFBD7F60
          C78E72D5B19FDFBFAEE7CFC3ECDAD0EDDBD1000000000000000000ECDAD0ECDA
          D0000000000000000000ECDAD0ECDAD0ECDAD0000000000000000000000000EC
          DAD0ECDAD0CABDB6B4A2998C75687B5F51764A35985737FFFFFFFFFFFFA35732
          C49B86D3AA95DBBAA7E4CCC0ECDAD0ECDAD0EDDBD10000000000000000000000
          00000000000000EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1000000000000000000EC
          DAD0ECDAD0CABDB6AD9D95897166755B4E745342713415FFFFFFFFFFFFBD7F60
          C78E72D5B19FDFBFAEE7CFC3ECDAD0EDDBD1EDDBD1ECDAD00000000000000000
          00000000ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0000000000000EC
          DAD0ECDAD0CABDB6B4A2998C75687B5F51764A35985737FFFFFFFFFFFFA35732
          C49B86D3AA95DBBAA7E4CCC0ECDAD0ECDAD0EDDBD1EDDBD1EDDBD1EDDBD1EDDB
          D1EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1EDDBD1ECDAD0EC
          DAD0ECDAD0CABDB6AD9D95897166755B4E745342713415FFFFFFFFFFFFBD7F60
          C78E72D5B19FDFBFAEE7CFC3ECDAD0EDDBD1EDDBD1ECDAD0ECDAD0ECDAD0ECDA
          D0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0EC
          DAD0ECDAD0CABDB6B4A2998C75687B5F51764A35985737FFFFFFFFFFFFD2A791
          C2886AD9B4A2DFBFAEE7CFC3ECDAD0EDDBD1ECDAD0ECDAD0E7D8D1ECDAD0E7D8
          D1ECDAD0E7D8D1ECDAD0E7D8D1E7D8D1ECDAD0E7D8D1ECDAD0E7D8D1ECDAD0EC
          DAD0ECDAD0CABDB6A9978F8C7568816354713F25B88D78FFFFFFFFFFFFE9D5CC
          BD7F60D3AA95DFBFAEE2C7BAECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDA
          D0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0ECDAD0EC
          DAD0ECDAD0B4A2999C8376876A5B7A5644804120E4CCC0FFFFFFFFFFFFFFFFFF
          D3AA95C78E72DDBBA9DFBFAEE3C6B7E4CCC0E4CCC0DEC6BBDEC6BBDEC6BBDEC6
          BBDEC6BBDEC6BBDEC6BBDEC6BBDEC6BBDEC6BBDEC6BBDEC6BBDEC6BBCCB7ACC3
          AEA4B5A1969C8376897166816354794328AF836DFFFFFFFFFFFFFFFFFFFFFFFF
          F1E3DCC9957BC9957BDBBAA7DDBBA9DFBFAEDAB9A9D5B19FD5B19FD5B19FD5B1
          9FD5B19FD5B19FD5B19FD5B19FD5B19FD5B19FD5B19FD5B19FD5B19FB99888AC
          8F819C83769374648667587943289B6144F1E3DCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFECDAD0C9957BC78E72D2A791D9B4A2D4AF9CC9A694C9A694C9A694C9A6
          94C9A694C9A694C9A694C9A694C9A694C9A694C9A694C9A694C9A694B88D789D
          7D6D937464865F4B7943289B6144E7D2C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1E3DCD2A791BD7F60C2886AC9957BC49B86C49B86C49B86C49B
          86C49B86C49B86C49B86C49B86C49B86C49B86C49B86C49B86C49B86AF836D97
          6952855035844525AF836DF1E3DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE9D5CCD2A791BD7F60A867469D512BA867469D51
          2BA867469D512BA867469D512B9D512BA867469D512BA867469D512B985737A8
          6746B88D78E0CDC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = SE1Click
        ExplicitLeft = 1
        ExplicitTop = 255
      end
    end
    inherited rzpDados: TRzPanel
      Top = 308
      ExplicitTop = 308
    end
    inherited PPeriodo: TPanel
      Top = 348
      Visible = True
      ExplicitTop = 348
      inherited rbPeriodo: TGroupBox
        Visible = True
        inherited sbPeriodo: TSpeedButton
          Left = 2
          Top = 65
          Width = 122
          Align = alBottom
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 604
    Height = 440
    ExplicitWidth = 604
    ExplicitHeight = 440
    inherited pcItem: TRzPageControl
      Width = 590
      Height = 426
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 590
      ExplicitHeight = 426
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 588
        ExplicitHeight = 405
        inherited dbDados: TDBGrid
          Width = 588
          Height = 319
        end
        inherited pPesquisa: TRzPanel
          Top = 339
          Width = 588
          ExplicitTop = 339
          ExplicitWidth = 588
          inherited rbPesquisa: TRzPanel
            Width = 580
            ExplicitWidth = 580
          end
        end
        inherited Panel2: TPanel
          Width = 588
          ExplicitWidth = 588
          inherited Label3: TLabel
            Left = 137
            Width = 450
            Height = 18
            ExplicitLeft = 170
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 588
        ExplicitHeight = 405
        inherited pDados: TPanel
          Width = 588
          Height = 405
          ExplicitWidth = 588
          ExplicitHeight = 405
          object GroupBox1: TGroupBox
            Left = 6
            Top = 8
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 9
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
              TabStop = False
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
            end
          end
          object GroupBox4: TGroupBox
            Left = 6
            Top = 80
            Width = 356
            Height = 32
            Caption = ' Variedade '
            TabOrder = 2
            inline frmPesquisaVariedade: TfrmPesquisa
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
              OnExit = frmPesquisaVariedadeExit
              ExplicitLeft = 5
              ExplicitTop = 14
              ExplicitWidth = 347
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 14
                ExplicitLeft = 318
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
          object GroupBox2: TGroupBox
            Left = 6
            Top = 44
            Width = 84
            Height = 36
            Caption = ' Lote N'#186' '
            TabOrder = 0
            object DBEdit15: TDBEdit
              Left = 5
              Top = 15
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
              OnExit = DBEdit15Exit
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox3: TGroupBox
            Left = 6
            Top = 118
            Width = 173
            Height = 36
            Caption = ' Abertura Data/Hora'
            TabOrder = 3
            object DBEdit16: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DATA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit16Exit
              OnKeyDown = FormKeyDown
            end
            object dtpData: TDateTimePicker
              Left = 81
              Top = 13
              Width = 19
              Height = 21
              Date = 41287.000000000000000000
              Time = 41287.000000000000000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TabStop = False
              OnChange = dtpDataChange
            end
            object DBEdit18: TDBEdit
              Left = 104
              Top = 15
              Width = 65
              Height = 15
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
              TabOrder = 2
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox6: TGroupBox
            Left = 6
            Top = 232
            Width = 139
            Height = 36
            Caption = ' Lote/Clas. (Etiq.)'
            TabOrder = 6
            object DBEdit1: TDBEdit
              Left = 3
              Top = 18
              Width = 126
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
          object GroupBox5: TGroupBox
            Left = 6
            Top = 157
            Width = 356
            Height = 32
            Caption = ' Produtor '
            TabOrder = 4
            inline frmPesquisaProdutor: TfrmPesquisa
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
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 14
                ExplicitLeft = 326
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
          object GroupBox9: TGroupBox
            Left = 6
            Top = 194
            Width = 356
            Height = 32
            Caption = ' Local armazenagem '
            TabOrder = 5
            inline frmPesquisaLocal: TfrmPesquisa
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
              inherited SpeedButton1: TSpeedButton
                Left = 326
                Height = 14
                ExplicitLeft = 326
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
          object btnImportar: TButton
            Left = 121
            Top = 48
            Width = 168
            Height = 32
            Hint = 'Importa informa'#231#227'o do romaneio de entrada...'
            Caption = 'Importar entrada'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnClick = btnImportarClick
          end
          object GroupBox7: TGroupBox
            Left = 6
            Top = 274
            Width = 84
            Height = 36
            Caption = ' Qtde. '
            TabOrder = 7
            object DBEdit3: TDBEdit
              Left = 6
              Top = 18
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'QTDEBIN'
              DataSource = dsRomanPro
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
          object GroupBox8: TGroupBox
            Left = 96
            Top = 274
            Width = 101
            Height = 36
            Caption = ' Peso M'#233'dia '
            TabOrder = 8
            object DBEdit4: TDBEdit
              Left = 5
              Top = 18
              Width = 93
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'PESOBRU'
              DataSource = dsRomanPro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox10: TGroupBox
            Left = 295
            Top = 44
            Width = 136
            Height = 36
            Caption = ' Lote Entrdada N'#186' '
            TabOrder = 1
            object meLote: TMaskEdit
              Left = 2
              Top = 19
              Width = 132
              Height = 15
              Align = alBottom
              BorderStyle = bsNone
              EditMask = '999999;1; '
              MaxLength = 6
              TabOrder = 0
              Text = '      '
            end
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 121
            Top = 4
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
            TabOrder = 11
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = cdsDados
    Left = 594
    Top = 118
  end
  inherited cdsDados: TFDQuery
    AfterScroll = cdsDadosAfterScroll
    SQL.Strings = (
      'select roman.*, cadforne.descricao as ZZProdDes '
      'from roman'
      'left join cadforne on cadforne.codigo = roman.produtorcod'
      'where roman.lanc = -1'
      'Order by Data desc, Lanc desc')
    Left = 546
    Top = 118
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosHORINI: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORINI'
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 6
      FieldName = 'LOTE'
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 15
      FieldName = 'VARIEDES'
      Size = 30
    end
    object cdsDadosFECHA: TStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHA'
      Size = 1
    end
    object cdsDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Visible = False
      Size = 5
    end
    object cdsDadosQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      Visible = False
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Visible = False
    end
    object cdsDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Visible = False
    end
    object cdsDadosDATAFIN: TSQLTimeStampField
      FieldName = 'DATAFIN'
      Visible = False
    end
    object cdsDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Visible = False
    end
    object cdsDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Visible = False
    end
    object cdsDadosPEREC: TBCDField
      FieldName = 'PEREC'
      Visible = False
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
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
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosCODLOTECLASS: TStringField
      DisplayLabel = 'Lote/Class.'
      FieldName = 'CODLOTECLASS'
      Size = 10
    end
    object cdsDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
      Visible = False
    end
    object cdsDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Visible = False
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object cdsDadosFGENVIAWEB: TStringField
      FieldName = 'FGENVIAWEB'
      Visible = False
      Size = 1
    end
    object cdsDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
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
    object cdsDadosZZPRODDES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZZPRODDES'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsRomanPro: TDataSource
    DataSet = cdsRomanPro
    Left = 594
    Top = 174
  end
  object cdsRomanPro: TFDQuery
    BeforePost = cdsRomanProBeforePost
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanpro where lanc =-1')
    Left = 546
    Top = 174
    object cdsRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object cdsRomanProLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 40
    end
    object cdsRomanProQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      Origin = 'QTDEBIN'
      Precision = 18
    end
    object cdsRomanProPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      Precision = 18
    end
    object cdsRomanProPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object cdsRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
      Origin = 'LOTEENTRA'
    end
    object cdsRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object cdsRomanProREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object cdsRomanProREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
