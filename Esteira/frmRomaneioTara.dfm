inherited FfrmRomaneioTara: TFfrmRomaneioTara
  Caption = 'Romaneio tara transporte'
  ClientHeight = 416
  ClientWidth = 723
  ExplicitWidth = 729
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 400
    Width = 723
    ExplicitTop = 400
    ExplicitWidth = 723
    inherited PStatusHistorico: TPanel
      Width = 552
      ExplicitWidth = 552
    end
    inherited pnlTela: TPanel
      Left = 665
      ExplicitLeft = 665
    end
  end
  inherited pMenu: TRzPanel
    Height = 400
    ExplicitHeight = 400
    inherited rzpMenu: TRzPanel
      Height = 267
      ExplicitHeight = 267
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 10
        ExplicitWidth = 126
      end
    end
    inherited rzpDados: TRzPanel
      Top = 274
      ExplicitTop = 274
      inherited sbSalvar: TSpeedButton
        Visible = True
      end
    end
    inherited PPeriodo: TPanel
      Top = 308
      Visible = True
      ExplicitTop = 308
      inherited rbPeriodo: TGroupBox
        Visible = True
        inherited sbPeriodo: TSpeedButton
          Left = 2
          Top = 65
          Width = 122
          Align = alBottom
          OnClick = sbPeriodoClick
          ExplicitLeft = 5
          ExplicitTop = 64
          ExplicitWidth = 122
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 583
    Height = 400
    ExplicitWidth = 583
    ExplicitHeight = 400
    inherited pcItem: TRzPageControl
      Width = 569
      Height = 386
      OnChange = pcItemChange
      ExplicitWidth = 569
      ExplicitHeight = 386
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 567
        ExplicitHeight = 365
        inherited dbDados: TDBGrid
          Width = 567
          Height = 279
        end
        inherited pPesquisa: TRzPanel
          Top = 299
          Width = 567
          ExplicitTop = 299
          ExplicitWidth = 567
          inherited rbPesquisa: TRzPanel
            Width = 559
            ExplicitWidth = 559
          end
        end
        inherited Panel2: TPanel
          Width = 567
          ExplicitWidth = 567
          inherited Label3: TLabel
            Left = 137
            Width = 429
            Height = 18
            ExplicitLeft = 137
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 567
        ExplicitHeight = 365
        inherited pDados: TPanel
          Width = 567
          Height = 365
          ExplicitWidth = 567
          ExplicitHeight = 365
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 0
            object DBEdit6: TDBEdit
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
          object GroupBox3: TGroupBox
            Left = 5
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
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
              Top = 9
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
          end
          object GroupBox5: TGroupBox
            Left = 109
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Peso em kg '
            TabOrder = 2
            object DBEdit8: TDBEdit
              Left = 5
              Top = 15
              Width = 94
              Height = 15
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
            end
          end
          object GroupBox4: TGroupBox
            Left = 5
            Top = 68
            Width = 356
            Height = 32
            Caption = ' Produtor '
            TabOrder = 3
            inline frmPesquisaPro: TfrmPesquisa
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
          object GroupBox6: TGroupBox
            Left = 5
            Top = 99
            Width = 356
            Height = 32
            Caption = ' Transporte/Motorista '
            TabOrder = 4
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
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = cdsDados
    Left = 394
    Top = 102
  end
  inherited cdsDados: TFDQuery
    AfterScroll = cdsDadosAfterScroll
    SQL.Strings = (
      'select * from entrt order by lanc desc')
    Left = 362
    Top = 102
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
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      DisplayFormat = '#,0.###'
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
      FieldName = 'IMPORTEMP'
      Visible = False
    end
    object cdsDadosIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
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
    object cdsDadosHORA: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = 'HORA'
      Size = 8
    end
  end
end
