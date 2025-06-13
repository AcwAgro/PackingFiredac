inherited FfrmRomaneioEntra: TFfrmRomaneioEntra
  Caption = 'Romaneio de entrada'
  ClientHeight = 604
  ClientWidth = 1168
  ExplicitWidth = 1174
  ExplicitHeight = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 588
    Width = 1168
    ExplicitTop = 588
    ExplicitWidth = 1168
    inherited PStatusHistorico: TPanel
      Width = 987
      ExplicitWidth = 987
    end
    inherited pnlTela: TPanel
      Left = 1110
      ExplicitLeft = 1110
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1100
      ExplicitLeft = 1100
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 588
    ExplicitHeight = 588
    inherited rzpMenu: TRzPanel
      Height = 484
      ExplicitHeight = 484
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 10
        ExplicitWidth = 126
      end
      inherited rbgAtivo: TRadioGroup
        Top = 364
        TabOrder = 3
        ExplicitTop = 364
      end
      inherited PPeriodo: TPanel
        Top = 404
        TabOrder = 5
        Visible = True
        ExplicitTop = 404
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
      object RzPanel3: TRzPanel
        Left = 0
        Top = 256
        Width = 129
        Height = 40
        Align = alTop
        Alignment = taLeftJustify
        AutoSize = True
        BorderOuter = fsNone
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
        TabOrder = 2
        Visible = False
        VisualStyle = vsGradient
        object SpeedButton1: TSpeedButton
          Tag = 18
          Left = 0
          Top = 0
          Width = 129
          Height = 40
          Hint = 'Imprimi o registro atual ou registro selecionados...'
          Align = alTop
          Caption = 'Etiquetas'
          ImageIndex = 5
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            5E0B0000424D5E0B00000000000036000000280000001B000000220000000100
            180000000000280B000000000000000000000000000000000000D5D8D9C7CFD3
            C5CED1C6CFD2C6CFD3C7D0D4C4CED2C5CED2C8D2D5C7D1D5C7D1D4C8D2D6CAD4
            D9C8D1D6C9D3D9CBD4DAC9D3D7C8D0D4C8D2D5C8D1D5C8D2D5C9D2D6CAD3D6C9
            D3D6CAD3D7C8D1D4C4C6C6000000D5D9DBC9D5DAC8D4DBC7D3D9C9D5DACAD5DC
            C9D5DAC9D5DACAD6DDCBD7DEC8D3D6C0C8C6BEC4C0C3CBCCBFC5C3C2C9C8CBD7
            DBCCD8E1CBD7E0CDD8E1CEDAE0CEDBE2CEDBE1CDDBE0CEDDE2CED9DDC1C3C300
            0000D4D9D9C9D5DAC8D5DCC9D5DDC9D5DCC8D5DBCAD6DCCAD6DCCAD7DECBD8DF
            C5CECFBBBFBAB5B5AABCC1BDB7B8B0BBBEB8C8D1D5CDDAE3CDD9E0CCD9E0CFDC
            E2D0DEE3CDDCE1CEDCE1CFDDE2D0DADEC2C3C3000000D5DADBCAD6DBCAD7DDC9
            D6DEC7D2DAC7D4DAC9D6DDC9D6DDC8D5DCC9D5DCC9D5DBCBD8DFCBD9E1C8D5DA
            CBD9E2CCDAE1CDDBE2CBD9E0CCDADECBDADFCDDAE0CEDBE0CCDBE1CFDDE3D1DE
            E3CEDADEC1C3C3000000D6DADCCCD7DECCD8DFC3C8C3C7C7BECBCCC5CBCCC5CB
            CCC5CBCBC4CBCCC5CBCCC5CCCDC6CBCDC6CCCDC6CCCDC6C5C8BFC4CAC6C6C6BB
            CED0C8CDCEC6CDCEC6CECFC8C7C6BBC8CECCD2E0E6CFDBDFC1C2C3000000D8DB
            DCCDD9E0CBD9E0C5C9C3E3E4E0EDF2F4EBEFF0EBEFF1EAEEF0EAEEF0EBEFF0EB
            EFF1EBEFF1EBF0F0EEF2F3D2D1C8C0C4BCDCDBD2EFF4F7ECF0F1EBF0F1EFF4F6
            D8D6CDC2C7C1D3E2E8D0DADEC0C2C2000000D5D9DACBD7DDCBD8E0C6CAC4E2E4
            E0ECF0F3EAEEEFEAEEF0E9EEF0EAEFF0EAEFF0EAEEF0EAEFF0EBEFF0ECF1F3D3
            D2CAC3C6BEDBDBD4EDF3F5EBF0F1ECF0F1EFF4F7D9D8D0C5C9C2D3E2E8CFDADE
            C1C2C3000000D7DADCCBD8DECBD8E0C6C9C4E2E4E1EBF0F369D1D14CB1224CB1
            224CB1224CB1224CB122D2D14BEBF0F1EDF2F3D2D2CAC2C5BDDCDBD4EEF3F5EC
            F0F0EBF0F1EFF4F7D9D8D0C6CAC3D6E3EAD2DCE0C2C3C3000000D7DBDCCCD9DE
            CBD7DFC6C8C5E3E4E1ECF1F36AD1D26AB122EBE591EBEFF1EBEFF19FE5F04CB1
            4BB9C722EDF2F4D3D3CBC3C6BEDDDBD4EFF4F6ECF0F1EBEFF1EFF4F7D9D8D0C7
            CAC3D6E3E9D2DCE0C2C3C4000000D6DADDCED9E0CCD8E0C7CBC6E3E5E2ECF1F4
            6AD1D36AB122EBE592EBEFF1EBF0F1EBF0F16AD1D26AB122EEE794D3D4CCC3C7
            BFDDDDD5EFF5F7EDF1F2ECF0F2EFF5F7DAD9D1C8CBC6D6E4EBD2DDE1C2C3C300
            0000D5D9DBCCD8DFCDDAE0C7CBC4E3E5E1ECF2F36AD1D26AB122EBE591EBEFF0
            EBEFF0EBF0F085DBF04CB122EEDC71D3D3CBC3C6BEDDDCD5EEF4F6ECF0F1ECF0
            F1EFF4F7DBD9D1C8CAC4D9E6ECD5DEE2C2C3C3000000D5DADDCCDBDFCCDAE0C9
            CCC7E3E5E2ECF2F469D1D26AB122EBE692EBEFF0EBF0F0ECF0F16AD1D26AB122
            EEE894D3D3CBC5C7BFDEDDD6EFF4F6ECF0F1EDF1F2F1F6F8DBDAD1C9CCC6D9E6
            EDD5DEE3C2C3C3000000D7DBDDCEDBE0CEDCE1C8CCC6E3E4E2EDF2F469D1D169
            B122ECE692EBF0F1ECF0F2A0E6F24CB14BBAC722EFF3F5D4D4CCC6C8C0DEDED5
            F0F5F8EEF1F2EEF2F2F1F6F8DCDAD1CACDC6DAE6EDD7DFE4C2C3C3000000D8DC
            DCD0DCE2CEDCE2C8CCC6E4E6E3EEF3F56AD1D24CB1224CB1224CB1224CB1224C
            B122BBC722ECF0F2F0F3F6D5D4CDC8CAC2DFDED6F1F6F8EEF2F3EEF2F4F2F6F9
            DCDAD2CBCEC8DCE8EFD6DFE3C2C3C3000000D8DCDDD1DDE2D0DDE3C8CCC5E4E5
            E1EFF2F46AD1D26AB122ECE692ECF0F0EDF0F14CC7B285B122EDF0B2F0F3F5D5
            D5CCC7C9C0DFDDD5F1F5F7EEF1F2EFF1F3F2F5F9DCD9D0CACEC6DEEAEFD7E0E3
            C2C3C3000000D7DBDDD2DEE3D2DFE5CACEC8E3E6E2EEF3F56AD2D36AB122EDE7
            92EDF1F2EDF1F2A1E7F24CB14BD5D24BF0F3F6D6D5CDC8CAC2DFDDD6F2F6F8EF
            F2F3EFF2F3F2F6F9DCDAD2C9CDC7DEEAEFD7E0E4C2C3C3000000D8DCDDD2DEE3
            D2E1E6CCD0CBE5E6E3EFF3F66AD2D56AB122EEE793EEF2F4EFF3F5A2E8F54CB1
            4CD5D34CF1F4F7D7D6CECACCC5DFDED7F3F7FAF0F4F5F0F3F5F3F7FADDDCD3CB
            D0C8DCE8EED7E1E4C2C3C3000000D8DBDCD3DFE4D2DFE3CDCEC8E5E6E2EFF3F5
            6AD2D36AB122EEE792EEF1F2EFF1F26AD2D34CB122EEDC70F0F3F5D5D5CCC9C9
            C1DFDDD5F2F6F7EFF2F3EFF2F3F2F5F8DCDAD1CBCEC6DBE8EED6E0E4C2C3C300
            0000D6DADCD3DEE3D4E0E6CDD0CBE5E6E4F0F4F76AD3D54CB1224CB1224CB122
            4CB1224CB122F0DE71EFF3F4F0F5F7D7D6CFC8CBC4DFDED7F2F7F9EFF4F4EFF3
            F4F3F8FBDDDCD3CDD0CADCE9EED7E0E4C2C3C3000000D6DADCD3DEE4D4E1E7CD
            D0CAE6E7E4F0F4F6EFF2F3EFF3F4EFF2F3EFF3F4EFF3F4EEF2F3EFF3F3EEF3F4
            F0F4F6D7D6CECACDC4DFDED6F3F7FAF0F3F5EFF3F4F3F7FADEDCD3CDD0C9DFEA
            F1DBE3E6C2C3C3000000D9DBDDD6E1E6D5E1E7CDD0CAE7E9E7F2F6F9F1F5F6F1
            F4F6F1F4F6F1F5F7F2F5F7F2F5F6F1F5F6F1F5F7F4F8FAD7D7CFC9CBC3E1E0D9
            F5F9FDF2F6F7F2F5F8F5FAFDDFDDD4CED0C9E1ECF1DBE3E7C2C3C4000000D9DC
            DCD8E3E7D8E4EACFD0C8DDDAD2E5E6E3E6E6E1E5E5E0E5E6E1E6E6E1E5E6E1E5
            E6E1E6E6E1E5E5E1E6E7E2D2D0C4C8CCC3D8D3C7E8E9E5E7E6E1E6E6E1E9EAE6
            D6D1C4CED1CAE3ECF3DAE2E5C1C2C3000000D8DCDDDAE3E8D8E3E8D4DCDCD2D6
            D2D3D8D4D1D7D3D2D7D3D4D9D5D3D8D5D4D9D5D3D8D5D4D9D5D1D8D4D5D9D6D7
            DBD9D6DEDED1D4CFD5D7D2D4D8D2D5D8D3D4D8D3D3D6CFDBE2E3E4EDF2DAE2E5
            C1C2C3000000DADDDEDAE4E8D8E4E9D5DDDDCFD4CFD0D5D1CED4CFCED3CFD0D4
            D1CFD4D0CED4D0D0D4D0D1D6D2CFD4D1D0D5D0D7DBD8DCE4E7DCE6E9DFE6E9DD
            E5E9DEE6E9DDE6E8DFE7EAE1E8EBDEE8EDD4DDE1C1C2C3000000DADEDEDBE5E9
            DBE6ECD0D1CADDDCD4E6E8E4E5E5E1E4E6E1E5E6E1E6E7E2E4E5E1E6E6E2E7E6
            E2E7E7E2E7E8E3D2CEC2D5DCDCDEE6E9DDE5E8DBE4E7DDE6E8E0E7E9E1E7E9DF
            E5E8D6E1E7D1DADEC0C1C2000000D9DDDFDBE5E9DCE6EBD2D3CDEBEDEBF6FBFF
            F5F9FCF5F9FCF4F9FCF4F9FBF5F8FBF6F9FBF6F9FCF7FAFCF8FCFFD9D7CED8DE
            DDE1E8ECDDE5E8DCE6E8DFE7EAE2E9EBDEE6E8D8E1E2D4DFE3C8D2D5C3C3C400
            0000D7DBDED9E4E9DCE7ECCFD1CADDDCD3E6E7E4E5E6E1E6E5E1E6E6E1E6E6E1
            E4E5E0E6E6E1E6E6E2E7E7E2E8E8E3D4D0C4DCE1E0E0E8EBDFE7E9D6DFE2C4CE
            D1C2CDD1C4CED1BFC9CCB5C3C8BAC2C4DEDEDD000000D8DCDED9E4E8DBE6EAD6
            DFE0D2D9D7D5DBD9D9DDDAD9DDDBD7DDDAD5DBD9D7DCDAD9DDDBD9DEDCD9DEDB
            DADEDBD8DEDCDEE6E9E1E9EBE5ECEEC6D1D59CAAAEADB8BBADB8BCA9B4B9B5BE
            C1DFDFE0FEFEFD000000D9DDDEDBE7EBDAE5E9DCE4E6DDE5E7DDE5E7E0E6E8E0
            E6E9DDE5E8DEE6E9E1E7EAE1E7EADFE7E9DEE7E9E1E8EAE0E7E9DFE6E8E0E7E8
            E3E9EAC1CCCFCAD4D7F8FEFFD6DFE3C3CACDDFDEDFFFFEFEFEFEFE000000DBDE
            DFDEE7EBDFE8ECE0E7EADFE7EADDE6EAE0E7EBE0E8EBE0E9ECDDE7EADFE8ECE0
            E9ECDFE8ECE0EAEDE3EAEEE3EAEDE2EAEDE3EAEEE4EBEEC3CED2C2CCD0DAE1E5
            C1C8CADBDBDBFDFDFCFEFEFEFCFCFC000000DADCDFDFE7EBE1EAEEE0E9EDDFE9
            EDDFEAEFE2EBEFE0EAEEDFEAEEDFE9EEDEE9EEE2EBF0E2EBF0E3EBEFE3EBF0E5
            EDF1E2EBF1E2EBF0E2EAEEC1CDD2B0BBC0C8CFD1DCDDDDFCFCFBFEFEFEFCFCFC
            FCFCFC000000D9DDDEDCE5E9E1EAEEE0E9EEE1EAEEE0EAEEE2EBEFE0EAEFDFE9
            EDDEE9EDE1EAEFE4ECF0E4ECF0E3EBEFE4ECF0E4ECF1E1EAEEDEE6EBD8E2E6B3
            C0C7B4BDC1DEDEDFFAFAFAFEFEFEFCFCFCFCFCFCFCFCFC000000DDDFE0E2E9ED
            E3ECEFE2EAEFE4ECF0E1EBEFE3ECF0E5EDF1E5ECF0E4ECF0E5EDF1E5ECF0E5ED
            F1E6EEF2E4ECF0E1EAEFDDE6EAD9E1E5CCD5DABAC2C6DBDDDEFBFBFAFEFEFEFC
            FCFCFCFCFCFCFCFCFCFCFC000000E6E7E7DFE2E4DFE1E4DEE1E4DEE1E4DEE1E4
            DEE1E4DEE2E4DFE2E4E0E2E4DFE2E4DFE2E4DFE2E4DEE2E4DEE1E3DCE0E1DBDE
            DFD9DBDDD4D6D7E2E2E2FBFBFBFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC00
            0000}
          Margin = 5
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 5
          OnClick = SpeedButton1Click
          OnMouseMove = sbIncluirMouseMove
          ExplicitLeft = 2
          ExplicitTop = -6
        end
      end
      object btnRecalcular: TButton
        Left = 0
        Top = 296
        Width = 129
        Height = 25
        Align = alTop
        Caption = 'Recalcular'
        TabOrder = 4
        Visible = False
        OnClick = btnRecalcularClick
      end
    end
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
        ExplicitLeft = 1
        ExplicitWidth = 126
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1031
    Height = 588
    ExplicitWidth = 1031
    ExplicitHeight = 588
    inherited pcItem: TRzPageControl
      Width = 1023
      Height = 580
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 1023
      ExplicitHeight = 580
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1021
        ExplicitHeight = 559
        inherited pPesquisa: TRzPanel
          Top = 493
          Width = 1021
          ExplicitTop = 493
          ExplicitWidth = 1021
          inherited Label1: TLabel
            Width = 1013
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 900
            ExplicitLeft = 872
          end
          inherited rbPesquisa: TRzPanel
            Width = 1013
            ExplicitWidth = 1013
          end
          inherited edPesquisa: TMaskEdit
            Width = 896
            ExplicitWidth = 896
          end
        end
        inherited Panel2: TPanel
          Width = 1021
          ExplicitWidth = 1021
          inherited Label3: TLabel
            Left = 137
            Width = 883
            Height = 18
            ExplicitLeft = 603
          end
        end
        inherited dbDados: TcxGrid
          Width = 1021
          Height = 473
          ExplicitWidth = 1021
          ExplicitHeight = 473
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDELIQ
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDE
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1BINSQTD
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1BINSLIQ
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1RECIBO: TcxGridDBColumn
              DataBinding.FieldName = 'RECIBO'
              Width = 65
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Width = 200
            end
            object dbDadosDBTableView1QTDELIQ: TcxGridDBColumn
              Caption = 'Qtde.Emb.'
              DataBinding.FieldName = 'QTDELIQ'
            end
            object dbDadosDBTableView1BINSQTD: TcxGridDBColumn
              DataBinding.FieldName = 'BINSQTD'
            end
            object dbDadosDBTableView1QTDE: TcxGridDBColumn
              Caption = 'Qtde.Total'
              DataBinding.FieldName = 'QTDE'
            end
            object dbDadosDBTableView1LOCALCOD: TcxGridDBColumn
              DataBinding.FieldName = 'LOCALCOD'
            end
            object dbDadosDBTableView1PESO: TcxGridDBColumn
              DataBinding.FieldName = 'PESO'
            end
            object dbDadosDBTableView1BINSLIQ: TcxGridDBColumn
              DataBinding.FieldName = 'BINSLIQ'
            end
            object dbDadosDBTableView1BINSMED: TcxGridDBColumn
              DataBinding.FieldName = 'BINSMED'
            end
            object dbDadosDBTableView1VLRFRETE: TcxGridDBColumn
              DataBinding.FieldName = 'VLRFRETE'
            end
            object dbDadosDBTableView1NOTA: TcxGridDBColumn
              Caption = 'Nota'
              DataBinding.FieldName = 'NOTA'
            end
            object dbDadosDBTableView1PLACADES: TcxGridDBColumn
              DataBinding.FieldName = 'PLACADES'
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              DataBinding.FieldName = 'OBS'
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
            end
            object dbDadosDBTableView1PRODCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PLACA: TcxGridDBColumn
              DataBinding.FieldName = 'PLACA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LOTE_CFO: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE_CFO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1BINSTAR: TcxGridDBColumn
              DataBinding.FieldName = 'BINSTAR'
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
            object dbDadosDBTableView1IMPORTEMP: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTEMP'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMPORTLANC: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTLANC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1IMPORTENV: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTENV'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1EMBALQTD: TcxGridDBColumn
              DataBinding.FieldName = 'EMBALQTD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1EMBALCOD: TcxGridDBColumn
              DataBinding.FieldName = 'EMBALCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PESOZERO: TcxGridDBColumn
              DataBinding.FieldName = 'PESOZERO'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1021
        ExplicitHeight = 559
        inherited pDados: TPanel
          Width = 1021
          Height = 559
          ExplicitWidth = 1021
          ExplicitHeight = 559
          object DBGrid1: TDBGrid
            Left = 2
            Top = 112
            Width = 1017
            Height = 336
            Align = alClient
            DataSource = dsDetalhe
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 1
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
                FieldName = 'VARIEQTD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VARIECOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 50
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'VARIEDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Variedade'
                Title.Color = 13878195
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VARIECHE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Peso kg.'
                Title.Color = 13878195
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BINSCOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.'
                Title.Color = 13878195
                Width = 40
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'BINSDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Tipo Embalagem'
                Title.Color = 13878195
                Width = 114
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'VARIEPES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Peso L'#237'q.'
                Title.Color = 13878195
                Width = 65
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'LOTE_PRO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Lote Produto do CFO.'
                Title.Color = 13878195
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 483
            Width = 1017
            Height = 74
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object Label9: TLabel
              Left = 83
              Top = 3
              Width = 69
              Height = 13
              Caption = 'Qtde.Vazio'
              Transparent = True
            end
            object Label10: TLabel
              Left = 163
              Top = 3
              Width = 67
              Height = 13
              Caption = 'Qtde.Total'
              Transparent = True
            end
            object Label13: TLabel
              Left = 244
              Top = 3
              Width = 82
              Height = 13
              Alignment = taRightJustify
              Caption = 'Peso L'#237'quido'
              Transparent = True
            end
            object Label15: TLabel
              Left = 334
              Top = 3
              Width = 73
              Height = 13
              Caption = 'Peso M'#233'dio'
              Transparent = True
            end
            object Label17: TLabel
              Left = 424
              Top = 3
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tara Media'
              Transparent = True
            end
            object Label6: TLabel
              Left = 3
              Top = 3
              Width = 70
              Height = 13
              Caption = 'Qtde.Soma'
              Transparent = True
            end
            object DBEdit4: TDBEdit
              Left = 82
              Top = 18
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BINSQTD'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit4Enter
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit2: TDBEdit
              Left = 163
              Top = 18
              Width = 75
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'QTDE'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit5: TDBEdit
              Left = 244
              Top = 18
              Width = 85
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'BINSLIQ'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit6: TDBEdit
              Left = 424
              Top = 18
              Width = 85
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'BINSTAR'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit9: TDBEdit
              Left = 334
              Top = 18
              Width = 85
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'BINSMED'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object edSoma: TEdit
              Left = 513
              Top = 18
              Width = 75
              Height = 21
              Color = 15329769
              ReadOnly = True
              TabOrder = 6
              Visible = False
            end
            object GroupBox11: TGroupBox
              Left = 3
              Top = 40
              Width = 444
              Height = 32
              Caption = ' Observa'#231#227'o '
              TabOrder = 1
              object DBEdit1: TDBEdit
                Left = 6
                Top = 14
                Width = 420
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'OBS'
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
            object DBEdit12: TDBEdit
              Left = 3
              Top = 18
              Width = 75
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'QTDELIQ'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object pnlPalet: TPanel
            Left = 2
            Top = 448
            Width = 1017
            Height = 35
            Align = alBottom
            BevelEdges = [beBottom]
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 2
            object GroupBox8: TGroupBox
              Left = 5
              Top = 0
              Width = 91
              Height = 32
              Caption = ' Qtde.Palet '
              TabOrder = 0
              object DBEdit10: TDBEdit
                Left = 2
                Top = 15
                Width = 87
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'EMBALQTD'
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
              end
            end
            object GroupBox1: TGroupBox
              Left = 102
              Top = 0
              Width = 268
              Height = 32
              Caption = ' Tipo Palet '
              TabOrder = 1
              inline frmPesquisaPalet: TfrmPesquisa
                Left = 5
                Top = 14
                Width = 260
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
                ExplicitWidth = 260
                ExplicitHeight = 16
                inherited SpeedButton1: TSpeedButton
                  Left = 239
                  Height = 16
                  ExplicitLeft = 233
                end
                inherited edtPesquisa: TEdit
                  Width = 233
                  Height = 16
                  CharCase = ecUpperCase
                  ExplicitWidth = 233
                  ExplicitHeight = 16
                end
              end
            end
          end
          object Panel4: TPanel
            Left = 2
            Top = 2
            Width = 1017
            Height = 110
            Align = alTop
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = 5
              Top = 5
              Width = 102
              Height = 32
              Caption = ' Data '
              TabOrder = 0
              object DBEdit16: TcxDBDateEdit
                Left = 2
                Top = 12
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
                Height = 18
                Width = 98
              end
            end
            object GroupBox5: TGroupBox
              Left = 109
              Top = 5
              Width = 108
              Height = 32
              Caption = ' Romaneio n'#186' '
              TabOrder = 1
              OnExit = GroupBox5Exit
              object DBEdit8: TDBEdit
                Left = 2
                Top = 15
                Width = 104
                Height = 15
                TabStop = False
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'RECIBO'
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
            object GroupBox2: TGroupBox
              Left = 219
              Top = 5
              Width = 128
              Height = 32
              Caption = ' N.F.Produtor n'#186' '
              TabOrder = 2
              object DBEdit3: TDBEdit
                Left = 2
                Top = 15
                Width = 124
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
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
              end
            end
            object GroupBox7: TGroupBox
              Left = 350
              Top = 5
              Width = 102
              Height = 32
              Caption = ' Peso em kg '
              TabOrder = 3
              object DBEdit7: TDBEdit
                Left = 2
                Top = 15
                Width = 98
                Height = 15
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'PESO'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyDown = FormKeyDown
                OnKeyPress = DBEdit7KeyPress
              end
            end
            object GroupBox4: TGroupBox
              Left = 5
              Top = 38
              Width = 356
              Height = 32
              Caption = ' Produtor '
              TabOrder = 4
              inline frmPesquisaPro: TfrmPesquisa
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
                  ExplicitLeft = 318
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
              Left = 367
              Top = 38
              Width = 356
              Height = 32
              Caption = ' Local armazenagem '
              TabOrder = 5
              inline frmPesquisaLocal: TfrmPesquisa
                Left = 5
                Top = 14
                Width = 347
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
                ExplicitWidth = 347
                ExplicitHeight = 16
                inherited SpeedButton1: TSpeedButton
                  Left = 326
                  Height = 16
                  ExplicitLeft = 318
                end
                inherited edtPesquisa: TEdit
                  Width = 318
                  Height = 16
                  CharCase = ecUpperCase
                  ExplicitWidth = 318
                  ExplicitHeight = 16
                end
              end
            end
            object gbFrete: TGroupBox
              Left = 367
              Top = 73
              Width = 102
              Height = 32
              Caption = ' Valor Frete '
              TabOrder = 6
              Visible = False
              object DBEdit11: TDBEdit
                Left = 2
                Top = 15
                Width = 98
                Height = 15
                Align = alClient
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
                OnKeyDown = FormKeyDown
                OnKeyPress = DBEdit7KeyPress
              end
            end
            object GroupBox6: TGroupBox
              Left = 5
              Top = 73
              Width = 356
              Height = 32
              Caption = ' Transporte/Motorista'
              TabOrder = 7
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
                  ExplicitLeft = 318
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
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    PacketRecords = 30
    Left = 570
    Top = 166
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
    object cdsDadosRECIBO: TIntegerField
      DisplayLabel = 'Romaneio n'#186
      DisplayWidth = 6
      FieldName = 'RECIBO'
    end
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Visible = False
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Size = 40
    end
    object cdsDadosPLACA: TStringField
      FieldName = 'PLACA'
      Visible = False
      Size = 10
    end
    object cdsDadosPLACADES: TStringField
      DisplayLabel = 'Transporte'
      DisplayWidth = 20
      FieldName = 'PLACADES'
      Size = 40
    end
    object cdsDadosPESO: TBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESO'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosQTDELIQ: TFloatField
      DisplayLabel = 'Qtde.Liq.'
      FieldName = 'QTDELIQ'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosBINSQTD: TBCDField
      DisplayLabel = 'Qtde. Vazio'
      FieldName = 'BINSQTD'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosQTDE: TBCDField
      DisplayLabel = 'Qtde.Emb.'
      FieldName = 'QTDE'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosLOCALCOD: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCALCOD'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosBINSLIQ: TBCDField
      DisplayLabel = 'Peso.L'#237'q.'
      FieldName = 'BINSLIQ'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosLOTE_CFO: TStringField
      DisplayLabel = 'C.F.Origem'
      FieldName = 'LOTE_CFO'
      Visible = False
    end
    object cdsDadosBINSTAR: TBCDField
      FieldName = 'BINSTAR'
      Visible = False
      DisplayFormat = '#,0.##'
    end
    object cdsDadosBINSMED: TBCDField
      DisplayLabel = 'Peso M'#233'dio'
      FieldName = 'BINSMED'
      DisplayFormat = '#,0.##'
    end
    object cdsDadosNOTA: TIntegerField
      FieldName = 'NOTA'
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
    object cdsDadosIMPORTEMP: TIntegerField
      DisplayLabel = 'Filial Emp.'
      FieldName = 'IMPORTEMP'
      Visible = False
    end
    object cdsDadosIMPORTLANC: TIntegerField
      DisplayLabel = 'Filial Lanc.'
      FieldName = 'IMPORTLANC'
      Visible = False
    end
    object cdsDadosIMPORTENV: TIntegerField
      DisplayLabel = 'Filial Env.'
      FieldName = 'IMPORTENV'
      Visible = False
    end
    object cdsDadosOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Size = 50
    end
    object cdsDadosEMBALQTD: TBCDField
      FieldName = 'EMBALQTD'
      Visible = False
      DisplayFormat = '0'
    end
    object cdsDadosEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Visible = False
    end
    object cdsDadosPESOZERO: TStringField
      FieldName = 'PESOZERO'
      Visible = False
      Size = 1
    end
    object cdsDadosVLRFRETE: TBCDField
      DisplayLabel = 'Valor Frete'
      FieldName = 'VLRFRETE'
      DisplayFormat = '#,0.00'
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
    object cdsDadosHORA: TStringField
      FieldName = 'HORA'
      Visible = False
      Size = 8
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 538
    Top = 166
  end
  inherited dsDados: TDataSource
    Left = 602
    Top = 166
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from entre where lanc = -1')
    Left = 506
    Top = 166
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ENTRE.LANC'
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ENTRE.DATA'
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ENTRE.PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ENTRE.PRODDES'
      Size = 40
    end
    object sqlDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.ENTRE.PLACA'
      Size = 10
    end
    object sqlDadosPLACADES: TStringField
      FieldName = 'PLACADES'
      Origin = 'JAEADMIN.ENTRE.PLACADES'
      Size = 40
    end
    object sqlDadosPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.ENTRE.PESO'
    end
    object sqlDadosQTDELIQ: TFloatField
      FieldName = 'QTDELIQ'
      Origin = 'QTDELIQ'
      Visible = False
    end
    object sqlDadosBINSQTD: TBCDField
      FieldName = 'BINSQTD'
      Origin = 'JAEADMIN.ENTRE.BINSQTD'
    end
    object sqlDadosNOTA: TIntegerField
      FieldName = 'NOTA'
      Origin = 'JAEADMIN.ENTRE.NOTA'
    end
    object sqlDadosQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.ENTRE.QTDE'
    end
    object sqlDadosBINSLIQ: TBCDField
      FieldName = 'BINSLIQ'
      Origin = 'JAEADMIN.ENTRE.BINSLIQ'
    end
    object sqlDadosBINSTAR: TBCDField
      FieldName = 'BINSTAR'
      Origin = 'JAEADMIN.ENTRE.BINSTAR'
    end
    object sqlDadosBINSMED: TBCDField
      FieldName = 'BINSMED'
      Origin = 'JAEADMIN.ENTRE.BINSMED'
    end
    object sqlDadosLOTE_CFO: TStringField
      FieldName = 'LOTE_CFO'
      Origin = 'JAEADMIN.ENTRE.LOTE_CFO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ENTRE.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ENTRE.ACESOCOD'
    end
    object sqlDadosRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = 'JAEADMIN.ENTRE.RECIBO'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ENTRE.SAFRA'
      Size = 9
    end
    object sqlDadosIMPORTEMP: TIntegerField
      FieldName = 'IMPORTEMP'
      Origin = 'JAEADMIN.ENTRE.IMPORTEMP'
    end
    object sqlDadosIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
      Origin = 'JAEADMIN.ENTRE.IMPORTLANC'
    end
    object sqlDadosIMPORTENV: TIntegerField
      FieldName = 'IMPORTENV'
      Origin = 'JAEADMIN.ENTRE.IMPORTENV'
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.ENTRE.OBS'
      Size = 50
    end
    object sqlDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
      Origin = 'JAEADMIN.ENTRE.LOCALCOD'
    end
    object sqlDadosEMBALQTD: TBCDField
      FieldName = 'EMBALQTD'
      Origin = 'JAEADMIN.ENTRE.EMBALQTD'
      Visible = False
      DisplayFormat = '0'
    end
    object sqlDadosEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'JAEADMIN.ENTRE.EMBALCOD'
      Visible = False
    end
    object sqlDadosPESOZERO: TStringField
      FieldName = 'PESOZERO'
      Origin = 'JAEADMIN.ENTRE.PESOZERO'
      Visible = False
      Size = 1
    end
    object sqlDadosVLRFRETE: TBCDField
      DisplayLabel = 'Valor Frete'
      FieldName = 'VLRFRETE'
      Origin = 'JAEADMIN.ENTRE.VLRFRETE'
      DisplayFormat = '#,0.00'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ENTRE.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ENTRE.REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosHORA: TStringField
      FieldName = 'HORA'
      Origin = 'HORA'
      Visible = False
      Size = 8
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 602
    Top = 198
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    BeforePost = cdsDetalheBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 570
    Top = 198
    object cdsDetalheLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsDetalheVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
    end
    object cdsDetalheVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Size = 30
    end
    object cdsDetalheVARIEQTD: TBCDField
      FieldName = 'VARIEQTD'
      DisplayFormat = '0.##'
    end
    object cdsDetalheVARIEPES: TBCDField
      FieldName = 'VARIEPES'
      DisplayFormat = '#,0.##'
    end
    object cdsDetalheVARIECHE: TBCDField
      FieldName = 'VARIECHE'
      DisplayFormat = '#,0.##'
    end
    object cdsDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsDetalheBINSCOD: TIntegerField
      FieldName = 'BINSCOD'
    end
    object cdsDetalheBINSDES: TStringField
      FieldName = 'BINSDES'
    end
    object cdsDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
    object cdsDetalheLOTE_PRO: TStringField
      FieldName = 'LOTE_PRO'
    end
    object cdsDetalheIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
    end
    object cdsDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object cdsDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = sqlDetalhe
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 198
  end
  object PopupMenu1: TPopupMenu
    Left = 760
    Top = 328
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
  object dsEtiqBins: TDataSource
    DataSet = cdsEtiqBins
    Left = 666
    Top = 270
  end
  object cdsEtiqBins: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspEtiqBins'
    Left = 634
    Top = 270
    object cdsEtiqBinsVARIEDADE: TStringField
      FieldName = 'VARIEDADE'
      Size = 50
    end
    object cdsEtiqBinsPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Size = 50
    end
    object cdsEtiqBinsROMANEIO: TStringField
      FieldName = 'ROMANEIO'
      Size = 6
    end
    object cdsEtiqBinsDATA: TStringField
      FieldName = 'DATA'
      Size = 10
    end
    object cdsEtiqBinsTIPOBINS: TStringField
      FieldName = 'TIPOBINS'
      Size = 50
    end
    object cdsEtiqBinsNOTA: TStringField
      FieldName = 'NOTA'
      Size = 9
    end
    object cdsEtiqBinsMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Size = 50
    end
    object cdsEtiqBinsPESOKG: TStringField
      FieldName = 'PESOKG'
      Size = 10
    end
    object cdsEtiqBinsPESOBRUTO: TStringField
      FieldName = 'PESOBRUTO'
      Size = 10
    end
    object cdsEtiqBinsPESOTARA: TStringField
      FieldName = 'PESOTARA'
      Size = 10
    end
    object cdsEtiqBinsPESOLIQUIDO: TStringField
      FieldName = 'PESOLIQUIDO'
      Size = 10
    end
    object cdsEtiqBinsLINHA1: TStringField
      FieldName = 'LINHA1'
      Size = 30
    end
    object cdsEtiqBinsLINHA2: TStringField
      FieldName = 'LINHA2'
      Size = 30
    end
    object cdsEtiqBinsLINHA3: TStringField
      FieldName = 'LINHA3'
      Size = 30
    end
    object cdsEtiqBinsLINHA4: TStringField
      FieldName = 'LINHA4'
      Size = 30
    end
    object cdsEtiqBinsLINHA5: TStringField
      FieldName = 'LINHA5'
      Size = 30
    end
    object cdsEtiqBinsQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsEtiqBinsCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
    object cdsEtiqBinsBARRA: TStringField
      FieldName = 'BARRA'
      Size = 12
    end
    object cdsEtiqBinsVARCOD: TIntegerField
      FieldName = 'VARCOD'
    end
    object cdsEtiqBinsPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
  end
  object dspEtiqBins: TDataSetProvider
    DataSet = sqlEtiqBins
    UpdateMode = upWhereKeyOnly
    Left = 602
    Top = 270
  end
  object sqlDetalhe: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from entrevar'
      'where lancit = 0')
    Left = 506
    Top = 198
    object sqlDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlDetalheVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'VARIECOD'
    end
    object sqlDetalheVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'VARIEDES'
      Size = 30
    end
    object sqlDetalheVARIEQTD: TBCDField
      FieldName = 'VARIEQTD'
      Origin = 'VARIEQTD'
      Precision = 18
    end
    object sqlDetalheVARIEPES: TBCDField
      FieldName = 'VARIEPES'
      Origin = 'VARIEPES'
      Precision = 18
    end
    object sqlDetalheVARIECHE: TBCDField
      FieldName = 'VARIECHE'
      Origin = 'VARIECHE'
      Precision = 18
    end
    object sqlDetalheBINSCOD: TIntegerField
      FieldName = 'BINSCOD'
      Origin = 'BINSCOD'
    end
    object sqlDetalheBINSDES: TStringField
      FieldName = 'BINSDES'
      Origin = 'BINSDES'
    end
    object sqlDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object sqlDetalheIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
      Origin = 'IMPORTLANC'
    end
    object sqlDetalheLOTE_PRO: TStringField
      FieldName = 'LOTE_PRO'
      Origin = 'LOTE_PRO'
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
    end
  end
  object sqlEtiqBins: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'Select * From etiqBins ')
    Left = 570
    Top = 270
  end
end
