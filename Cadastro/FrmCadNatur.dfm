inherited FfrmCadNatur: TFfrmCadNatur
  Caption = 'Cadastro C.F.O.P.'
  ClientHeight = 535
  ClientWidth = 1087
  ExplicitWidth = 1093
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 519
    Width = 1087
    ExplicitTop = 519
    ExplicitWidth = 1087
    inherited PStatusHistorico: TPanel
      Width = 906
      ExplicitWidth = 906
    end
    inherited pnlTela: TPanel
      Left = 1019
      ExplicitLeft = 1019
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1077
      ExplicitLeft = 1077
    end
  end
  inherited pMenu: TRzPanel
    Height = 519
    ExplicitHeight = 519
    inherited rzpMenu: TRzPanel
      Height = 415
      ExplicitHeight = 415
      inherited rbgAtivo: TRadioGroup
        Top = 295
        ExplicitTop = 295
      end
      inherited PPeriodo: TPanel
        Top = 335
        ExplicitTop = 335
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 950
    Height = 519
    ExplicitWidth = 950
    ExplicitHeight = 519
    inherited pcItem: TRzPageControl
      Width = 942
      Height = 511
      ExplicitWidth = 942
      ExplicitHeight = 511
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 940
        ExplicitHeight = 490
        inherited pPesquisa: TRzPanel
          Top = 424
          Width = 940
          ExplicitTop = 424
          ExplicitWidth = 940
          inherited Label1: TLabel
            Width = 932
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 819
            ExplicitLeft = 592
          end
          inherited rbPesquisa: TRzPanel
            Width = 932
            ExplicitWidth = 932
          end
          inherited edPesquisa: TMaskEdit
            Width = 815
            ExplicitWidth = 815
          end
        end
        inherited Panel2: TPanel
          Width = 940
          ExplicitWidth = 940
          inherited Label3: TLabel
            Width = 802
            ExplicitLeft = 522
          end
        end
        inherited dbDados: TcxGrid
          Width = 940
          Height = 404
          ExplicitWidth = 940
          ExplicitHeight = 404
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 3
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 940
        ExplicitHeight = 490
        inherited pDados: TPanel
          Width = 940
          Height = 490
          ExplicitWidth = 940
          ExplicitHeight = 490
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
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 684
            Height = 32
            Caption = ' Descri'#231#227'o '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 2
              Top = 15
              Width = 680
              Height = 15
              Align = alClient
              BorderStyle = bsNone
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
              OnExit = DBEdit2Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    object cdsDadosCODIGO: TBCDField
      DisplayLabel = 'C'#243'digo CFOP.'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      DisplayFormat = '0.000'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 120
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
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
    UpdateMode = upWhereAll
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cadnatur')
    object sqlDadosCODIGO: TBCDField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADNATUR.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADNATUR.DESCRICAO'
      Size = 120
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADNATUR.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADNATUR.ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADNATUR.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADNATUR.REG_ID'
    end
  end
end
