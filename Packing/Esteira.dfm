object FEsteira: TFEsteira
  Left = 229
  Top = 179
  Caption = 'Controle da Produ'#231#227'o'
  ClientHeight = 487
  ClientWidth = 1002
  Color = 14273198
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 487
    Align = alClient
    BevelInner = bvRaised
    BevelWidth = 3
    Caption = 'Aguarde Carregando Sistema...'
    Color = 15592935
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 6
      Top = 6
      Width = 990
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'ESTEIRA'
      Color = 14930883
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 117
    end
    object PTela: TPanel
      Left = 6
      Top = 38
      Width = 990
      Height = 388
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = 'Aguarde rotinas sendo inicializadas...'
      Color = 15395562
      ParentBackground = False
      TabOrder = 0
      object PImprimir: TPanel
        Left = 2
        Top = 2
        Width = 554
        Height = 384
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 402
          Height = 382
          Align = alClient
          Color = 14930883
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 398
            Height = 245
            Cursor = crHandPoint
            Align = alClient
            DataSource = dsBotao
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -19
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnCellClick = DBGrid2CellClick
            OnDrawColumnCell = DBGrid2DrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Color = 8454143
                Expanded = False
                FieldName = 'CAT01'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E1'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454143
                Expanded = False
                FieldName = 'CAT02'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454143
                Expanded = False
                FieldName = 'CAT03'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E3'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'CAT04'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E4'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'CAT05'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E5'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'CAT06'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E6'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'CAT07'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'E7'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT10'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C1'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT11'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C1'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT12'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C12'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT13'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C13'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT14'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C14'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT15'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C15'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT16'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C16'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 8454016
                Expanded = False
                FieldName = 'CAT17'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C17'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT20'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT21'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT22'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C2'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT23'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C3'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT24'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C4'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT25'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C5'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT26'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C6'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16777088
                Expanded = False
                FieldName = 'CAT27'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C7'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT30'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C3'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT31'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C31'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT32'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C32'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT33'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C33'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT34'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C34'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT35'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C35'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT36'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C36'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 16744703
                Expanded = False
                FieldName = 'CAT37'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C37'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT40'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C40'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT41'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C41'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT42'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C42'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = False
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT43'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C43'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = False
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT44'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C44'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = False
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT45'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C45'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = False
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT46'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C46'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = False
              end
              item
                Alignment = taCenter
                Color = 4227327
                Expanded = False
                FieldName = 'CAT47'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C47'
                Title.Color = clSilver
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = []
                Visible = False
              end>
          end
          object Panel3: TPanel
            Left = 2
            Top = 320
            Width = 398
            Height = 60
            Align = alBottom
            TabOrder = 1
            object SpeedButton92: TSpeedButton
              Tag = 3008
              Left = 1
              Top = 1
              Width = 70
              Height = 58
              Cursor = crHandPoint
              Align = alLeft
              Caption = 'Abrir Lote'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                160F0000424D160F000000000000360000002800000025000000220000000100
                180000000000E00E000000000000000000000000000000000000F9E1D5F9E1D5
                F9E1D5D5C8C6D0C3C1D1C2C0D9C8C5DECEC7E1D1CAE1D3CDE1D5D3E1D7D7E2DA
                DBE3DEDDE5DDDDF3E9E9F5E9E7F5E9E5F5E6E3F1E2DFEFE0DDEBDCD9E7D9D3E0
                D4CEDDD1CBD9CFC8D7CEC5D5CBC1D1C8BAD3C9B8CDC3B2CCBFB1D2C3BACFBCB9
                F9E1D5F9E1D5F9E1D500F9E1D5F9E1D5CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6
                CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DAD6EADED8E9DDD7F4E6E0F2E2DCF1DED6
                EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6
                B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3C8B1A9F9E1D5F9E1D500F9E1D5CABBB2
                CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EBCBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CF
                C4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFEC
                D4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0
                D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFEBD2C2EED4C4F1D4C5F3D3C6F6
                D4C7F7D5C8F6D6C9F4D7C9F2D8C8EFD8C8EED8C6F2E0C9EBD5C3EAD4C2ECD6C4
                EDD7C5F2DAC8F1D9C5F0D9C3F1D9C3F0D8C2F2D7C3F2D5C6F2D5C7F4D7C9F5D8
                C9F4D9C5F4DAC2F4D9BFF4D9BFEED2BAE2C5B0C3A998D3BDB100C8B9A9C5B2A3
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDF2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0
                C9F2E0C9DEE8EE377599B5CAD6F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2
                E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF2
                E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C92D86AF0075AB066E9E5398B8
                92B6C7F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0
                C9F2E0C9F2E0C9F2E0C9F6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDF2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0
                C92C82A80094C50B91C10079AF006FAB1A7198506E804B7E99C7DCE7F2E0C9F2
                E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCF2
                E0C9F2E0C9F2E0C9F2E0C9F2E0C93688AB089AC818ADD8138DBC0078AE0079B3
                3F87A68D7368595D5F186B946AA3C0D5E3EAF2E0C9F2E0C9F2E0C9F2E0C9F2E0
                C9F2E0C9F2E0C9F2E0C9F0DFCAF0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C93D8CAF119F
                CA25B7DD1CABD51B94C0007CB0007CB43E89A782746D706A691B769F006EA901
                70A25B9DBCA0C1D0F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F2E0C9F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6F2
                E0C9F2E0C9F2E0C95F9FBB169EC737C2E224B2D924B1D81F98C20080B50080B8
                408DAB897771746F6D2179A0007EB5007AB1006CA4006BA02B7BA24578948DB6
                CAF2E0C9F2E0C9F2E0C9F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8F2E0C9F2E0C991BFD523A6CB46CCE736BD
                DD29B6DA30B8DB219AC30080B60082BB4391B0917E7676716F237AA1007EB400
                7BB0007BB1007AB23E85A47067652C5B72448DB1CDDEE7F2E0C9F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCF2
                E0C9A8CCDD1D9DC455D6EB47C8E23BC1DF2BB7DB3DBFDD1E99C40084B90083BB
                4494B295837B7B7473287DA20082B8017EB2007BB00079B23686AA82746D5A6D
                760072AD006799D1E1E9F8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEF2E0C970B2D043C6E056D3E949C9E23EC3
                E02CB8DB4CC5E21E9AC50087BC0086BE4496B597847E8079782681A60084BB01
                82B60180B3007DB32A87B0857B775D717A007CB30071A790B4C6F5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD0F2
                E0C972B8D44DCDE357D4E94ECDE545C6E131BCDE5CCBE41C9BC7008BC0008AC2
                469AB99D8982847F7D2A86AB0085BC0084B80083B70081B6238AB48C84806574
                79017EB30074AA45809EF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD0F2E0C973BFD856D6E95CD6EA52D0E74ACB
                E334BEDD69D3E8189DCB008BC1008AC24C9EBCA08E878983802D89AB0087BE00
                86BA0084B80083B9178CB8938C896D767B0980B0007AAE3385A9F5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCEDF
                E7EB46A7C567E1F162DAEC57D3E94ECDE638C0DE77D9EB169DCD0090C5008DC6
                50A0BCA5928C8B86842D8BAD008BC10088BE0088BE0084B90D8BBB93918F797A
                7C1581AD007DB3217DAAF7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0D3E1E944ADCB71E7F467DDEE5BD5E951D0
                E738C2DF83DDEE119BCB0090C60090C956A4BFA8968F8F8988328CB0008DC512
                8BB80B87B60089BF0B8DBE989898817E7D1C85AE0083B90C74A5F6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCEC4
                DEEB47BBD77AECF568DEEF60D8EB52D1E73CC6E19EE8F339B0D8109ACB008AC5
                4FA0BEAD9790958F8C348FB3008FCB608FA27E726E1C82A90690C4999D9F8C83
                7F2787AD0086BE006CA0F5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCEB7D8E84BC3DD83F2F96DE1F05FDBED6CDC
                EC8AE8F584E9F577CEE26ED9EB53CEEA86D2E4BBB8B3A99B943D92B3008CCC68
                9AAE9E7C703582A00193CA90A3A99887803288A90089C20275A9F5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCDB4
                D7E951C9E08AF8FC7AEBF582E8F56EDAF035AED3086392003066094576276E97
                328CB34AADC970C5D657C6E122B6E17DB9CAB59B914B8AA30093CB90A6AEA68B
                82398DAC008BC4017BAEF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCEA8D1E365D9EA9DFFFF6AD1E526A1CC006B
                A1003D72003469003E72003B7000376C00306600346B00447B06588A207FA629
                98C043A7C93DADCE19A9D876B6C7B09F954891AC008CC40182B6F2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D14F
                A1BF5DC7DC3B99BC005E9600417A00356B00407400497D014A7E014A7E014A7E
                014B7F014A7E00457A00407500487E004F85004E85005C9001679B0A7BAB2F91
                B61D95C0008BC3007EB6EFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D43BA3C547BDD935A6C82892B81D7DA71572
                9F0B6395035588014F83014F82005083004E84005085005387015387005F9202
                6B9D01669901619400588B00508700579200679E2E88AF5D9FBEF1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCF8E7DAF5E7D52F
                A3C86AE2F175E9F567E4F561E2F354D8EE46CAE5148CB90072A80170A400679B
                136693085E8F005E92005E90015F92026295015B8F01598C1964904589AC8AB0
                C4CDDBE4F2E0C9F2E0C9F4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6F3E3D22EA4CA73E6F276E8F36ADFEE62DAEC5CD8
                EB56D2E80694C6008BC20089BE1190C0ABB0B28A959A5F879A0271A5006CA001
                5E91005084004B7E2C648988ACC195B8CAF2E0C9F2E0C9F2E0C9F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D433
                9CC174E7F285F2F875E7F26BE0EF6AE0EF52CDE5049DCE069DCF0091C959AFCD
                C2B4AFBBA59D7399A80087BE0085B90081B5007EB30077AB0275AA7393A14F75
                8922729B1472A32780AAF8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D459A0BE5DD3E89BFFFF7EEEF673E7F281E7
                F246C6E231BCDD24B6DA20B1D9B7CDD4C6BEBAC5B7B234A1C50095CC0092C600
                8EC3008DC10082BB47A3C6C6B5AEA9A19C177FAA0072AA00689EF5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8DB
                E9EF2FA3C868E4F27FF0F785EEF583EBF66ADEEF5AD8EB56CFE7B4E1E9EAD9D5
                E5D0CA93C3CE1CB3DB1CAFD716AAD40BA3D10098CD0F9CCEB2CBD3D5BDB575A5
                B8008AC20082B61579A8F9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7F2E0C9C5DBE571C5DF87D3E88EDAEB5AC0
                D988DAEBC9F3F6F6F9F9FFF3EFDEDFE090CCDB43C7E34FCCE555CEE540C4E144
                C1DF62C7E0C0DEE5F0DDD8B3C8CD1AA5D00092C62F90B9F2E0C9F3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7F2
                E0C9F2E0C9F2E0C9F2E0C9F2E0C9D0E2EB6AB0CB6FB3CE62B9D64BB3D672B8D1
                91CCDC4FA3BE3BA1C57AC6DBF2E0C9F2E0C9F2E0C9F2E0C9ABCCD533B1D60090
                C21C84B0F2E0C9F2E0C9F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
                E3CDC1FBE5DAFCE6DBFBE4DCFAE3DBFAE3DBF7E1DBF6E0DAF4E1DAF5E3DCF5E3
                DCF5E3DCF3E4DBF4E3DAF4E4D8F4E4D8F5E3D8F6E3DBF6E3DBF5E5D9F5E5D9F3
                E5D9F2E4D8F2E4D8F4E4D8F8E6DBF6E2D7FAE4D9FFE7DBFFECE0FFEDDEFBE4D4
                DFC6B6C3A999DEC8BC00F9E1D5CEBEB2CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0
                DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DE
                F4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEFE2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDD
                D4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBFC5B1A0C0AB9CF9E1D500F9E1D5F9E1D5
                C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DFC9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8
                D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DD
                CECBDACCC6D8CAC4D5C9BFD2C7B9CFC2B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5
                CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EE
                DDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEBE6ECEAE9EFEDEDF5F0F1F7F1F2F5EDED
                F5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EBDFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6
                C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CBF9E1D5F9E1D5F9E1D500}
              Layout = blGlyphTop
              ParentFont = False
              PopupMenu = PopupMenu1
              Spacing = 0
              OnClick = SpeedButton92Click
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitHeight = 51
            end
            object SpeedButton91: TSpeedButton
              Tag = 3009
              Left = 71
              Top = 1
              Width = 73
              Height = 58
              Cursor = crHandPoint
              Align = alLeft
              Caption = 'Fechar Lote'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                160F0000424D160F000000000000360000002800000025000000220000000100
                180000000000E00E000000000000000000000000000000000000F9E1D5F9E1D5
                F9E1D5D5C8C6D0C3C1D1C2C0D9C8C5DECEC7E1D1CAE1D3CDE1D5D3E1D7D7E2DA
                DBE3DEDDE5DDDDF3E9E9F5E9E7F5E9E5F5E6E3F1E2DFEFE0DDEBDCD9E7D9D3E0
                D4CEDDD1CBD9CFC8D7CEC5D5CBC1D1C8BAD3C9B8CDC3B2CCBFB1D2C3BACFBCB9
                F9E1D5F9E1D5F9E1D500F9E1D5F9E1D5CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6
                CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DAD6EADED8E9DDD7F4E6E0F2E2DCF1DED6
                EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6
                B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3C8B1A9F9E1D5F9E1D500F9E1D5CABBB2
                CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EBCBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CF
                C4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFEC
                D4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0
                D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFEBD2C2EED4C4F1D4C5F3D3C6F6
                D4C7F7D5C8F6D6C9F4D7C9F2D8C8EFD8C8EED8C6E9D5C3EBD5C3EAD4C2ECD6C4
                EDD7C5F2DAC8F1D9C5F0D9C3F1D9C3F0D8C2F2D7C3F2D5C6F2D5C7F4D7C9F5D8
                C9F4D9C5F4DAC2F4D9BFF4D9BFEED2BAE2C5B0C3A998D3BDB100C8B9A9C5B2A3
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8A774748E595989
                5F5FF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8
                F3DEC8F3DEC8DCCBCBD4A6A6A87575936161895757926C6CBFABABF3DEC8F3DE
                C8F3DEC8F3DEC8F3DEC8F6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8F3DEC8AAABAAB1B2B1AEAEAFA8AAAA988A8ADAAFAEAA78789C
                6B6BA16F6F966262865252805553A28585F3DEC8F3DEC8F3DEC8F2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCF3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8898A8A6263635E5E5E
                91898FA7A1A9988587DDB3B1A979799D6D6DA06F6FA06F6FA37272A06D6D8953
                547C4D4DA38686F3DEC8F3DEC8F0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC88D8E8E7F7C7F65736A44B1675EC47E7DA177E0AEB3AC7B7CA0
                6D6DA27070A27171A17070A17070A37373A674748451514B4040F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8919091837E82637369
                1AA73E0BAF36388E45E7B3BCAF7E7EA36F6FA57272A57272A47272A37171A170
                70A67474916363484141F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8CFE4
                CF78B276F3DEC89391948884886370661896320EA02F3D8842E9B7BEB07F7FA5
                7171A77474A77474A77474A67373A57373A774748F63634D4646F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCF3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8D4E8D203820E79B47BACA4AC898289657067
                128D2206921F398036EAB8C0B38081A87474AA7777A67373A67373A77474A774
                74AB7676916464504A4AF8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEF3DEC8F3DEC8F3DEC8F3DEC8F3DEC8E5EC
                DE229E3F149E346EAA6CA292A2606C610C801401840E35752DEBBBC3B58484AA
                7474AA7373A26D6DA57272A87575A87575AC7878916464504A4AF5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD05A
                A15D5DA5625CA3615CA8635BAB6346984A2BAE4C46DA7D22AB3D70A76F7A7F79
                006100006400296319ECBDC6B68384A87C7C9180808E7777A37171A77676AB77
                77AE7A7A946666524C4CF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD00B7C1829B6572AB5562CBA5A2ABF5A2FC1
                6041D1724CE88046D77A25AA3F62A66153AA7737AA6A5B936AE9B9BEB78686BB
                ADADC3CBCCABAEAEA17777AE7878AD7A7AAF7A7A996C6C585352F5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCE25
                8C3047DA773FD77243DC7645E07948E37B4BE47E4EE78151EB8548D67A23A839
                8BE5B3BEFFFFAED5D8E5B4B4B68787D6C9C9F0FBFBCDCACAAC7C7CAF7A7AAD7A
                7AB17C7D9A6D6D585352F7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0298B3151DC7E3FD97143DD7646E07A4AE3
                7D4EE78151E98454EB8659F38D4FD88117A12DA3F4CBCED4DCE4B7B7B88888BA
                9090C4AEAEB59596B17A7AB07D7DB07D7DB37E7E9A6D6C5B5453F6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCE26
                8E335CE2883CDA6F40DF7544E27948E67D4CE98154ED8757ED8960FA973EDE6B
                57B860E6F9ECDFD3D5E3B8B8BD8E8EB27B7BB37B7BB37C7CB37F7FB27F7FB17E
                7EB380809F7070605858F5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCE228C2E78F0A175EEA176F1A27AF4A683FB
                AF84F6AB64F1935EF99545EA754BB851F3FAF3FFFFFFE4D0D0E4B9B9BF9090B6
                8181B78383B78383B68282B48080B37F7FB58080A17472635C5BF5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCD17
                822232B04D39B6523AB8533CBB5538BA5268DE8972FAA346ED773BAC41A4A69F
                FFFEFEFFFFF9E4CECAE4B9B9C19393B78383B98686B88484B78484B78383B682
                82B68081A27774625E5BF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCEE0ECE0D9E3D5D8E5D4D7E5D3D7E4D3AAC7
                A248C6624FF38243B84A9DA29B90888DFFF8E9FFFCEEE7CDC6E6BCBDC39595B8
                8383B68181B68383B68383B78383B78383B98384A37673635F5CF2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D1F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8DAE9D722B53C3EB54AB2B6AE9F99A2898784
                FFF2DFFFF5E2E8C9BFE7BDBEC29494C89595D4A6A6C89696BE8A8AB98484B37D
                7DB88282A4787566625FEFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D4F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8CCE6
                CD28912ADCE5DBB2AAB29B9D9E8B8885FFEDD5FFEED5E8C5B7E6BEC0C29393D6
                A9A9FFF2F2FFE3E3F9D6D6EEC6C7E6B9B9CD9A9BA47675686362F1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCF8E7DAF5E7D5F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8A8A8A89D9FA18C8884
                FFE7CAFFEACCE8C4B2E8C2C4C49595D0A7A7FFF1F1FFE9E9FFE5E5FFE3E3FFE4
                E4DEAFAFA47576696464F4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6F3E3D2F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8AAA9AAA0A2A48F8984FFE0BEFFE3BFEAC1ACE9C3C6C79898CB
                A4A3FFF6F5FFF5F6FFF2F2FFE8E8FFE6E6D9A8A8A476766A6464F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D4F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8ACABACA3A3A8908982
                FFE4B8FFE6B8F1C3A9E9C3C7C99C9CC08D8DC79A9ACA9F9FD0A8A8D8B3B3E5BC
                BCCE9B9BA77A7A6B6565F8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D4F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8AEAFAFA9ABAD87827EBFA487C3AB8CCDA794F7D1D4D4ABAAC7
                9696C39090BE8989BB8484B98383B68080B98383AB7F7F6F6969F5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8B1B1B2ADADAD898A8A
                8485877E8283948787D7B0B0D6AFAFD2A8A9D2A7A8D0A2A2CF9E9ECE9C9CCC98
                98CD9494B385856F6A6AF9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DE
                C8F3DEC8F3DEC8AEADAEBFBEBFADAEAEAAABACA7A8A9A3A5A59C99999C95969C
                95969D9595A09696A19595A49090A08D8DA68888927C7C696B6BF3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7F3
                DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC8F3DEC89FA0A0AAABAB
                A8A9A9A8A9A9A7A8A9A0A3A39EA0A09C9E9E9699999195958C9090888D8D858A
                8A808686818686C2C3C3F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
                E3CDC1FBE5DAFCE6DBFBE4DCFAE3DBFAE3DBF7E1DBF6E0DAF4E1DAF5E3DCF5E3
                DCF5E3DCF3E4DBF4E3DAF4E4D8F4E4D8F5E3D8F6E3DBF6E3DBF5E5D9F5E5D9F3
                E5D9F2E4D8F2E4D8F4E4D8F8E6DBF6E2D7FAE4D9FFE7DBFFECE0FFEDDEFBE4D4
                DFC6B6C3A999DEC8BC00F9E1D5CEBEB2CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0
                DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DE
                F4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEFE2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDD
                D4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBFC5B1A0C0AB9CF9E1D500F9E1D5F9E1D5
                C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DFC9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8
                D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DD
                CECBDACCC6D8CAC4D5C9BFD2C7B9CFC2B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5
                CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EE
                DDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEBE6ECEAE9EFEDEDF5F0F1F7F1F2F5EDED
                F5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EBDFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6
                C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CBF9E1D5F9E1D5F9E1D500}
              Layout = blGlyphTop
              ParentFont = False
              Spacing = 0
              OnClick = SpeedButton91Click
              ExplicitLeft = 72
              ExplicitTop = 2
              ExplicitHeight = 51
            end
            object SBP5: TSpeedButton
              Tag = 4
              Left = 316
              Top = 1
              Width = 81
              Height = 58
              Align = alRight
              Caption = ' Palet'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Glyph.Data = {
                0E060000424D0E06000000000000360000002800000016000000160000000100
                180000000000D805000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9CCB7ACA0786585503571341565230271
                3415855035A07865D3BFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFDED1CB99705B713415713F25764A357A5644
                7D5E4E7453426B4A3B62382368351A99705BEBDDD6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFD3BFB5835139713F257E5947876A5B8667
                588163547B5F517B5F51775C4E775C4E6B4A3B5E341E835139E0CDC3FFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFDED1CB89563D844B2E8D6D5D8C75689D
                7D6D9C8376947A6D8C75688C75688C7568846D627A6256715649623823835139
                EBDDD6FFFFFFFFFFFFFFFFFF0000FFFFFFF9F9F99F7661844B2E9D7D6DA28374
                B09384BAA499BCA99FB4A299AE9B92AD9D95AD9D95A4938B907C727A62567156
                495E341EA77861FFFFFFFFFFFFFFFFFF0000FFFFFFCCB7AC844B2E9F76619F76
                61B09384B09384BAA499BAA499B4A299B4A299AD9D95AD9D95AD9D95AB9C948F
                7B717A62566B4A3B68351ADEC6BBFFFFFFFFFFFF0000FFFFFFAF836D9B6144B9
                9888B99888000000000000000000E9D5CCE9D5CCE9D5CCE9D5CCD7CBC5000000
                00000000000000000073594C5E341EAF836DFFFFFFFFFFFF0000FFFFFF9B6144
                A77861C2A08ED3B4A3D3B4A3000000E9D5CCE9D5CCE9D5CCE9D5CCE9D5CC0000
                00D7CBC5D7CBC500000089716673594C654131885136FFFFFFFFFFFF0000FFFF
                FF934B27B88D78C9A694D3B4A3E2C7BA000000EDDBD1EDDBD1EDDBD1EDDBD1ED
                DBD1D7CBC500000000000000000086706573594C6B4A3B713415FFFFFFFFFFFF
                0000FFFFFF924119C49B86C9A694D9B4A2E2C7BA000000000000000000000000
                EDDBD1EDDBD1EDDBD1D7CBC5C6BAB3000000846D6273594B715649652302FFFF
                FFFFFFFF0000FFFFFFA35732C49B86D3AA95DBBAA7E4CCC0000000EDDBD1EDDB
                D1EDDBD1000000EDDBD1EDDBD1000000000000AD9D95897166755B4E74534271
                3415FFFFFFFFFFFF0000FFFFFFBD7F60C78E72D5B19FDFBFAEE7CFC3000000ED
                DBD1EDDBD1ECDAD0000000ECDAD0ECDAD0CABDB6CABDB6B4A2998C75687B5F51
                764A35985737FFFFFFFFFFFF0000FFFFFFD2A791C2886AD9B4A2DFBFAEE7CFC3
                000000EDDBD1ECDAD0ECDAD0000000ECDAD0ECDAD0CABDB6CABDB6A9978F8C75
                68816354713F25B88D78FFFFFFFFFFFF0000FFFFFFE9D5CCBD7F60D3AA95DFBF
                AE000000000000000000000000000000E0CDC3ECDAD0ECDAD0CABDB6B4A2999C
                8376876A5B7A5644804120E4CCC0FFFFFFFFFFFF0000FFFFFFFFFFFFD3AA95C7
                8E72DDBBA9DFBFAEE3C6B7E4CCC0E4CCC0DEC6BBD5BCAFCCB7ACC3AEA4B5A196
                9C8376897166816354794328AF836DFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                F1E3DCC9957BC9957BDBBAA7DDBBA9DFBFAEDAB9A9D5B19FC9A694B99888AC8F
                819C83769374648667587943289B6144F1E3DCFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFECDAD0C9957BC78E72D2A791D9B4A2D4AF9CC9A694B99888B8
                8D789D7D6D937464865F4B7943289B6144E7D2C8FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFF1E3DCD2A791BD7F60C2886AC9957BC49B86
                C49B86AF836D976952855035844525AF836DF1E3DCFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D5CCD2A791BD7F
                60A867469D512B985737A86746B88D78E0CDC3FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              OnClick = SBP5Click
              ExplicitLeft = 29
            end
            object SpeedButton1: TSpeedButton
              Tag = 20
              Left = 144
              Top = 1
              Width = 99
              Height = 58
              Hint = 
                'Imprimir registros... '#13'Bot'#227'o da direita altera configura'#231#227'o etiq' +
                'ueta...'
              Align = alLeft
              Caption = 'Estoque(granel)'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                160F0000424D160F000000000000360000002800000025000000220000000100
                180000000000E00E000000000000000000000000000000000000F9E1D5F9E1D5
                F9E1D5D5C8C6D0C3C1D1C2C0D9C8C5DECEC7E1D1CAE1D3CDE1D5D3E1D7D7E2DA
                DBE3DEDDE5DDDDF3E9E9F5E9E7F5E9E5F5E6E3F1E2DFEFE0DDEBDCD9E7D9D3E0
                D4CEDDD1CBD9CFC8D7CEC5D5CBC1D1C8BAD3C9B8CDC3B2CCBFB1D2C3BACFBCB9
                F9E1D5F9E1D5F9E1D500F9E1D5F9E1D5CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6
                CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DAD6EADED8E9DDD7F4E6E0F2E2DCF1DED6
                EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6
                B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3C8B1A9F9E1D5F9E1D500F9E1D5CABBB2
                CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EBCBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CF
                C4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFEC
                D4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0
                D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFEBD2C2EED4C4F1D4C5F3D3C6F6
                D4C7F7D5C8F6D6C9F4D7C9F2D8C8EFD8C8EED8C6E9D5C3EBD5C3EAD4C2ECD6C4
                EDD7C5F2DAC8F1D9C5F0D9C3F1D9C3F0D8C2F2D7C3F2D5C6F2D5C7F4D7C9F5D8
                C9F4D9C5F4DAC2F4D9BFF4D9BFEED2BAE2C5B0C3A998D3BDB100C8B9A9C5B2A3
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDFEDED1FEDED1FCDCCFF9DCCDF6DCCBF5E0
                CBF7E2CDF6E3CEF3DFCDF2DECCF2DDCEF2DDCEF2DBCCF2DBCBF3DEC9F5DDC9F6
                DDC9F6DCCBF7DCCEF8DCD1F8DCD1F7DCCEF8DECDF9E1CBF8DEC6F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF9
                DDD2F7DBD0F6DBCDF7DFCDF5E0CBF4DFC9F2DFCAF3E2CFF0DCCBEFDCCDF0DACE
                EDD9CEF2DCD1F4DED2F5E1D0F7E1CFF8E0CEF7DECEF8DED0F9DFD3EFD6CCEED6
                CAF2DBCBF6E1CCF7E2CCF6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4B9AA
                9ABCB1A4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4C3
                AF9FE2DCD5FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F3E2CDF2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCFC
                E6D4FCE6D4FCE6D4FCE6D4947A6462321963351ADCD8D1FCE6D4FCE6D4FCE6D4
                FCE6D4FCE6D4FCE6D4FCE6D4795E4D583226684D3BE8E5E2FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4EFE1CBF0DFCAF0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9FCE6D4FCE6D4FCE6D4D8CFC35B32129468
                4F672F0DD0C0B5FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4A88B6A5F2F2787
                747466391ADFD9D3FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F2E3C9F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6FC
                E6D4FCE6D4FCE6D4FCE6D47F6447633D2570381A703C1A6C40216B4324754929
                794B297146266F49267D380384380D5F2B178B614EFCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F3E2C8F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8FCE6D4FCE6D4FCE6D4FCE6D4C4CEE14C81
                BF428AD64B6FA7526490585A7661505A614B4B63504A64504D625861636A8972
                5D656C4129E1DEDDFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F4DFC9F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCFC
                E6D4FCE6D4FCE6D4FCE6D4FCE6D488A5CA78B0E46FB2F26EB4F864B0FF57ADFF
                5AA9F95BA2F8439BFF4597FB5D96DF695D62602503D2CCCBFCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F5E0CBF8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEFCE6D4FCE6D4FCE6D4FCE6D4EAECDE8F5E
                487C31196B40256F4932765241785851785A57715556715557754B417E3D1A72
                210080442AFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F3DFCEF5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD0FC
                E6D4FCE6D4FCE6D4FCE6D4FCE6D4E5DCD3B99686B0755D9C5F3E904E1F853E06
                7830007728007B26007C25007C2C00712E03B69B85FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F3DFCEF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD0FCE6D4FCE6D4FCE6D4FCE6D4E5D8C56F74
                8F6A9CCC87919A97A0BAA9BEC7BEC2B8CCBCAED4B9ABCAB399BAA3948C614975
                3E1BFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F4DECCF5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCEFC
                E6D4FCE6D4FCE6D4E5E1D86C4D493F84D055779E622E195F52564F597C4F6A93
                4B7DC15B87C498B2BFFCE6D4CBB7AD622F15DEDDD5FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F5DFCDF7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0FCE6D4FCE6D4FCE6D47D5025652D286499
                D6664D457C616B7164566D40386451604C5D683861964D7CA8E1EBEDF4DBCC72
                340CCEC5B8FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F5DECEF6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCEFC
                E6D4FCE6D48D6947642D1B706C886B404769330C61737F5765837081B17A8BB7
                595F5C5189D34A87C4D7E1E5FFF4EA693716B9A495FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F5DECFF5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCEFCE6D4B3A69E6818007353556596CA7142
                2F6D7092765850753518634C58724A396F4C404B6AA74478B4D6DFE5FCE6D472
                44249B7A69FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F6DED2F5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCDE1
                D2C681401D6A3D1F6151437F3B1072370D6E70977D4F457067626B90C46E4A35
                70696C4E78AA4B73B8C6D7E4FCE6D495654D805A3FFCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F4E0CFF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCE7A49297D34036C91C36884B86334165073
                916347466B2F0D56506A5D536666411851636F3F70B3456FB8B4CADEFCE6D4AF
                93845F3717EAEAE7FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F4E3C9F2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D16E
                3E1E672C0763748E71494C756A7468B7FF6D44437F7D8184C6F27656508B5243
                B7BFD7B2BCD1B2C2DADAE0E5FCE6D4DBD2C2461C00C5B7AAFCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F1E3C7EFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D4E9DED5A6836B743E187B3007834B2C7656
                2A6F2A00775038886955743C146E441A796F5A7E715F8684709C9792E2E4E4FC
                E6D473472F825D44FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F1E1CAF1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCFCE6D4FCE6D4FC
                E6D4FCE6D4ECE4E4D5CABDCEB4A5C4A880C1A692BC9C8CBE9F81B8AF97C3B299
                C4B1A1D2C9B6E9E7D2FCE6D4FCE6D4FCE6D4C19D89461300D9D4CDFCE6D4FCE6
                D4FCE6D4FCE6D4F2E0CFF4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FC
                E6D4F1EBE46031147D5238FCE6D4CFBCB26A43366E5F58F6E3D6F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D4FC
                E6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4
                FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4D9C7B8693C1E7A55317239
                0F672E0D9B8271F9E6D9F8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FC
                E6D4FCE6D4FCE6D4E1D4C9805835744522CFB7A6FCE6D4F7E5D4F5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8FB
                E3D7FAE2D6FBE3D7F8E2D6F9E3D7F6E3D4F5E4D7F5E4D7F6E6DAF6E5DCF5E3DC
                F3E2D9F6E5D8F5E5D5F7E4D5FAE5D6FBE6D7FDE6D7FFE5D7FFE5D5FFE5D5FDE4
                D4FCE6D4FBE7D5FCEBD8F9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7FCE1D7FDE3D7FCE4D8F8E3D4F9E4D5F7E5
                D4F5E5D5F6E6D6F6E6D6F6E5D8F6E4D9F7E5DAF7E4D5F8E6D5FAE5D6FBE6D7FB
                E6D7FDE6D7FDE6D6FFE6D6FDE4D4FCE4D2FDE7D5FCE6D4F7E3D2F3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7FC
                E3D9FEE5DBFFE6DCFBE5D9F8E5D8F6E5D8F6E5D8F4E4D7F4E3D6F4E3D6F5E3D8
                F7E5DAF8E5D8F8E5D6F9E6D9F9E6D9F9E6D9F9E6D9F9E6D7FBE6D7FBE6D7FDE6
                D6FFEADAFEE7D7FAE3D4F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
                E3CDC1FBE5DAFCE6DBFBE4DCFAE3DBFAE3DBF7E1DBF6E0DAF4E1DAF5E3DCF5E3
                DCF5E3DCF3E4DBF4E3DAF4E4D8F4E4D8F5E3D8F6E3DBF6E3DBF5E5D9F5E5D9F3
                E5D9F2E4D8F2E4D8F4E4D8F8E6DBF6E2D7FAE4D9FFE7DBFFECE0FFEDDEFBE4D4
                DFC6B6C3A999DEC8BC00F9E1D5CEBEB2CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0
                DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DE
                F4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEFE2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDD
                D4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBFC5B1A0C0AB9CF9E1D500F9E1D5F9E1D5
                C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DFC9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8
                D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DD
                CECBDACCC6D8CAC4D5C9BFD2C7B9CFC2B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5
                CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EE
                DDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEBE6ECEAE9EFEDEDF5F0F1F7F1F2F5EDED
                F5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EBDFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6
                C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CBF9E1D5F9E1D5F9E1D500}
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              OnClick = SpeedButton1Click
            end
            object SpeedButton93: TSpeedButton
              Tag = 4009
              Left = 243
              Top = 1
              Width = 60
              Height = 58
              Cursor = crHandPoint
              Align = alLeft
              Caption = 'Marca'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                160F0000424D160F000000000000360000002800000025000000220000000100
                180000000000E00E000000000000000000000000000000000000F9E1D5F9E1D5
                F9E1D5D5C8C6D0C3C1D1C2C0D9C8C5DECEC7E1D1CAE1D3CDE1D5D3E1D7D7E2DA
                DBE3DEDDE5DDDDF3E9E9F5E9E7F5E9E5F5E6E3F1E2DFEFE0DDEBDCD9E7D9D3E0
                D4CEDDD1CBD9CFC8D7CEC5D5CBC1D1C8BAD3C9B8CDC3B2CCBFB1D2C3BACFBCB9
                F9E1D5F9E1D5F9E1D500F9E1D5F9E1D5CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6
                CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DAD6EADED8E9DDD7F4E6E0F2E2DCF1DED6
                EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6
                B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3C8B1A9F9E1D5F9E1D500F9E1D5CABBB2
                CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EBCBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CF
                C4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFEC
                D4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0
                D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFEBD2C2EED4C4F1D4C5F3D3C6F6
                D4C7F7D5C8F6D6C9F4D7C9F2D8C8EFD8C8EED8C6E9D5C3EBD5C3EAD4C2ECD6C4
                EDD7C5F2DAC8F1D9C5F0D9C3F1D9C3F0D8C2F2D7C3F2D5C6F2D5C7F4D7C9F5D8
                C9F4D9C5F4DAC2F4D9BFF4D9BFEED2BAE2C5B0C3A998D3BDB100C8B9A9C5B2A3
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDFEDED1FEDED1FCE0C9FCE0C9FCE0C9FCE0
                C9FCE0C9FDE2CAFFEBD2C79C91AE7D79D1AB9DEECDBAFFE4CDFFECD3FFE7CFFF
                E4CDFDE1CAFCE0C9FCE0C9FCE0C9FCE0C9F8DECDF9E1CBF8DEC6F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF9
                DDD2F7DBD0FCE0CAFCE0CAFCE0CAFCE0CAFDE1CBFFE7D0D4ADA0CB9898BC8988
                AB7777B17E7BB98D87CEA69BE4C2B1F6D8C3FFE6CFFFE9D1FFE4CDFDE1CBFCE0
                CAF2DBCBF6E1CCF7E2CCF6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDF1DBCFF3DDD1FCE1CAFCE1CAFCE1CAFDE2
                CBFFE8CFD0AA9CCF9E9FFFD6D6C29090B98888B68384AE7678A66E6FA57071AF
                7D7ABF938BD5AFA2EBCCB8FCE0C9FFE5CDEEDECDEDDECBF3E2CDF2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCEE
                DECEF2E1D4FCE1CAFCE1CAFDE2CCFFE7CFCEA89BCCA1A2FFDEDEFDD2D2BA8585
                D2B2B2F9EFEFE0C7C7D1AAAAC49293B27C7DAA7374A56E6FA67373B58580DFBB
                ABEFE4D0E9DCC6EFE1CBF0DFCAF0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9F0DFCCEEDECDFCE2CBFDE3CCFFE8D0CFA9
                9DCFA4A5FFE1E2FFD9D9FCD2D2BD8787D2B2B2FFFFFFFFFFFFFFFEFEFBEFEFF2
                DBDBDFBCBCCEA1A1C18E8EAA7576C0978EF0E3CDF1E4CAF2E3C9F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6F0
                DFCCEEDECDFEE4CDFFE9D1CFA89CD1A8AAFFE6E7FFDBDBFFD9D9FDD4D4BF8989
                D2B3B3FFFFFFFFF6F6FFF6F6FFF6F6FFF9F9FFFCFCFFFFFFE5C3C3AB7474C299
                8FEEE1CBF0E3C9F3E2C8F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8F0DECDEEDDD0FFE9D2D4ADA1D3ACAEFFEB
                EBFFDFDFFFDBDBFFD9D9FDD5D5C28D8DD0B1B1FFFFFFFFF7F7FFFFFFFFFFFFFF
                F8F8FFF3F3FFFCFCE6C9C9AB7474C0978EEDDECBF0DFCAF4DFC9F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCF1
                DFCEEFDDD2D6B0A3D3ADAEFFEFEFFFE3E3FFDEDEFFDBDBFFD9D9FED6D6C59191
                CFB1B1FFFFFFFFFCFCDDCBCBD8C4C4F8EBEBFFF7F7FFFDFDE5CACAAE7676BF95
                8DECDCCCF0DECDF5E0CBF8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEF0E0D0F0DED3CB9F97EBD0D0FFEAEAFFE0
                E0FFDDDDFFDADAFFD8D8FED6D6C79292D1B4B4FFFFFFFFFFFFA27E7E7D4E4EA4
                7F7FE7D5D5FFFFFFE5CCCCAF7878BE948CECDACFF0DDD0F3DFCEF5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD0EF
                DFCFEFDED1CDA29BEACBCBFFE7E7FFDFDFFFDCDCFFD9D9FFD7D7FFD7D7CB9898
                C5A3A3F7F5F5FFFFFFAA8B8BD6C7C7C4ABABCBB2B2FFFFFFE6D0D0B27A7ABE93
                8CEFDBD0F0DDD0F3DFCEF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD0F2E1CEF3DFCDCCA29BECCACBFFE4E4FFDD
                DDFFDADAFFD7D7FFD5D5FFD6D6D6A9A9BE8888BD8D8DC29A9AD4B8B8EADDDDE3
                D5D5ECE3E3FFFFFFE9D7D7B37B7BBD918BF3DCCDF4DDCEF4DECCF5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCEF2
                E1CEF4E0CECEA49DEDCACAFFE0E0FFDADAFFD8D8FFD5D5FFD3D3FFD7D7D4A7A7
                C89C9CCB9E9EC68F8FC08787B57979BE8C8CC79E9ECEAEAECEAFAFB88383BD90
                8AF6DCCEF5DECFF5DFCDF7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0EEDDD0EEDDD0CEA49EEFC9C9FFDDDDFFD7
                D7FFD6D6FFD3D3FFD1D1FFD5D5D1A0A0DBC2C2FFFFFFF7E7E7EAD4D4E4C2C2D9
                ACACC89494C18787C08989BE8A8ABB8F89F1DBCFF3DDD1F5DECEF6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCEEF
                DDD2EFDDD2CEA39DF0C7C8FFD9D9FFD5D5FFD4D4FFD2D2FFCFCFFFD5D5D3A4A4
                DABEBEFFFFFFFFF9F9FFFCFCFFFCFCFFF6F6FCECECF7DFDFE6BFBFC08B8BB98D
                88F0DCD1F1DDD2F5DECFF5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCEF2DCD1F1DDD2CEA39DF1C6C6FFD6D6FFD2
                D2FFD1D1FFCFCFFFCCCCFFD5D5D6A6A6DABEBEFFFFFFFFF7F7FFF7F7FFF5F5FF
                F3F3FFF4F4FFFCFCF6DDDDC08A8AB98C88EEDBD3F2DED3F6DED2F5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCDF1
                DBCFF3DDD1CEA39EF3C4C4FFD3D3FFCFCFFFCECEFECCCCFDC9C9FED4D4D8AAAA
                D9BEBEFFFFFFFFF8F8FFFAFAFFFFFFFFFFFFFFF7F7FFF9F9F2DADAC18A8AB88B
                87EFDED1F1E1D1F4E0CFF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCEF2DDCEF3DECFCFA39EF4C3C3FFCFCFFECC
                CCFECBCBFBC9C9F9C5C5FCD3D3DBADADD8BEBEFFFFFFFFFEFED1BBBBB09090D6
                C1C1F8EBEBFFFEFEF1DBDBC28C8CB98A87EFE1CAF2E5CBF4E3C9F2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D1F2
                E0CFF4E0CFCFA39FF4C1C1FECBCBFBC8C8FAC7C7F8C6C6F6C1C1F9D1D1DDAFAF
                DAC1C1FFFFFFFFFFFF9E7B7B815353A58282D4BDBDFFFFFFF1DDDDC38D8DB889
                85EDE2C7F1E5C9F1E3C7EFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D4F3E4D1F4E6D0D0A29EF2BFBFFAC7C7F7C5
                C5F6C3C3F4C1C1F1BDBDF7CFCFE1B4B4C7A2A2EEE7E7FCFCFCBCA6A6E1D6D6E5
                D8D8C9B0B0FFFFFFF1E0E0C38E8EB98886EDE1C9F0E2CBF1E1CAF1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCF8E7DAF5E7D5F4
                E7D1F7E9D2CFA19EEFBCBCF5C3C3F3C0C0F2C0C0F0BDBDECB4B4F4CFCFF4D6D6
                DCABABCE9E9EC69595D0A9A9D8B9B9D9C1C1DCC9C9F0E8E8EBDBDBC48F8FB888
                85EDDECBF0E1CEF2E0CFF4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6F3E3D2F8E9D6F9EBD5D0A19EEBB9B9F1BEBEEFBC
                BCEDB7B7ECB8B8F4D2D2FDE8E8FFE9E9FFE5E5FDE0E0FAD8D8F1CACAE2B3B3D2
                9F9FCC9898C89797C39393C79393B88684F2DFD2F2DFD2F6E3D6F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D4F8
                E6D5F8E6D5D0A09EE9B6B6ECB8B8E9B3B3EFC5C5FBE3E3FFECECFFE4E4FFE0E0
                FFE0E0FFE0E0FFDEDEFFDDDDFFDFDFFFDEDEFFD6D6F9CFCFECBFC0CB9A9AB583
                82F8E2D6F6E3D6F9E6D9F8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D4F8E3D4F8E3D4CF9E9DE4AEAEEAB9B9F5D8
                D8FFEEEEFFEBEBFFE5E5FFE4E4FFE2E2FFE0E0FFDFDFFFDCDCFFDBDBFFDEDEFF
                DBDBF5CACBDDB0B0D1A4A2D7B6ACEDD4C5FEE7D7F9E5D4F7E5D4F5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8FB
                E3D7FAE2D6CA9797E9C3C4FBEDEEFFF3F4FFEFEFFFEFEFFFEEEEFFEAEAFFE6E6
                FFE2E2FFE3E3FFE4E4FCD8D9E5BDBED6A7A7D1A9A3E3C3B7F6DFCFFFEEDCFFEC
                DAFCE6D4FBE7D5FCEBD8F9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7FCE1D7FDE3D7DDB7B0DDB9B4E0BCB8E3BE
                BBE5C1BFE5C2C2E7C8C8EDCECEF2D4D4F9DADAF1D0D0DFB6B5D4AAA6DEBBB0F0
                D7C8FFECD9FFEDDBFDE9D7FCE8D6FCE7D6FDE7D5FCE6D4F7E3D2F3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7FC
                E3D9FEE5DBFFF0DDFEE9D7F9E1D0F5D9CAEFD1C2E4C3B8DAB4ABD6AFA8D2A8A4
                CD9F9DCDA09CE1C2B7FBE7D6FFF1DEFFECDAFCE9D7FCE8D7FCE8D7FCE8D7FCE8
                D7FFEADAFEE7D7FAE3D4F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
                E3CDC1FBE5DAFCE6DBFBE4DCFAE3DBFAE3DBF7E1DBF6E0DAF4E1DAF5E3DCF5E3
                DCF5E3DCF3E4DBF4E3DAF4E4D8F4E4D8F5E3D8F6E3DBF6E3DBF5E5D9F5E5D9F3
                E5D9F2E4D8F2E4D8F4E4D8F8E6DBF6E2D7FAE4D9FFE7DBFFECE0FFEDDEFBE4D4
                DFC6B6C3A999DEC8BC00F9E1D5CEBEB2CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0
                DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DE
                F4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEFE2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDD
                D4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBFC5B1A0C0AB9CF9E1D500F9E1D5F9E1D5
                C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DFC9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8
                D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DD
                CECBDACCC6D8CAC4D5C9BFD2C7B9CFC2B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5
                CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EE
                DDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEBE6ECEAE9EFEDEDF5F0F1F7F1F2F5EDED
                F5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EBDFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6
                C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CBF9E1D5F9E1D5F9E1D500}
              Layout = blGlyphTop
              ParentFont = False
              Spacing = 0
              Visible = False
              OnClick = SpeedButton93Click
            end
          end
          object Panel13: TPanel
            Left = 2
            Top = 260
            Width = 398
            Height = 60
            Align = alBottom
            TabOrder = 2
            Visible = False
            object ImgQrCode: TImage
              Left = 1
              Top = 1
              Width = 90
              Height = 58
              Align = alLeft
              ExplicitLeft = -31
              ExplicitTop = -23
              ExplicitHeight = 85
            end
            object sb20: TSpeedButton
              Tag = 20
              Left = 297
              Top = 1
              Width = 80
              Height = 58
              Hint = 
                'Imprimir registros... '#13'Bot'#227'o da direita altera configura'#231#227'o etiq' +
                'ueta...'
              Align = alLeft
              Caption = 'S'#243' Estoque'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                160F0000424D160F000000000000360000002800000025000000220000000100
                180000000000E00E000000000000000000000000000000000000F9E1D5F9E1D5
                F9E1D5D5C8C6D0C3C1D1C2C0D9C8C5DECEC7E1D1CAE1D3CDE1D5D3E1D7D7E2DA
                DBE3DEDDE5DDDDF3E9E9F5E9E7F5E9E5F5E6E3F1E2DFEFE0DDEBDCD9E7D9D3E0
                D4CEDDD1CBD9CFC8D7CEC5D5CBC1D1C8BAD3C9B8CDC3B2CCBFB1D2C3BACFBCB9
                F9E1D5F9E1D5F9E1D500F9E1D5F9E1D5CFBFB8CBB9B2D1BEB7DAC4BFE1C9C3E6
                CDC3E5CFC3E5D0C8E5D3CCE5D6D3E6DAD6EADED8E9DDD7F4E6E0F2E2DCF1DED6
                EEDBD3EDD8D0ECD7CFEAD6CBE6D4C9E3D2C5E0CEC3DCCCC0DBCBBFD9C8BBD6C6
                B5D6C5B0D2C1ACD1BDABD4BDAEC4AAA3C8B1A9F9E1D5F9E1D500F9E1D5CABBB2
                CFBCB4DBC5B9E5CBBDEACEC3ECCEC3EBCBBEE9CCBEE9CDC2E9CFC3E4CEC3E3CF
                C4E3D2C5E1D1C1E8D5C6E9D4C5E9D5C4EAD3C3E7D0C0E7D0C0E7D1BFEBD3BFEC
                D4C2EDD5C3EDD3C5EDD3C5EAD0C2EAD2C0EAD2BCEAD2BAECD1BCEDD2BDDDC1B0
                D2B8A8C4B09FF9E1D500D2C5B5C2B0A5E1CBBFEBD2C2EED4C4F1D4C5F3D3C6F6
                D4C7F7D5C8F6D6C9F4D7C9F2D8C8EFD8C8EED8C6E9D5C3EBD5C3EAD4C2ECD6C4
                EDD7C5F2DAC8F1D9C5F0D9C3F1D9C3F0D8C2F2D7C3F2D5C6F2D5C7F4D7C9F5D8
                C9F4D9C5F4DAC2F4D9BFF4D9BFEED2BAE2C5B0C3A998D3BDB100C8B9A9C5B2A3
                E9D2C3ECD3C3EED4C4F1D7C7F8DBCDFEDED1FEDED1FCDCCFF9DCCDF6DCCBF5E0
                CBF7E2CDF6E3CEF3DFCDF2DECCF2DDCEF2DDCEF2DBCCF2DBCBF3DEC9F5DDC9F6
                DDC9F6DCCBF7DCCEF8DCD1F8DCD1F7DCCEF8DECDF9E1CBF8DEC6F5DCC2F5DCC2
                ECD0B8CDAD9AD2B7A900CCBCABD0BBACE8D1C2EED7C8EFD8C8F4DBCBF8DFCFF9
                DDD2F7DBD0F6DBCDF7DFCDF5E0CBF4DFC9F2DFCAF3E2CFF0DCCBEFDCCDF0DACE
                EDD9CEF2DCD1F4DED2F5E1D0F7E1CFF8E0CEF7DECEF8DED0F9DFD3EFD6CCEED6
                CAF2DBCBF6E1CCF7E2CCF6E0C7F5DDC5ECD1BCD1B09DCFB2A400CFBEABD4BDAD
                E9CFC1EDD7CBF0DBCCF2DECDF2DECDFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4B9AA
                9ABCB1A4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4C3
                AF9FE2DCD5FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F3E2CDF2E0C9EED9C4
                E7CEBAD3B1A1CDB0A200CDBCA9D4BBABEBD1C3EFD7CBF2DDCEF4E0CEF0DFCCFC
                E6D4FCE6D4FCE6D4FCE6D4947A6462321963351ADCD8D1FCE6D4FCE6D4FCE6D4
                FCE6D4FCE6D4FCE6D4FCE6D4795E4D583226684D3BE8E5E2FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4EFE1CBF0DFCAF0DBC6EBD1C0D3B1A1CEB1A300CFBDACD3B9AB
                EBD0C2F1D7C7F5DDCBF4DFC9F2E0C9FCE6D4FCE6D4FCE6D4D8CFC35B32129468
                4F672F0DD0C0B5FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4A88B6A5F2F2787
                747466391ADFD9D3FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F2E3C9F5E1C8F3DAC6
                F0D2C1D5B1A1CEB0A500CFBDACD3B9ABEBD1C1F3D7C6F7DCC8F6E0C7F1E0C6FC
                E6D4FCE6D4FCE6D4FCE6D47F6447633D2570381A703C1A6C40216B4324754929
                794B297146266F49267D380384380D5F2B178B614EFCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F3E2C8F6E0C7F4D9C4F0D0BDD7B0A2CEB0A500CFBCADD3B9AB
                EDD0C1F4D6C3F9DCC7F7DFC9F3DEC8FCE6D4FCE6D4FCE6D4FCE6D4C4CEE14C81
                BF428AD64B6FA7526490585A7661505A614B4B63504A64504D625861636A8972
                5D656C4129E1DEDDFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F4DFC9F7DFC9F6D8C5
                F0CFBCD9AFA2D0B0A500CFBCADD3B9ABEDD0C1F3D8C3F7DCC7F6DECAF2DECCFC
                E6D4FCE6D4FCE6D4FCE6D4FCE6D488A5CA78B0E46FB2F26EB4F864B0FF57ADFF
                5AA9F95BA2F8439BFF4597FB5D96DF695D62602503D2CCCBFCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F5E0CBF8DFCBF7D9C6F1D0BDD9AFA2D2AFA500CFBCADD3BAAA
                EBD1C0F1D8C4F4DCC8F2DECDF0DDCEFCE6D4FCE6D4FCE6D4FCE6D4EAECDE8F5E
                487C31196B40256F4932765241785851785A57715556715557754B417E3D1A72
                210080442AFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F3DFCEF5DFCDF3DAC6
                F0D0BDD9AFA2D3AFA500CFBCADD4BAAAEBD1C0EFD8C2F0DDC8EFDCCDF0DDD0FC
                E6D4FCE6D4FCE6D4FCE6D4FCE6D4E5DCD3B99686B0755D9C5F3E904E1F853E06
                7830007728007B26007C25007C2C00712E03B69B85FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F3DFCEF5DFCDF2DAC6EED0BDD7B0A1D3B0A300CFBCADD4BAAA
                EDD2BEEEDAC1F0DEC7F0DDCEF0DDD0FCE6D4FCE6D4FCE6D4FCE6D4E5D8C56F74
                8F6A9CCC87919A97A0BAA9BEC7BEC2B8CCBCAED4B9ABCAB399BAA3948C614975
                3E1BFCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F4DECCF5E0CBF2DCC3
                EDD3BBD5B19FD2B0A300D1BCADD4BAAAEBD2BEEFDBC2F1DFC8F0DDCEF0DDCEFC
                E6D4FCE6D4FCE6D4E5E1D86C4D493F84D055779E622E195F52564F597C4F6A93
                4B7DC15B87C498B2BFFCE6D4CBB7AD622F15DEDDD5FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F5DFCDF7E0CAF2DDC2EDD4BAD5B19FD0B0A300D3BBAFD4BBAB
                E9D1BDF1DAC4F1DCC7F1DDCCF0DDD0FCE6D4FCE6D4FCE6D47D5025652D286499
                D6664D457C616B7164566D40386451604C5D683861964D7CA8E1EBEDF4DBCC72
                340CCEC5B8FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F5DECEF6DECAF4DDC3
                EED3B8D4B19DCEAEA100D2BAAED4BBABE8D0BCF1DAC4F3DBC7F1DDCCF0DDCEFC
                E6D4FCE6D48D6947642D1B706C886B404769330C61737F5765837081B17A8BB7
                595F5C5189D34A87C4D7E1E5FFF4EA693716B9A495FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F5DECFF5DDCBF3DBC3EED3B9D5B29ECCAFA000D2BAAED4BBAB
                E9D1BDF2DAC4F3DCC6F3DDCBF2DDCEFCE6D4B3A69E6818007353556596CA7142
                2F6D7092765850753518634C58724A396F4C404B6AA74478B4D6DFE5FCE6D472
                44249B7A69FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F6DED2F5DCCCF3D9C8
                EED0BDD6B2A0CCAFA000D2B9AFD4BBABEAD2BEF2DAC4F4DCC8F3DDCBF3DCCDE1
                D2C681401D6A3D1F6151437F3B1072370D6E70977D4F457067626B90C46E4A35
                70696C4E78AA4B73B8C6D7E4FCE6D495654D805A3FFCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F4E0CFF3DCCCF3D9C8EED0BDD5B19FCCAFA000D1B8AED3BAAA
                EAD2C0EFD7C5F4DCCAF5DECEF3DFCE7A49297D34036C91C36884B86334165073
                916347466B2F0D56506A5D536666411851636F3F70B3456FB8B4CADEFCE6D4AF
                93845F3717EAEAE7FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F4E3C9F2DEC5F2DAC4
                ECD1BCD2B19DCBAF9E00CEB5ABD2B9A9EBD2C2EDD6C7F3DCCDF6E1D2F4E2D16E
                3E1E672C0763748E71494C756A7468B7FF6D44437F7D8184C6F27656508B5243
                B7BFD7B2BCD1B2C2DADAE0E5FCE6D4DBD2C2461C00C5B7AAFCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4F1E3C7EFDEC4F1DAC4EDD2BDD2B19DCBAF9E00CFB6ACD4BDAD
                EFD8C8F1DBD0F4DFD7F6E5D8F5E5D4E9DED5A6836B743E187B3007834B2C7656
                2A6F2A00775038886955743C146E441A796F5A7E715F8684709C9792E2E4E4FC
                E6D473472F825D44FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4F1E1CAF1DEC9F6DECC
                F2D8C7D5B5A2CBB1A100D2B9AFD9C2B3F5E0D1F6E2D7F7E4DCFCE6D4FCE6D4FC
                E6D4FCE6D4ECE4E4D5CABDCEB4A5C4A880C1A692BC9C8CBE9F81B8AF97C3B299
                C4B1A1D2C9B6E9E7D2FCE6D4FCE6D4FCE6D4C19D89461300D9D4CDFCE6D4FCE6
                D4FCE6D4FCE6D4F2E0CFF4E0CFF9E2D3F9DFCFD7B9A8CDB2A400D2B9AFD8C1B2
                FAE6D5FAE7DAFAE9DCF6E6D6FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FC
                E6D4F1EBE46031147D5238FCE6D4CFBCB26A43366E5F58F6E3D6F4E1D4FBE6D7
                FCE5D6D9BAABC8AEA200D0B6AFD5BEAFF5E1D0FAE6D5FCE8D7F8E6D5F7E5D4FC
                E6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4
                FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4D9C7B8693C1E7A55317239
                0F672E0D9B8271F9E6D9F8E5D6FBE8D9F8E4D3D8BBACCBB1A500CDB6AED6C0B4
                F8E4D3F9E3D1F8E3CEFAE3D3FBE4D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6
                D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FCE6D4FC
                E6D4FCE6D4FCE6D4E1D4C9805835744522CFB7A6FCE6D4F7E5D4F5E6D3FBECD9
                F8E7D4D2B8A8C7AEA400C8B1A9D3BDB1F4E0CFFFE9D7FDE5D3FEE5D5FFE6D8FB
                E3D7FAE2D6FBE3D7F8E2D6F9E3D7F6E3D4F5E4D7F5E4D7F6E6DAF6E5DCF5E3DC
                F3E2D9F6E5D8F5E5D5F7E4D5FAE5D6FBE6D7FDE6D7FFE5D7FFE5D5FFE5D5FDE4
                D4FCE6D4FBE7D5FCEBD8F9EAD7F9EAD7F0DECDD3B8AAC5ACA200C9B4ACD4BEB2
                FAE5D6FFE7D9FBE1D3FAE0D4FDE3D7FCE1D7FDE3D7FCE4D8F8E3D4F9E4D5F7E5
                D4F5E5D5F6E6D6F6E6D6F6E5D8F6E4D9F7E5DAF7E4D5F8E6D5FAE5D6FBE6D7FB
                E6D7FDE6D7FDE6D6FFE6D6FDE4D4FCE4D2FDE7D5FCE6D4F7E3D2F3E0D1F9E6D7
                F6E0D4D8BDAFC9B0A600CEB9B1D2BCB0FCE7D8FDE5D9F9E1D5F8DFD5FAE1D7FC
                E3D9FEE5DBFFE6DCFBE5D9F8E5D8F6E5D8F6E5D8F4E4D7F4E3D6F4E3D6F5E3D8
                F7E5DAF8E5D8F8E5D6F9E6D9F9E6D9F9E6D9F9E6D9F9E6D7FBE6D7FBE6D7FDE6
                D6FFEADAFEE7D7FAE3D4F8E3D4FFE9DDFAE2D6CFB4A6CEB8AC00DAC5BDCAB4A9
                E3CDC1FBE5DAFCE6DBFBE4DCFAE3DBFAE3DBF7E1DBF6E0DAF4E1DAF5E3DCF5E3
                DCF5E3DCF3E4DBF4E3DAF4E4D8F4E4D8F5E3D8F6E3DBF6E3DBF5E5D9F5E5D9F3
                E5D9F2E4D8F2E4D8F4E4D8F8E6DBF6E2D7FAE4D9FFE7DBFFECE0FFEDDEFBE4D4
                DFC6B6C3A999DEC8BC00F9E1D5CEBEB2CBBBAFE3D2C9EBDAD1EEDBD3ECD9D2F0
                DAD4F0DAD4EDD9D4EFDCD7F0DFDCEFE0DDEFE3DFF2E6E0F3E7E1F5E8E0F5E5DE
                F4E4DDF5E3DCF4E1DCF1E1DBF0E0DAEFE2DAEFE2DAEDE0D8ECE0D6ECDDD4EEDD
                D4EFDCD5EAD5CDEAD4C9EAD4C8E3CEBFC5B1A0C0AB9CF9E1D500F9E1D5F9E1D5
                C6C2B7C6BDB4C3B8B0CDBDB6D9C7C0DFC9C3DEC8C2E0CDC6E2D2CCE2D6D2E1D8
                D4E1DAD7E3DEDBECE5E2F1E8E5F1E4E2F0E1DEEDDCD9EAD8D7E7D7D8E3D3D4DD
                CECBDACCC6D8CAC4D5C9BFD2C7B9CFC2B4CFBFB8CDBDB7C9B8AFC2B2A6C2B2A5
                CCBFB1F9E1D5F9E1D500F9E1D5F9E1D5F9E1D5DDDAD2DAD4CFDFD4D0E8D9D6EE
                DDDAF0E0DAEFE2DAEEE3DBEEE8E1EEEBE6ECEAE9EFEDEDF5F0F1F7F1F2F5EDED
                F5ECE9F5EAE6F2E6E4F1E5E5EFE3E3EBDFDDE8DDD9E7DDD6E5DCD3E4DBCEDED6
                C9DED2CCDDD3CCDBCFC9D8CFC6DFD5CBF9E1D5F9E1D5F9E1D500}
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              OnClick = sb7Click
              ExplicitLeft = 330
              ExplicitTop = -4
              ExplicitHeight = 85
            end
            object sb10: TSpeedButton
              Tag = 10
              Left = 217
              Top = 1
              Width = 80
              Height = 58
              Hint = 
                'Imprimir registros... '#13'Bot'#227'o da direita altera configura'#231#227'o etiq' +
                'ueta...'
              Align = alLeft
              Caption = 'S'#243' Imprimir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                9E0F0000424D9E0F000000000000360000002800000026000000220000000100
                180000000000680F000000000000000000000000000000000000F5E6DDF5E6DD
                F5E6DDD3C9BFD2C8BED6CAC0D5C8C0D8CAC4D8CCC6DCD3CADCD3CAE7DED5E6DE
                D7EBDFDDEFE5E5F2E8E8F2EBE8F4EEE9EFEAE1EBE4DBE9E0D7E6DAD4E7D9D3E5
                D5CFE3D3CDE2D0C9E1D0C7DECDC4DAC7BFD8C3BBD6C1B9D1BEB6D1C1B5CFBFB3
                CEBDB4FEECE5F5E6DDF5E6DD0000F5E6DDF1E3D7D8C5B6D3C2B5D2C1B4DBC5B9
                DEC8BDDEC9C1E0CEC3E1D1C4E2D2C5E2D4C8E4D5CCE6D6D0EBDCD9EADBD8EBDD
                D7ECE2D8ECE3D6EDE0D2EDDDD1EED9D1F0DBD3E8D3CBE9D3C8E9D1C5E6CEC2DF
                CABBDDC6B7DEC4B8DFC3B8DBC1B3D5BEAFD0B9A9CEB7A8D0B7ADEBD7D2F5E6DD
                0000F6EDE3DAC7BAC6AF9FD8C3B4D9C4B5E5CBBDE9CDC2E9CFC3ECD2C4E7D0C0
                E9D3C1E2CEBDE3CEBFDFCBC0E4CFC7E6D1C9E5D3C8E6D5C8E5D5C5E7D3C2E7D0
                C1E8CEC2E6CCC0E6D0C4E2CDBEE2CBBBE5CFBDE6D2C0E9D3C1E8CFBFE7CDBDEB
                D3C1E6CEBCE0C8B4DDC5B1BEA494D4BEB3F5E6DD0000E9DDD1CDB6A7D7BDADE5
                CCBCEAD1C1F3D6C7F3D6C7F3D6C8F3D6C7EED5C1F3DAC6F3DBC7F2DBCBF1D9CD
                EFD9CEECD6CBEFD9CDECD7C8E9D5C4EBD5C3F1D8C8F4D9CBF0D6C8ECD5C5EED8
                C6F3DBC7F2DDC8F0DBC6EED9C4F0D7C7F3D9C8F5DDC9F5DEC8EED8BFECD4BCD2
                B7A3C9AFA1DFD3C90000E0D3C5C9B0A0E7C9B8EDD3C2F5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF0D9BFEFD6BCE3C4AFC4AA99D2C2B50000E0D3
                C5CEB4A4E2C4B1F0D7C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDEEEFF0D3D5D8A2A3A6FCFCFCF5E6DDF5E6DDF5E6DDF0F0F0
                D5D5D5B4B4B4A3A2A2E5E5E5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5DAC0E2C1ADCCAE9BD4C1B20000DED3C5D1B9A7DDC2AEEED6C2F5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2E5E8E6DCDADCBCC0C0C4
                C5C1B3B4B29A999EEDF0EFF8F7F7BBBAB9AFB0B0B1B3B1B4B4B18E9091929494
                CBCBCBF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF8DBC6E0BFABD0AF
                9FD5BFB30000DACFC1CEB7A7DFC6B2ECD4C0F5E6DDF5E6DDF5E6DDEAF1F2C7CD
                D4BFC5CAD0CCC7C0BEB6ABACA0819279826E4B99784CA57D4FCFBEA9756C631D
                1917BAB7B8D0CED0C8C8CAD1D0D28281829494949D9D9D8C8C8CCBCBCBF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5D8C3E6C2B0D0AF9FD6BEB20000DDD2C4CFB8A8
                DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF0EDE4E2CFBBEFCEB4FFFADDD7CDA9A8A9
                858B9A7156623C5A573161502E3B2E231D1C19050505BBBDBDE6E8E5B2B3AFA2
                A39D9B9A9B7E7E7E888888929292838383A6A6A6EBEBEBF5E6DDF5E6DDF5E6DD
                F3D8C3E5C4B1CCAE9DD5BFB30000DED0C4D0B7A7DEC2B1EFD7C3F5E6DDF5E6DD
                F5E6DDF3E7DBF6C29EFFB279FFDFACF8E6BEE2D9B5C0BB953E45341E2211181E
                153337395D595B8F8789C0C0BFC1C8C3929F958A9D8EC2BFBF9492937C7C7C8B
                8A8A9293938585858B8B8BF5E6DDF5E6DDF5E6DDF3D8C3E5C4B0CCAE9DD5C0B1
                0000E0D0C4D1B7A7E0C2B1F0D6C5F5E6DDF5E6DDF5E6DDB3B0B1B0A39DC59B7F
                915B2E695137443C3025251B3F3F406C696B948E93C6C2C4B7B8B89392912422
                22505251B4B9B5B2BBB4989595B6B5B48F8F8F797B7B7C7E7E8E8E8E8D8D8DA9
                A9A9EEEEEEF5E6DDF1D9C1E3C4ADCAAF9BD4C2B10000E0D0C4D4B7A8E2C1B1F2
                D6C5F5E6DDF5E6DDD0CECEAAABAA322E31282728261714322B2855575A86888C
                C9C6C7B9BDBD9FA2A24A49482526291114131C1B1C1815175B5759B1AEAF8E8C
                8BB6B3B2BFBDBC7475757578787577778584857E7E7F8B8B8BCECECDF1DAC0E3
                C4ADCAAF9AD2C2B10000E1CFC4D6B7A8E2C1B1F2D7C3F5E6DDF5E6DDDADADACF
                D0D0C5C6C5C5C6C58B8C8C69696A5353524747464343434746464D4C4C505050
                4E4E4E4C4C4C494949464646434444414142A09C9BC1BDBCBEBBB7C3C0BD9C9B
                997977767676757475767B7A7BA4A4A4F1DAC0E1C5ADC7AF99D1C3B10000E1D0
                C3D4B7A8E2C1B1F1D6C2F5E6DDF5E6DDF1F1F1989C997377737979784746464F
                4F4F575859595B5C5F5F5F6060605F5F5F5E5E5E5D5D5D5C5C5C585858555555
                5959596464645E5E5E8D8A89BCB8B6C2BFBAC8C4BFA9A5A47C7A797777786B6B
                6D97999AF1DAC0E1C5ADC7AE9AD1C2B20000DFD2C4D2B8A8E0C2AFEED6C2F5E6
                DDF5E6DDF5E6DD9397946C716C9897969393936C6C6C626364696B6C6F6F6F6E
                6E6E7070706F6F6F6E6E6E6C6C6C6969696666666D6D6D727272707070676867
                817F7ECAC4C0C8C1BDCBC7C3B8B6B27473716F6F6F97999AF3D9C1E1C3B0C7AD
                9DD1C1B50000DDD2C4D2BAA8DFC4B0EED6C2F5E6DDF5E6DDF5E6DDF5E6DDE4E4
                E3BDBBBABEBCBAB0AFAD8E8D8B7A7A7A8080808181818181818080807E7E7E7D
                7D7D7979797777777F7F7F8080808181817F7E7F787778A7A3A1C5C0BCC8C3C0
                CEC9C79A9794726F6D999898F1D9C1E1C3B0C7AD9DD2C0B50000DED3C5D0BAA8
                DEC3AFEDD5C1F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF1F1F0B6B4AFBAB9B4BEBD
                B9AFACAB8C8C8D8F8F8F9191919292929090908E8E8E8888888C8C8C9191918F
                8F8F908E908F8E908E8F918988889E9C99BCB7B4C9C4BFC9C3BEA39F9BA4A19F
                EFD9C0E2C6AEC7AC98D8C2B60000DDD2C4CFB9A7DCC3AFEED6C2F5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDEAE7E7D1CDCAC3BFB9C4C0BABEB8
                B5B2B0B0B0B0B1AFB0B0ABABABADADADA7A7A7A7A7A7A8A8A8A9A9A9AFAFAFBF
                BFBFCCCCCCCFCECEC5C5C5A6A8A9F5E6DDF5E6DDEEDAC1E3C8AEC7AC97DAC2B6
                0000DDD2C4CEB8A6DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDD6D0CCC9C4BFC9C2BDC7C3BEC1BDBBB7B7B7B6B6
                B6B7B7B7BDBDBDC5C5C5D9D9D9E2E2E2EAEAEAF3F3F3F3F3F3E8E8E8D5D5D57C
                7E7DF1F2F2F5E6DDEEDAC1E1C8AEC5AD97D7C1B50000DCD0C4CEB7A7DCC3AFEC
                D7C2F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF1EDEBDBD7D3D0CCC7D6D1CED8D7D7CBCBCBB8B8B8E5E5E5F4F4F4FBFB
                FBFAFAFAF9F9F9EFEFEFEBEBEBECECECDCDCDC6F6F6FCACBCBF5E6DDEDDCC2E0
                C9AFC4AC96D5C2B50000DCD0C4CEB7A7DCC2B1ECD6C4F5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDD7D7D7ADADADE4E4E4F8F8F8F8F8F8F7F7F7F7F7F7F1F1F1EEEE
                EEEDEDEDEAEAEA767575979797F5E6DDEDDCC1E0C9AFC3AC96D3C2B50000DBCF
                C3CDB6A7DDC3B2EFD9C7F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDDFDFDFA7A7A7
                DCDCDCF8F8F8FAFAFAFBFBFBF9F9F9F2F2F2EEEEEEEAEAEAEBEAEAB5B5B58D8D
                8DEAEBEBECDBC0DFC8AEC2AB95D1C1B40000D9D0C3CCB7A8E0C7B7F5DFCDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCDCDCDD9D9D9F9F9F9FBFBFBFBFBFB
                FAFAFAF2F2F2EFEFEFEBEBEBE8E8E8E7E6E6B9B9B99E9E9EF2DFC4E5CBB3C4AC
                98D0C0B40000DAD0C6CDB8A9E3CABAFBE5D3F5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF3F3F3F3F3F3F9F9F9F9F9F9F7F7F7F1F1F1EDEDEDEBEBEB
                E7E7E7E3E3E3D4D4D4919191FBE6CBEAD0B8C8AF9BD3C1B60000DCD0C6D0B8AC
                E3C9B9FFEAD8F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2EF
                EFEFF4F4F4F4F4F4F3F3F3EFEFEFECECECE9E9E9E5E5E5E0E0E0E2E2E2A2A2A2
                FFE9D1F0D4BCCDB29ED2C0B50000DDD1C7CFB7ABE6CBBDFEE7D7F9E5D3F5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5F5F5ECECECF1F1F1F1F1F1F1F1F1EC
                ECECEAEAEAE8E8E8E5E5E5DEDEDEE4E4E4C4C4C4FFE7CFF3D4BDCCB19DD7C3B8
                0000DBCEC6D0B7ADECD1C3FFE8D8FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDEBEBEBEEEEEEEEEEEEEDEDEDEAEAEAE8E8E8E5E5E5E3E3E3E0
                E0E0E3E3E3E3E3E3FFE6CEF9D8C4CEB09FD3BCB40000DBCEC6D0B7ADECD0C5FA
                E3D4FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDE7E7
                E7E6E6E6E4E4E4DEDEDEDDDDDDDCDCDCDCDCDCDBDBDBE2E2E2E8E8E8FFE6CEF6
                D5C1CBAD9CD5C0B80000DECEC8D2B6AFEDCFC4F9E2D3F6E2D1F5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCCCCCCD6D6D6E1E1E1EBEBEBF5F5
                F5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDFFEAD4F3D3C0C7AA9BD2BFB80000DFCF
                C9CEB2ABE7C9BEFFE9DAFCE8D7F7E3D1F6E2D1FAE5D6F7E4D7F6E4D9F6E6DAF4
                E5DCF5E9DFF8E9E0F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDFFECD6ECCEBBC8AE9ED9C7C00000EEDED8D4B8B1D7B9AEF7DDCFFFE8
                D8FFECDAFFECDCFFE9DDFBE5DAF9E5DAF6E6DAF1E2D9F1E1DAF2E2DBF0E0D9F4
                E1DCF3E1DAF5E3DCEEDFD6F6E5DCF3E4DBF1E2D9F6E6DAF6E4D9F6E4D9F8E3DB
                F6E4D9F2E5D7F3E4D4F4E4D4F6E3D4FEEBDEFFECDDFEE9D4F9E1CBD3B5A2C4AB
                9BE2D2CB0000F5E6DDE5CFC9CAB1A7DCC6BAE7D2C3F0DBCCF4DFD0F2DDD5EED8
                D2EFDCD5F1DFD8EFDCD7EFDFD9F4E3E0F6E5E2F7E6E3F5E6E3F6E8E2F3E5DFF3
                E3DDF0E0DAF6E4DDEFDDD6F3DED6F0DBD3EEDBD3F0E0D4EFDFD3EBDBCEEBD9CE
                EEDACFF2DED3EFDCCFE5CEBEDCC6B4C2AC9AD5C2B3F5E6DD0000F5E6DDFAF2EB
                E3D6CEC7B6ADCFBDB2D0C0B4D3C2B9D2C1BED7C5C4DAC8C7DFCBCAE5D1D0E8D6
                D5ECDAD9EFE0DEF0E4E2EFE6E3EFE6E3EEE2E0ECDDDBEAD8D7EAD5D4ECD5D3E6
                D0CAE1CEC6DDCEC5D7CBC1D6C5BCD5C2BBD3BFBACFBBB6CAB7B0CCB7AFC8B5A8
                BFAEA1DACFC1EFE9DCF5E6DD0000F5E6DDF5E6DDFAF4EDF0E4DEEEE1D9E7DAD2
                E4D8D2E6DAD8E9DDDDE9DBDDE9DBDCEFDFE0F0E2E3F3E5E6F3E9E9F3EEEDF3EF
                EEF4F0EFF4EFEEF5EBEBF6E8E9F8E6E7FAE6E5F6E1DFF3E0DBEBE2D9E7DED5E6
                D9D1E7D7D1E5D6D4E3D4D2DBCCC9DECEC8E8D7CEEFE3D9F5E6DDF5E6DDF5E6DD
                0000}
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu1
              ShowHint = True
              Spacing = 0
              OnClick = sb7Click
              ExplicitLeft = 494
              ExplicitHeight = 85
            end
            object sb7: TSpeedButton
              Tag = 1
              Left = 377
              Top = 1
              Width = 120
              Height = 58
              Hint = 
                'Imprimir registros... '#13'Bot'#227'o da direita altera configura'#231#227'o etiq' +
                'ueta...'
              Align = alLeft
              Caption = 'Imprimir/estoque'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                9E0F0000424D9E0F000000000000360000002800000026000000220000000100
                180000000000680F000000000000000000000000000000000000F5E6DDF5E6DD
                F5E6DDD3C9BFD2C8BED6CAC0D5C8C0D8CAC4D8CCC6DCD3CADCD3CAE7DED5E6DE
                D7EBDFDDEFE5E5F2E8E8F2EBE8F4EEE9EFEAE1EBE4DBE9E0D7E6DAD4E7D9D3E5
                D5CFE3D3CDE2D0C9E1D0C7DECDC4DAC7BFD8C3BBD6C1B9D1BEB6D1C1B5CFBFB3
                CEBDB4FEECE5F5E6DDF5E6DD0000F5E6DDF1E3D7D8C5B6D3C2B5D2C1B4DBC5B9
                DEC8BDDEC9C1E0CEC3E1D1C4E2D2C5E2D4C8E4D5CCE6D6D0EBDCD9EADBD8EBDD
                D7ECE2D8ECE3D6EDE0D2EDDDD1EED9D1F0DBD3E8D3CBE9D3C8E9D1C5E6CEC2DF
                CABBDDC6B7DEC4B8DFC3B8DBC1B3D5BEAFD0B9A9CEB7A8D0B7ADEBD7D2F5E6DD
                0000F6EDE3DAC7BAC6AF9FD8C3B4D9C4B5E5CBBDE9CDC2E9CFC3ECD2C4E7D0C0
                E9D3C1E2CEBDE3CEBFDFCBC0E4CFC7E6D1C9E5D3C8E6D5C8E5D5C5E7D3C2E7D0
                C1E8CEC2E6CCC0E6D0C4E2CDBEE2CBBBE5CFBDE6D2C0E9D3C1E8CFBFE7CDBDEB
                D3C1E6CEBCE0C8B4DDC5B1BEA494D4BEB3F5E6DD0000E9DDD1CDB6A7D7BDADE5
                CCBCEAD1C1F3D6C7F3D6C7F3D6C8F3D6C7EED5C1F3DAC6F3DBC7F2DBCBF1D9CD
                EFD9CEECD6CBEFD9CDECD7C8E9D5C4EBD5C3F1D8C8F4D9CBF0D6C8ECD5C5EED8
                C6F3DBC7F2DDC8F0DBC6EED9C4F0D7C7F3D9C8F5DDC9F5DEC8EED8BFECD4BCD2
                B7A3C9AFA1DFD3C90000E0D3C5C9B0A0E7C9B8EDD3C2F5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF0D9BFEFD6BCE3C4AFC4AA99D2C2B50000E0D3
                C5CEB4A4E2C4B1F0D7C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDEEEFF0D3D5D8A2A3A6FCFCFCF5E6DDF5E6DDF5E6DDF0F0F0
                D5D5D5B4B4B4A3A2A2E5E5E5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5DAC0E2C1ADCCAE9BD4C1B20000DED3C5D1B9A7DDC2AEEED6C2F5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2E5E8E6DCDADCBCC0C0C4
                C5C1B3B4B29A999EEDF0EFF8F7F7BBBAB9AFB0B0B1B3B1B4B4B18E9091929494
                CBCBCBF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF8DBC6E0BFABD0AF
                9FD5BFB30000DACFC1CEB7A7DFC6B2ECD4C0F5E6DDF5E6DDF5E6DDEAF1F2C7CD
                D4BFC5CAD0CCC7C0BEB6ABACA0819279826E4B99784CA57D4FCFBEA9756C631D
                1917BAB7B8D0CED0C8C8CAD1D0D28281829494949D9D9D8C8C8CCBCBCBF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5D8C3E6C2B0D0AF9FD6BEB20000DDD2C4CFB8A8
                DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF0EDE4E2CFBBEFCEB4FFFADDD7CDA9A8A9
                858B9A7156623C5A573161502E3B2E231D1C19050505BBBDBDE6E8E5B2B3AFA2
                A39D9B9A9B7E7E7E888888929292838383A6A6A6EBEBEBF5E6DDF5E6DDF5E6DD
                F3D8C3E5C4B1CCAE9DD5BFB30000DED0C4D0B7A7DEC2B1EFD7C3F5E6DDF5E6DD
                F5E6DDF3E7DBF6C29EFFB279FFDFACF8E6BEE2D9B5C0BB953E45341E2211181E
                153337395D595B8F8789C0C0BFC1C8C3929F958A9D8EC2BFBF9492937C7C7C8B
                8A8A9293938585858B8B8BF5E6DDF5E6DDF5E6DDF3D8C3E5C4B0CCAE9DD5C0B1
                0000E0D0C4D1B7A7E0C2B1F0D6C5F5E6DDF5E6DDF5E6DDB3B0B1B0A39DC59B7F
                915B2E695137443C3025251B3F3F406C696B948E93C6C2C4B7B8B89392912422
                22505251B4B9B5B2BBB4989595B6B5B48F8F8F797B7B7C7E7E8E8E8E8D8D8DA9
                A9A9EEEEEEF5E6DDF1D9C1E3C4ADCAAF9BD4C2B10000E0D0C4D4B7A8E2C1B1F2
                D6C5F5E6DDF5E6DDD0CECEAAABAA322E31282728261714322B2855575A86888C
                C9C6C7B9BDBD9FA2A24A49482526291114131C1B1C1815175B5759B1AEAF8E8C
                8BB6B3B2BFBDBC7475757578787577778584857E7E7F8B8B8BCECECDF1DAC0E3
                C4ADCAAF9AD2C2B10000E1CFC4D6B7A8E2C1B1F2D7C3F5E6DDF5E6DDDADADACF
                D0D0C5C6C5C5C6C58B8C8C69696A5353524747464343434746464D4C4C505050
                4E4E4E4C4C4C494949464646434444414142A09C9BC1BDBCBEBBB7C3C0BD9C9B
                997977767676757475767B7A7BA4A4A4F1DAC0E1C5ADC7AF99D1C3B10000E1D0
                C3D4B7A8E2C1B1F1D6C2F5E6DDF5E6DDF1F1F1989C997377737979784746464F
                4F4F575859595B5C5F5F5F6060605F5F5F5E5E5E5D5D5D5C5C5C585858555555
                5959596464645E5E5E8D8A89BCB8B6C2BFBAC8C4BFA9A5A47C7A797777786B6B
                6D97999AF1DAC0E1C5ADC7AE9AD1C2B20000DFD2C4D2B8A8E0C2AFEED6C2F5E6
                DDF5E6DDF5E6DD9397946C716C9897969393936C6C6C626364696B6C6F6F6F6E
                6E6E7070706F6F6F6E6E6E6C6C6C6969696666666D6D6D727272707070676867
                817F7ECAC4C0C8C1BDCBC7C3B8B6B27473716F6F6F97999AF3D9C1E1C3B0C7AD
                9DD1C1B50000DDD2C4D2BAA8DFC4B0EED6C2F5E6DDF5E6DDF5E6DDF5E6DDE4E4
                E3BDBBBABEBCBAB0AFAD8E8D8B7A7A7A8080808181818181818080807E7E7E7D
                7D7D7979797777777F7F7F8080808181817F7E7F787778A7A3A1C5C0BCC8C3C0
                CEC9C79A9794726F6D999898F1D9C1E1C3B0C7AD9DD2C0B50000DED3C5D0BAA8
                DEC3AFEDD5C1F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF1F1F0B6B4AFBAB9B4BEBD
                B9AFACAB8C8C8D8F8F8F9191919292929090908E8E8E8888888C8C8C9191918F
                8F8F908E908F8E908E8F918988889E9C99BCB7B4C9C4BFC9C3BEA39F9BA4A19F
                EFD9C0E2C6AEC7AC98D8C2B60000DDD2C4CFB9A7DCC3AFEED6C2F5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDEAE7E7D1CDCAC3BFB9C4C0BABEB8
                B5B2B0B0B0B0B1AFB0B0ABABABADADADA7A7A7A7A7A7A8A8A8A9A9A9AFAFAFBF
                BFBFCCCCCCCFCECEC5C5C5A6A8A9F5E6DDF5E6DDEEDAC1E3C8AEC7AC97DAC2B6
                0000DDD2C4CEB8A6DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDD6D0CCC9C4BFC9C2BDC7C3BEC1BDBBB7B7B7B6B6
                B6B7B7B7BDBDBDC5C5C5D9D9D9E2E2E2EAEAEAF3F3F3F3F3F3E8E8E8D5D5D57C
                7E7DF1F2F2F5E6DDEEDAC1E1C8AEC5AD97D7C1B50000DCD0C4CEB7A7DCC3AFEC
                D7C2F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF1EDEBDBD7D3D0CCC7D6D1CED8D7D7CBCBCBB8B8B8E5E5E5F4F4F4FBFB
                FBFAFAFAF9F9F9EFEFEFEBEBEBECECECDCDCDC6F6F6FCACBCBF5E6DDEDDCC2E0
                C9AFC4AC96D5C2B50000DCD0C4CEB7A7DCC2B1ECD6C4F5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDD7D7D7ADADADE4E4E4F8F8F8F8F8F8F7F7F7F7F7F7F1F1F1EEEE
                EEEDEDEDEAEAEA767575979797F5E6DDEDDCC1E0C9AFC3AC96D3C2B50000DBCF
                C3CDB6A7DDC3B2EFD9C7F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDDFDFDFA7A7A7
                DCDCDCF8F8F8FAFAFAFBFBFBF9F9F9F2F2F2EEEEEEEAEAEAEBEAEAB5B5B58D8D
                8DEAEBEBECDBC0DFC8AEC2AB95D1C1B40000D9D0C3CCB7A8E0C7B7F5DFCDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCDCDCDD9D9D9F9F9F9FBFBFBFBFBFB
                FAFAFAF2F2F2EFEFEFEBEBEBE8E8E8E7E6E6B9B9B99E9E9EF2DFC4E5CBB3C4AC
                98D0C0B40000DAD0C6CDB8A9E3CABAFBE5D3F5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF3F3F3F3F3F3F9F9F9F9F9F9F7F7F7F1F1F1EDEDEDEBEBEB
                E7E7E7E3E3E3D4D4D4919191FBE6CBEAD0B8C8AF9BD3C1B60000DCD0C6D0B8AC
                E3C9B9FFEAD8F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2EF
                EFEFF4F4F4F4F4F4F3F3F3EFEFEFECECECE9E9E9E5E5E5E0E0E0E2E2E2A2A2A2
                FFE9D1F0D4BCCDB29ED2C0B50000DDD1C7CFB7ABE6CBBDFEE7D7F9E5D3F5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5F5F5ECECECF1F1F1F1F1F1F1F1F1EC
                ECECEAEAEAE8E8E8E5E5E5DEDEDEE4E4E4C4C4C4FFE7CFF3D4BDCCB19DD7C3B8
                0000DBCEC6D0B7ADECD1C3FFE8D8FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDF5E6DDEBEBEBEEEEEEEEEEEEEDEDEDEAEAEAE8E8E8E5E5E5E3E3E3E0
                E0E0E3E3E3E3E3E3FFE6CEF9D8C4CEB09FD3BCB40000DBCEC6D0B7ADECD0C5FA
                E3D4FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDE7E7
                E7E6E6E6E4E4E4DEDEDEDDDDDDDCDCDCDCDCDCDBDBDBE2E2E2E8E8E8FFE6CEF6
                D5C1CBAD9CD5C0B80000DECEC8D2B6AFEDCFC4F9E2D3F6E2D1F5E6DDF5E6DDF5
                E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCCCCCCD6D6D6E1E1E1EBEBEBF5F5
                F5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDFFEAD4F3D3C0C7AA9BD2BFB80000DFCF
                C9CEB2ABE7C9BEFFE9DAFCE8D7F7E3D1F6E2D1FAE5D6F7E4D7F6E4D9F6E6DAF4
                E5DCF5E9DFF8E9E0F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
                F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
                DDF5E6DDFFECD6ECCEBBC8AE9ED9C7C00000EEDED8D4B8B1D7B9AEF7DDCFFFE8
                D8FFECDAFFECDCFFE9DDFBE5DAF9E5DAF6E6DAF1E2D9F1E1DAF2E2DBF0E0D9F4
                E1DCF3E1DAF5E3DCEEDFD6F6E5DCF3E4DBF1E2D9F6E6DAF6E4D9F6E4D9F8E3DB
                F6E4D9F2E5D7F3E4D4F4E4D4F6E3D4FEEBDEFFECDDFEE9D4F9E1CBD3B5A2C4AB
                9BE2D2CB0000F5E6DDE5CFC9CAB1A7DCC6BAE7D2C3F0DBCCF4DFD0F2DDD5EED8
                D2EFDCD5F1DFD8EFDCD7EFDFD9F4E3E0F6E5E2F7E6E3F5E6E3F6E8E2F3E5DFF3
                E3DDF0E0DAF6E4DDEFDDD6F3DED6F0DBD3EEDBD3F0E0D4EFDFD3EBDBCEEBD9CE
                EEDACFF2DED3EFDCCFE5CEBEDCC6B4C2AC9AD5C2B3F5E6DD0000F5E6DDFAF2EB
                E3D6CEC7B6ADCFBDB2D0C0B4D3C2B9D2C1BED7C5C4DAC8C7DFCBCAE5D1D0E8D6
                D5ECDAD9EFE0DEF0E4E2EFE6E3EFE6E3EEE2E0ECDDDBEAD8D7EAD5D4ECD5D3E6
                D0CAE1CEC6DDCEC5D7CBC1D6C5BCD5C2BBD3BFBACFBBB6CAB7B0CCB7AFC8B5A8
                BFAEA1DACFC1EFE9DCF5E6DD0000F5E6DDF5E6DDFAF4EDF0E4DEEEE1D9E7DAD2
                E4D8D2E6DAD8E9DDDDE9DBDDE9DBDCEFDFE0F0E2E3F3E5E6F3E9E9F3EEEDF3EF
                EEF4F0EFF4EFEEF5EBEBF6E8E9F8E6E7FAE6E5F6E1DFF3E0DBEBE2D9E7DED5E6
                D9D1E7D7D1E5D6D4E3D4D2DBCCC9DECEC8E8D7CEEFE3D9F5E6DDF5E6DDF5E6DD
                0000}
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              OnClick = sb7Click
              ExplicitHeight = 54
            end
            object Panel10: TPanel
              Left = 91
              Top = 1
              Width = 126
              Height = 58
              Align = alLeft
              TabOrder = 0
              object Label2: TLabel
                Left = 1
                Top = 1
                Width = 124
                Height = 13
                Align = alTop
                Caption = 'Quantidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                ExplicitWidth = 74
              end
              object edQtde: TSpinEdit
                Left = 4
                Top = 17
                Width = 54
                Height = 34
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                MaxValue = 500
                MinValue = 1
                ParentFont = False
                TabOrder = 0
                Value = 1
                OnEnter = edQtdeEnter
              end
              object edContador: TSpinEdit
                Left = 64
                Top = 20
                Width = 55
                Height = 26
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 3
                MaxValue = 10000
                MinValue = 1
                ParentFont = False
                TabOrder = 1
                Value = 1
                Visible = False
              end
            end
          end
        end
        object gbCodigo: TGroupBox
          Left = 403
          Top = 1
          Width = 150
          Height = 382
          Align = alRight
          Color = 14930883
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Visible = False
          object Label9: TLabel
            Left = 8
            Top = 337
            Width = 93
            Height = 13
            Caption = 'C.P.F.Produtor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 8
            Top = 305
            Width = 57
            Height = 13
            Caption = 'Produtor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 8
            Top = 272
            Width = 140
            Height = 13
            Caption = 'Mensagem/Categoria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 8
            Top = 164
            Width = 62
            Height = 13
            Caption = 'Data Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 8
            Top = 93
            Width = 106
            Height = 13
            Caption = 'C'#243'd.Fiscal/Lote '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 8
            Top = 237
            Width = 58
            Height = 13
            Caption = 'Peso Liq.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 8
            Top = 3
            Width = 60
            Height = 18
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblNome: TLabel
            Left = 8
            Top = 48
            Width = 272
            Height = 45
            Hint = 'Descricao'
            AutoSize = False
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            WordWrap = True
          end
          object Label15: TLabel
            Left = 74
            Top = 6
            Width = 56
            Height = 13
            Caption = '999-Sair'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 6
            Top = 128
            Width = 135
            Height = 13
            Caption = 'Linha 10/Lote categ.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 8
            Top = 203
            Width = 90
            Height = 13
            Caption = 'Data Validade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edLinha4: TEdit
            Left = 8
            Top = 349
            Width = 134
            Height = 21
            Hint = 'Linha4'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
          end
          object edLinha3: TEdit
            Left = 8
            Top = 317
            Width = 133
            Height = 21
            Hint = 'Linha3'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object edLinha2: TEdit
            Left = 8
            Top = 286
            Width = 134
            Height = 21
            Hint = 'Linha2'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
          end
          object edPeso: TEdit
            Left = 9
            Top = 249
            Width = 57
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Text = '18 kg'
          end
          object edLote: TEdit
            Left = 6
            Top = 106
            Width = 136
            Height = 21
            Hint = 'Lote da tela da classifica'#231#227'o lote/class'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object edCodigo: TEdit
            Left = 8
            Top = 22
            Width = 121
            Height = 26
            Hint = 'Codigo'
            CharCase = ecUpperCase
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object edLinha10: TEdit
            Left = 6
            Top = 141
            Width = 135
            Height = 21
            Hint = 'Linha10-Lote por categoria.'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object edLinha1: TMaskEdit
            Left = 8
            Top = 176
            Width = 99
            Height = 21
            Hint = 'Linha1'
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Text = '  /  /    '
          end
          object edLinha11: TMaskEdit
            Left = 8
            Top = 215
            Width = 99
            Height = 21
            Hint = 'Linha11'
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Text = '  /  /    '
          end
        end
      end
      object PDados: TPanel
        Left = 556
        Top = 2
        Width = 432
        Height = 384
        Align = alRight
        Color = 15395562
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Panel8: TPanel
          Left = 1
          Top = 93
          Width = 430
          Height = 70
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvLowered
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 83
            Top = 1
            Width = 6
            Height = 68
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 98
          end
          object Memo1: TMemo
            Left = 89
            Top = 1
            Width = 340
            Height = 68
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 15395562
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Edit1')
            ParentFont = False
            TabOrder = 0
          end
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 82
            Height = 68
            Align = alLeft
            Alignment = taLeftJustify
            BevelEdges = [beRight]
            BevelKind = bkTile
            BevelOuter = bvLowered
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            object Label8: TLabel
              Left = 1
              Top = 1
              Width = 78
              Height = 18
              Align = alTop
              AutoSize = False
              Caption = 'Embalador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 75
            end
            object Edit6: TEdit
              Left = 1
              Top = 19
              Width = 78
              Height = 48
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 15395562
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -40
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 207
          Width = 430
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvLowered
          Caption = #218'ltimos registros...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 225
          Width = 430
          Height = 158
          Align = alClient
          DataSource = DM.DSEsteira
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 2
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -16
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'LANC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOTE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Lote'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Qtde.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Width = 58
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'EMBALCOD'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Emb.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Width = 55
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CAT'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Categoria'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TAM'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Calibre'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'Arial Narrow'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Marca'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -24
              Title.Font.Name = 'Arial Narrow'
              Title.Font.Style = [fsBold]
              Visible = False
            end>
        end
        object pnlValor: TPanel
          Left = 1
          Top = 163
          Width = 430
          Height = 44
          Align = alTop
          Alignment = taLeftJustify
          BevelInner = bvRaised
          BevelOuter = bvSpace
          Caption = '00'
          Color = 10611152
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Verdana'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          object sbpRelatorio: TSpeedButton
            Tag = 10
            Left = 298
            Top = 2
            Width = 130
            Height = 40
            Hint = 
              'Resumo da tela... '#13'Bot'#227'o da direita altera configura'#231#227'o etiqueta' +
              '...'
            Align = alRight
            Caption = 'Resumo'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E0F0000424D9E0F000000000000360000002800000026000000220000000100
              180000000000680F000000000000000000000000000000000000F5E6DDF5E6DD
              F5E6DDD3C9BFD2C8BED6CAC0D5C8C0D8CAC4D8CCC6DCD3CADCD3CAE7DED5E6DE
              D7EBDFDDEFE5E5F2E8E8F2EBE8F4EEE9EFEAE1EBE4DBE9E0D7E6DAD4E7D9D3E5
              D5CFE3D3CDE2D0C9E1D0C7DECDC4DAC7BFD8C3BBD6C1B9D1BEB6D1C1B5CFBFB3
              CEBDB4FEECE5F5E6DDF5E6DD0000F5E6DDF1E3D7D8C5B6D3C2B5D2C1B4DBC5B9
              DEC8BDDEC9C1E0CEC3E1D1C4E2D2C5E2D4C8E4D5CCE6D6D0EBDCD9EADBD8EBDD
              D7ECE2D8ECE3D6EDE0D2EDDDD1EED9D1F0DBD3E8D3CBE9D3C8E9D1C5E6CEC2DF
              CABBDDC6B7DEC4B8DFC3B8DBC1B3D5BEAFD0B9A9CEB7A8D0B7ADEBD7D2F5E6DD
              0000F6EDE3DAC7BAC6AF9FD8C3B4D9C4B5E5CBBDE9CDC2E9CFC3ECD2C4E7D0C0
              E9D3C1E2CEBDE3CEBFDFCBC0E4CFC7E6D1C9E5D3C8E6D5C8E5D5C5E7D3C2E7D0
              C1E8CEC2E6CCC0E6D0C4E2CDBEE2CBBBE5CFBDE6D2C0E9D3C1E8CFBFE7CDBDEB
              D3C1E6CEBCE0C8B4DDC5B1BEA494D4BEB3F5E6DD0000E9DDD1CDB6A7D7BDADE5
              CCBCEAD1C1F3D6C7F3D6C7F3D6C8F3D6C7EED5C1F3DAC6F3DBC7F2DBCBF1D9CD
              EFD9CEECD6CBEFD9CDECD7C8E9D5C4EBD5C3F1D8C8F4D9CBF0D6C8ECD5C5EED8
              C6F3DBC7F2DDC8F0DBC6EED9C4F0D7C7F3D9C8F5DDC9F5DEC8EED8BFECD4BCD2
              B7A3C9AFA1DFD3C90000E0D3C5C9B0A0E7C9B8EDD3C2F5E6DDF5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDF5E6DDF5E6DDF5E6DDF0D9BFEFD6BCE3C4AFC4AA99D2C2B50000E0D3
              C5CEB4A4E2C4B1F0D7C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDEEEFF0D3D5D8A2A3A6FCFCFCF5E6DDF5E6DDF5E6DDF0F0F0
              D5D5D5B4B4B4A3A2A2E5E5E5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDF5DAC0E2C1ADCCAE9BD4C1B20000DED3C5D1B9A7DDC2AEEED6C2F5E6
              DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2E5E8E6DCDADCBCC0C0C4
              C5C1B3B4B29A999EEDF0EFF8F7F7BBBAB9AFB0B0B1B3B1B4B4B18E9091929494
              CBCBCBF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF8DBC6E0BFABD0AF
              9FD5BFB30000DACFC1CEB7A7DFC6B2ECD4C0F5E6DDF5E6DDF5E6DDEAF1F2C7CD
              D4BFC5CAD0CCC7C0BEB6ABACA0819279826E4B99784CA57D4FCFBEA9756C631D
              1917BAB7B8D0CED0C8C8CAD1D0D28281829494949D9D9D8C8C8CCBCBCBF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5D8C3E6C2B0D0AF9FD6BEB20000DDD2C4CFB8A8
              DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF0EDE4E2CFBBEFCEB4FFFADDD7CDA9A8A9
              858B9A7156623C5A573161502E3B2E231D1C19050505BBBDBDE6E8E5B2B3AFA2
              A39D9B9A9B7E7E7E888888929292838383A6A6A6EBEBEBF5E6DDF5E6DDF5E6DD
              F3D8C3E5C4B1CCAE9DD5BFB30000DED0C4D0B7A7DEC2B1EFD7C3F5E6DDF5E6DD
              F5E6DDF3E7DBF6C29EFFB279FFDFACF8E6BEE2D9B5C0BB953E45341E2211181E
              153337395D595B8F8789C0C0BFC1C8C3929F958A9D8EC2BFBF9492937C7C7C8B
              8A8A9293938585858B8B8BF5E6DDF5E6DDF5E6DDF3D8C3E5C4B0CCAE9DD5C0B1
              0000E0D0C4D1B7A7E0C2B1F0D6C5F5E6DDF5E6DDF5E6DDB3B0B1B0A39DC59B7F
              915B2E695137443C3025251B3F3F406C696B948E93C6C2C4B7B8B89392912422
              22505251B4B9B5B2BBB4989595B6B5B48F8F8F797B7B7C7E7E8E8E8E8D8D8DA9
              A9A9EEEEEEF5E6DDF1D9C1E3C4ADCAAF9BD4C2B10000E0D0C4D4B7A8E2C1B1F2
              D6C5F5E6DDF5E6DDD0CECEAAABAA322E31282728261714322B2855575A86888C
              C9C6C7B9BDBD9FA2A24A49482526291114131C1B1C1815175B5759B1AEAF8E8C
              8BB6B3B2BFBDBC7475757578787577778584857E7E7F8B8B8BCECECDF1DAC0E3
              C4ADCAAF9AD2C2B10000E1CFC4D6B7A8E2C1B1F2D7C3F5E6DDF5E6DDDADADACF
              D0D0C5C6C5C5C6C58B8C8C69696A5353524747464343434746464D4C4C505050
              4E4E4E4C4C4C494949464646434444414142A09C9BC1BDBCBEBBB7C3C0BD9C9B
              997977767676757475767B7A7BA4A4A4F1DAC0E1C5ADC7AF99D1C3B10000E1D0
              C3D4B7A8E2C1B1F1D6C2F5E6DDF5E6DDF1F1F1989C997377737979784746464F
              4F4F575859595B5C5F5F5F6060605F5F5F5E5E5E5D5D5D5C5C5C585858555555
              5959596464645E5E5E8D8A89BCB8B6C2BFBAC8C4BFA9A5A47C7A797777786B6B
              6D97999AF1DAC0E1C5ADC7AE9AD1C2B20000DFD2C4D2B8A8E0C2AFEED6C2F5E6
              DDF5E6DDF5E6DD9397946C716C9897969393936C6C6C626364696B6C6F6F6F6E
              6E6E7070706F6F6F6E6E6E6C6C6C6969696666666D6D6D727272707070676867
              817F7ECAC4C0C8C1BDCBC7C3B8B6B27473716F6F6F97999AF3D9C1E1C3B0C7AD
              9DD1C1B50000DDD2C4D2BAA8DFC4B0EED6C2F5E6DDF5E6DDF5E6DDF5E6DDE4E4
              E3BDBBBABEBCBAB0AFAD8E8D8B7A7A7A8080808181818181818080807E7E7E7D
              7D7D7979797777777F7F7F8080808181817F7E7F787778A7A3A1C5C0BCC8C3C0
              CEC9C79A9794726F6D999898F1D9C1E1C3B0C7AD9DD2C0B50000DED3C5D0BAA8
              DEC3AFEDD5C1F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF1F1F0B6B4AFBAB9B4BEBD
              B9AFACAB8C8C8D8F8F8F9191919292929090908E8E8E8888888C8C8C9191918F
              8F8F908E908F8E908E8F918988889E9C99BCB7B4C9C4BFC9C3BEA39F9BA4A19F
              EFD9C0E2C6AEC7AC98D8C2B60000DDD2C4CFB9A7DCC3AFEED6C2F5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDEAE7E7D1CDCAC3BFB9C4C0BABEB8
              B5B2B0B0B0B0B1AFB0B0ABABABADADADA7A7A7A7A7A7A8A8A8A9A9A9AFAFAFBF
              BFBFCCCCCCCFCECEC5C5C5A6A8A9F5E6DDF5E6DDEEDAC1E3C8AEC7AC97DAC2B6
              0000DDD2C4CEB8A6DCC3AFEDD8C3F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDD6D0CCC9C4BFC9C2BDC7C3BEC1BDBBB7B7B7B6B6
              B6B7B7B7BDBDBDC5C5C5D9D9D9E2E2E2EAEAEAF3F3F3F3F3F3E8E8E8D5D5D57C
              7E7DF1F2F2F5E6DDEEDAC1E1C8AEC5AD97D7C1B50000DCD0C4CEB7A7DCC3AFEC
              D7C2F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF1EDEBDBD7D3D0CCC7D6D1CED8D7D7CBCBCBB8B8B8E5E5E5F4F4F4FBFB
              FBFAFAFAF9F9F9EFEFEFEBEBEBECECECDCDCDC6F6F6FCACBCBF5E6DDEDDCC2E0
              C9AFC4AC96D5C2B50000DCD0C4CEB7A7DCC2B1ECD6C4F5E6DDF5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDD7D7D7ADADADE4E4E4F8F8F8F8F8F8F7F7F7F7F7F7F1F1F1EEEE
              EEEDEDEDEAEAEA767575979797F5E6DDEDDCC1E0C9AFC3AC96D3C2B50000DBCF
              C3CDB6A7DDC3B2EFD9C7F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDDFDFDFA7A7A7
              DCDCDCF8F8F8FAFAFAFBFBFBF9F9F9F2F2F2EEEEEEEAEAEAEBEAEAB5B5B58D8D
              8DEAEBEBECDBC0DFC8AEC2AB95D1C1B40000D9D0C3CCB7A8E0C7B7F5DFCDF5E6
              DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCDCDCDD9D9D9F9F9F9FBFBFBFBFBFB
              FAFAFAF2F2F2EFEFEFEBEBEBE8E8E8E7E6E6B9B9B99E9E9EF2DFC4E5CBB3C4AC
              98D0C0B40000DAD0C6CDB8A9E3CABAFBE5D3F5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDF3F3F3F3F3F3F9F9F9F9F9F9F7F7F7F1F1F1EDEDEDEBEBEB
              E7E7E7E3E3E3D4D4D4919191FBE6CBEAD0B8C8AF9BD3C1B60000DCD0C6D0B8AC
              E3C9B9FFEAD8F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF2F2F2EF
              EFEFF4F4F4F4F4F4F3F3F3EFEFEFECECECE9E9E9E5E5E5E0E0E0E2E2E2A2A2A2
              FFE9D1F0D4BCCDB29ED2C0B50000DDD1C7CFB7ABE6CBBDFEE7D7F9E5D3F5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5F5F5ECECECF1F1F1F1F1F1F1F1F1EC
              ECECEAEAEAE8E8E8E5E5E5DEDEDEE4E4E4C4C4C4FFE7CFF3D4BDCCB19DD7C3B8
              0000DBCEC6D0B7ADECD1C3FFE8D8FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDF5E6DDEBEBEBEEEEEEEEEEEEEDEDEDEAEAEAE8E8E8E5E5E5E3E3E3E0
              E0E0E3E3E3E3E3E3FFE6CEF9D8C4CEB09FD3BCB40000DBCEC6D0B7ADECD0C5FA
              E3D4FBE7D6F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDE7E7
              E7E6E6E6E4E4E4DEDEDEDDDDDDDCDCDCDCDCDCDBDBDBE2E2E2E8E8E8FFE6CEF6
              D5C1CBAD9CD5C0B80000DECEC8D2B6AFEDCFC4F9E2D3F6E2D1F5E6DDF5E6DDF5
              E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDCCCCCCD6D6D6E1E1E1EBEBEBF5F5
              F5F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDFFEAD4F3D3C0C7AA9BD2BFB80000DFCF
              C9CEB2ABE7C9BEFFE9DAFCE8D7F7E3D1F6E2D1FAE5D6F7E4D7F6E4D9F6E6DAF4
              E5DCF5E9DFF8E9E0F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DD
              F5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6DDF5E6
              DDF5E6DDFFECD6ECCEBBC8AE9ED9C7C00000EEDED8D4B8B1D7B9AEF7DDCFFFE8
              D8FFECDAFFECDCFFE9DDFBE5DAF9E5DAF6E6DAF1E2D9F1E1DAF2E2DBF0E0D9F4
              E1DCF3E1DAF5E3DCEEDFD6F6E5DCF3E4DBF1E2D9F6E6DAF6E4D9F6E4D9F8E3DB
              F6E4D9F2E5D7F3E4D4F4E4D4F6E3D4FEEBDEFFECDDFEE9D4F9E1CBD3B5A2C4AB
              9BE2D2CB0000F5E6DDE5CFC9CAB1A7DCC6BAE7D2C3F0DBCCF4DFD0F2DDD5EED8
              D2EFDCD5F1DFD8EFDCD7EFDFD9F4E3E0F6E5E2F7E6E3F5E6E3F6E8E2F3E5DFF3
              E3DDF0E0DAF6E4DDEFDDD6F3DED6F0DBD3EEDBD3F0E0D4EFDFD3EBDBCEEBD9CE
              EEDACFF2DED3EFDCCFE5CEBEDCC6B4C2AC9AD5C2B3F5E6DD0000F5E6DDFAF2EB
              E3D6CEC7B6ADCFBDB2D0C0B4D3C2B9D2C1BED7C5C4DAC8C7DFCBCAE5D1D0E8D6
              D5ECDAD9EFE0DEF0E4E2EFE6E3EFE6E3EEE2E0ECDDDBEAD8D7EAD5D4ECD5D3E6
              D0CAE1CEC6DDCEC5D7CBC1D6C5BCD5C2BBD3BFBACFBBB6CAB7B0CCB7AFC8B5A8
              BFAEA1DACFC1EFE9DCF5E6DD0000F5E6DDF5E6DDFAF4EDF0E4DEEEE1D9E7DAD2
              E4D8D2E6DAD8E9DDDDE9DBDDE9DBDCEFDFE0F0E2E3F3E5E6F3E9E9F3EEEDF3EF
              EEF4F0EFF4EFEEF5EBEBF6E8E9F8E6E7FAE6E5F6E1DFF3E0DBEBE2D9E7DED5E6
              D9D1E7D7D1E5D6D4E3D4D2DBCCC9DECEC8E8D7CEEFE3D9F5E6DDF5E6DDF5E6DD
              0000}
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu3
            ShowHint = True
            Spacing = 0
            OnClick = sbpRelatorioClick
            ExplicitLeft = 692
            ExplicitTop = -2
          end
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 430
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 70
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 430
            Height = 22
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = 30
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object Label3: TLabel
              Left = 1
              Top = 1
              Width = 72
              Height = 20
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Lote:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 4
              ExplicitTop = -3
              ExplicitHeight = 55
            end
            object Edit1: TEdit
              Left = 73
              Top = 1
              Width = 356
              Height = 20
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 15395562
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'Edit1'
            end
          end
          object Panel6: TPanel
            Left = 200
            Top = 22
            Width = 230
            Height = 38
            Align = alRight
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = 36
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            object Label6: TLabel
              Left = 1
              Top = 1
              Width = 41
              Height = 36
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Peso:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 40
              ExplicitHeight = 18
            end
            object Edit5: TEdit
              Left = 42
              Top = 1
              Width = 187
              Height = 36
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 15395562
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'Edit1'
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 22
            Width = 200
            Height = 38
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            object Label4: TLabel
              Left = 1
              Top = 1
              Width = 56
              Height = 36
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'digo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Edit2: TEdit
              Left = 57
              Top = 1
              Width = 142
              Height = 36
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 15395562
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'Edit1'
            end
          end
        end
        object pnl2: TPanel
          Left = 1
          Top = 61
          Width = 430
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 5
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 200
            Height = 32
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 1
              Top = 1
              Width = 74
              Height = 30
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Categoria:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 63
              ExplicitHeight = 18
            end
            object Edit3: TEdit
              Left = 75
              Top = 1
              Width = 124
              Height = 30
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 15395562
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'Edit1'
            end
          end
          object Panel5: TPanel
            Left = 200
            Top = 0
            Width = 230
            Height = 32
            Align = alRight
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            object Label5: TLabel
              Left = 1
              Top = 1
              Width = 55
              Height = 30
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Calibre:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              WordWrap = True
              ExplicitLeft = 53
              ExplicitHeight = 18
            end
            object Edit4: TEdit
              Left = 56
              Top = 1
              Width = 173
              Height = 30
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 15395562
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'Edit1'
            end
          end
        end
      end
    end
    object GBDados: TGroupBox
      Left = 6
      Top = 426
      Width = 990
      Height = 55
      Align = alBottom
      Color = 14930883
      ParentColor = False
      TabOrder = 1
      Visible = False
      object Panel2: TPanel
        Left = 2
        Top = 9
        Width = 986
        Height = 44
        Align = alBottom
        BevelOuter = bvNone
        Color = 14930883
        TabOrder = 0
        object lblEsteira: TLabel
          Left = 623
          Top = 0
          Width = 123
          Height = 44
          Align = alRight
          Alignment = taCenter
          Caption = 'ESTEIRA 01'
          Color = 9431241
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitHeight = 25
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 623
          Height = 44
          Hint = 'Exemplo: 1011000000001'
          Align = alClient
          Caption = ' Leitor de Barra     (999 - Sai do Sistema) '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object lblmsg: TLabel
            Left = 299
            Top = 16
            Width = 322
            Height = 26
            Align = alClient
            Alignment = taCenter
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Layout = tlCenter
            ExplicitWidth = 6
            ExplicitHeight = 18
          end
          object TDBDesc: TEdit
            Left = 2
            Top = 16
            Width = 297
            Height = 26
            Align = alLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 0
            OnKeyPress = TDBDescKeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 746
          Top = 0
          Width = 120
          Height = 44
          Align = alRight
          Caption = ' Data/Hora'
          Color = 14930883
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Visible = False
          object LData: TLabel
            Left = 2
            Top = 16
            Width = 116
            Height = 26
            Align = alClient
            Alignment = taCenter
            Caption = '31/12/2003 22:22:00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 103
            ExplicitHeight = 13
          end
        end
        object titVersao: TPanel
          Tag = 111
          Left = 866
          Top = 0
          Width = 120
          Height = 44
          Cursor = crHandPoint
          Align = alRight
          BevelOuter = bvLowered
          Caption = 'Vers'#227'o: 2021.18.05'
          Color = 9431241
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object Button1: TButton
        Left = 886
        Top = 3
        Width = 119
        Height = 29
        Caption = 'Processar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = Button1Click
      end
    end
  end
  object THora: TTimer
    Enabled = False
    Interval = 500
    OnTimer = THoraTimer
    Left = 552
    Top = 8
  end
  object ppRelatorio: TppReport
    AutoStop = False
    DataPipeline = ppDados
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 656
    Top = 329
    Version = '20.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDados'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDados: TppBDEPipeline
    DataSource = dsRelat
    UserName = 'Dados'
    Left = 624
    Top = 329
    object ppDadosppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDadosppField2: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDadosppField3: TppField
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDadosppField4: TppField
      FieldAlias = 'LOTE'
      FieldName = 'LOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDadosppField5: TppField
      FieldAlias = 'LINHA1'
      FieldName = 'LINHA1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDadosppField6: TppField
      FieldAlias = 'LINHA2'
      FieldName = 'LINHA2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDadosppField7: TppField
      FieldAlias = 'LINHA3'
      FieldName = 'LINHA3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDadosppField8: TppField
      FieldAlias = 'LINHA4'
      FieldName = 'LINHA4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDadosppField9: TppField
      FieldAlias = 'LINHA5'
      FieldName = 'LINHA5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDadosppField10: TppField
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDadosppField11: TppField
      FieldAlias = 'CONTADOR'
      FieldName = 'CONTADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDadosppField12: TppField
      FieldAlias = 'VARIEDADE'
      FieldName = 'VARIEDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDadosppField13: TppField
      FieldAlias = 'CATEGORIA'
      FieldName = 'CATEGORIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDadosppField14: TppField
      FieldAlias = 'CALIBRE'
      FieldName = 'CALIBRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDadosppField15: TppField
      FieldAlias = 'BARRA'
      FieldName = 'BARRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDadosppField16: TppField
      FieldAlias = 'LINHA10'
      FieldName = 'LINHA10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDadosppField17: TppField
      FieldAlias = 'LINHA11'
      FieldName = 'LINHA11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDadosppField18: TppField
      FieldAlias = 'LINHA12'
      FieldName = 'LINHA12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDadosppField19: TppField
      FieldAlias = 'LINHA13'
      FieldName = 'LINHA13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDadosppField20: TppField
      FieldAlias = 'ID_LANC'
      FieldName = 'ID_LANC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDadosppField21: TppField
      FieldAlias = 'ID_LOTE'
      FieldName = 'ID_LOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDadosppField22: TppField
      FieldAlias = 'WEBLOCALPRO'
      FieldName = 'WEBLOCALPRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDadosppField23: TppField
      FieldAlias = 'WEBLOCALEMP'
      FieldName = 'WEBLOCALEMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDadosppField24: TppField
      FieldAlias = 'WEBLOCALCLI'
      FieldName = 'WEBLOCALCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDadosppField25: TppField
      FieldAlias = 'WEBQRCODEL1'
      FieldName = 'WEBQRCODEL1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDadosppField26: TppField
      FieldAlias = 'WEBQRCODEL2'
      FieldName = 'WEBQRCODEL2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDadosppField27: TppField
      FieldAlias = 'WEBQRCODEL3'
      FieldName = 'WEBQRCODEL3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDadosppField28: TppField
      FieldAlias = 'WEBQRCODEL4'
      FieldName = 'WEBQRCODEL4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDadosppField29: TppField
      FieldAlias = 'EMPRESADOC'
      FieldName = 'EMPRESADOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDadosppField30: TppField
      FieldAlias = 'EMPRESAEND'
      FieldName = 'EMPRESAEND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDadosppField31: TppField
      FieldAlias = 'PRODUTORDES'
      FieldName = 'PRODUTORDES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDadosppField32: TppField
      FieldAlias = 'PRODUTORDOC'
      FieldName = 'PRODUTORDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDadosppField33: TppField
      FieldAlias = 'PRODUTOREND'
      FieldName = 'PRODUTOREND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
  end
  object dsRelat: TDataSource
    DataSet = DM.TEtiqueta
    Left = 592
    Top = 329
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 264
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 921
    Top = 400
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
  end
  object tmLeitor: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmLeitorTimer
    Left = 320
    Top = 520
  end
  object PopupMenu3: TPopupMenu
    Left = 664
    Top = 264
    object MenuItem1: TMenuItem
      Caption = 'Configurar'
      OnClick = MenuItem1Click
    end
  end
  object cdsCateg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 8
    object cdsCategITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsCategCAT01: TStringField
      FieldName = 'CAT01'
      Size = 10
    end
    object cdsCategCAT02: TStringField
      FieldName = 'CAT02'
      Size = 10
    end
    object cdsCategCAT03: TStringField
      FieldName = 'CAT03'
      Size = 10
    end
    object cdsCategCAT04: TStringField
      FieldName = 'CAT04'
      Size = 10
    end
    object cdsCategCAT05: TStringField
      FieldName = 'CAT05'
      Size = 10
    end
    object cdsCategCAT06: TStringField
      FieldName = 'CAT06'
      Size = 10
    end
    object cdsCategCAT07: TStringField
      FieldName = 'CAT07'
      Size = 10
    end
    object cdsCategCAT10: TStringField
      FieldName = 'CAT10'
      Size = 10
    end
    object cdsCategCAT11: TStringField
      FieldName = 'CAT11'
      Size = 10
    end
    object cdsCategCAT12: TStringField
      FieldName = 'CAT12'
      Size = 10
    end
    object cdsCategCAT13: TStringField
      FieldName = 'CAT13'
      Size = 10
    end
    object cdsCategCAT15: TStringField
      FieldName = 'CAT15'
      Size = 10
    end
    object cdsCategCAT14: TStringField
      FieldName = 'CAT14'
      Size = 10
    end
    object cdsCategCAT16: TStringField
      FieldName = 'CAT16'
      Size = 10
    end
    object cdsCategCAT17: TStringField
      FieldName = 'CAT17'
      Size = 10
    end
    object cdsCategCAT20: TStringField
      FieldName = 'CAT20'
      Size = 10
    end
    object cdsCategCAT21: TStringField
      FieldName = 'CAT21'
      Size = 10
    end
    object cdsCategCAT22: TStringField
      FieldName = 'CAT22'
      Size = 10
    end
    object cdsCategCAT23: TStringField
      FieldName = 'CAT23'
      Size = 10
    end
    object cdsCategCAT24: TStringField
      FieldName = 'CAT24'
      Size = 10
    end
    object cdsCategCAT25: TStringField
      FieldName = 'CAT25'
      Size = 10
    end
    object cdsCategCAT26: TStringField
      FieldName = 'CAT26'
      Size = 10
    end
    object cdsCategCAT27: TStringField
      FieldName = 'CAT27'
      Size = 10
    end
    object cdsCategCAT30: TStringField
      FieldName = 'CAT30'
      Size = 10
    end
    object cdsCategCAT31: TStringField
      FieldName = 'CAT31'
      Size = 10
    end
    object cdsCategCAT32: TStringField
      FieldName = 'CAT32'
      Size = 10
    end
    object cdsCategCAT33: TStringField
      FieldName = 'CAT33'
      Size = 10
    end
    object cdsCategCAT34: TStringField
      FieldName = 'CAT34'
      Size = 10
    end
    object cdsCategCAT35: TStringField
      FieldName = 'CAT35'
      Size = 10
    end
    object cdsCategCAT36: TStringField
      FieldName = 'CAT36'
      Size = 10
    end
    object cdsCategCAT37: TStringField
      FieldName = 'CAT37'
      Size = 10
    end
    object cdsCategCAT40: TStringField
      FieldName = 'CAT40'
      Size = 10
    end
    object cdsCategCAT41: TStringField
      FieldName = 'CAT41'
      Size = 10
    end
    object cdsCategCAT42: TStringField
      FieldName = 'CAT42'
      Size = 10
    end
    object cdsCategCAT43: TStringField
      FieldName = 'CAT43'
      Size = 10
    end
    object cdsCategCAT44: TStringField
      FieldName = 'CAT44'
      Size = 10
    end
    object cdsCategCAT45: TStringField
      FieldName = 'CAT45'
      Size = 10
    end
    object cdsCategCAT46: TStringField
      FieldName = 'CAT46'
      Size = 10
    end
    object cdsCategCAT47: TStringField
      FieldName = 'CAT47'
      Size = 10
    end
    object cdsCategCOL00: TIntegerField
      FieldName = 'COL00'
    end
    object cdsCategCOL01: TIntegerField
      FieldName = 'COL01'
    end
    object cdsCategCOL02: TIntegerField
      FieldName = 'COL02'
    end
    object cdsCategCOL03: TIntegerField
      FieldName = 'COL03'
    end
    object cdsCategCOL04: TIntegerField
      FieldName = 'COL04'
    end
    object cdsCategCOL05: TIntegerField
      FieldName = 'COL05'
    end
    object cdsCategCOL06: TIntegerField
      FieldName = 'COL06'
    end
    object cdsCategCOL07: TIntegerField
      FieldName = 'COL07'
    end
    object cdsCategCOL10: TIntegerField
      FieldName = 'COL10'
    end
    object cdsCategCOL11: TIntegerField
      FieldName = 'COL11'
    end
    object cdsCategCOL12: TIntegerField
      FieldName = 'COL12'
    end
    object cdsCategCOL13: TIntegerField
      FieldName = 'COL13'
    end
    object cdsCategCOL14: TIntegerField
      FieldName = 'COL14'
    end
    object cdsCategCOL15: TIntegerField
      FieldName = 'COL15'
    end
    object cdsCategCOL16: TIntegerField
      FieldName = 'COL16'
    end
    object cdsCategCOL17: TIntegerField
      FieldName = 'COL17'
    end
    object cdsCategCOL20: TIntegerField
      FieldName = 'COL20'
    end
    object cdsCategCOL21: TIntegerField
      FieldName = 'COL21'
    end
    object cdsCategCOL22: TIntegerField
      FieldName = 'COL22'
    end
    object cdsCategCOL23: TIntegerField
      FieldName = 'COL23'
    end
    object cdsCategCOL24: TIntegerField
      FieldName = 'COL24'
    end
    object cdsCategCOL25: TIntegerField
      FieldName = 'COL25'
    end
    object cdsCategCOL26: TIntegerField
      FieldName = 'COL26'
    end
    object cdsCategCOL27: TIntegerField
      FieldName = 'COL27'
    end
    object cdsCategCOL30: TIntegerField
      FieldName = 'COL30'
    end
    object cdsCategCOL31: TIntegerField
      FieldName = 'COL31'
    end
    object cdsCategCOL32: TIntegerField
      FieldName = 'COL32'
    end
    object cdsCategCOL33: TIntegerField
      FieldName = 'COL33'
    end
    object cdsCategCOL34: TIntegerField
      FieldName = 'COL34'
    end
    object cdsCategCOL35: TIntegerField
      FieldName = 'COL35'
    end
    object cdsCategCOL36: TIntegerField
      FieldName = 'COL36'
    end
    object cdsCategCOL37: TIntegerField
      FieldName = 'COL37'
    end
    object cdsCategCOL40: TIntegerField
      FieldName = 'COL40'
    end
    object cdsCategCOL41: TIntegerField
      FieldName = 'COL41'
    end
    object cdsCategCOL42: TIntegerField
      FieldName = 'COL42'
    end
    object cdsCategCOL43: TIntegerField
      FieldName = 'COL43'
    end
    object cdsCategCOL44: TIntegerField
      FieldName = 'COL44'
    end
    object cdsCategCOL45: TIntegerField
      FieldName = 'COL45'
    end
    object cdsCategCOL46: TIntegerField
      FieldName = 'COL46'
    end
    object cdsCategCOL47: TIntegerField
      FieldName = 'COL47'
    end
  end
  object dsBotao: TDataSource
    DataSet = cdsCateg
    Left = 144
    Top = 8
  end
  object TMudou: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TMudouTimer
    Left = 616
    Top = 8
  end
end
