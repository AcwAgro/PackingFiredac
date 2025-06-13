inherited FfrmCadCategoriaCusto: TFfrmCadCategoriaCusto
  Caption = 'Cadastro Custo Categoria - Embalagem'
  ClientHeight = 472
  ClientWidth = 915
  ExplicitWidth = 921
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 456
    Width = 915
    ExplicitTop = 456
    ExplicitWidth = 915
    inherited PStatusHistorico: TPanel
      Width = 734
      ExplicitWidth = 734
    end
    inherited pnlTela: TPanel
      Left = 847
      ExplicitLeft = 847
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 905
      ExplicitLeft = 905
    end
  end
  inherited pMenu: TRzPanel
    Height = 456
    ExplicitHeight = 456
    inherited rzpMenu: TRzPanel
      Height = 352
      ExplicitHeight = 352
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 126
      end
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
    Width = 778
    Height = 456
    ExplicitWidth = 778
    ExplicitHeight = 456
    inherited pcItem: TRzPageControl
      Width = 770
      Height = 448
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 770
      ExplicitHeight = 448
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 768
        ExplicitHeight = 427
        inherited pPesquisa: TRzPanel
          Top = 361
          Width = 768
          ExplicitTop = 361
          ExplicitWidth = 768
          inherited Label1: TLabel
            Width = 760
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 647
            ExplicitLeft = 368
          end
          inherited rbPesquisa: TRzPanel
            Width = 760
            ExplicitWidth = 760
          end
          inherited edPesquisa: TMaskEdit
            Width = 643
            ExplicitWidth = 643
          end
        end
        inherited Panel2: TPanel
          Width = 768
          ExplicitWidth = 768
          inherited Label3: TLabel
            Width = 630
            ExplicitLeft = 350
          end
        end
        inherited dbDados: TcxGrid
          Width = 768
          Height = 341
          ExplicitWidth = 768
          ExplicitHeight = 341
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 768
        ExplicitHeight = 427
        inherited pDados: TPanel
          Width = 768
          Height = 427
          ExplicitWidth = 768
          ExplicitHeight = 427
          object DBGrid1: TDBGrid
            Left = 2
            Top = 43
            Width = 764
            Height = 382
            Align = alClient
            DataSource = dsCusto
            FixedColor = 14930883
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColExit = DBGrid1ColExit
            OnEnter = DBGrid1Enter
            OnExit = DBGrid1Exit
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Color = 14737632
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Color = 14273198
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 55
                Visible = True
              end
              item
                Color = 14737632
                Expanded = False
                FieldName = 'ZCATEGDES'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 14273198
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VAL1'
                Title.Alignment = taCenter
                Title.Caption = 'Custo Emb.'
                Title.Color = 14273198
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 2
            Width = 764
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              Left = 137
              Top = 18
              Width = 163
              Height = 13
              Caption = ' Custo ap'#243's Data posi'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object GroupBox12: TGroupBox
              Left = 5
              Top = 5
              Width = 126
              Height = 35
              Caption = ' Data Posi'#231#227'o  '
              TabOrder = 0
              object DBEdit11: TcxDBDateEdit
                Left = 2
                Top = 13
                Align = alBottom
                AutoSize = False
                DataBinding.DataField = 'data'
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
                Style.Font.Color = 4868682
                Style.Font.Height = -13
                Style.Font.Name = 'Segoe UI Semibold'
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
                Width = 122
              end
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 562
    object cdsDadoslanc: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'lanc'
      Origin = 'LANC'
    end
    object cdsDadosDATA: TDateField
      DisplayLabel = 'Data Posi'#231#227'o'
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsDadoscqt: TIntegerField
      FieldName = 'cqt'
      Origin = 'CQT'
      ProviderFlags = []
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 530
  end
  inherited dsDados: TDataSource
    Left = 594
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select lanc, data, count(*) as cqt'
      '  from cadcategcus '
      'group by lanc, data '
      'Order by DATA DESC')
    Left = 498
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlDadosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlDadosCQT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CQT'
      Origin = 'CQT'
      ProviderFlags = []
    end
  end
  object sqlCustox: TQuery
    DatabaseName = 'JaeAdmin'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select *'
      '  from cadcategcus '
      'where lanc = :pLanc'
      'order by codigo ')
    Left = 498
    Top = 134
    ParamData = <
      item
        DataType = ftString
        Name = 'pLanc'
        ParamType = ptUnknown
        Value = '0'
      end>
    object sqlCustoxLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.CADCATEGCUS.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlCustoxLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CADCATEGCUS.LANC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADCATEGCUS.CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CADCATEGCUS.DATA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxVAL1: TBCDField
      FieldName = 'VAL1'
      Origin = 'JAEADMIN.CADCATEGCUS.VAL1'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxVAL2: TBCDField
      FieldName = 'VAL2'
      Origin = 'JAEADMIN.CADCATEGCUS.VAL2'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxVAL3: TBCDField
      FieldName = 'VAL3'
      Origin = 'JAEADMIN.CADCATEGCUS.VAL3'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxVAL4: TBCDField
      FieldName = 'VAL4'
      Origin = 'JAEADMIN.CADCATEGCUS.VAL4'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxVAL5: TBCDField
      FieldName = 'VAL5'
      Origin = 'JAEADMIN.CADCATEGCUS.VAL5'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADCATEGCUS.ACESOCOD'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCustoxREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADCATEGCUS.REGLOG'
      Size = 1
    end
    object sqlCustoxREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADCATEGCUS.REG_ID'
    end
  end
  object dspCusto: TDataSetProvider
    DataSet = sqlCusto
    UpdateMode = upWhereKeyOnly
    Left = 610
    Top = 102
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCusto'
    BeforeInsert = cdsCustoBeforeInsert
    Left = 642
    Top = 102
    object cdsCustoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object cdsCustoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCustoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsCustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCustoVAL1: TBCDField
      FieldName = 'VAL1'
      Origin = 'VAL1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.00##'
    end
    object cdsCustoVAL2: TBCDField
      FieldName = 'VAL2'
      Origin = 'VAL2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.00##'
    end
    object cdsCustoVAL3: TBCDField
      FieldName = 'VAL3'
      Origin = 'VAL3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.00##'
    end
    object cdsCustoVAL4: TBCDField
      FieldName = 'VAL4'
      Origin = 'VAL4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.00##'
    end
    object cdsCustoVAL5: TBCDField
      FieldName = 'VAL5'
      Origin = 'VAL5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.00##'
    end
    object cdsCustoACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCustoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Visible = False
      Size = 1
    end
    object cdsCustoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsCustoZCATEGDES: TStringField
      FieldName = 'ZCATEGDES'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
  end
  object dsCusto: TDataSource
    DataSet = cdsCusto
    Left = 674
    Top = 102
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 376
    Top = 224
    object Exclui1: TMenuItem
      Tag = 3
      Caption = 'Exclui'
      ShortCut = 16430
      OnClick = Exclui1Click
    end
  end
  object sqlCusto: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select cadcategcus.*, cadcateg.descricao as zCategDes'
      '  from cadcategcus'
      ' left join cadcateg on cadcateg.codigo = cadcategcus.codigo'
      'where cadcategcus.lanc = :pLanc'
      'order by cadcategcus.codigo')
    Left = 578
    Top = 101
    ParamData = <
      item
        Name = 'PLANC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqlCustoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlCustoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlCustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlCustoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlCustoVAL1: TBCDField
      FieldName = 'VAL1'
      Origin = 'VAL1'
      Precision = 18
    end
    object sqlCustoVAL2: TBCDField
      FieldName = 'VAL2'
      Origin = 'VAL2'
      Precision = 18
    end
    object sqlCustoVAL3: TBCDField
      FieldName = 'VAL3'
      Origin = 'VAL3'
      Precision = 18
    end
    object sqlCustoVAL4: TBCDField
      FieldName = 'VAL4'
      Origin = 'VAL4'
      Precision = 18
    end
    object sqlCustoVAL5: TBCDField
      FieldName = 'VAL5'
      Origin = 'VAL5'
      Precision = 18
    end
    object sqlCustoACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'ACESOCOD'
    end
    object sqlCustoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlCustoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlCustoZCATEGDES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZCATEGDES'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
  end
end
