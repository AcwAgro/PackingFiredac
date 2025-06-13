inherited FfrmEsteira: TFfrmEsteira
  Caption = 'Comparativo movimento Esteira/Etiquetas - Classifica'#231#227'o'
  ClientHeight = 466
  ClientWidth = 1048
  ExplicitWidth = 1054
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 450
    Width = 1048
    ExplicitTop = 450
    ExplicitWidth = 1048
    inherited PStatusHistorico: TPanel
      Width = 867
      ExplicitWidth = 867
    end
    inherited pnlTela: TPanel
      Left = 990
      ExplicitLeft = 990
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 980
      ExplicitLeft = 980
    end
  end
  inherited pMenu: TRzPanel
    Height = 450
    ExplicitHeight = 450
    inherited rzpMenu: TRzPanel
      Height = 346
      ExplicitHeight = 346
      inherited sbEditar: TSpeedButton
        Top = 57
        Visible = False
        ExplicitTop = 57
      end
      inherited sbIncluir: TSpeedButton
        Height = 41
        Visible = False
        ExplicitWidth = 126
        ExplicitHeight = 41
      end
      inherited sbExcluir: TSpeedButton
        Top = 97
        Visible = False
        ExplicitTop = 97
      end
      inherited sbAnterior: TSpeedButton
        Top = 137
        Visible = False
        ExplicitTop = 137
      end
      inherited sbProximo: TSpeedButton
        Top = 177
        Visible = False
        ExplicitTop = 177
      end
      inherited rzpUtil: TRzPanel
        Top = 217
        ExplicitTop = 217
        inherited sbImprimir: TSpeedButton
          OnClick = sbImprimirClick
        end
      end
      inherited rbgAtivo: TRadioGroup
        Top = 226
        ExplicitTop = 226
      end
      inherited PPeriodo: TPanel
        Top = 266
        ExplicitTop = 266
        inherited sbPeriodo: TSpeedButton
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
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 911
    Height = 450
    ExplicitWidth = 911
    ExplicitHeight = 450
    inherited pcItem: TRzPageControl
      Width = 903
      Height = 442
      ExplicitWidth = 903
      ExplicitHeight = 442
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 901
        ExplicitHeight = 421
        object lbTables: TListBox [0]
          Left = 0
          Top = 20
          Width = 901
          Height = 36
          Align = alTop
          ItemHeight = 13
          TabOrder = 3
          Visible = False
        end
        inherited Panel2: TPanel [1]
          Width = 901
          Visible = False
          ExplicitWidth = 901
          inherited Label3: TLabel
            Width = 763
            ExplicitLeft = 483
          end
        end
        inherited dbDados: TcxGrid [2]
          Top = 391
          Width = 901
          Height = 30
          Align = alBottom
          Visible = False
          ExplicitTop = 391
          ExplicitWidth = 901
          ExplicitHeight = 30
        end
        inherited pPesquisa: TRzPanel [3]
          Top = 325
          Width = 901
          ExplicitTop = 325
          ExplicitWidth = 901
          inherited Label1: TLabel
            Width = 893
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 780
            ExplicitLeft = 780
          end
          inherited rbPesquisa: TRzPanel
            Width = 893
            ExplicitWidth = 893
          end
          inherited edPesquisa: TMaskEdit
            Width = 776
            ExplicitWidth = 776
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 56
          Width = 901
          Height = 269
          Align = alClient
          TabOrder = 4
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 440
            Height = 267
            Align = alLeft
            BevelInner = bvRaised
            TabOrder = 0
            object Label6: TLabel
              Left = 2
              Top = 2
              Width = 436
              Height = 18
              Align = alTop
              Alignment = taCenter
              Caption = 'Esteira/etiquetas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 154
            end
            object dbTabela: TDBGrid
              Left = 2
              Top = 20
              Width = 436
              Height = 110
              Align = alTop
              Color = clWhite
              DataSource = dsTabela
              FixedColor = 14273198
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Registro'
                  Title.Alignment = taCenter
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Lote'
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Variedade'
                  Title.Alignment = taCenter
                  Width = 200
                  Visible = True
                end>
            end
            object DBGrid1: TDBGrid
              Left = 2
              Top = 130
              Width = 436
              Height = 135
              Align = alClient
              Color = clWhite
              DataSource = dsDados
              FixedColor = 14273198
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Title.Alignment = taCenter
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VQTDE'
                  Title.Alignment = taCenter
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Alignment = taCenter
                  Width = 290
                  Visible = True
                end>
            end
          end
          object Panel4: TPanel
            Left = 441
            Top = 1
            Width = 440
            Height = 267
            Align = alLeft
            BevelInner = bvRaised
            TabOrder = 1
            object Label7: TLabel
              Left = 2
              Top = 2
              Width = 436
              Height = 18
              Align = alTop
              Alignment = taCenter
              Caption = 'Classifica'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 111
            end
            object DBGrid2: TDBGrid
              Left = 2
              Top = 20
              Width = 436
              Height = 110
              Align = alTop
              DataSource = dsRomanPro
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'LOTE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Lote'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Caption = 'Data'
                  Title.Color = 13878195
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDEBIN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Title.Color = 13878195
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODCOD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Color = 13878195
                  Width = 44
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PRODDES'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Produtor'
                  Title.Color = 13878195
                  Width = 190
                  Visible = True
                end>
            end
            object DBGrid3: TDBGrid
              Left = 2
              Top = 130
              Width = 436
              Height = 135
              Hint = '999 - sai da planilha'
              Align = alClient
              DataSource = dsRomanMer
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRODCOD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Color = 13878195
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Title.Color = 13878195
                  Width = 40
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PRODDES'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Produto/Mercadoria'
                  Title.Color = 13878195
                  Width = 290
                  Visible = True
                end>
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        TabVisible = False
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 901
        ExplicitHeight = 421
        inherited pDados: TPanel
          Width = 901
          Height = 41
          Align = alTop
          Visible = False
          ExplicitWidth = 901
          ExplicitHeight = 41
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VQTDE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cdsDadosIndex1'
        Fields = 'codigo'
      end>
    IndexFieldNames = 'codigo'
    StoreDefs = True
    AfterOpen = nil
    BeforeClose = nil
    AfterCancel = nil
    OnReconcileError = nil
    Left = 418
    Top = 222
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEESTEIRA.ESTEIRAV00L0000.CODIGO'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'JAEESTEIRA.ESTEIRAV00L0000.DESCRICAO'
      Size = 50
    end
    object cdsDadosVQTDE: TBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'VQTDE'
      Origin = 'JAEESTEIRA.ESTEIRAV00L0000.QTDE'
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 386
    Top = 222
  end
  inherited dsDados: TDataSource
    Left = 450
    Top = 222
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, SUM(QTDE) AS VQTDE'
      'FROM ESTEIRAC001 '
      'GROUP BY CODIGO, DESCRICAO'
      'ORDER BY CODIGO')
    Left = 354
    Top = 222
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEESTEIRA.ESTEIRAV00L0000.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEESTEIRA.ESTEIRAV00L0000.DESCRICAO'
      Size = 50
    end
    object sqlDadosVQTDE: TBCDField
      FieldName = 'VQTDE'
      Origin = 'JAEESTEIRA.ESTEIRAV00L0000.QTDE'
    end
  end
  object cdsTabela: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsTabelaAfterScroll
    Left = 416
    Top = 136
    object cdsTabelaRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object cdsTabelaVariedade: TStringField
      FieldName = 'Variedade'
      Size = 50
    end
    object cdsTabelatabela: TStringField
      FieldName = 'tabela'
      Size = 15
    end
    object cdsTabelaLote: TIntegerField
      FieldName = 'Lote'
    end
    object cdsTabelaData: TDateField
      FieldName = 'Data'
    end
    object cdsTabelaProdDes: TStringField
      FieldName = 'ProdDes'
      Size = 600
    end
  end
  object dsTabela: TDataSource
    DataSet = cdsTabela
    Left = 448
    Top = 136
  end
  object dspRomanMer: TDataSetProvider
    DataSet = sqlRomanMer
    UpdateMode = upWhereKeyOnly
    Left = 810
    Top = 262
  end
  object cdsRomanMer: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LANCIT'
        DataType = ftInteger
      end
      item
        Name = 'LANC'
        DataType = ftInteger
      end
      item
        Name = 'PRODCOD'
        DataType = ftInteger
      end
      item
        Name = 'PRODDES'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CODIAUX'
        DataType = ftInteger
      end
      item
        Name = 'CALIBRE'
        DataType = ftInteger
      end
      item
        Name = 'PESOLIQ'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PESOREAL'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'SAFRA'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'LANCMANUAL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REGLOG'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'REG_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsRomanMerIndex1'
        Fields = 'prodcod'
      end>
    IndexFieldNames = 'prodcod'
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMer'
    StoreDefs = True
    Left = 842
    Top = 262
    object cdsRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.ROMANMER.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMANMER.LANC'
    end
    object cdsRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ROMANMER.PRODCOD'
    end
    object cdsRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ROMANMER.PRODDES'
      Size = 40
    end
    object cdsRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.ROMANMER.UNIDADE'
      Size = 2
    end
    object cdsRomanMerQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.ROMANMER.QTDE'
    end
    object cdsRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'JAEADMIN.ROMANMER.CODIAUX'
    end
    object cdsRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.ROMANMER.CALIBRE'
    end
    object cdsRomanMerPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMANMER.PESOLIQ'
      DisplayFormat = '#,0.##'
    end
    object cdsRomanMerPESOREAL: TBCDField
      FieldName = 'PESOREAL'
      Origin = 'JAEADMIN.ROMANMER.PESOREAL'
      DisplayFormat = '#,0.##'
    end
    object cdsRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMANMER.SAFRA'
      Size = 9
    end
  end
  object dsRomanMer: TDataSource
    DataSet = cdsRomanMer
    Left = 874
    Top = 262
  end
  object dsRomanPro: TDataSource
    DataSet = cdsRomanPro
    Left = 874
    Top = 230
  end
  object cdsRomanPro: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanPro'
    Left = 842
    Top = 230
  end
  object dspRomanPro: TDataSetProvider
    DataSet = sqlRomanPro
    UpdateMode = upWhereKeyOnly
    Left = 810
    Top = 230
  end
  object sqlRomanPro: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select rr.lote, rr.data, rp.qtdebin, rp.prodcod, rp.proddes '
      '  from roman rr'
      'inner join romanpro rp on rp.lanc = rr.lanc  '
      ' where rr.lanc = :vLanc')
    Left = 770
    Top = 230
    ParamData = <
      item
        Name = 'VLANC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqlRomanProLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object sqlRomanProDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlRomanProQTDEBIN: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDEBIN'
      Origin = 'QTDEBIN'
      ProviderFlags = []
      Precision = 18
    end
    object sqlRomanProPRODCOD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
      ProviderFlags = []
    end
    object sqlRomanProPRODDES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      ProviderFlags = []
      Size = 40
    end
  end
  object sqlRomanMer: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select *'
      ' from romanmer'
      'where lanc = :vlanc'
      'order by prodcod')
    Left = 770
    Top = 262
    ParamData = <
      item
        Name = 'VLANC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqlRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'PRODCOD'
    end
    object sqlRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'PRODDES'
      Size = 40
    end
    object sqlRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object sqlRomanMerQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object sqlRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'CODIAUX'
    end
    object sqlRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'CALIBRE'
    end
    object sqlRomanMerPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Origin = 'PESOLIQ'
      Precision = 18
    end
    object sqlRomanMerPESOREAL: TBCDField
      FieldName = 'PESOREAL'
      Origin = 'PESOREAL'
      Precision = 18
    end
    object sqlRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object sqlRomanMerLANCMANUAL: TStringField
      FieldName = 'LANCMANUAL'
      Origin = 'LANCMANUAL'
      Size = 1
    end
    object sqlRomanMerREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlRomanMerREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
