inherited FfrmCadPomar: TFfrmCadPomar
  Caption = 'Cadastro pomar'
  ClientHeight = 372
  ClientWidth = 1146
  ExplicitWidth = 1152
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 356
    Width = 1146
    ExplicitTop = 356
    ExplicitWidth = 694
    inherited PStatusHistorico: TPanel
      Width = 965
      ExplicitWidth = 513
    end
    inherited pnlTela: TPanel
      Left = 1078
      ExplicitLeft = 626
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1136
      ExplicitLeft = 684
      ExplicitHeight = 21
    end
  end
  inherited pMenu: TRzPanel
    Height = 356
    ExplicitHeight = 356
    inherited rzpMenu: TRzPanel
      Height = 252
      ExplicitHeight = 252
      inherited rbgAtivo: TRadioGroup
        Top = 132
        ExplicitTop = 132
      end
      inherited PPeriodo: TPanel
        Top = 172
        ExplicitTop = 172
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1009
    Height = 356
    ExplicitWidth = 557
    ExplicitHeight = 356
    inherited pcItem: TRzPageControl
      Width = 1001
      Height = 348
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 549
      ExplicitHeight = 348
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 547
        ExplicitHeight = 327
        inherited pPesquisa: TRzPanel
          Top = 261
          Width = 999
          ExplicitTop = 261
          ExplicitWidth = 547
          inherited Label1: TLabel
            Width = 228
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 878
            ExplicitLeft = 426
          end
          inherited rbPesquisa: TRzPanel
            Width = 991
            ExplicitWidth = 539
          end
          inherited edPesquisa: TMaskEdit
            Width = 874
            ExplicitWidth = 422
          end
        end
        inherited Panel2: TPanel
          Width = 999
          ExplicitWidth = 547
          inherited Label3: TLabel
            Left = 581
            Width = 417
            Height = 13
            ExplicitLeft = 581
          end
        end
        inherited dbDados: TcxGrid
          Width = 999
          Height = 241
          ExplicitWidth = 547
          ExplicitHeight = 241
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 547
        ExplicitHeight = 327
        inherited pDados: TPanel
          Width = 999
          Height = 327
          ExplicitWidth = 547
          ExplicitHeight = 327
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
              DataField = 'NUMERO'
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 316
            Height = 32
            Caption = ' Descri'#231#227'o'
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 308
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DESCOD'
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
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosNUMERO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsDadosFORCOD1: TIntegerField
      FieldName = 'FORCOD1'
      Visible = False
    end
    object cdsDadosFORDES1: TStringField
      FieldName = 'FORDES1'
      Visible = False
      Size = 50
    end
    object cdsDadosFORCOD2: TIntegerField
      FieldName = 'FORCOD2'
      Visible = False
    end
    object cdsDadosFORDES2: TStringField
      FieldName = 'FORDES2'
      Visible = False
      Size = 50
    end
    object cdsDadosFORCOD3: TIntegerField
      FieldName = 'FORCOD3'
      Visible = False
    end
    object cdsDadosFORDES3: TStringField
      FieldName = 'FORDES3'
      Visible = False
      Size = 50
    end
    object cdsDadosFORCOD4: TIntegerField
      FieldName = 'FORCOD4'
      Visible = False
    end
    object cdsDadosFORDES4: TStringField
      FieldName = 'FORDES4'
      Visible = False
      Size = 50
    end
    object cdsDadosFORCOD5: TIntegerField
      FieldName = 'FORCOD5'
      Visible = False
    end
    object cdsDadosFORDES5: TStringField
      FieldName = 'FORDES5'
      Visible = False
      Size = 50
    end
    object cdsDadosRECCOD: TIntegerField
      FieldName = 'RECCOD'
      Visible = False
    end
    object cdsDadosRECDES: TStringField
      FieldName = 'RECDES'
      Visible = False
      Size = 30
    end
    object cdsDadosRECCON: TStringField
      FieldName = 'RECCON'
      Visible = False
      Size = 10
    end
    object cdsDadosRECPER: TFloatField
      FieldName = 'RECPER'
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
    object cdsDadosAREA: TStringField
      FieldName = 'AREA'
      Visible = False
      Size = 10
    end
    object cdsDadosLOCAL: TStringField
      FieldName = 'LOCAL'
      Visible = False
      Size = 30
    end
    object cdsDadosPLANTA: TStringField
      FieldName = 'PLANTA'
      Visible = False
      Size = 30
    end
    object cdsDadosESPAC: TStringField
      FieldName = 'ESPAC'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCOD: TIntegerField
      FieldName = 'DESCOD'
      Visible = False
    end
    object cdsDadosDESDES: TStringField
      FieldName = 'DESDES'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCON: TStringField
      FieldName = 'DESCON'
      Visible = False
      Size = 10
    end
    object cdsDadosDESPER: TFloatField
      FieldName = 'DESPER'
      Visible = False
    end
    object cdsDadosDESCOD1: TIntegerField
      FieldName = 'DESCOD1'
      Visible = False
    end
    object cdsDadosDESDES1: TStringField
      FieldName = 'DESDES1'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCON1: TStringField
      FieldName = 'DESCON1'
      Visible = False
      Size = 10
    end
    object cdsDadosDESPER1: TFloatField
      FieldName = 'DESPER1'
      Visible = False
    end
    object cdsDadosDESCOD2: TIntegerField
      FieldName = 'DESCOD2'
      Visible = False
    end
    object cdsDadosDESDES2: TStringField
      FieldName = 'DESDES2'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCON2: TStringField
      FieldName = 'DESCON2'
      Visible = False
      Size = 10
    end
    object cdsDadosDESPER2: TFloatField
      FieldName = 'DESPER2'
      Visible = False
    end
    object cdsDadosDESCOD3: TIntegerField
      FieldName = 'DESCOD3'
      Visible = False
    end
    object cdsDadosDESDES3: TStringField
      FieldName = 'DESDES3'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCON3: TStringField
      FieldName = 'DESCON3'
      Visible = False
      Size = 10
    end
    object cdsDadosDESPER3: TFloatField
      FieldName = 'DESPER3'
      Visible = False
    end
    object cdsDadosDESCOD4: TIntegerField
      FieldName = 'DESCOD4'
      Visible = False
    end
    object cdsDadosDESDES4: TStringField
      FieldName = 'DESDES4'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCON4: TStringField
      FieldName = 'DESCON4'
      Visible = False
      Size = 10
    end
    object cdsDadosDESPER4: TFloatField
      FieldName = 'DESPER4'
      Visible = False
    end
    object cdsDadosDESCOD5: TIntegerField
      FieldName = 'DESCOD5'
      Visible = False
    end
    object cdsDadosDESDES5: TStringField
      FieldName = 'DESDES5'
      Visible = False
      Size = 30
    end
    object cdsDadosDESCON5: TStringField
      FieldName = 'DESCON5'
      Visible = False
      Size = 10
    end
    object cdsDadosDESPER5: TFloatField
      FieldName = 'DESPER5'
      Visible = False
    end
    object cdsDadosINVCOD: TIntegerField
      FieldName = 'INVCOD'
      Visible = False
    end
    object cdsDadosINVDES: TStringField
      FieldName = 'INVDES'
      Visible = False
      Size = 30
    end
    object cdsDadosINVCON: TStringField
      FieldName = 'INVCON'
      Visible = False
      Size = 10
    end
    object cdsDadosINVPER: TFloatField
      FieldName = 'INVPER'
      Visible = False
    end
    object cdsDadosINVCOD1: TIntegerField
      FieldName = 'INVCOD1'
      Visible = False
    end
    object cdsDadosINVDES1: TStringField
      FieldName = 'INVDES1'
      Visible = False
      Size = 30
    end
    object cdsDadosINVCON1: TStringField
      FieldName = 'INVCON1'
      Visible = False
      Size = 10
    end
    object cdsDadosINVPER1: TFloatField
      FieldName = 'INVPER1'
      Visible = False
    end
    object cdsDadosINVCOD2: TIntegerField
      FieldName = 'INVCOD2'
      Visible = False
    end
    object cdsDadosINVDES2: TStringField
      FieldName = 'INVDES2'
      Visible = False
      Size = 30
    end
    object cdsDadosINVCON2: TStringField
      FieldName = 'INVCON2'
      Visible = False
      Size = 10
    end
    object cdsDadosINVPER2: TFloatField
      FieldName = 'INVPER2'
      Visible = False
    end
    object cdsDadosINVCOD3: TIntegerField
      FieldName = 'INVCOD3'
      Visible = False
    end
    object cdsDadosINVDES3: TStringField
      FieldName = 'INVDES3'
      Visible = False
      Size = 30
    end
    object cdsDadosINVCON3: TStringField
      FieldName = 'INVCON3'
      Visible = False
      Size = 10
    end
    object cdsDadosINVPER3: TFloatField
      FieldName = 'INVPER3'
      Visible = False
    end
    object cdsDadosINVCOD4: TIntegerField
      FieldName = 'INVCOD4'
      Visible = False
    end
    object cdsDadosINVDES4: TStringField
      FieldName = 'INVDES4'
      Visible = False
      Size = 30
    end
    object cdsDadosINVCON4: TStringField
      FieldName = 'INVCON4'
      Visible = False
      Size = 10
    end
    object cdsDadosINVPER4: TFloatField
      FieldName = 'INVPER4'
      Visible = False
    end
    object cdsDadosINVCOD5: TIntegerField
      FieldName = 'INVCOD5'
      Visible = False
    end
    object cdsDadosINVDES5: TStringField
      FieldName = 'INVDES5'
      Visible = False
      Size = 30
    end
    object cdsDadosINVCON5: TStringField
      FieldName = 'INVCON5'
      Visible = False
      Size = 10
    end
    object cdsDadosINVPER5: TFloatField
      FieldName = 'INVPER5'
      Visible = False
    end
    object cdsDadosREGLOG: TMemoField
      FieldName = 'REGLOG'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from rrpomar')
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'JAEADMIN.RRPOMAR.NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.RRPOMAR.DESCRICAO'
      Size = 30
    end
    object sqlDadosFORCOD1: TIntegerField
      FieldName = 'FORCOD1'
      Origin = 'JAEADMIN.RRPOMAR.FORCOD1'
    end
    object sqlDadosFORDES1: TStringField
      FieldName = 'FORDES1'
      Origin = 'JAEADMIN.RRPOMAR.FORDES1'
      Size = 50
    end
    object sqlDadosFORCOD2: TIntegerField
      FieldName = 'FORCOD2'
      Origin = 'JAEADMIN.RRPOMAR.FORCOD2'
    end
    object sqlDadosFORDES2: TStringField
      FieldName = 'FORDES2'
      Origin = 'JAEADMIN.RRPOMAR.FORDES2'
      Size = 50
    end
    object sqlDadosFORCOD3: TIntegerField
      FieldName = 'FORCOD3'
      Origin = 'JAEADMIN.RRPOMAR.FORCOD3'
    end
    object sqlDadosFORDES3: TStringField
      FieldName = 'FORDES3'
      Origin = 'JAEADMIN.RRPOMAR.FORDES3'
      Size = 50
    end
    object sqlDadosFORCOD4: TIntegerField
      FieldName = 'FORCOD4'
      Origin = 'JAEADMIN.RRPOMAR.FORCOD4'
    end
    object sqlDadosFORDES4: TStringField
      FieldName = 'FORDES4'
      Origin = 'JAEADMIN.RRPOMAR.FORDES4'
      Size = 50
    end
    object sqlDadosFORCOD5: TIntegerField
      FieldName = 'FORCOD5'
      Origin = 'JAEADMIN.RRPOMAR.FORCOD5'
    end
    object sqlDadosFORDES5: TStringField
      FieldName = 'FORDES5'
      Origin = 'JAEADMIN.RRPOMAR.FORDES5'
      Size = 50
    end
    object sqlDadosRECCOD: TIntegerField
      FieldName = 'RECCOD'
      Origin = 'JAEADMIN.RRPOMAR.RECCOD'
    end
    object sqlDadosRECDES: TStringField
      FieldName = 'RECDES'
      Origin = 'JAEADMIN.RRPOMAR.RECDES'
      Size = 30
    end
    object sqlDadosRECCON: TStringField
      FieldName = 'RECCON'
      Origin = 'JAEADMIN.RRPOMAR.RECCON'
      Size = 10
    end
    object sqlDadosRECPER: TFloatField
      FieldName = 'RECPER'
      Origin = 'JAEADMIN.RRPOMAR.RECPER'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.RRPOMAR.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.RRPOMAR.ACESOCOD'
    end
    object sqlDadosAREA: TStringField
      FieldName = 'AREA'
      Origin = 'JAEADMIN.RRPOMAR.AREA'
      Size = 10
    end
    object sqlDadosLOCAL: TStringField
      FieldName = 'LOCAL'
      Origin = 'JAEADMIN.RRPOMAR.LOCAL'
      Size = 30
    end
    object sqlDadosPLANTA: TStringField
      FieldName = 'PLANTA'
      Origin = 'JAEADMIN.RRPOMAR.PLANTA'
      Size = 30
    end
    object sqlDadosESPAC: TStringField
      FieldName = 'ESPAC'
      Origin = 'JAEADMIN.RRPOMAR.ESPAC'
      Size = 30
    end
    object sqlDadosDESCOD: TIntegerField
      FieldName = 'DESCOD'
      Origin = 'JAEADMIN.RRPOMAR.DESCOD'
    end
    object sqlDadosDESDES: TStringField
      FieldName = 'DESDES'
      Origin = 'JAEADMIN.RRPOMAR.DESDES'
      Size = 30
    end
    object sqlDadosDESCON: TStringField
      FieldName = 'DESCON'
      Origin = 'JAEADMIN.RRPOMAR.DESCON'
      Size = 10
    end
    object sqlDadosDESPER: TFloatField
      FieldName = 'DESPER'
      Origin = 'JAEADMIN.RRPOMAR.DESPER'
    end
    object sqlDadosDESCOD1: TIntegerField
      FieldName = 'DESCOD1'
      Origin = 'JAEADMIN.RRPOMAR.DESCOD1'
    end
    object sqlDadosDESDES1: TStringField
      FieldName = 'DESDES1'
      Origin = 'JAEADMIN.RRPOMAR.DESDES1'
      Size = 30
    end
    object sqlDadosDESCON1: TStringField
      FieldName = 'DESCON1'
      Origin = 'JAEADMIN.RRPOMAR.DESCON1'
      Size = 10
    end
    object sqlDadosDESPER1: TFloatField
      FieldName = 'DESPER1'
      Origin = 'JAEADMIN.RRPOMAR.DESPER1'
    end
    object sqlDadosDESCOD2: TIntegerField
      FieldName = 'DESCOD2'
      Origin = 'JAEADMIN.RRPOMAR.DESCOD2'
    end
    object sqlDadosDESDES2: TStringField
      FieldName = 'DESDES2'
      Origin = 'JAEADMIN.RRPOMAR.DESDES2'
      Size = 30
    end
    object sqlDadosDESCON2: TStringField
      FieldName = 'DESCON2'
      Origin = 'JAEADMIN.RRPOMAR.DESCON2'
      Size = 10
    end
    object sqlDadosDESPER2: TFloatField
      FieldName = 'DESPER2'
      Origin = 'JAEADMIN.RRPOMAR.DESPER2'
    end
    object sqlDadosDESCOD3: TIntegerField
      FieldName = 'DESCOD3'
      Origin = 'JAEADMIN.RRPOMAR.DESCOD3'
    end
    object sqlDadosDESDES3: TStringField
      FieldName = 'DESDES3'
      Origin = 'JAEADMIN.RRPOMAR.DESDES3'
      Size = 30
    end
    object sqlDadosDESCON3: TStringField
      FieldName = 'DESCON3'
      Origin = 'JAEADMIN.RRPOMAR.DESCON3'
      Size = 10
    end
    object sqlDadosDESPER3: TFloatField
      FieldName = 'DESPER3'
      Origin = 'JAEADMIN.RRPOMAR.DESPER3'
    end
    object sqlDadosDESCOD4: TIntegerField
      FieldName = 'DESCOD4'
      Origin = 'JAEADMIN.RRPOMAR.DESCOD4'
    end
    object sqlDadosDESDES4: TStringField
      FieldName = 'DESDES4'
      Origin = 'JAEADMIN.RRPOMAR.DESDES4'
      Size = 30
    end
    object sqlDadosDESCON4: TStringField
      FieldName = 'DESCON4'
      Origin = 'JAEADMIN.RRPOMAR.DESCON4'
      Size = 10
    end
    object sqlDadosDESPER4: TFloatField
      FieldName = 'DESPER4'
      Origin = 'JAEADMIN.RRPOMAR.DESPER4'
    end
    object sqlDadosDESCOD5: TIntegerField
      FieldName = 'DESCOD5'
      Origin = 'JAEADMIN.RRPOMAR.DESCOD5'
    end
    object sqlDadosDESDES5: TStringField
      FieldName = 'DESDES5'
      Origin = 'JAEADMIN.RRPOMAR.DESDES5'
      Size = 30
    end
    object sqlDadosDESCON5: TStringField
      FieldName = 'DESCON5'
      Origin = 'JAEADMIN.RRPOMAR.DESCON5'
      Size = 10
    end
    object sqlDadosDESPER5: TFloatField
      FieldName = 'DESPER5'
      Origin = 'JAEADMIN.RRPOMAR.DESPER5'
    end
    object sqlDadosINVCOD: TIntegerField
      FieldName = 'INVCOD'
      Origin = 'JAEADMIN.RRPOMAR.INVCOD'
    end
    object sqlDadosINVDES: TStringField
      FieldName = 'INVDES'
      Origin = 'JAEADMIN.RRPOMAR.INVDES'
      Size = 30
    end
    object sqlDadosINVCON: TStringField
      FieldName = 'INVCON'
      Origin = 'JAEADMIN.RRPOMAR.INVCON'
      Size = 10
    end
    object sqlDadosINVPER: TFloatField
      FieldName = 'INVPER'
      Origin = 'JAEADMIN.RRPOMAR.INVPER'
    end
    object sqlDadosINVCOD1: TIntegerField
      FieldName = 'INVCOD1'
      Origin = 'JAEADMIN.RRPOMAR.INVCOD1'
    end
    object sqlDadosINVDES1: TStringField
      FieldName = 'INVDES1'
      Origin = 'JAEADMIN.RRPOMAR.INVDES1'
      Size = 30
    end
    object sqlDadosINVCON1: TStringField
      FieldName = 'INVCON1'
      Origin = 'JAEADMIN.RRPOMAR.INVCON1'
      Size = 10
    end
    object sqlDadosINVPER1: TFloatField
      FieldName = 'INVPER1'
      Origin = 'JAEADMIN.RRPOMAR.INVPER1'
    end
    object sqlDadosINVCOD2: TIntegerField
      FieldName = 'INVCOD2'
      Origin = 'JAEADMIN.RRPOMAR.INVCOD2'
    end
    object sqlDadosINVDES2: TStringField
      FieldName = 'INVDES2'
      Origin = 'JAEADMIN.RRPOMAR.INVDES2'
      Size = 30
    end
    object sqlDadosINVCON2: TStringField
      FieldName = 'INVCON2'
      Origin = 'JAEADMIN.RRPOMAR.INVCON2'
      Size = 10
    end
    object sqlDadosINVPER2: TFloatField
      FieldName = 'INVPER2'
      Origin = 'JAEADMIN.RRPOMAR.INVPER2'
    end
    object sqlDadosINVCOD3: TIntegerField
      FieldName = 'INVCOD3'
      Origin = 'JAEADMIN.RRPOMAR.INVCOD3'
    end
    object sqlDadosINVDES3: TStringField
      FieldName = 'INVDES3'
      Origin = 'JAEADMIN.RRPOMAR.INVDES3'
      Size = 30
    end
    object sqlDadosINVCON3: TStringField
      FieldName = 'INVCON3'
      Origin = 'JAEADMIN.RRPOMAR.INVCON3'
      Size = 10
    end
    object sqlDadosINVPER3: TFloatField
      FieldName = 'INVPER3'
      Origin = 'JAEADMIN.RRPOMAR.INVPER3'
    end
    object sqlDadosINVCOD4: TIntegerField
      FieldName = 'INVCOD4'
      Origin = 'JAEADMIN.RRPOMAR.INVCOD4'
    end
    object sqlDadosINVDES4: TStringField
      FieldName = 'INVDES4'
      Origin = 'JAEADMIN.RRPOMAR.INVDES4'
      Size = 30
    end
    object sqlDadosINVCON4: TStringField
      FieldName = 'INVCON4'
      Origin = 'JAEADMIN.RRPOMAR.INVCON4'
      Size = 10
    end
    object sqlDadosINVPER4: TFloatField
      FieldName = 'INVPER4'
      Origin = 'JAEADMIN.RRPOMAR.INVPER4'
    end
    object sqlDadosINVCOD5: TIntegerField
      FieldName = 'INVCOD5'
      Origin = 'JAEADMIN.RRPOMAR.INVCOD5'
    end
    object sqlDadosINVDES5: TStringField
      FieldName = 'INVDES5'
      Origin = 'JAEADMIN.RRPOMAR.INVDES5'
      Size = 30
    end
    object sqlDadosINVCON5: TStringField
      FieldName = 'INVCON5'
      Origin = 'JAEADMIN.RRPOMAR.INVCON5'
      Size = 10
    end
    object sqlDadosINVPER5: TFloatField
      FieldName = 'INVPER5'
      Origin = 'JAEADMIN.RRPOMAR.INVPER5'
    end
    object sqlDadosREGLOG: TMemoField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.RRPOMAR.REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.RRPOMAR.REG_ID'
    end
  end
end
