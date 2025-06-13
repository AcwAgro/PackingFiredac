inherited FfrmDefeito: TFfrmDefeito
  Caption = 'Controle de qualidade'
  ClientHeight = 556
  ClientWidth = 1034
  ExplicitWidth = 1040
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 540
    Width = 1034
    ExplicitTop = 540
    ExplicitWidth = 1034
    inherited PStatusHistorico: TPanel
      Width = 853
      ExplicitWidth = 853
    end
    inherited pnlTela: TPanel
      Left = 976
      ExplicitLeft = 976
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 966
      ExplicitLeft = 966
    end
  end
  inherited pMenu: TRzPanel
    Height = 540
    ExplicitHeight = 540
    inherited rzpMenu: TRzPanel
      Height = 436
      ExplicitHeight = 436
      inherited rbgAtivo: TRadioGroup
        Top = 316
        ExplicitTop = 316
      end
      inherited PPeriodo: TPanel
        Top = 356
        ExplicitTop = 356
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
    Width = 897
    Height = 540
    ExplicitWidth = 897
    ExplicitHeight = 540
    inherited pcItem: TRzPageControl
      Width = 889
      Height = 532
      OnChange = pcItemChange
      ExplicitWidth = 889
      ExplicitHeight = 532
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 887
        ExplicitHeight = 511
        inherited pPesquisa: TRzPanel
          Top = 445
          Width = 887
          ExplicitTop = 445
          ExplicitWidth = 887
          inherited Label1: TLabel
            Width = 879
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 766
            ExplicitLeft = 376
          end
          inherited rbPesquisa: TRzPanel
            Width = 879
            ExplicitWidth = 879
          end
          inherited edPesquisa: TMaskEdit
            Width = 762
            ExplicitWidth = 762
          end
        end
        inherited Panel2: TPanel
          Width = 887
          ExplicitWidth = 887
          inherited Label3: TLabel
            Width = 749
            ExplicitLeft = 469
          end
        end
        inherited dbDados: TcxGrid
          Width = 887
          Height = 425
          ExplicitLeft = 1
          ExplicitTop = 18
          ExplicitWidth = 887
          ExplicitHeight = 425
          inherited dbDadosDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1QTDE
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1MIUDA
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1MEDIA
              end
              item
                Format = '#,0.###'
                Kind = skSum
                Column = dbDadosDBTableView1GRAUDA
              end>
            OptionsView.Footer = True
            object dbDadosDBTableView1REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'REGISTRO'
              Width = 70
            end
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1VARDES: TcxGridDBColumn
              DataBinding.FieldName = 'VARDES'
              Width = 200
            end
            object dbDadosDBTableView1FORDES: TcxGridDBColumn
              DataBinding.FieldName = 'FORDES'
              Width = 200
            end
            object dbDadosDBTableView1QTDE: TcxGridDBColumn
              DataBinding.FieldName = 'QTDE'
            end
            object dbDadosDBTableView1GRAUDA: TcxGridDBColumn
              DataBinding.FieldName = 'GRAUDA'
            end
            object dbDadosDBTableView1MEDIA: TcxGridDBColumn
              DataBinding.FieldName = 'MEDIA'
            end
            object dbDadosDBTableView1MIUDA: TcxGridDBColumn
              DataBinding.FieldName = 'MIUDA'
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
            end
            object dbDadosDBTableView1SAFRA: TcxGridDBColumn
              DataBinding.FieldName = 'SAFRA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FORCOD: TcxGridDBColumn
              DataBinding.FieldName = 'FORCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1VARCOD: TcxGridDBColumn
              DataBinding.FieldName = 'VARCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1AMIDO: TcxGridDBColumn
              DataBinding.FieldName = 'AMIDO'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SST: TcxGridDBColumn
              DataBinding.FieldName = 'SST'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1FIRME: TcxGridDBColumn
              DataBinding.FieldName = 'FIRME'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1GRANDE: TcxGridDBColumn
              DataBinding.FieldName = 'GRANDE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PEQUENA: TcxGridDBColumn
              DataBinding.FieldName = 'PEQUENA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TIPOCOD: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCOD'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1TIPODES: TcxGridDBColumn
              DataBinding.FieldName = 'TIPODES'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ACIDEZ: TcxGridDBColumn
              DataBinding.FieldName = 'ACIDEZ'
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
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 887
        ExplicitHeight = 511
        inherited pDados: TPanel
          Width = 887
          Height = 135
          Align = alTop
          ExplicitWidth = 887
          ExplicitHeight = 135
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
            Left = 5
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
            TabStop = True
            object DBEdit3: TcxDBDateEdit
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
          object GroupBox3: TGroupBox
            Left = 109
            Top = 36
            Width = 100
            Height = 32
            Caption = ' Entrada n'#186' '
            TabOrder = 2
            TabStop = True
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 86
              Height = 14
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 15329769
              DataField = 'REGISTRO'
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
            Left = 5
            Top = 67
            Width = 356
            Height = 32
            Caption = ' Produtor '
            TabOrder = 3
            inline frmPesquisaPro: TfrmPesquisa
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
          object GroupBox5: TGroupBox
            Left = 5
            Top = 98
            Width = 356
            Height = 32
            Caption = ' Variedade '
            TabOrder = 4
            inline frmPesquisaVar: TfrmPesquisa
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
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 135
          Width = 887
          Height = 376
          ActivePage = tab_entrada
          Align = alClient
          TabOrder = 1
          object tab_entrada: TTabSheet
            Caption = 'Defeitos'
            object Label10: TLabel
              Left = 51
              Top = 360
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
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 879
              Height = 303
              Align = alClient
              DataSource = dsDetalhe
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = PopupMenu1
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
                  FieldName = 'QTDE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Title.Color = 13878195
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DEFCOD'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Color = 13878195
                  Width = 51
                  Visible = True
                end
                item
                  Color = 15329769
                  Expanded = False
                  FieldName = 'DEFDES'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Defeito'
                  Title.Color = 13878195
                  Width = 327
                  Visible = True
                end>
            end
            object Panel1: TPanel
              Left = 0
              Top = 303
              Width = 879
              Height = 45
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object Label14: TLabel
                Left = 261
                Top = 3
                Width = 76
                Height = 13
                Caption = 'Qtde.Frutos'
                Transparent = True
              end
              object Label13: TLabel
                Left = 176
                Top = 3
                Width = 38
                Height = 13
                Caption = 'Mi'#250'da'
                Transparent = True
              end
              object Label9: TLabel
                Left = 92
                Top = 3
                Width = 38
                Height = 13
                Caption = 'M'#233'dia'
                Transparent = True
              end
              object Label7: TLabel
                Left = 8
                Top = 3
                Width = 47
                Height = 13
                Caption = 'Gra'#250'da'
                Transparent = True
              end
              object DBEdit12: TDBEdit
                Left = 261
                Top = 17
                Width = 75
                Height = 21
                CharCase = ecUpperCase
                Color = 15329769
                DataField = 'QTDE'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
                OnExit = DBEdit12Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
              object DBEdit7: TDBEdit
                Left = 176
                Top = 17
                Width = 75
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'MIUDA'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnExit = DBEdit6Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
              object DBEdit9: TDBEdit
                Left = 92
                Top = 17
                Width = 75
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'MEDIA'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnExit = DBEdit6Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
              object DBEdit6: TDBEdit
                Left = 8
                Top = 17
                Width = 75
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'GRAUDA'
                DataSource = dsDados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit6Exit
                OnKeyDown = FormKeyDown
                OnKeyPress = FormKeyPress
              end
            end
          end
          object tab_Classi: TTabSheet
            Caption = 'Acidez'
            ImageIndex = 1
            object DBGrid2: TDBGrid
              Left = 5
              Top = 3
              Width = 472
              Height = 230
              DataSource = dsSegmento
              FixedColor = 15592935
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMenu2
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
                  FieldName = 'IODO'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Item'
                  Title.Color = 13878195
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AMIDO'
                  Title.Alignment = taCenter
                  Title.Caption = 'IODO'
                  Title.Color = 13878195
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SST'
                  Title.Alignment = taCenter
                  Title.Caption = 'S.S.T.(Brix)'
                  Title.Color = 13878195
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FIRME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Press'#227'o (LBS)'
                  Title.Color = 13878195
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 562
    object cdsDadosREGISTRO: TIntegerField
      DisplayLabel = 'Entrada n'#186
      DisplayWidth = 6
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.CONT.REGISTRO'
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CONT.DATA'
      EditMask = '!99/99/9999;1; '
    end
    object cdsDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CONT.TIPO'
      Visible = False
      Size = 1
    end
    object cdsDadosFORCOD: TIntegerField
      FieldName = 'FORCOD'
      Origin = 'JAEADMIN.CONT.FORCOD'
      Visible = False
    end
    object cdsDadosFORDES: TStringField
      DisplayLabel = 'Produtor'
      DisplayWidth = 20
      FieldName = 'FORDES'
      Origin = 'JAEADMIN.CONT.FORDES'
      Size = 50
    end
    object cdsDadosVARCOD: TIntegerField
      FieldName = 'VARCOD'
      Origin = 'JAEADMIN.CONT.VARCOD'
      Visible = False
    end
    object cdsDadosVARDES: TStringField
      DisplayLabel = 'Variedade'
      DisplayWidth = 20
      FieldName = 'VARDES'
      Origin = 'JAEADMIN.CONT.VARDES'
      Size = 30
    end
    object cdsDadosQTDE: TBCDField
      DisplayLabel = 'Qtde.Total'
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.CONT.QTDE'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosAMIDO: TBCDField
      DisplayLabel = 'Amido'
      FieldName = 'AMIDO'
      Origin = 'JAEADMIN.CONT.AMIDO'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosSST: TBCDField
      FieldName = 'SST'
      Origin = 'JAEADMIN.CONT.SST'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosFIRME: TBCDField
      FieldName = 'FIRME'
      Origin = 'JAEADMIN.CONT.FIRME'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosGRANDE: TBCDField
      FieldName = 'GRANDE'
      Origin = 'JAEADMIN.CONT.GRANDE'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosGRAUDA: TBCDField
      DisplayLabel = 'Gra'#250'da'
      FieldName = 'GRAUDA'
      Origin = 'JAEADMIN.CONT.GRAUDA'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosMEDIA: TBCDField
      DisplayLabel = 'M'#233'dia'
      FieldName = 'MEDIA'
      Origin = 'JAEADMIN.CONT.MEDIA'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosMIUDA: TBCDField
      DisplayLabel = 'Mi'#250'da'
      FieldName = 'MIUDA'
      Origin = 'JAEADMIN.CONT.MIUDA'
      DisplayFormat = '#,0.###'
    end
    object cdsDadosPEQUENA: TBCDField
      FieldName = 'PEQUENA'
      Origin = 'JAEADMIN.CONT.PEQUENA'
      Visible = False
      DisplayFormat = '#,0.###'
    end
    object cdsDadosTIPOCOD: TIntegerField
      FieldName = 'TIPOCOD'
      Origin = 'JAEADMIN.CONT.TIPOCOD'
      Visible = False
    end
    object cdsDadosTIPODES: TStringField
      FieldName = 'TIPODES'
      Origin = 'JAEADMIN.CONT.TIPODES'
      Visible = False
    end
    object cdsDadosACIDEZ: TBCDField
      FieldName = 'ACIDEZ'
      Origin = 'JAEADMIN.CONT.ACIDEZ'
      Visible = False
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CONT.EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CONT.ACESOCOD'
      Visible = False
    end
    object cdsDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.CONT.SAFRA'
      Visible = False
      Size = 9
    end
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      DisplayWidth = 6
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CONT.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CONT.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CONT.REG_ID'
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 530
  end
  inherited dsDados: TDataSource
    Left = 594
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from cont where lanc = -1'
      '')
    Left = 498
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.CONT.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'JAEADMIN.CONT.REGISTRO'
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.CONT.DATA'
    end
    object sqlDadosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'JAEADMIN.CONT.TIPO'
      Size = 1
    end
    object sqlDadosFORCOD: TIntegerField
      FieldName = 'FORCOD'
      Origin = 'JAEADMIN.CONT.FORCOD'
    end
    object sqlDadosFORDES: TStringField
      FieldName = 'FORDES'
      Origin = 'JAEADMIN.CONT.FORDES'
      Size = 50
    end
    object sqlDadosVARCOD: TIntegerField
      FieldName = 'VARCOD'
      Origin = 'JAEADMIN.CONT.VARCOD'
    end
    object sqlDadosVARDES: TStringField
      FieldName = 'VARDES'
      Origin = 'JAEADMIN.CONT.VARDES'
      Size = 30
    end
    object sqlDadosQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'JAEADMIN.CONT.QTDE'
    end
    object sqlDadosAMIDO: TBCDField
      FieldName = 'AMIDO'
      Origin = 'JAEADMIN.CONT.AMIDO'
    end
    object sqlDadosSST: TBCDField
      FieldName = 'SST'
      Origin = 'JAEADMIN.CONT.SST'
    end
    object sqlDadosFIRME: TBCDField
      FieldName = 'FIRME'
      Origin = 'JAEADMIN.CONT.FIRME'
    end
    object sqlDadosGRANDE: TBCDField
      FieldName = 'GRANDE'
      Origin = 'JAEADMIN.CONT.GRANDE'
    end
    object sqlDadosGRAUDA: TBCDField
      FieldName = 'GRAUDA'
      Origin = 'JAEADMIN.CONT.GRAUDA'
    end
    object sqlDadosMEDIA: TBCDField
      FieldName = 'MEDIA'
      Origin = 'JAEADMIN.CONT.MEDIA'
    end
    object sqlDadosMIUDA: TBCDField
      FieldName = 'MIUDA'
      Origin = 'JAEADMIN.CONT.MIUDA'
    end
    object sqlDadosPEQUENA: TBCDField
      FieldName = 'PEQUENA'
      Origin = 'JAEADMIN.CONT.PEQUENA'
    end
    object sqlDadosTIPOCOD: TIntegerField
      FieldName = 'TIPOCOD'
      Origin = 'JAEADMIN.CONT.TIPOCOD'
    end
    object sqlDadosTIPODES: TStringField
      FieldName = 'TIPODES'
      Origin = 'JAEADMIN.CONT.TIPODES'
    end
    object sqlDadosACIDEZ: TBCDField
      FieldName = 'ACIDEZ'
      Origin = 'JAEADMIN.CONT.ACIDEZ'
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CONT.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CONT.ACESOCOD'
    end
    object sqlDadosSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'JAEADMIN.CONT.SAFRA'
      Size = 9
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CONT.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CONT.REG_ID'
    end
  end
  object dsSegmento: TDataSource
    DataSet = cdsSegmento
    Left = 594
    Top = 92
  end
  object cdsSegmento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspSegmento'
    AfterOpen = cdsDadosAfterOpen
    BeforePost = cdsSegmentoBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 562
    Top = 92
    object cdsSegmentoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSegmentoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsSegmentoIODO: TBCDField
      FieldName = 'IODO'
      Origin = 'IODO'
    end
    object cdsSegmentoAMIDO: TBCDField
      FieldName = 'AMIDO'
      Origin = 'AMIDO'
    end
    object cdsSegmentoSST: TBCDField
      FieldName = 'SST'
      Origin = 'SST'
    end
    object cdsSegmentoFIRME: TBCDField
      FieldName = 'FIRME'
      Origin = 'FIRME'
    end
    object cdsSegmentoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object cdsSegmentoFORCOD: TIntegerField
      FieldName = 'FORCOD'
      Origin = 'FORCOD'
    end
    object cdsSegmentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object cdsSegmentoVARCOD: TIntegerField
      FieldName = 'VARCOD'
      Origin = 'VARCOD'
    end
    object cdsSegmentoACIDEZ: TBCDField
      FieldName = 'ACIDEZ'
      Origin = 'ACIDEZ'
    end
    object cdsSegmentoSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object cdsSegmentoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1
    end
    object cdsSegmentoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspSegmento: TDataSetProvider
    DataSet = sqlSegmento
    UpdateMode = upWhereKeyOnly
    Left = 530
    Top = 92
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 594
    Top = 46
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LANC'
    MasterSource = dsDados
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspDetalhe'
    BeforePost = cdsDetalheBeforePost
    OnReconcileError = cdsDadosReconcileError
    Left = 562
    Top = 46
    object cdsDetalheLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetalheLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object cdsDetalheDEFCOD: TIntegerField
      FieldName = 'DEFCOD'
      Origin = 'DEFCOD'
    end
    object cdsDetalheDEFDES: TStringField
      FieldName = 'DEFDES'
      Origin = 'DEFDES'
      Size = 30
    end
    object cdsDetalheQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object cdsDetalheSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
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
    Left = 530
    Top = 46
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 232
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
  object PopupMenu2: TPopupMenu
    Left = 536
    Top = 304
    object MenuItem1: TMenuItem
      Caption = 'Inserir'
      ShortCut = 16429
      OnClick = MenuItem1Click
    end
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
      'select * from contcom where lanc = -1')
    Left = 498
    Top = 46
  end
  object sqlSegmento: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'select * from contana where lanc = -1')
    Left = 498
    Top = 94
    object sqlSegmentoLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'LANCIT'
    end
    object sqlSegmentoLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'LANC'
    end
    object sqlSegmentoIODO: TBCDField
      FieldName = 'IODO'
      Origin = 'IODO'
      Precision = 18
    end
    object sqlSegmentoAMIDO: TBCDField
      FieldName = 'AMIDO'
      Origin = 'AMIDO'
      Precision = 18
    end
    object sqlSegmentoSST: TBCDField
      FieldName = 'SST'
      Origin = 'SST'
      Precision = 18
    end
    object sqlSegmentoFIRME: TBCDField
      FieldName = 'FIRME'
      Origin = 'FIRME'
      Precision = 18
    end
    object sqlSegmentoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object sqlSegmentoFORCOD: TIntegerField
      FieldName = 'FORCOD'
      Origin = 'FORCOD'
    end
    object sqlSegmentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object sqlSegmentoVARCOD: TIntegerField
      FieldName = 'VARCOD'
      Origin = 'VARCOD'
    end
    object sqlSegmentoACIDEZ: TBCDField
      FieldName = 'ACIDEZ'
      Origin = 'ACIDEZ'
      Precision = 18
    end
    object sqlSegmentoSAFRA: TStringField
      FieldName = 'SAFRA'
      Origin = 'SAFRA'
      Size = 9
    end
    object sqlSegmentoREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'REGLOG'
      Size = 1000
    end
    object sqlSegmentoREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
