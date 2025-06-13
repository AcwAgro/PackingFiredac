inherited FfrmRomanFecha: TFfrmRomanFecha
  Caption = 'Fechamento de lote.'
  ClientHeight = 392
  ClientWidth = 718
  FormStyle = fsNormal
  ExplicitWidth = 724
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 376
    Width = 718
    ExplicitTop = 376
    ExplicitWidth = 718
    inherited PStatusHistorico: TPanel
      Width = 547
      ExplicitWidth = 547
    end
    inherited pnlTela: TPanel
      Left = 660
      ExplicitLeft = 660
    end
  end
  inherited pMenu: TRzPanel
    Height = 376
    ExplicitHeight = 376
    inherited rzpMenu: TRzPanel
      inherited sbEditar: TSpeedButton
        Caption = '(F3) Fechar'
      end
      inherited sbIncluir: TSpeedButton
        Visible = False
        ExplicitLeft = 1
        ExplicitTop = 10
        ExplicitWidth = 126
      end
      inherited sbExcluir: TSpeedButton
        Visible = False
      end
    end
    inherited PPeriodo: TPanel
      Top = 284
      Align = alBottom
      Visible = True
      ExplicitTop = 284
      inherited rbPeriodo: TGroupBox
        Visible = True
        inherited sbPeriodo: TSpeedButton
          Left = 2
          Top = 65
          Width = 122
          Align = alBottom
          OnClick = sbPeriodoClick
          ExplicitLeft = 2
          ExplicitTop = 65
          ExplicitWidth = 122
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 578
    Height = 376
    ExplicitWidth = 578
    ExplicitHeight = 376
    inherited pcItem: TRzPageControl
      Width = 564
      Height = 362
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 564
      ExplicitHeight = 362
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 562
        ExplicitHeight = 341
        inherited dbDados: TDBGrid
          Width = 562
          Height = 321
        end
        inherited pPesquisa: TRzPanel
          Left = 16
          Top = 69
          ExplicitLeft = 16
          ExplicitTop = 69
        end
        inherited Panel2: TPanel
          Width = 562
          ExplicitWidth = 562
          inherited Label3: TLabel
            Width = 424
            ExplicitLeft = 227
          end
        end
      end
      inherited tsDados: TRzTabSheet
        OnShow = tsDadosShow
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 562
        ExplicitHeight = 341
        inherited pDados: TPanel
          Width = 562
          Height = 341
          ExplicitWidth = 562
          ExplicitHeight = 341
          object GroupBox1: TGroupBox
            Left = 5
            Top = 69
            Width = 548
            Height = 269
            Caption = ' Fechamento '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 64
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label8: TLabel
              Left = 5
              Top = 16
              Width = 30
              Height = 13
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label9: TLabel
              Left = 100
              Top = 16
              Width = 31
              Height = 13
              Caption = 'Hora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label10: TLabel
              Left = 57
              Top = 246
              Width = 80
              Height = 13
              Caption = '(Total Bins.)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBEdit2: TDBEdit
              Left = 5
              Top = 30
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DATAFIN'
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
            end
            object dtpDataFin: TDateTimePicker
              Left = 79
              Top = 30
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
              OnChange = dtpDataFinChange
            end
            object DBEdit4: TDBEdit
              Left = 100
              Top = 30
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'HORFIM'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyDown = FormKeyDown
            end
            object DBGrid1: TDBGrid
              Left = 5
              Top = 55
              Width = 540
              Height = 185
              DataSource = dsRomanPro
              FixedColor = 13878195
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu1
              TabOrder = 3
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
                  FieldName = 'QTDEBIN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOTEENTRA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Rom.Ent.'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PESOBRU'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Caption = 'M'#233'dia Kg.'
                  Width = 65
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
                  Width = 45
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
                  Width = 206
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'PESOLIQ'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Peso Liq.'
                  Width = 83
                  Visible = True
                end>
            end
            object DBEdit5: TDBEdit
              Left = 11
              Top = 244
              Width = 43
              Height = 21
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'QTDEBIN'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              OnExit = DBEdit5Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 421
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 1
            Visible = False
            object DBEdit14: TDBEdit
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
          object GroupBox4: TGroupBox
            Left = 5
            Top = 5
            Width = 356
            Height = 32
            Caption = ' Variedade '
            Enabled = False
            TabOrder = 2
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 347
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'VARIEDES'
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
            Width = 84
            Height = 36
            Caption = ' Lote '
            Enabled = False
            TabOrder = 3
            object DBEdit15: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'LOTE'
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
          object GroupBox5: TGroupBox
            Left = 91
            Top = 36
            Width = 173
            Height = 36
            Caption = ' Abertura Data/Hora '
            Enabled = False
            TabOrder = 4
            object DBEdit16: TDBEdit
              Left = 5
              Top = 15
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'DATA'
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
            object DBEdit18: TDBEdit
              Left = 104
              Top = 15
              Width = 65
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'HORINI'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              OnKeyDown = FormKeyDown
            end
          end
        end
      end
    end
  end
  inherited sqlDados: TQuery
    SQL.Strings = (
      'select * from roman')
    Left = 514
    Top = 182
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMAN.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.ROMAN.DATA'
    end
    object sqlDadosHORINI: TStringField
      FieldName = 'HORINI'
      Origin = 'JAEADMIN.ROMAN.HORINI'
      Size = 5
    end
    object sqlDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Origin = 'JAEADMIN.ROMAN.HORFIM'
      Size = 5
    end
    object sqlDadosQTDEBIN: TFloatField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMAN.QTDEBIN'
    end
    object sqlDadosPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMAN.PESOBRU'
    end
    object sqlDadosPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMAN.PESOLIQ'
    end
    object sqlDadosDATAFIN: TDateTimeField
      FieldName = 'DATAFIN'
      Origin = 'JAEADMIN.ROMAN.DATAFIN'
    end
    object sqlDadosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'JAEADMIN.ROMAN.LOTE'
    end
    object sqlDadosPESOPRO: TFloatField
      FieldName = 'PESOPRO'
      Origin = 'JAEADMIN.ROMAN.PESOPRO'
    end
    object sqlDadosPERCA: TFloatField
      FieldName = 'PERCA'
      Origin = 'JAEADMIN.ROMAN.PERCA'
    end
    object sqlDadosPEREC: TFloatField
      FieldName = 'PEREC'
      Origin = 'JAEADMIN.ROMAN.PEREC'
    end
    object sqlDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Origin = 'JAEADMIN.ROMAN.VARIECOD'
    end
    object sqlDadosVARIEDES: TStringField
      FieldName = 'VARIEDES'
      Origin = 'JAEADMIN.ROMAN.VARIEDES'
      Size = 30
    end
    object sqlDadosFECHA: TStringField
      FieldName = 'FECHA'
      Origin = 'JAEADMIN.ROMAN.FECHA'
      Size = 1
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.ROMAN.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.ROMAN.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMAN.SAFRA'
      Size = 9
    end
    object sqlDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Origin = 'JAEPRODUCAO.ROMAN.CODLOTECLASS'
      Size = 10
    end
    object sqlDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
      Origin = 'JAEPRODUCAO.ROMAN.LOCALCOD'
    end
    object sqlDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Origin = 'JAEPRODUCAO.ROMAN.PRODUTORCOD'
    end
  end
  inherited cdsDados: TClientDataSet
    FieldDefs = <
      item
        Name = 'LANC'
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'HORINI'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'HORFIM'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QTDEBIN'
        DataType = ftFloat
      end
      item
        Name = 'PESOBRU'
        DataType = ftFloat
      end
      item
        Name = 'PESOLIQ'
        DataType = ftFloat
      end
      item
        Name = 'DATAFIN'
        DataType = ftDateTime
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
      end
      item
        Name = 'PESOPRO'
        DataType = ftFloat
      end
      item
        Name = 'PERCA'
        DataType = ftFloat
      end
      item
        Name = 'PEREC'
        DataType = ftFloat
      end
      item
        Name = 'VARIECOD'
        DataType = ftInteger
      end
      item
        Name = 'VARIEDES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FECHA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EMPRECOD'
        DataType = ftInteger
      end
      item
        Name = 'ACESOCOD'
        DataType = ftInteger
      end
      item
        Name = 'SAFRA'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CODLOTECLASS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOCALCOD'
        DataType = ftInteger
      end
      item
        Name = 'PRODUTORCOD'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsDadosIndex1'
        Fields = 'DATA'
        Options = [ixDescending]
      end>
    StoreDefs = True
    Left = 578
    Top = 182
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TDateTimeField
      DisplayLabel = 'Data Abre'
      DisplayWidth = 10
      FieldName = 'DATA'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosDATAFIN: TDateTimeField
      DisplayLabel = 'Data Fecha'
      DisplayWidth = 10
      FieldName = 'DATAFIN'
      EditMask = '99/99/9999;1; '
    end
    object cdsDadosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 6
      FieldName = 'LOTE'
    end
    object cdsDadosQTDEBIN: TFloatField
      DisplayLabel = 'Qtde.Bins'
      FieldName = 'QTDEBIN'
      DisplayFormat = '0.#'
    end
    object cdsDadosVARIEDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 15
      FieldName = 'VARIEDES'
      Size = 30
    end
    object cdsDadosFECHA: TStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHA'
      Size = 1
    end
    object cdsDadosHORINI: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORINI'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosHORFIM: TStringField
      FieldName = 'HORFIM'
      Visible = False
      EditMask = '!90:00;1; '
      Size = 5
    end
    object cdsDadosPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Visible = False
    end
    object cdsDadosPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Visible = False
    end
    object cdsDadosPESOPRO: TFloatField
      FieldName = 'PESOPRO'
      Visible = False
    end
    object cdsDadosPERCA: TFloatField
      FieldName = 'PERCA'
      Visible = False
    end
    object cdsDadosPEREC: TFloatField
      FieldName = 'PEREC'
      Visible = False
    end
    object cdsDadosVARIECOD: TIntegerField
      FieldName = 'VARIECOD'
      Visible = False
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
    object cdsDadosCODLOTECLASS: TStringField
      FieldName = 'CODLOTECLASS'
      Visible = False
      Size = 10
    end
    object cdsDadosLOCALCOD: TIntegerField
      FieldName = 'LOCALCOD'
      Visible = False
    end
    object cdsDadosPRODUTORCOD: TIntegerField
      FieldName = 'PRODUTORCOD'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 546
    Top = 182
  end
  inherited dsDados: TDataSource
    Left = 610
    Top = 182
  end
  object dsRomanMer: TDataSource
    DataSet = cdsRomanMer
    Left = 610
    Top = 246
  end
  object cdsRomanMer: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMer'
    AfterOpen = cdsDadosAfterOpen
    OnReconcileError = cdsDadosReconcileError
    AfterApplyUpdates = cdsDadosAfterApplyUpdates
    Left = 578
    Top = 246
    object cdsRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanMerLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 40
    end
    object cdsRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object cdsRomanMerQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
    end
    object cdsRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
    end
    object cdsRomanMerPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
    end
    object cdsRomanMerPESOREAL: TFloatField
      FieldName = 'PESOREAL'
    end
    object cdsRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
    object cdsRomanMerLANCMANUAL: TStringField
      FieldName = 'LANCMANUAL'
      Size = 1
    end
  end
  object dspRomanMer: TDataSetProvider
    DataSet = sqlRomanMer
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 246
  end
  object sqlRomanMer: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from romanmer'
      'where lancit > 0')
    Left = 514
    Top = 246
    object sqlRomanMerLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.ROMANMER.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlRomanMerLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMANMER.LANC'
    end
    object sqlRomanMerPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ROMANMER.PRODCOD'
    end
    object sqlRomanMerPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ROMANMER.PRODDES'
      Size = 40
    end
    object sqlRomanMerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.ROMANMER.UNIDADE'
      Size = 2
    end
    object sqlRomanMerQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.ROMANMER.QTDE'
    end
    object sqlRomanMerCODIAUX: TIntegerField
      FieldName = 'CODIAUX'
      Origin = 'JAEADMIN.ROMANMER.CODIAUX'
    end
    object sqlRomanMerCALIBRE: TIntegerField
      FieldName = 'CALIBRE'
      Origin = 'JAEADMIN.ROMANMER.CALIBRE'
    end
    object sqlRomanMerPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMANMER.PESOLIQ'
    end
    object sqlRomanMerPESOREAL: TFloatField
      FieldName = 'PESOREAL'
      Origin = 'JAEADMIN.ROMANMER.PESOREAL'
    end
    object sqlRomanMerSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMANMER.SAFRA'
      Size = 9
    end
    object sqlRomanMerLANCMANUAL: TStringField
      FieldName = 'LANCMANUAL'
      Origin = 'JAEPRODUCAO.ROMANMER.LANCMANUAL'
      Size = 1
    end
  end
  object dsRomanPro: TDataSource
    DataSet = cdsRomanPro
    Left = 610
    Top = 214
  end
  object cdsRomanPro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanPro'
    AfterOpen = cdsDadosAfterOpen
    BeforePost = cdsRomanProBeforePost
    OnReconcileError = cdsDadosReconcileError
    AfterApplyUpdates = cdsDadosAfterApplyUpdates
    Left = 578
    Top = 214
    object cdsRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanProLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 40
    end
    object cdsRomanProQTDEBIN: TFloatField
      FieldName = 'QTDEBIN'
      DisplayFormat = '0.##'
    end
    object cdsRomanProPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      DisplayFormat = '0.##'
    end
    object cdsRomanProPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      DisplayFormat = '0.##'
    end
    object cdsRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
    end
    object cdsRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Size = 9
    end
  end
  object dspRomanPro: TDataSetProvider
    DataSet = sqlRomanPro
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 214
  end
  object sqlRomanPro: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from romanpro'
      'where lancit > 0')
    Left = 514
    Top = 214
    object sqlRomanProLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.ROMANPRO.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlRomanProLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.ROMANPRO.LANC'
    end
    object sqlRomanProPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEADMIN.ROMANPRO.PRODCOD'
    end
    object sqlRomanProPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEADMIN.ROMANPRO.PRODDES'
      Size = 40
    end
    object sqlRomanProQTDEBIN: TFloatField
      FieldName = 'QTDEBIN'
      Origin = 'JAEADMIN.ROMANPRO.QTDEBIN'
    end
    object sqlRomanProPESOBRU: TFloatField
      FieldName = 'PESOBRU'
      Origin = 'JAEADMIN.ROMANPRO.PESOBRU'
    end
    object sqlRomanProPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      Origin = 'JAEADMIN.ROMANPRO.PESOLIQ'
    end
    object sqlRomanProLOTEENTRA: TIntegerField
      FieldName = 'LOTEENTRA'
      Origin = 'JAEADMIN.ROMANPRO.LOTEENTRA'
    end
    object sqlRomanProSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.ROMANPRO.SAFRA'
      Size = 9
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 657
    Top = 264
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = Inserir1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object dsRomanEmb: TDataSource
    DataSet = cdsRomanEmb
    Left = 610
    Top = 278
  end
  object cdsRomanEmb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanEmb'
    OnReconcileError = cdsDadosReconcileError
    Left = 578
    Top = 278
    object cdsRomanEmbLANCIT: TIntegerField
      FieldName = 'LANCIT'
    end
    object cdsRomanEmbLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsRomanEmbEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
    end
    object cdsRomanEmbEMBALDES: TStringField
      FieldName = 'EMBALDES'
      Size = 30
    end
    object cdsRomanEmbPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanEmbPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 50
    end
    object cdsRomanEmbQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsRomanEmbDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object cdsRomanEmbEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object cdsRomanEmbACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
  end
  object dspRomanEmb: TDataSetProvider
    DataSet = sqlRomanEmb
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 278
  end
  object sqlRomanEmb: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from romanembal'
      'where lancit > 0'
      'order by embalcod, prodcod')
    Left = 514
    Top = 278
    object sqlRomanEmbLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.LANCIT'
    end
    object sqlRomanEmbLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.LANC'
    end
    object sqlRomanEmbEMBALCOD: TIntegerField
      FieldName = 'EMBALCOD'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.EMBALCOD'
    end
    object sqlRomanEmbEMBALDES: TStringField
      FieldName = 'EMBALDES'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.EMBALDES'
      Size = 30
    end
    object sqlRomanEmbPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.PRODCOD'
    end
    object sqlRomanEmbPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.PRODDES'
      Size = 50
    end
    object sqlRomanEmbQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.QTDE'
    end
    object sqlRomanEmbDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.DATA'
    end
    object sqlRomanEmbEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.EMPRECOD'
    end
    object sqlRomanEmbACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEPRODUCAO.ROMANEMBAL.ACESOCOD'
    end
  end
  object dsRomanMar: TDataSource
    DataSet = cdsRomanMar
    Left = 610
    Top = 311
  end
  object cdsRomanMar: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterFields = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspRomanMar'
    OnReconcileError = cdsDadosReconcileError
    Left = 578
    Top = 311
    object cdsRomanMarLANCIT: TIntegerField
      FieldName = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRomanMarLANC: TIntegerField
      FieldName = 'LANC'
    end
    object cdsRomanMarMARCACOD: TIntegerField
      FieldName = 'MARCACOD'
    end
    object cdsRomanMarMARCADES: TStringField
      FieldName = 'MARCADES'
      Size = 30
    end
    object cdsRomanMarPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
    end
    object cdsRomanMarPRODDES: TStringField
      FieldName = 'PRODDES'
      Size = 50
    end
    object cdsRomanMarQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsRomanMarDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object cdsRomanMarEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object cdsRomanMarACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
  end
  object dspRomanMar: TDataSetProvider
    DataSet = sqlRomanMar
    UpdateMode = upWhereKeyOnly
    Left = 546
    Top = 311
  end
  object sqlRomanMar: TQuery
    DatabaseName = 'JaeProducao'
    SessionName = 'Sesao1'
    SQL.Strings = (
      'select * from romanmarca'
      'where lancit > 0'
      'order by marcacod, prodcod')
    Left = 514
    Top = 311
    object sqlRomanMarLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEPRODUCAO.ROMANMARCA.LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlRomanMarLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEPRODUCAO.ROMANMARCA.LANC'
    end
    object sqlRomanMarMARCACOD: TIntegerField
      FieldName = 'MARCACOD'
      Origin = 'JAEPRODUCAO.ROMANMARCA.MARCACOD'
    end
    object sqlRomanMarMARCADES: TStringField
      FieldName = 'MARCADES'
      Origin = 'JAEPRODUCAO.ROMANMARCA.MARCADES'
      Size = 30
    end
    object sqlRomanMarPRODCOD: TIntegerField
      FieldName = 'PRODCOD'
      Origin = 'JAEPRODUCAO.ROMANMARCA.PRODCOD'
    end
    object sqlRomanMarPRODDES: TStringField
      FieldName = 'PRODDES'
      Origin = 'JAEPRODUCAO.ROMANMARCA.PRODDES'
      Size = 50
    end
    object sqlRomanMarQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'JAEPRODUCAO.ROMANMARCA.QTDE'
    end
    object sqlRomanMarDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'JAEPRODUCAO.ROMANMARCA.DATA'
    end
    object sqlRomanMarEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEPRODUCAO.ROMANMARCA.EMPRECOD'
    end
    object sqlRomanMarACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEPRODUCAO.ROMANMARCA.ACESOCOD'
    end
  end
end
