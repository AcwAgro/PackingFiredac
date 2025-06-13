inherited FfrmCadVariedadeCusto: TFfrmCadVariedadeCusto
  Caption = 'Cadastro Custo Variedade - Operacional'
  ClientHeight = 472
  ClientWidth = 669
  ExplicitWidth = 675
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 456
    Width = 669
    ExplicitTop = 456
    ExplicitWidth = 669
    inherited PStatusHistorico: TPanel
      Width = 488
      ExplicitWidth = 488
    end
    inherited pnlTela: TPanel
      Left = 601
      ExplicitLeft = 601
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 659
      ExplicitLeft = 659
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
    Width = 532
    Height = 456
    ExplicitWidth = 532
    ExplicitHeight = 456
    inherited pcItem: TRzPageControl
      Width = 524
      Height = 448
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 524
      ExplicitHeight = 448
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 522
        ExplicitHeight = 427
        inherited pPesquisa: TRzPanel
          Top = 361
          Width = 522
          ExplicitTop = 361
          ExplicitWidth = 522
          inherited Label1: TLabel
            Width = 514
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 401
            ExplicitLeft = 401
          end
          inherited rbPesquisa: TRzPanel
            Width = 514
            ExplicitWidth = 514
          end
          inherited edPesquisa: TMaskEdit
            Width = 397
            ExplicitWidth = 397
          end
        end
        inherited Panel2: TPanel
          Width = 522
          ExplicitWidth = 522
          inherited Label3: TLabel
            Width = 384
            ExplicitLeft = 104
          end
        end
        inherited dbDados: TcxGrid
          Width = 522
          Height = 341
          ExplicitWidth = 522
          ExplicitHeight = 341
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 522
        ExplicitHeight = 427
        inherited pDados: TPanel
          Width = 522
          Height = 427
          ExplicitWidth = 522
          ExplicitHeight = 427
          object DBGrid1: TDBGrid
            Left = 2
            Top = 43
            Width = 518
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
                Title.Caption = 'Custo Oper.'
                Title.Color = 14273198
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VAL2'
                Title.Alignment = taCenter
                Title.Caption = '% Lucro'
                Title.Color = 14273198
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 2
            Width = 518
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              Left = 136
              Top = 16
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
              Height = 32
              Caption = ' Data Posi'#231#227'o  '
              TabOrder = 0
              object DBEdit11: TcxDBDateEdit
                Left = 2
                Top = 10
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
    OnNewRecord = cdsDadosNewRecord
    Left = 562
    object cdsDadoslanc: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'lanc'
      Origin = 'LANC'
    end
    object cdsDadosdata: TSQLTimeStampField
      DisplayLabel = 'Data Posi'#231#227'o'
      FieldName = 'data'
      Origin = '"DATA"'
      EditMask = '!99/99/9999;1; '
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
      '  from cadvariecus '
      'group by lanc, data '
      'Order by DATA DESC')
    Left = 498
  end
  object dspCusto: TDataSetProvider
    DataSet = sqlCusto
    UpdateMode = upWhereKeyOnly
    Left = 530
    Top = 126
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCusto'
    BeforeInsert = cdsCustoBeforeInsert
    Left = 562
    Top = 126
    object cdsCustoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCustoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCustoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
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
    object cdsCustoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsCustoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
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
    Left = 594
    Top = 126
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
      'select cadvariecus.*, cadvarie.descricao as zCategDes'
      '  from cadvariecus '
      ' left join cadvarie on cadvarie.codigo = cadvariecus.codigo'
      'where cadvariecus.lanc = :pLanc'
      'order by cadvariecus.codigo ')
    Left = 490
    Top = 125
    ParamData = <
      item
        Name = 'PLANC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object sqlCustoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlCustoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlCustoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlCustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
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
      Required = True
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
