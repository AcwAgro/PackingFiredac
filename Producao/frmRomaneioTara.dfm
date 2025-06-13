inherited FfrmRomaneioTara: TFfrmRomaneioTara
  Caption = 'Romaneio tara transporte'
  ClientHeight = 550
  ClientWidth = 754
  ExplicitWidth = 760
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 534
    Width = 754
    ExplicitTop = 534
    ExplicitWidth = 754
    inherited PStatusHistorico: TPanel
      Width = 573
      ExplicitWidth = 573
    end
    inherited pnlTela: TPanel
      Left = 686
      ExplicitLeft = 686
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 744
      ExplicitLeft = 744
    end
  end
  inherited pMenu: TRzPanel
    Height = 534
    ExplicitHeight = 534
    inherited rzpMenu: TRzPanel
      Height = 430
      ExplicitHeight = 430
      inherited rbgAtivo: TRadioGroup
        Top = 310
        ExplicitTop = 310
      end
      inherited PPeriodo: TPanel
        Top = 350
        Visible = True
        ExplicitTop = 350
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
    inherited rzpDados: TRzPanel
      inherited sbSalvar: TSpeedButton
        Visible = True
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 617
    Height = 534
    ExplicitWidth = 617
    ExplicitHeight = 534
    inherited pcItem: TRzPageControl
      Width = 609
      Height = 526
      OnChange = pcItemChange
      ExplicitWidth = 609
      ExplicitHeight = 526
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 607
        ExplicitHeight = 505
        inherited pPesquisa: TRzPanel
          Top = 439
          Width = 607
          ExplicitTop = 439
          ExplicitWidth = 607
          inherited Label1: TLabel
            Width = 599
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 486
            ExplicitLeft = 486
          end
          inherited rbPesquisa: TRzPanel
            Width = 599
            ExplicitWidth = 599
          end
          inherited edPesquisa: TMaskEdit
            Width = 482
            ExplicitWidth = 482
          end
        end
        inherited Panel2: TPanel
          Width = 607
          ExplicitWidth = 607
          inherited Label3: TLabel
            Width = 469
            ExplicitLeft = 189
          end
        end
        inherited dbDados: TcxGrid
          Width = 607
          Height = 419
          ExplicitWidth = 607
          ExplicitHeight = 419
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Width = 200
            end
            object dbDadosDBTableView1PLACADES: TcxGridDBColumn
              DataBinding.FieldName = 'PLACADES'
              Width = 200
            end
            object dbDadosDBTableView1PESO: TcxGridDBColumn
              DataBinding.FieldName = 'PESO'
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
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
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 607
        ExplicitHeight = 505
        inherited pDados: TPanel
          Width = 607
          Height = 505
          ExplicitWidth = 607
          ExplicitHeight = 505
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
            object DBEdit16: TcxDBDateEdit
              Left = 2
              Top = 11
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
              Height = 19
              Width = 98
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
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 410
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ENTRT.DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ENTRT.PRODCOD'
      Visible = False
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ENTRT.PRODDES'
      Size = 40
    end
    object cdsDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.ENTRT.PLACA'
      Visible = False
      Size = 10
    end
    object cdsDadosPLACADES: TStringField
      DisplayLabel = 'Transporte'
      DisplayWidth = 20
      FieldName = 'PLACADES'
      Origin = 'JAEADMIN.ENTRT.PLACADES'
      Size = 40
    end
    object cdsDadosPESO: TBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = 'JAEADMIN.ENTRT.PESO'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ENTRT.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ENTRT.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ENTRT.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ENTRT.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosIMPORTEMP: TIntegerField
      FieldName = 'IMPORTEMP'
      Origin = 'JAEADMIN.ENTRT.IMPORTEMP'
      Visible = False
    end
    object cdsDadosIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
      Origin = 'JAEADMIN.ENTRT.IMPORTLANC'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ENTRT.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ENTRT.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 378
  end
  inherited dsDados: TDataSource
    Left = 442
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from entrt  WHERE LANC = -1')
    Left = 346
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ENTRT.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ENTRT.DATA'
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ENTRT.PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ENTRT.PRODDES'
      Size = 40
    end
    object sqlDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.ENTRT.PLACA'
      Size = 10
    end
    object sqlDadosPLACADES: TStringField
      FieldName = 'PLACADES'
      Origin = 'JAEADMIN.ENTRT.PLACADES'
      Size = 40
    end
    object sqlDadosPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'JAEADMIN.ENTRT.PESO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ENTRT.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ENTRT.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ENTRT.SAFRA'
      Size = 9
    end
    object sqlDadosIMPORTEMP: TIntegerField
      FieldName = 'IMPORTEMP'
      Origin = 'JAEADMIN.ENTRT.IMPORTEMP'
    end
    object sqlDadosIMPORTLANC: TIntegerField
      FieldName = 'IMPORTLANC'
      Origin = 'JAEADMIN.ENTRT.IMPORTLANC'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ENTRT.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ENTRT.REG_ID'
    end
  end
end
