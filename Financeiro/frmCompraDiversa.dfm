inherited FfrmCompraDiversa: TFfrmCompraDiversa
  Caption = 'Compra diversas'
  ClientHeight = 512
  ClientWidth = 880
  ExplicitWidth = 886
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 496
    Width = 880
    ExplicitTop = 496
    ExplicitWidth = 880
    inherited PStatusHistorico: TPanel
      Width = 699
      ExplicitWidth = 699
    end
    inherited PStatusResgistro: TPanel
      object Panel3: TPanel
        Left = 96
        Top = -488
        Width = 185
        Height = 41
        Caption = 'Panel3'
        TabOrder = 0
      end
    end
    inherited pnlTela: TPanel
      Left = 812
      ExplicitLeft = 812
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 870
      ExplicitLeft = 870
    end
  end
  inherited pMenu: TRzPanel
    Height = 496
    ExplicitHeight = 496
    inherited rzpMenu: TRzPanel
      Height = 392
      ExplicitHeight = 392
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = -2
        ExplicitTop = 22
        ExplicitWidth = 129
      end
      inherited rbgAtivo: TRadioGroup
        Top = 272
        ExplicitTop = 272
      end
      inherited PPeriodo: TPanel
        Top = 312
        Visible = True
        ExplicitTop = 312
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
        ExplicitLeft = -2
        ExplicitTop = 22
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 743
    Height = 496
    ExplicitWidth = 743
    ExplicitHeight = 496
    inherited pcItem: TRzPageControl
      Width = 735
      Height = 488
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 735
      ExplicitHeight = 488
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 733
        ExplicitHeight = 467
        inherited pPesquisa: TRzPanel
          Top = 401
          Width = 733
          ExplicitTop = 401
          ExplicitWidth = 733
          inherited Label1: TLabel
            Width = 725
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 612
            ExplicitLeft = 628
          end
          inherited rbPesquisa: TRzPanel
            Width = 725
            ExplicitWidth = 725
          end
          inherited edPesquisa: TMaskEdit
            Width = 608
            ExplicitWidth = 608
          end
        end
        inherited Panel2: TPanel
          Width = 733
          ExplicitWidth = 733
          inherited Label3: TLabel
            Width = 595
            ExplicitLeft = 315
          end
        end
        inherited dbDados: TcxGrid
          Width = 733
          Height = 381
          ExplicitWidth = 733
          ExplicitHeight = 381
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.00'
                Kind = skSum
                Column = dbDadosDBTableView1VALOR
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 55
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1DOC: TcxGridDBColumn
              DataBinding.FieldName = 'DOC'
              Width = 100
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 250
            end
            object dbDadosDBTableView1VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR'
              Width = 100
            end
            object dbDadosDBTableView1HISTDES: TcxGridDBColumn
              Caption = 'Hist'#243'rico'
              DataBinding.FieldName = 'HISTDES'
              Visible = False
              Width = 250
            end
            object dbDadosDBTableView1SERIE: TcxGridDBColumn
              DataBinding.FieldName = 'SERIE'
              Visible = False
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
            end
            object dbDadosDBTableView1OBS: TcxGridDBColumn
              DataBinding.FieldName = 'OBS'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1HISTCOD: TcxGridDBColumn
              DataBinding.FieldName = 'HISTCOD'
              Visible = False
            end
            object dbDadosDBTableView1BAIXA: TcxGridDBColumn
              DataBinding.FieldName = 'BAIXA'
              Visible = False
            end
            object dbDadosDBTableView1FORMAR: TcxGridDBColumn
              DataBinding.FieldName = 'FORMAR'
              Visible = False
            end
            object dbDadosDBTableView1EMPRECOD: TcxGridDBColumn
              DataBinding.FieldName = 'EMPRECOD'
              Visible = False
            end
            object dbDadosDBTableView1ACESOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'ACESOCOD'
              Visible = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 733
        ExplicitHeight = 467
        inherited pDados: TPanel
          Width = 733
          Height = 41
          Align = alTop
          ParentBackground = False
          ParentColor = False
          ExplicitWidth = 733
          ExplicitHeight = 41
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 0
            object DBEdit11: TDBEdit
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
          object GroupBox2: TGroupBox
            Left = 95
            Top = 5
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
            object DBEdit3: TcxDBDateEdit
              Left = 2
              Top = 10
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
              OnKeyPress = FormKeyPress
              Height = 20
              Width = 98
            end
          end
          object GroupBox3: TGroupBox
            Left = 203
            Top = 5
            Width = 148
            Height = 32
            Caption = ' Documento '
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 5
              Top = 14
              Width = 140
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DOC'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit1Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox4: TGroupBox
            Left = 357
            Top = 5
            Width = 357
            Height = 32
            Caption = ' Fornecedor '
            TabOrder = 3
            OnExit = GroupBox4Exit
            inline frmPesquisa: TfrmPesquisa
              Left = 5
              Top = 13
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
              ExplicitTop = 13
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
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 41
          Width = 733
          Height = 235
          Align = alClient
          Caption = ' Centro de custo '
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 729
            Height = 193
            Hint = '999 - sai da planilha'
            Align = alClient
            DataSource = dsDetalhe
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ShowHint = True
            TabOrder = 0
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
                FieldName = 'CTC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 13878195
                Width = 51
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'CONTA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Centro de custo/Despesa'
                Title.Color = 13878195
                Width = 283
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 13878195
                Width = 272
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Color = 13878195
                Width = 90
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 208
            Width = 729
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label4: TLabel
              Left = 567
              Top = 5
              Width = 49
              Height = 13
              Caption = 'Total...:'
              Transparent = True
              Layout = tlCenter
            end
            object DBEdit12: TDBEdit
              Left = 622
              Top = 0
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'VALOR'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnExit = DBEdit12Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 276
          Width = 733
          Height = 150
          Align = alBottom
          Caption = ' Financeiro '
          TabOrder = 2
          object Label19: TLabel
            Left = 75
            Top = 130
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total...:'
            Transparent = True
          end
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 729
            Height = 107
            Hint = '999 - sai da planilha'
            Align = alTop
            DataSource = dsFinan
            FixedColor = 15592935
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu2
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnColExit = DBGrid2ColExit
            OnEnter = DBGrid2Enter
            OnExit = DBGrid2Exit
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                Color = 15329769
                Expanded = False
                FieldName = 'PARC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Parc.'
                Title.Color = 13878195
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'DT.Vencto.'
                Title.Color = 13878195
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Parcela'
                Title.Color = 13878195
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANCOD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.'
                Title.Color = 13878195
                Width = 30
                Visible = True
              end
              item
                Color = 15329769
                Expanded = False
                FieldName = 'BANDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Conta financeira'
                Title.Color = 13878195
                Width = 197
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANDOC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Docto.N'#186
                Title.Color = 13878195
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANEMI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Emitente'
                Title.Color = 13878195
                Width = 190
                Visible = True
              end>
          end
          object DBEdit8: TDBEdit
            Left = 130
            Top = 123
            Width = 93
            Height = 21
            CharCase = ecUpperCase
            Color = 15329769
            DataField = 'ZZTotal'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnKeyDown = FormKeyDown
            OnKeyPress = FormKeyPress
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 426
          Width = 733
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 733
            Height = 41
            Align = alClient
            Caption = ' Hist'#243'rico '
            TabOrder = 0
            object DBEdit10: TDBEdit
              Left = 2
              Top = 15
              Width = 729
              Height = 24
              Align = alClient
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'HISTDES'
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
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    OnCalcFields = cdsDadosCalcFields
    Left = 546
    Top = 238
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.FIPAGA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FIPAGA.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosDOC: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'DOC'
      Origin = 'JAEADMIN.FIPAGA.DOC'
    end
    object cdsDadosVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.FIPAGA.VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.FIPAGA.DESCRICAO'
      Size = 50
    end
    object cdsDadosSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.FIPAGA.SERIE'
      Visible = False
      Size = 3
    end
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.FIPAGA.CODIGO'
      Visible = False
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.FIPAGA.OBS'
      Visible = False
      Size = 50
    end
    object cdsDadosHISTCOD: TIntegerField
      FieldName = 'HISTCOD'
      Origin = 'JAEADMIN.FIPAGA.HISTCOD'
      Visible = False
    end
    object cdsDadosHISTDES: TStringField
      FieldName = 'HISTDES'
      Origin = 'JAEADMIN.FIPAGA.HISTDES'
      Visible = False
      Size = 40
    end
    object cdsDadosBAIXA: TStringField
      FieldName = 'BAIXA'
      Origin = 'JAEADMIN.FIPAGA.BAIXA'
      Visible = False
      Size = 1
    end
    object cdsDadosFORMAR: TStringField
      FieldName = 'FORMAR'
      Origin = 'JAEADMIN.FIPAGA.FORMAR'
      Visible = False
      Size = 1
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FIPAGA.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FIPAGA.ACESOCOD'
      Visible = False
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FIPAGA.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FIPAGA.REG_ID'
      Visible = False
    end
    object cdsDadosZZTotal: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ZZTotal'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '#,0.00'
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
      'select * from fipaga where lanc = -1')
    Left = 482
    Top = 238
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.FIPAGA.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.FIPAGA.DATA'
    end
    object sqlDadosDOC: TStringField
      FieldName = 'DOC'
      Origin = 'JAEADMIN.FIPAGA.DOC'
    end
    object sqlDadosSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'JAEADMIN.FIPAGA.SERIE'
      Size = 3
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.FIPAGA.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.FIPAGA.DESCRICAO'
      Size = 50
    end
    object sqlDadosVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'JAEADMIN.FIPAGA.VALOR'
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.FIPAGA.OBS'
      Size = 50
    end
    object sqlDadosHISTCOD: TIntegerField
      FieldName = 'HISTCOD'
      Origin = 'JAEADMIN.FIPAGA.HISTCOD'
    end
    object sqlDadosHISTDES: TStringField
      FieldName = 'HISTDES'
      Origin = 'JAEADMIN.FIPAGA.HISTDES'
      Size = 40
    end
    object sqlDadosBAIXA: TStringField
      FieldName = 'BAIXA'
      Origin = 'JAEADMIN.FIPAGA.BAIXA'
      Size = 1
    end
    object sqlDadosFORMAR: TStringField
      FieldName = 'FORMAR'
      Origin = 'JAEADMIN.FIPAGA.FORMAR'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.FIPAGA.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.FIPAGA.ACESOCOD'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.FIPAGA.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.FIPAGA.REG_ID'
    end
  end
  object dsFinan: TDataSource
    DataSet = cdsFinan
    Left = 578
    Top = 312
  end
  object cdsFinan: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspFinan'
    BeforePost = cdsFinanBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 546
    Top = 312
    object cdsFinanLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsFinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFinanPARC: TIntegerField
      FieldName = 'PARC'
      Origin = 'PARC'
    end
    object cdsFinanVENCTO: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
      EditMask = '!99/99/9999;1; '
    end
    object cdsFinanVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsFinanPERC: TBCDField
      FieldName = 'PERC'
      Origin = 'PERC'
      DisplayFormat = '#,0.00'
    end
    object cdsFinanVLR: TBCDField
      FieldName = 'VLR'
      Origin = 'VLR'
      DisplayFormat = '#,0.00'
    end
    object cdsFinanCAR: TIntegerField
      FieldName = 'CAR'
      Origin = 'CAR'
    end
    object cdsFinanTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object cdsFinanBANCOD: TIntegerField
      FieldName = 'BANCOD'
      Origin = 'BANCOD'
    end
    object cdsFinanBANDOC: TStringField
      FieldName = 'BANDOC'
      Origin = 'BANDOC'
      Size = 15
    end
    object cdsFinanBANEMI: TStringField
      FieldName = 'BANEMI'
      Origin = 'BANEMI'
      Size = 50
    end
    object cdsFinanEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object cdsFinanACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object cdsFinanBANDES: TStringField
      FieldName = 'BANDES'
      Origin = 'BANDES'
    end
    object cdsFinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsFinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspFinan: TDataSetProvider
    DataSet = sqlFinan
    UpdateMode = upWhereKeyOnly
    Left = 514
    Top = 312
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
    object cdsDetalheCTC: TIntegerField
      FieldName = 'CTC'
      Origin = 'CTC'
    end
    object cdsDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object cdsDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,0.###'
    end
    object cdsDetalhePRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalheCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 60
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
  object PopupMenu2: TPopupMenu
    Left = 672
    Top = 336
    object MenuItem2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = MenuItem2Click
    end
  end
  object sqlDetalhe: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from fipagaco where lanc = -1')
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
    object sqlDetalheCTC: TIntegerField
      FieldName = 'CTC'
      Origin = 'CTC'
    end
    object sqlDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlDetalhePRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
    end
    object sqlDetalheVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlDetalheCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 60
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
  object sqlFinan: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from fipaco where lanc = -1')
    Left = 482
    Top = 311
    object sqlFinanLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlFinanLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlFinanPARC: TIntegerField
      FieldName = 'PARC'
      Origin = 'PARC'
    end
    object sqlFinanVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object sqlFinanVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object sqlFinanPERC: TBCDField
      FieldName = 'PERC'
      Origin = 'PERC'
      Precision = 18
    end
    object sqlFinanVLR: TBCDField
      FieldName = 'VLR'
      Origin = 'VLR'
      Precision = 18
    end
    object sqlFinanCAR: TIntegerField
      FieldName = 'CAR'
      Origin = 'CAR'
    end
    object sqlFinanTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object sqlFinanBANCOD: TIntegerField
      FieldName = 'BANCOD'
      Origin = 'BANCOD'
    end
    object sqlFinanBANDOC: TStringField
      FieldName = 'BANDOC'
      Origin = 'BANDOC'
      Size = 15
    end
    object sqlFinanBANEMI: TStringField
      FieldName = 'BANEMI'
      Origin = 'BANEMI'
      Size = 50
    end
    object sqlFinanEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'EMPRECOD'
    end
    object sqlFinanACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlFinanBANDES: TStringField
      FieldName = 'BANDES'
      Origin = 'BANDES'
    end
    object sqlFinanREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlFinanREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
