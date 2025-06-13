object frmComandos: TfrmComandos
  Left = 0
  Top = 0
  Caption = 'Comando sql'
  ClientHeight = 462
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 462
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 762
      Height = 256
      Align = alTop
      Caption = ' Comandos Sql '
      TabOrder = 0
      object mcmd: TMemo
        Left = 2
        Top = 15
        Width = 758
        Height = 102
        Align = alTop
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 2
        Top = 117
        Width = 758
        Height = 32
        Align = alBottom
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 632
          Top = 3
          Width = 105
          Height = 25
          Caption = '&Executar'
          Default = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 8
          Top = 3
          Width = 105
          Height = 25
          Caption = '&Limpar'
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
            33333333333F8888883F33330000324334222222443333388F3833333388F333
            000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
            F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
            223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
            3338888300003AAAAAAA33333333333888888833333333330000333333333333
            333333333333333333FFFFFF000033333333333344444433FFFF333333888888
            00003A444333333A22222438888F333338F3333800003A2243333333A2222438
            F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
            22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
            33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
      object lbLog: TListBox
        Left = 2
        Top = 149
        Width = 758
        Height = 105
        Align = alBottom
        ItemHeight = 13
        TabOrder = 2
        OnDblClick = lbLogDblClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 257
      Width = 762
      Height = 204
      Align = alClient
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 760
        Height = 202
        Align = alClient
        DataSource = dsDados
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object Panel5: TPanel
    Left = 764
    Top = 0
    Width = 220
    Height = 462
    Align = alRight
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 218
      Height = 224
      Align = alTop
      Caption = ' Tabelas '
      TabOrder = 0
      object lbTables: TListBox
        Left = 2
        Top = 15
        Width = 214
        Height = 207
        Align = alClient
        ItemHeight = 13
        Sorted = True
        TabOrder = 0
        OnClick = lbTablesClick
        OnDblClick = lbTablesDblClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 225
      Width = 218
      Height = 236
      Align = alClient
      Caption = ' Fields '
      TabOrder = 1
      object lbFields: TListBox
        Left = 2
        Top = 15
        Width = 214
        Height = 194
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
        OnDblClick = lbFieldsDblClick
      end
      object BitBtn3: TBitBtn
        Left = 2
        Top = 209
        Width = 214
        Height = 25
        Align = alBottom
        Caption = 'Gera script'
        Default = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtn3Click
      end
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 752
    Top = 192
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDados'
    Left = 714
    Top = 192
  end
  object dspDados: TDataSetProvider
    DataSet = sqlDados
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 682
    Top = 192
  end
  object sqlDados: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'SELECT * FROM EMPRESA'
      '')
    Left = 641
    Top = 192
  end
end
