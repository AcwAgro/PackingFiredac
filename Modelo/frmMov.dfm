inherited FfrmMov: TFfrmMov
  Caption = 'Movimento'
  ClientWidth = 679
  ExplicitWidth = 685
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Width = 679
    ExplicitWidth = 679
    inherited PStatusHistorico: TPanel
      Width = 508
      ExplicitWidth = 508
    end
    inherited pnlTela: TPanel
      Left = 621
      ExplicitLeft = 621
    end
  end
  inherited pMenu: TRzPanel
    inherited PPeriodo: TPanel
      inherited rbPeriodo: TGroupBox
        Visible = True
        inherited sbPeriodo: TSpeedButton
          Left = 2
          Top = 65
          Width = 122
          Align = alBottom
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 539
    ExplicitWidth = 539
    inherited pcItem: TRzPageControl
      Width = 525
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 525
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 523
        ExplicitHeight = 471
        inherited Label3: TLabel
          Width = 523
        end
        inherited dbDados: TDBGrid
          Width = 523
        end
        inherited pPesquisa: TRzPanel
          Left = 16
          Top = 69
          ExplicitLeft = 16
          ExplicitTop = 69
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 523
        ExplicitHeight = 471
        inherited pDados: TPanel
          Width = 523
          ExplicitWidth = 523
          object Label12: TLabel
            Left = 5
            Top = 5
            Width = 54
            Height = 13
            Caption = 'Registro'
            Transparent = True
          end
          object Label6: TLabel
            Left = 84
            Top = 5
            Width = 30
            Height = 13
            Caption = 'Data'
            Transparent = True
          end
          object Label7: TLabel
            Left = 4
            Top = 42
            Width = 147
            Height = 13
            Caption = 'M'#225'quina/Equipamento'
            Transparent = True
          end
          object Label8: TLabel
            Left = 356
            Top = 42
            Width = 35
            Height = 13
            Caption = 'Placa'
            Transparent = True
          end
          object Label9: TLabel
            Left = 356
            Top = 80
            Width = 34
            Height = 13
            Caption = 'Valor'
            Transparent = True
          end
          object Label10: TLabel
            Left = 4
            Top = 80
            Width = 75
            Height = 13
            Caption = 'Fornecedor'
            Transparent = True
          end
          object Label11: TLabel
            Left = 5
            Top = 116
            Width = 77
            Height = 13
            Caption = 'Observa'#231#227'o'
            Transparent = True
          end
          object DBEdit11: TDBEdit
            Left = 5
            Top = 19
            Width = 73
            Height = 21
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
          object DBEdit3: TDBEdit
            Left = 84
            Top = 19
            Width = 75
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DATA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DBEdit3Exit
            OnKeyDown = FormKeyDown
          end
          object DBEdit5: TDBEdit
            Left = 356
            Top = 56
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'PLACA'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyDown = FormKeyDown
          end
          object DBEdit6: TDBEdit
            Left = 356
            Top = 94
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VALOR'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyDown = FormKeyDown
          end
          object DBEdit10: TDBEdit
            Left = 5
            Top = 129
            Width = 432
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OBS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnExit = DBEdit10Exit
            OnKeyDown = FormKeyDown
          end
          object dtpData: TDateTimePicker
            Left = 158
            Top = 19
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
            TabOrder = 7
            OnChange = dtpDataChange
          end
          inline frmPesquisaFor: TfrmPesquisa
            Left = 4
            Top = 94
            Width = 347
            Height = 21
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            OnExit = frmPesquisaForExit
            ExplicitLeft = 4
            ExplicitTop = 94
            ExplicitWidth = 347
            ExplicitHeight = 21
            inherited SpeedButton1: TSpeedButton
              Left = 326
              Top = 0
              ExplicitLeft = 326
              ExplicitTop = 0
            end
            inherited edtPesquisa: TEdit
              Width = 318
              Height = 21
              BorderStyle = bsSingle
              CharCase = ecUpperCase
              ExplicitWidth = 318
              ExplicitHeight = 21
            end
          end
          inline frmPesquisaMaq: TfrmPesquisa
            Left = 5
            Top = 56
            Width = 347
            Height = 20
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            OnExit = frmPesquisaMaqExit
            ExplicitLeft = 5
            ExplicitTop = 56
            ExplicitWidth = 347
            ExplicitHeight = 20
            inherited SpeedButton1: TSpeedButton
              Left = 326
              Top = 0
              ExplicitLeft = 326
              ExplicitTop = 0
            end
            inherited edtPesquisa: TEdit
              Width = 318
              Height = 21
              BorderStyle = bsSingle
              CharCase = ecUpperCase
              ExplicitWidth = 318
              ExplicitHeight = 21
            end
          end
        end
      end
    end
  end
  inherited sqlDados: TQuery
    SQL.Strings = (
      'select * from mmveiculo')
    Left = 458
    Top = 14
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlDadosNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 25
    end
    object sqlDadosPLACA: TStringField
      FieldName = 'PLACA'
      FixedChar = True
      Size = 10
    end
    object sqlDadosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object sqlDadosFORNECOD: TIntegerField
      FieldName = 'FORNECOD'
    end
    object sqlDadosFORNEDES: TStringField
      FieldName = 'FORNEDES'
      FixedChar = True
      Size = 40
    end
    object sqlDadosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Size = 120
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 522
    Top = 14
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME'
      FixedChar = True
      Size = 25
    end
    object cdsDadosPLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      EditMask = '!>LLL\-0000;1; '
      FixedChar = True
      Size = 10
    end
    object cdsDadosFORNEDES: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNEDES'
      FixedChar = True
      Size = 40
    end
    object cdsDadosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Visible = False
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Visible = False
    end
    object cdsDadosFORNECOD: TIntegerField
      FieldName = 'FORNECOD'
      Visible = False
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      Visible = False
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
  end
  inherited dspDados: TDataSetProvider
    Left = 490
    Top = 14
  end
  inherited dsDados: TDataSource
    Left = 554
    Top = 14
  end
end
