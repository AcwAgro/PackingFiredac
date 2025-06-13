inherited FfrmCartaCompra: TFfrmCartaCompra
  Caption = 'Financeiro - Autoriza'#231#227'o de Compra'
  ClientHeight = 574
  ClientWidth = 994
  ExplicitWidth = 1000
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 558
    Width = 994
    ExplicitTop = 558
    ExplicitWidth = 994
    inherited PStatusHistorico: TPanel
      Width = 813
      ExplicitWidth = 813
    end
    inherited pnlTela: TPanel
      Left = 936
      ExplicitLeft = 936
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 926
      ExplicitLeft = 926
    end
  end
  inherited pMenu: TRzPanel
    Height = 558
    ExplicitHeight = 558
    inherited rzpMenu: TRzPanel
      Height = 454
      ExplicitHeight = 454
      inherited rbgAtivo: TRadioGroup
        Top = 334
        ExplicitTop = 334
      end
      inherited PPeriodo: TPanel
        Top = 374
        Visible = True
        ExplicitTop = 374
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
        ExplicitTop = 22
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 857
    Height = 558
    ExplicitWidth = 857
    ExplicitHeight = 558
    inherited pcItem: TRzPageControl
      Width = 849
      Height = 550
      OnChange = pcItemChange
      ExplicitWidth = 849
      ExplicitHeight = 550
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 847
        ExplicitHeight = 529
        inherited pPesquisa: TRzPanel
          Top = 463
          Width = 847
          ExplicitTop = 463
          ExplicitWidth = 847
          inherited Label1: TLabel
            Width = 839
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 726
            ExplicitLeft = 376
          end
          inherited rbPesquisa: TRzPanel
            Width = 839
            ExplicitWidth = 839
          end
          inherited edPesquisa: TMaskEdit
            Width = 722
            ExplicitWidth = 722
          end
        end
        inherited Panel2: TPanel
          Width = 847
          ExplicitWidth = 847
          inherited Label3: TLabel
            Width = 709
            ExplicitLeft = 429
          end
        end
        inherited dbDados: TcxGrid
          Width = 847
          Height = 443
          ExplicitWidth = 847
          ExplicitHeight = 443
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALOR
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1RECIBO: TcxGridDBColumn
              DataBinding.FieldName = 'RECIBO'
              Width = 55
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1PRODDES: TcxGridDBColumn
              DataBinding.FieldName = 'PRODDES'
              Width = 200
            end
            object dbDadosDBTableView1VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR'
              Width = 100
            end
            object dbDadosDBTableView1DTPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'DTPAGO'
              Width = 75
            end
            object dbDadosDBTableView1HISTORICO: TcxGridDBColumn
              DataBinding.FieldName = 'HISTORICO'
              Width = 200
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LOCALIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'LOCALIDADE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PLACA: TcxGridDBColumn
              DataBinding.FieldName = 'PLACA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PRODCOD: TcxGridDBColumn
              DataBinding.FieldName = 'PRODCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PAGO: TcxGridDBColumn
              DataBinding.FieldName = 'PAGO'
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
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1vlrExtenso: TcxGridDBColumn
              DataBinding.FieldName = 'vlrExtenso'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 847
        ExplicitHeight = 529
        inherited pDados: TPanel
          Width = 847
          Height = 529
          BevelInner = bvNone
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = False
          ExplicitWidth = 847
          ExplicitHeight = 529
          object GroupBox5: TGroupBox
            Left = 109
            Top = 36
            Width = 108
            Height = 32
            Caption = ' Valor '
            TabOrder = 2
            object DBEdit8: TDBEdit
              Left = 4
              Top = 14
              Width = 94
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'VALOR'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 140
            Width = 403
            Height = 32
            Caption = ' Hist'#243'rico '
            TabOrder = 6
            object DBEdit4: TDBEdit
              Left = 4
              Top = 14
              Width = 396
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'HISTORICO'
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
            Top = 70
            Width = 356
            Height = 32
            Caption = ' Produtor '
            TabOrder = 3
            inline frmPesquisa: TfrmPesquisa
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
                ExplicitLeft = 326
                ExplicitTop = 0
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
          object GroupBox9: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' N'#250'mero '
            Enabled = False
            TabOrder = 0
            object DBEdit46: TDBEdit
              Left = 5
              Top = 15
              Width = 73
              Height = 15
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
          object DBRadioGroup2: TDBRadioGroup
            Left = 113
            Top = 105
            Width = 127
            Height = 34
            Caption = ' Baixado '
            Color = clWhite
            Columns = 2
            DataField = 'PAGO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 5
            TabStop = True
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox6: TGroupBox
            Left = 5
            Top = 106
            Width = 102
            Height = 34
            Caption = ' Data Baixa '
            TabOrder = 4
            object DBEdit5: TcxDBDateEdit
              Left = 2
              Top = 14
              Align = alBottom
              AutoSize = False
              DataBinding.DataField = 'DTPAGO'
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
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    OnCalcFields = cdsDadosCalcFields
    Left = 466
    object cdsDadosRECIBO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 6
      FieldName = 'RECIBO'
      Origin = 'JAEADMIN.CXFRETE.RECIBO'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CXFRETE.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.CXFRETE.VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosPRODDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.CXFRETE.PRODDES'
      Size = 50
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Motorista'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CXFRETE.DESCRICAO'
      Visible = False
      Size = 50
    end
    object cdsDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.CXFRETE.PLACA'
      Visible = False
      Size = 10
    end
    object cdsDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.CXFRETE.PRODCOD'
      Visible = False
    end
    object cdsDadosLOCALIDADE: TStringField
      FieldName = 'LOCALIDADE'
      Origin = 'JAEADMIN.CXFRETE.LOCALIDADE'
      Visible = False
      Size = 50
    end
    object cdsDadosHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 20
      FieldName = 'HISTORICO'
      Origin = 'JAEADMIN.CXFRETE.HISTORICO'
      Visible = False
      Size = 50
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CXFRETE.CODIGO'
      Visible = False
    end
    object cdsDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CXFRETE.TIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosPAGO: TStringField
      FieldName = 'PAGO'
      Origin = 'JAEADMIN.CXFRETE.PAGO'
      Visible = False
      Size = 1
    end
    object cdsDadosDTPAGO: TSQLTimeStampField
      DisplayLabel = 'Data Baixa'
      DisplayWidth = 10
      FieldName = 'DTPAGO'
      Origin = 'JAEADMIN.CXFRETE.DTPAGO'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CXFRETE.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CXFRETE.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.CXFRETE.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CXFRETE.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsDadosvlrExtenso: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'vlrExtenso'
      Visible = False
      Size = 220
    end
    object cdsDadosLANCINT: TIntegerField
      FieldName = 'LANCINT'
      Visible = False
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 434
  end
  inherited dsDados: TDataSource
    Left = 498
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cxFrete'
      'where tipo in ('#39'E'#39','#39'S'#39')'
      'and lanc = -1')
    Left = 402
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CXFRETE.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CXFRETE.DATA'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CXFRETE.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CXFRETE.DESCRICAO'
      Size = 50
    end
    object sqlDadosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'JAEADMIN.CXFRETE.PLACA'
      Size = 10
    end
    object sqlDadosPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.CXFRETE.PRODCOD'
    end
    object sqlDadosPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.CXFRETE.PRODDES'
      Size = 50
    end
    object sqlDadosLOCALIDADE: TStringField
      FieldName = 'LOCALIDADE'
      Origin = 'JAEADMIN.CXFRETE.LOCALIDADE'
      Size = 50
    end
    object sqlDadosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.CXFRETE.VALOR'
    end
    object sqlDadosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'JAEADMIN.CXFRETE.HISTORICO'
      Size = 50
    end
    object sqlDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CXFRETE.TIPO'
      Size = 1
    end
    object sqlDadosPAGO: TStringField
      FieldName = 'PAGO'
      Origin = 'JAEADMIN.CXFRETE.PAGO'
      Size = 1
    end
    object sqlDadosDTPAGO: TSQLTimeStampField
      FieldName = 'DTPAGO'
      Origin = 'JAEADMIN.CXFRETE.DTPAGO'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CXFRETE.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CXFRETE.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.CXFRETE.SAFRA'
      Size = 9
    end
    object sqlDadosRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = 'JAEADMIN.CXFRETE.RECIBO'
    end
    object sqlDadosLANCINT: TIntegerField
      FieldName = 'LANCINT'
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
  end
end
