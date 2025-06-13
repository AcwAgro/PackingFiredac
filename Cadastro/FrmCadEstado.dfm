inherited FfrmCadEstado: TFfrmCadEstado
  Caption = 'Cadastro do estado'
  ClientHeight = 472
  ClientWidth = 1081
  ExplicitWidth = 1087
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 456
    Width = 1081
    ExplicitTop = 456
    ExplicitWidth = 1081
    inherited PStatusHistorico: TPanel
      Width = 900
      ExplicitWidth = 900
    end
    inherited pnlTela: TPanel
      Left = 1013
      ExplicitLeft = 1013
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1071
      ExplicitLeft = 1071
    end
  end
  inherited pMenu: TRzPanel
    Height = 456
    ExplicitHeight = 456
    inherited rzpMenu: TRzPanel
      Height = 352
      ExplicitHeight = 352
      inherited rbgAtivo: TRadioGroup
        Top = 232
        ExplicitTop = 232
      end
      inherited PPeriodo: TPanel
        Top = 272
        ExplicitTop = 272
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 944
    Height = 456
    ExplicitWidth = 944
    ExplicitHeight = 456
    inherited pcItem: TRzPageControl
      Width = 936
      Height = 448
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 936
      ExplicitHeight = 448
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 934
        ExplicitHeight = 427
        inherited pPesquisa: TRzPanel
          Top = 361
          Width = 934
          ExplicitTop = 361
          ExplicitWidth = 934
          inherited Label1: TLabel
            Width = 926
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 813
            ExplicitLeft = 424
          end
          inherited rbPesquisa: TRzPanel
            Width = 926
            ExplicitWidth = 926
          end
          inherited edPesquisa: TMaskEdit
            Width = 809
            ExplicitWidth = 809
          end
        end
        inherited Panel2: TPanel
          Width = 934
          ExplicitWidth = 934
          inherited Label3: TLabel
            Width = 796
            ExplicitLeft = 516
          end
        end
        inherited dbDados: TcxGrid
          Width = 934
          Height = 341
          ExplicitWidth = 934
          ExplicitHeight = 341
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 934
        ExplicitHeight = 427
        inherited pDados: TPanel
          Width = 934
          Height = 427
          ExplicitWidth = 934
          ExplicitHeight = 427
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
            Left = 5
            Top = 67
            Width = 106
            Height = 32
            Caption = ' Icms Prod.'
            TabOrder = 3
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ICMS'
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
            Top = 36
            Width = 44
            Height = 32
            Caption = ' UF '
            TabOrder = 1
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 33
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'UF'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 50
            Top = 36
            Width = 316
            Height = 32
            Caption = ' Nome do estado'
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 308
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NOME'
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
          object GroupBox5: TGroupBox
            Left = 112
            Top = 67
            Width = 106
            Height = 32
            Caption = ' Icms Frete '
            TabOrder = 4
            object DBEdit5: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ICMSFRE'
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
            Top = 101
            Width = 106
            Height = 32
            Caption = ' Vlr.Seguro '
            TabOrder = 5
            object DBEdit6: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SEGURO'
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
            Left = 112
            Top = 101
            Width = 106
            Height = 32
            Caption = ' % Redu'#231#227'o '
            TabOrder = 6
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'REDUCAO'
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
            Left = 219
            Top = 101
            Width = 106
            Height = 32
            Caption = ' Vlr.Truck '
            TabOrder = 7
            object DBEdit8: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SEGTRU'
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
            Left = 326
            Top = 101
            Width = 106
            Height = 32
            Caption = ' Vlr.Carreta '
            TabOrder = 8
            object DBEdit9: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SEGCAR'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit9Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADESTAD.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosUF: TStringField
      FieldName = 'UF'
      Origin = 'JAEADMIN.CADESTAD.UF'
      Size = 2
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Nome do Estado'
      FieldName = 'NOME'
      Origin = 'JAEADMIN.CADESTAD.NOME'
    end
    object cdsDadosICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'JAEADMIN.CADESTAD.ICMS'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosICMSFRE: TBCDField
      DisplayLabel = 'ICMS Frete'
      FieldName = 'ICMSFRE'
      Origin = 'JAEADMIN.CADESTAD.ICMSFRE'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSEGURO: TBCDField
      DisplayLabel = 'Vlr.Seguro'
      FieldName = 'SEGURO'
      Origin = 'JAEADMIN.CADESTAD.SEGURO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosREDUCAO: TBCDField
      DisplayLabel = '% Redu'#231#227'o'
      FieldName = 'REDUCAO'
      Origin = 'JAEADMIN.CADESTAD.REDUCAO'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSEGTRU: TBCDField
      DisplayLabel = 'Vlr.Seg.Truck'
      FieldName = 'SEGTRU'
      Origin = 'JAEADMIN.CADESTAD.SEGTRU'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosSEGCAR: TBCDField
      DisplayLabel = 'Vlr.Seg.Carreta'
      FieldName = 'SEGCAR'
      Origin = 'JAEADMIN.CADESTAD.SEGCAR'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADESTAD.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADESTAD.ACESOCOD'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADESTAD.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADESTAD.REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadestad')
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADESTAD.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosUF: TStringField
      FieldName = 'UF'
      Origin = 'JAEADMIN.CADESTAD.UF'
      Size = 2
    end
    object sqlDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'JAEADMIN.CADESTAD.NOME'
    end
    object sqlDadosICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'JAEADMIN.CADESTAD.ICMS'
    end
    object sqlDadosICMSFRE: TBCDField
      FieldName = 'ICMSFRE'
      Origin = 'JAEADMIN.CADESTAD.ICMSFRE'
    end
    object sqlDadosSEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'JAEADMIN.CADESTAD.SEGURO'
    end
    object sqlDadosSEGTRU: TBCDField
      FieldName = 'SEGTRU'
      Origin = 'JAEADMIN.CADESTAD.SEGTRU'
    end
    object sqlDadosSEGCAR: TBCDField
      FieldName = 'SEGCAR'
      Origin = 'JAEADMIN.CADESTAD.SEGCAR'
    end
    object sqlDadosREDUCAO: TBCDField
      FieldName = 'REDUCAO'
      Origin = 'JAEADMIN.CADESTAD.REDUCAO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADESTAD.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADESTAD.ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADESTAD.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADESTAD.REG_ID'
    end
  end
end
