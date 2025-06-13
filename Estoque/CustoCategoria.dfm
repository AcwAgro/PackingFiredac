object FCustoCategoria: TFCustoCategoria
  Left = 413
  Top = 191
  BorderIcons = [biSystemMenu]
  Caption = 'Custo Embalagem por Categoria.'
  ClientHeight = 484
  ClientWidth = 811
  Color = 14930883
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 811
    Height = 484
    Align = alClient
    DataSource = DataSource1
    FixedColor = 14930883
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    OnEnter = DBGrid1Enter
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Color = 14737632
        Expanded = False
        FieldName = 'DESCRICAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 220
        Visible = True
      end
      item
        Color = 14737632
        Expanded = False
        FieldName = 'VARIEDES'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Classe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VAL1'
        Title.Alignment = taCenter
        Title.Caption = 'Custo Emb.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end>
  end
  object Table1: TTable
    DatabaseName = 'JaeAdmin'
    Filtered = True
    SessionName = 'Sesao1'
    IndexFieldNames = 'CODIGO'
    TableName = 'CADCATEG'
    Left = 104
    Top = 41
    object Table1CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object Table1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Table1VARIECOD: TIntegerField
      FieldName = 'VARIECOD'
    end
    object Table1VARIEDES: TStringField
      FieldName = 'VARIEDES'
      Size = 30
    end
    object Table1EMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
    end
    object Table1ACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
    end
    object Table1VAL1: TFloatField
      FieldName = 'VAL1'
      currency = True
    end
    object Table1VAL2: TFloatField
      FieldName = 'VAL2'
      currency = True
    end
    object Table1VAL3: TFloatField
      FieldName = 'VAL3'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 136
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 168
    Top = 40
    object Exclui1: TMenuItem
      Tag = 3
      Caption = 'Exclui'
      ShortCut = 16430
    end
    object Excluir1: TMenuItem
      Tag = 3
      Caption = 'Excluir'
      ShortCut = 115
    end
    object Pesquisar1: TMenuItem
      Tag = 6
      Caption = 'Pesquisar'
      ShortCut = 118
    end
  end
end
