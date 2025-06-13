inherited FfrmVendaInsumos: TFfrmVendaInsumos
  Caption = 'Romaneio de venda/sa'#237'da'
  ClientHeight = 657
  ClientWidth = 1205
  ExplicitWidth = 1211
  ExplicitHeight = 686
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 641
    Width = 1205
    ExplicitTop = 641
    ExplicitWidth = 1205
    inherited PStatusHistorico: TPanel
      Width = 1024
      ExplicitWidth = 1024
    end
    inherited pnlTela: TPanel
      Left = 1147
      ExplicitLeft = 1147
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1137
      ExplicitLeft = 1137
    end
  end
  inherited pMenu: TRzPanel
    Height = 641
    ExplicitHeight = 641
    inherited rzpMenu: TRzPanel
      Height = 537
      ExplicitHeight = 537
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 126
      end
      inherited rzpUtil: TRzPanel
        inherited sbImprimir: TSpeedButton
          OnClick = sbImprimirClick
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 417
        ExplicitTop = 417
      end
      inherited PPeriodo: TPanel
        Top = 457
        Visible = True
        ExplicitTop = 457
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
    Width = 1068
    Height = 641
    ExplicitWidth = 1068
    ExplicitHeight = 641
    inherited pcItem: TRzPageControl
      Width = 1060
      Height = 633
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 1060
      ExplicitHeight = 633
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 1058
        ExplicitHeight = 612
        inherited pPesquisa: TRzPanel
          Top = 546
          Width = 1058
          ExplicitTop = 546
          ExplicitWidth = 1058
          inherited Label1: TLabel
            Width = 1050
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 937
            ExplicitLeft = 937
          end
          inherited rbPesquisa: TRzPanel
            Width = 1050
            ExplicitWidth = 1050
          end
          inherited edPesquisa: TMaskEdit
            Width = 933
            ExplicitWidth = 933
          end
        end
        inherited Panel2: TPanel
          Width = 1058
          ExplicitWidth = 1058
          inherited Label3: TLabel
            Width = 920
            ExplicitLeft = 988
          end
        end
        inherited dbDados: TcxGrid
          Width = 1058
          Height = 526
          ExplicitWidth = 1058
          ExplicitHeight = 526
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALOR
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VLRDESC
              end
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1TOTAL
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'REGISTRO'
              Width = 65
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 250
            end
            object dbDadosDBTableView1COMPRADOR: TcxGridDBColumn
              DataBinding.FieldName = 'COMPRADOR'
              Width = 200
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
            end
            object dbDadosDBTableView1VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR'
              Width = 100
            end
            object dbDadosDBTableView1VLRDESC: TcxGridDBColumn
              Caption = 'Vlr.Desc.'
              DataBinding.FieldName = 'VLRDESC'
              Width = 100
            end
            object dbDadosDBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              Width = 100
            end
            object dbDadosDBTableView1FORMA: TcxGridDBColumn
              DataBinding.FieldName = 'FORMA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VENDECOD: TcxGridDBColumn
              DataBinding.FieldName = 'VENDECOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1EXPORT: TcxGridDBColumn
              DataBinding.FieldName = 'EXPORT'
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
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 1058
        ExplicitHeight = 612
        inherited pDados: TPanel
          Width = 1058
          Height = 612
          ExplicitWidth = 1058
          ExplicitHeight = 612
          object DBGrid1: TDBGrid
            Left = 2
            Top = 107
            Width = 1054
            Height = 468
            Hint = '999 - sai da planilha'
            Align = alClient
            DataSource = dsDetalhe
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ShowHint = True
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
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 70
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'DESCRICAO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o/Produto'
                Title.Color = 13878195
                Width = 340
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Und.'
                Title.Color = 13878195
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Color = 13878195
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIT'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o unit.'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERDESC'
                Title.Alignment = taCenter
                Title.Caption = '%Desc.'
                Title.Color = 13878195
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESC'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Desc.'
                Title.Color = 13878195
                Width = 65
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'VALOR'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 575
            Width = 1054
            Height = 35
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object GroupBox7: TGroupBox
              Left = 427
              Top = 0
              Width = 96
              Height = 32
              Caption = ' Qtde.Itens. '
              Enabled = False
              TabOrder = 0
              object pnlQtde: TPanel
                Left = 2
                Top = 15
                Width = 92
                Height = 15
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = '0'
                Color = 15329769
                ParentBackground = False
                TabOrder = 0
              end
            end
            object GroupBox9: TGroupBox
              Left = 528
              Top = 0
              Width = 110
              Height = 32
              Caption = ' Sub.Total '
              Enabled = False
              TabOrder = 1
              object DBEdit7: TDBEdit
                Left = 7
                Top = 14
                Width = 100
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'VALOR'
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
            object GroupBox11: TGroupBox
              Left = 643
              Top = 0
              Width = 110
              Height = 32
              Caption = ' Vlr.Desconto '
              Enabled = False
              TabOrder = 2
              object DBEdit10: TDBEdit
                Left = 5
                Top = 15
                Width = 100
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'VLRDESC'
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
            object GroupBox12: TGroupBox
              Left = 759
              Top = 0
              Width = 110
              Height = 32
              Caption = ' Total '
              TabOrder = 3
              object DBEdit13: TDBEdit
                Left = 5
                Top = 15
                Width = 100
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'TOTAL'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnExit = DBEdit13Exit
                OnKeyDown = FormKeyDown
              end
            end
          end
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 1054
            Height = 105
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object GroupBox2: TGroupBox
              Left = 5
              Top = 5
              Width = 102
              Height = 32
              Caption = ' Data '
              TabOrder = 0
              object DBEdit3: TcxDBDateEdit
                Left = 2
                Top = 13
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
                Height = 17
                Width = 98
              end
            end
            object GroupBox3: TGroupBox
              Left = 109
              Top = 5
              Width = 116
              Height = 32
              Caption = ' Controle n'#186' '
              TabOrder = 1
              object DBEdit1: TDBEdit
                Left = 5
                Top = 15
                Width = 106
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'REGISTRO'
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
              Width = 356
              Height = 32
              Caption = ' Produtor/Fornecedor '
              TabOrder = 2
              inline frmPesquisaCli: TfrmPesquisa
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
                  ExplicitHeight = 14
                end
                inherited edtPesquisa: TEdit
                  Width = 320
                  Height = 14
                  CharCase = ecUpperCase
                  ExplicitWidth = 320
                  ExplicitHeight = 14
                end
              end
            end
            object GroupBox5: TGroupBox
              Left = 363
              Top = 36
              Width = 252
              Height = 32
              Caption = ' Prazo pagamento '
              TabOrder = 3
              object DBEdit4: TDBEdit
                Left = 4
                Top = 13
                Width = 243
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'FORMA'
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
              Top = 67
              Width = 414
              Height = 32
              Caption = ' Hist'#243'rico '
              TabOrder = 4
              object DBEdit2: TDBEdit
                Left = 5
                Top = 15
                Width = 404
                Height = 15
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'COMPRADOR'
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
  end
  inherited cdsDados: TClientDataSet
    Left = 546
    Top = 238
    object cdsDadosREGISTRO: TIntegerField
      DisplayLabel = 'Romaneio N'#186
      DisplayWidth = 6
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.ESVENDA.REGISTRO'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ESVENDA.DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'JAEADMIN.ESVENDA.VENDECOD'
      Visible = False
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.ESVENDA.CODIGO'
      Visible = False
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 35
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.ESVENDA.DESCRICAO'
      Size = 50
    end
    object cdsDadosCOMPRADOR: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 25
      FieldName = 'COMPRADOR'
      Origin = 'JAEADMIN.ESVENDA.COMPRADOR'
      Size = 40
    end
    object cdsDadosFORMA: TStringField
      DisplayLabel = 'Prazo Pagto.'
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.ESVENDA.FORMA'
      Visible = False
      EditMask = '999\ 999\ 999\ 999\ 999\ 999\ 999;1; '
      Size = 30
    end
    object cdsDadosTOTAL: TBCDField
      DisplayLabel = 'Vlr.Total Venda'
      FieldName = 'TOTAL'
      Origin = 'JAEADMIN.ESVENDA.TOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVALOR: TBCDField
      DisplayLabel = 'Sub.total'
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.ESVENDA.VALOR'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'JAEADMIN.ESVENDA.VLRDESC'
      Visible = False
      DisplayFormat = '#,0.00'
    end
    object cdsDadosEXPORT: TStringField
      FieldName = 'EXPORT'
      Origin = 'JAEADMIN.ESVENDA.EXPORT'
      Visible = False
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ESVENDA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ESVENDA.ACESOCOD'
      Visible = False
    end
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ESVENDA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ARVENDA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ARVENDA.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 514
    Top = 238
  end
  inherited dsDados: TDataSource
    Left = 578
    Top = 238
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from arvenda')
    Left = 482
    Top = 238
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ESVENDA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.ESVENDA.REGISTRO'
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ESVENDA.DATA'
    end
    object sqlDadosVENDECOD: TIntegerField
      FieldName = 'VENDECOD'
      Origin = 'JAEADMIN.ESVENDA.VENDECOD'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.ESVENDA.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.ESVENDA.DESCRICAO'
      Size = 50
    end
    object sqlDadosCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Origin = 'JAEADMIN.ESVENDA.COMPRADOR'
      Size = 40
    end
    object sqlDadosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'JAEADMIN.ESVENDA.FORMA'
      Size = 30
    end
    object sqlDadosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'JAEADMIN.ESVENDA.TOTAL'
    end
    object sqlDadosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.ESVENDA.VALOR'
    end
    object sqlDadosVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'JAEADMIN.ESVENDA.VLRDESC'
    end
    object sqlDadosEXPORT: TStringField
      FieldName = 'EXPORT'
      Origin = 'JAEADMIN.ESVENDA.EXPORT'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ESVENDA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ESVENDA.ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.ARVENDA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.ARVENDA.REG_ID'
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 578
    Top = 270
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    BeforePost = cdsDetalheBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 546
    Top = 270
    object cdsDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object cdsDetalheUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object cdsDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheUNIT: TBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalhePERDESC: TBCDField
      FieldName = 'PERDESC'
      Origin = 'PERDESC'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheRUNIT: TBCDField
      FieldName = 'RUNIT'
      Origin = 'RUNIT'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsDetalheACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsDetalheREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsDetalheREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = sqlDetalhe
    UpdateMode = upWhereKeyOnly
    Left = 514
    Top = 270
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 296
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object sqlDetalhe: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from arvendco where lanc = -1')
    Left = 482
    Top = 270
    object sqlDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlDetalheCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlDetalheUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object sqlDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlDetalheUNIT: TBCDField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Precision = 18
    end
    object sqlDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlDetalhePERDESC: TBCDField
      FieldName = 'PERDESC'
      Origin = 'PERDESC'
      Precision = 18
    end
    object sqlDetalheVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      Precision = 18
    end
    object sqlDetalheRUNIT: TBCDField
      FieldName = 'RUNIT'
      Origin = 'RUNIT'
      Precision = 18
    end
    object sqlDetalheEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlDetalheACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
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
      Required = True
    end
  end
end
