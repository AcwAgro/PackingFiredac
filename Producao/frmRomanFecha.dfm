inherited FfrmRomanFecha: TFfrmRomanFecha
  Caption = 'Fechamento de lote.'
  ClientHeight = 422
  ClientWidth = 886
  ExplicitWidth = 892
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 406
    Width = 886
    ExplicitTop = 406
    ExplicitWidth = 886
    inherited PStatusHistorico: TPanel
      Left = 728
      Width = 90
      Align = alRight
      ExplicitLeft = 728
      ExplicitWidth = 90
    end
    inherited pnlTela: TPanel
      Left = 818
      ExplicitLeft = 818
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 876
      TabOrder = 4
      ExplicitLeft = 876
    end
    object pbBarra: TProgressBar
      Left = 578
      Top = 0
      Width = 150
      Height = 16
      Align = alRight
      Smooth = True
      TabOrder = 3
      Visible = False
    end
    object Sb: TStatusBar
      Left = 113
      Top = 0
      Width = 465
      Height = 16
      Align = alClient
      Color = 14273198
      Panels = <
        item
          Width = 120
        end
        item
          Width = 120
        end
        item
          Width = 120
        end>
      ParentFont = True
      UseSystemFont = False
    end
  end
  inherited pMenu: TRzPanel
    Height = 406
    ExplicitHeight = 406
    inherited rzpMenu: TRzPanel
      Height = 302
      ExplicitHeight = 302
      inherited sbEditar: TSpeedButton
        Caption = '(F3) Fechar'
      end
      inherited sbIncluir: TSpeedButton
        Visible = False
        ExplicitLeft = 1
        ExplicitTop = 10
        ExplicitWidth = 126
      end
      inherited sbExcluir: TSpeedButton
        Visible = False
      end
      object sbRastrear: TSpeedButton [5]
        Tag = 18
        Left = 0
        Top = 216
        Width = 129
        Height = 40
        Hint = 'Enviar dados para Web'
        Align = alTop
        Caption = 'Enviar Web'
        Flat = True
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
        Margin = 0
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 5
        OnClick = sbRastrearClick
        OnMouseMove = sbIncluirMouseMove
        ExplicitLeft = 1
        ExplicitTop = 218
        ExplicitWidth = 126
      end
      inherited rzpUtil: TRzPanel
        Top = 256
        ExplicitTop = 256
      end
      inherited rbgAtivo: TRadioGroup
        Top = 262
        ExplicitTop = 262
      end
      inherited PPeriodo: TPanel
        Top = 182
        Visible = True
        ExplicitTop = 182
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
  end
  inherited RzPanel1: TRzPanel
    Width = 749
    Height = 406
    ExplicitWidth = 749
    ExplicitHeight = 406
    inherited pcItem: TRzPageControl
      Width = 741
      Height = 398
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 741
      ExplicitHeight = 398
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 739
        ExplicitHeight = 377
        inherited pPesquisa: TRzPanel
          Top = 311
          Width = 739
          ExplicitTop = 311
          ExplicitWidth = 739
          inherited Label1: TLabel
            Width = 731
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 618
            ExplicitLeft = 502
          end
          inherited rbPesquisa: TRzPanel
            Width = 731
            ExplicitWidth = 731
          end
          inherited edPesquisa: TMaskEdit
            Width = 614
            ExplicitWidth = 614
          end
        end
        inherited Panel2: TPanel
          Width = 739
          ExplicitWidth = 739
          inherited Label3: TLabel
            Width = 601
            ExplicitLeft = 321
          end
        end
        inherited dbDados: TcxGrid
          Width = 739
          Height = 291
          ExplicitWidth = 739
          ExplicitHeight = 291
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDEBIN
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1DATAFIN: TcxGridDBColumn
              DataBinding.FieldName = 'DATAFIN'
            end
            object dbDadosDBTableView1LOTE: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE'
            end
            object dbDadosDBTableView1QTDEBIN: TcxGridDBColumn
              DataBinding.FieldName = 'QTDEBIN'
            end
            object dbDadosDBTableView1VARIEDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARIEDES'
              Width = 200
            end
            object dbDadosDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Width = 55
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'OBS'
              Width = 200
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
            end
            object dbDadosDBTableView1HORINI: TcxGridDBColumn
              DataBinding.FieldName = 'HORINI'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1HORFIM: TcxGridDBColumn
              DataBinding.FieldName = 'HORFIM'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOBRU: TcxGridDBColumn
              DataBinding.FieldName = 'PESOBRU'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'PESOLIQ'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOPRO: TcxGridDBColumn
              DataBinding.FieldName = 'PESOPRO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PERCA: TcxGridDBColumn
              DataBinding.FieldName = 'PERCA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PEREC: TcxGridDBColumn
              DataBinding.FieldName = 'PEREC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VARIECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VARIECOD'
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
            object dbDadosDBTableView1SAFRA: TcxGridDBColumn
              DataBinding.FieldName = 'SAFRA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn
              DataBinding.FieldName = 'CODLOTECLASS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LOCALCOD: TcxGridDBColumn
              DataBinding.FieldName = 'LOCALCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FGENVIAWEB: TcxGridDBColumn
              DataBinding.FieldName = 'FGENVIAWEB'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRODUTORCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUTORCOD'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 739
        ExplicitHeight = 377
        inherited pDados: TPanel
          Width = 739
          Height = 377
          ExplicitWidth = 739
          ExplicitHeight = 377
          object GroupBox1: TGroupBox
            Left = 1
            Top = 72
            Width = 548
            Height = 269
            Caption = ' Fechamento '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 64
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label8: TLabel
              Left = 5
              Top = 16
              Width = 30
              Height = 13
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label9: TLabel
              Left = 104
              Top = 16
              Width = 31
              Height = 13
              Caption = 'Hora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label10: TLabel
              Left = 71
              Top = 246
              Width = 45
              Height = 13
              Caption = '(Total)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBEdit4: TDBEdit
              Left = 104
              Top = 30
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'HORFIM'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyDown = FormKeyDown
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 53
              Width = 540
              Height = 185
              Hint = '999 - sai da planilha'
              DataSource = dsRomanPro
              FixedColor = 13878195
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu1
              ShowHint = True
              TabOrder = 2
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
                  FieldName = 'QTDEBIN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOTEENTRA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Rom.Ent.'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PESOBRU'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Caption = 'M'#233'dia Kg.'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODCOD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 45
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PRODDES'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Produtor'
                  Width = 206
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PESOLIQ'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Peso Liq.'
                  Width = 68
                  Visible = True
                end>
            end
            object DBEdit5: TDBEdit
              Left = 11
              Top = 244
              Width = 54
              Height = 21
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'QTDEBIN'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              OnExit = DBEdit5Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit2: TcxDBDateEdit
              Left = 4
              Top = 30
              AutoSize = False
              DataBinding.DataField = 'DATAFIN'
              DataBinding.DataSource = dsDados
              ParentFont = False
              ParentShowHint = False
              Properties.DateButtons = [btnToday]
              Properties.DateOnError = deToday
              Properties.SaveTime = False
              Properties.ShowTime = False
              Properties.ValidationOptions = [evoShowErrorIcon]
              ShowHint = True
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Verdana'
              Style.Font.Style = []
              Style.ButtonStyle = btsDefault
              Style.IsFontAssigned = True
              StyleDisabled.BorderStyle = ebsNone
              StyleDisabled.ButtonStyle = btsDefault
              StyleFocused.BorderStyle = ebsNone
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextStyle = []
              TabOrder = 0
              OnKeyDown = FormKeyDown
              Height = 21
              Width = 98
            end
          end
          object GroupBox2: TGroupBox
            Left = 421
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 1
            Visible = False
            object DBEdit14: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
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
            Left = 5
            Top = 5
            Width = 356
            Height = 32
            Caption = ' Variedade '
            Enabled = False
            TabOrder = 2
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 347
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'VARIEDES'
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
          object GroupBox3: TGroupBox
            Left = 5
            Top = 36
            Width = 84
            Height = 36
            Caption = ' Lote '
            Enabled = False
            TabOrder = 3
            object DBEdit15: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'LOTE'
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
            Left = 91
            Top = 36
            Width = 173
            Height = 36
            Caption = ' Abertura Data/Hora '
            Enabled = False
            TabOrder = 4
            object DBEdit16: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'DATA'
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
            object DBEdit18: TDBEdit
              Left = 104
              Top = 15
              Width = 65
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'HORINI'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              OnKeyDown = FormKeyDown
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    FieldDefs = <
      item
        Name = 'LANC'
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftTimeStamp
      end
      item
        Name = 'HORINI'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'HORFIM'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QTDEBIN'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'PESOBRU'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'PESOLIQ'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'DATAFIN'
        DataType = ftTimeStamp
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
      end
      item
        Name = 'PESOPRO'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'PERCA'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'PEREC'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'VARIECOD'
        DataType = ftInteger
      end
      item
        Name = 'VARIEDES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FECHA'
        DataType = ftString
        Size = 1
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
        Name = 'SAFRA'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CODLOTECLASS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOCALCOD'
        DataType = ftInteger
      end
      item
        Name = 'FGENVIAWEB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRODUTORCOD'
        DataType = ftInteger
      end
      item
        Name = 'QTDEMER'
        DataType = ftBCD
        Precision = 32
        Size = 4
      end
      item
        Name = 'REGLOG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REG_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsDadosIndex1'
        Fields = 'DATA'
        Options = [ixDescending]
      end>
    StoreDefs = True
    Left = 578
    Top = 190
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data Abre'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosDATAFIN: TSQLTimeStampField
      DisplayLabel = 'Data Fecha'
      DisplayWidth = 10
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 6
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object cdsDadosQTDEBIN: TBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
      DisplayFormat = '0.#'
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 15
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
      Size = 30
    end
    object cdsDadosFECHA: TStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object cdsDadosHORINI: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
      Visible = False
    end
    object cdsDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
      Visible = False
    end
    object cdsDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
      Visible = False
    end
    object cdsDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
      Visible = False
    end
    object cdsDadosPEREC: TBCDField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
      Visible = False
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEADMIN.ROMAN.CODLOTECLASS'
      Visible = False
      Size = 10
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.ROMAN.OBS'
      Size = 50
    end
    object cdsDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
      Origin = 'JAEADMIN.ROMAN.LOCALCOD'
      Visible = False
    end
    object cdsDadosFGENVIAWEB: TStringField
      FieldName = 'FGENVIAWEB'
      Origin = 'JAEADMIN.ROMAN.FGENVIAWEB'
      Visible = False
      Size = 1
    end
    object cdsDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Origin = 'JAEADMIN.ROMAN.PRODUTORCOD'
      Visible = False
    end
    object cdsDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
      Origin = 'JAEADMIN.ROMAN.QTDEMER'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ROMAN.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ROMAN.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 546
    Top = 190
  end
  inherited dsDados: TDataSource
    Left = 610
    Top = 190
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from roman where lanc = -1')
    Left = 514
    Top = 190
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
    end
    object sqlDadosHORINI: TStringField
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Size = 5
    end
    object sqlDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Size = 5
    end
    object sqlDadosQTDEBIN: TBCDField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
    end
    object sqlDadosPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
    end
    object sqlDadosPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
    end
    object sqlDadosDATAFIN: TSQLTimeStampField
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
    end
    object sqlDadosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object sqlDadosPESOPRO: TBCDField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
    end
    object sqlDadosPERCA: TBCDField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
    end
    object sqlDadosPEREC: TBCDField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
    end
    object sqlDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
      Size = 30
    end
    object sqlDadosFECHA: TStringField
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Size = 9
    end
    object sqlDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEADMIN.ROMAN.CODLOTECLASS'
      Size = 10
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.ROMAN.OBS'
      Size = 50
    end
    object sqlDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
      Origin = 'JAEADMIN.ROMAN.LOCALCOD'
    end
    object sqlDadosFGENVIAWEB: TStringField
      FieldName = 'FGENVIAWEB'
      Origin = 'JAEADMIN.ROMAN.FGENVIAWEB'
      Size = 1
    end
    object sqlDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Origin = 'JAEADMIN.ROMAN.PRODUTORCOD'
    end
    object sqlDadosQTDEMER: TBCDField
      FieldName = 'QTDEMER'
      Origin = 'JAEADMIN.ROMAN.QTDEMER'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ROMAN.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ROMAN.REG_ID'
    end
  end
  object dsRomanMer: TDataSource
    DataSet = cdsRomanMer
    Left = 610
    Top = 254
  end
  object cdsRomanMer: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMer'
    OnReconcileError = cdsDadosReconcileError
    Left = 578
    Top = 254
    object cdsRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 40
    end
    object cdsRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object cdsRomanMerQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'CODIAUX'
    end
    object cdsRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object cdsRomanMerPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
    end
    object cdsRomanMerPESOREAL: TBCDField
      FieldName = 'PESOREAL'
      Origin = 'PESOREAL'
    end
    object cdsRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object cdsRomanMerLANCMANUAL: TStringField
      FieldName = 'LANCMANUAL'
      Origin = 'LANCMANUAL'
      Size = 1
    end
    object cdsRomanMerREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsRomanMerREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspRomanMer: TDataSetProvider
    DataSet = sqlRomanMer
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 254
  end
  object dsRomanPro: TDataSource
    DataSet = cdsRomanPro
    Left = 610
    Top = 222
  end
  object cdsRomanPro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanPro'
    BeforePost = cdsRomanProBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 578
    Top = 222
    object cdsRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      DisplayFormat = '0.##'
    end
    object cdsRomanProPESOBRU: TBCDField
      FieldName = 'PESOBRU'
      Origin = 'PESOBRU'
      DisplayFormat = '0'
    end
    object cdsRomanProPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      DisplayFormat = '0'
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
      Size = 1
    end
    object cdsRomanProREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspRomanPro: TDataSetProvider
    DataSet = sqlRomanPro
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 222
  end
  object PopupMenu1: TPopupMenu
    Left = 465
    Top = 280
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object dspRomanEmb: TDataSetProvider
    DataSet = sqlRomanEmb
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 286
  end
  object cdsRomanEmb: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanEmb'
    OnReconcileError = cdsDadosReconcileError
    Left = 578
    Top = 286
    object cdsRomanEmbLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRomanEmbLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanEmbEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'EMBALCOD'
    end
    object cdsRomanEmbEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsRomanEmbACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsRomanEmbDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsRomanEmbEMBALDES: TStringField
      FieldName = 'EMBALDES'
      Origin = 'EMBALDES'
      Size = 30
    end
    object cdsRomanEmbPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanEmbPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object cdsRomanEmbQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsRomanEmbREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsRomanEmbREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsRomanEmb: TDataSource
    DataSet = cdsRomanEmb
    Left = 610
    Top = 286
  end
  object dsRomanMar: TDataSource
    DataSet = cdsRomanMar
    Left = 610
    Top = 318
  end
  object cdsRomanMar: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMar'
    OnReconcileError = cdsDadosReconcileError
    Left = 578
    Top = 318
    object cdsRomanMarLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanMarLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsRomanMarMARCACOD: TIntegerField
      FieldName = 'MARCACOD'
      Origin = 'MARCACOD'
    end
    object cdsRomanMarMARCADES: TStringField
      FieldName = 'MARCADES'
      Origin = 'MARCADES'
      Size = 30
    end
    object cdsRomanMarPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object cdsRomanMarPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 50
    end
    object cdsRomanMarQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsRomanMarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsRomanMarEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsRomanMarACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsRomanMarREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsRomanMarREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspRomanMar: TDataSetProvider
    DataSet = sqlRomanMar
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 318
  end
  object IdFTP: TIdFTP
    OnStatus = IdFTPStatus
    OnWork = IdFTPWork
    OnWorkBegin = IdFTPWorkBegin
    OnWorkEnd = IdFTPWorkEnd
    Passive = True
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 704
    Top = 112
  end
  object sqlRomanPro: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanpro'
      'where lancit = -1')
    Left = 514
    Top = 222
  end
  object sqlRomanMer: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanmer where lanc = -1')
    Left = 514
    Top = 254
  end
  object sqlRomanEmb: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanembal'
      'where lancit = -1'
      'order by embalcod, prodcod')
    Left = 514
    Top = 286
  end
  object sqlRomanMar: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from romanmarca'
      'where lancit = -1'
      'order by marcacod, prodcod')
    Left = 514
    Top = 318
  end
end
