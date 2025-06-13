inherited FfrmAjuste: TFfrmAjuste
  Caption = 'Ajuste de estoque'
  ClientHeight = 500
  ClientWidth = 842
  ExplicitWidth = 848
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 484
    Width = 842
    ExplicitTop = 484
    ExplicitWidth = 842
    inherited PStatusHistorico: TPanel
      Width = 661
      ExplicitWidth = 661
    end
    inherited pnlTela: TPanel
      Left = 774
      ExplicitLeft = 774
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 832
      ExplicitLeft = 832
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 484
    ExplicitHeight = 484
    inherited rzpMenu: TRzPanel
      Height = 380
      ExplicitHeight = 380
      inherited sbIncluir: TSpeedButton
        ExplicitLeft = 1
        ExplicitTop = 10
        ExplicitWidth = 126
      end
      inherited rbgAtivo: TRadioGroup
        Top = 260
        ExplicitTop = 260
      end
      inherited PPeriodo: TPanel
        Top = 300
        Visible = True
        ExplicitTop = 300
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
    Width = 705
    Height = 484
    ExplicitWidth = 705
    ExplicitHeight = 484
    inherited pcItem: TRzPageControl
      Width = 697
      Height = 476
      ExplicitWidth = 697
      ExplicitHeight = 476
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 695
        ExplicitHeight = 455
        inherited pPesquisa: TRzPanel
          Top = 389
          Width = 695
          ExplicitTop = 389
          ExplicitWidth = 695
          inherited Label1: TLabel
            Width = 687
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 574
            ExplicitLeft = 574
          end
          inherited rbPesquisa: TRzPanel
            Width = 687
            ExplicitWidth = 687
          end
          inherited edPesquisa: TMaskEdit
            Width = 570
            ExplicitWidth = 570
          end
        end
        inherited Panel2: TPanel
          Width = 695
          ExplicitWidth = 695
          inherited Label3: TLabel
            Left = 137
            Width = 557
            Height = 18
            ExplicitLeft = 625
          end
        end
        inherited dbDados: TcxGrid
          Width = 695
          Height = 369
          ExplicitWidth = 695
          ExplicitHeight = 369
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
            end
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 250
            end
            object dbDadosDBTableView1ENTRADA: TcxGridDBColumn
              DataBinding.FieldName = 'ENTRADA'
              Width = 100
            end
            object dbDadosDBTableView1SAIDA: TcxGridDBColumn
              DataBinding.FieldName = 'SAIDA'
              Width = 100
            end
            object dbDadosDBTableView1LANC: TcxGridDBColumn
              DataBinding.FieldName = 'LANC'
              Width = 60
            end
            object dbDadosDBTableView1UNIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'UNIDADE'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1LANCIT: TcxGridDBColumn
              DataBinding.FieldName = 'LANCIT'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1ANTERIOR: TcxGridDBColumn
              DataBinding.FieldName = 'ANTERIOR'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1SALDO: TcxGridDBColumn
              DataBinding.FieldName = 'SALDO'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitWidth = 695
        ExplicitHeight = 455
        inherited pDados: TPanel
          Width = 695
          Height = 455
          ExplicitWidth = 695
          ExplicitHeight = 455
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 84
            Height = 32
            Caption = ' Registro '
            Enabled = False
            TabOrder = 0
            object DBEdit6: TDBEdit
              Left = 3
              Top = 14
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
          object GroupBox3: TGroupBox
            Left = 5
            Top = 36
            Width = 102
            Height = 32
            Caption = ' Data '
            TabOrder = 1
            object DBEdit16: TcxDBDateEdit
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
          object GroupBox5: TGroupBox
            Left = 5
            Top = 180
            Width = 316
            Height = 32
            Caption = ' Observa'#231#227'o '
            TabOrder = 6
            object DBEdit8: TDBEdit
              Left = 5
              Top = 15
              Width = 308
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'OBS'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit8Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object dbrg1: TDBRadioGroup
            Left = 5
            Top = 68
            Width = 204
            Height = 35
            Caption = ' Tipo '
            Columns = 2
            DataField = 'UNIDADE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Items.Strings = (
              'Produto'
              'Mercadoria')
            ParentFont = False
            TabOrder = 2
            TabStop = True
            Values.Strings = (
              'P'
              'M')
            OnClick = dbrg1Click
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 144
            Width = 116
            Height = 32
            Caption = ' Qtde. Entrada '
            TabOrder = 4
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 108
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ENTRADA'
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
            Left = 127
            Top = 144
            Width = 116
            Height = 32
            Caption = ' Qtde. Sa'#237'da '
            TabOrder = 5
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 108
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SAIDA'
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
          object GroupBox9: TGroupBox
            Left = 5
            Top = 106
            Width = 444
            Height = 32
            Caption = ' C'#243'digo/Descri'#231#227'o '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object spb1: TSpeedButton
              Tag = 100
              Left = 82
              Top = 12
              Width = 21
              Height = 18
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000930E0000930E00000001000000000000000000003300
                00006600000099000000CC000000FF0000000033000033330000663300009933
                0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                000000990000339900006699000099990000CC990000FF99000000CC000033CC
                000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
                0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
                330000333300333333006633330099333300CC333300FF333300006633003366
                33006666330099663300CC663300FF6633000099330033993300669933009999
                3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
                330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
                66006600660099006600CC006600FF0066000033660033336600663366009933
                6600CC336600FF33660000666600336666006666660099666600CC666600FF66
                660000996600339966006699660099996600CC996600FF99660000CC660033CC
                660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
                6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
                990000339900333399006633990099339900CC339900FF339900006699003366
                99006666990099669900CC669900FF6699000099990033999900669999009999
                9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
                990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
                CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
                CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
                CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
                CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
                CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
                FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
                FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
                FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
                FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
                000000808000800000008000800080800000C0C0C00080808000191919004C4C
                4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
                6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
                E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE8E8E8E8E8E8
                E8E8E8E8E8E882090909E8E8E8E8E8E8E8E8E8E8E8E8AC818181E8E8E8E8E8E8
                E8E8E8E8E8DF09090982E8E8E8E8E8E8E8E8E8E8E8DF818181ACE8E8E8E8E8E8
                E8E85E5E5E09090982E8E8E8E8E8E8E8E8E8DFDFDF818181ACE8E8E8E8E8E8E8
                E85EB3B3D7880982E8E8E8E8E8E8E8E8E881E3E3D7E381ACE8E8E8E8E8E8E8E8
                89E6B3B3B3D789E8E8E8E8E8E8E8E8E881E3E3E3E3D756E8E8E8E8E8E8E8E8E8
                89E6D7E6B3B389E8E8E8E8E8E8E8E8E881E3D7E3E3E356E8E8E8E8E8E8E8E8E8
                89E8E8D7E6B389E8E8E8E8E8E8E8E8E881E3D7D7E3E356E8E8E8E8E8E8E8E8E8
                E889E6E6E689E8E8E8E8E8E8E8E8E8E8E881E3E3E381DFE8E8E8E8E8E8E8E8E8
                E8E8898989E3E8E8E8E8E8E8E8E8E8E8E8E8818181E3E8E8E8E8E8DBE8E8E8E8
                E8DBE8E8E8E8E8E8E8E8E881E8E8E8E8E881E8E8E8E8E8E8E8E8E8DBE8E8E8E8
                E8DBE8E8E8E8E8E8E8E8E881E8E8E8E8E881E8E8E8E8E8E8E8E8E8DBDBDBE8E8
                E8DBDBE8E8E8E8E8E8E8E8818181E8E8E88181E8E3E8E8E8E8E8E8DBE8E8E8E8
                E8E8DBE3E8E8E8E8E8E8E881E8E8E8E8E8E881E3E8E8E8E8E8E8E8DBDBDBE8E8
                DBDBDBDBE8E8E8E8E8E8E8818181E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              NumGlyphs = 2
              Spacing = 0
              OnClick = spb1Click
            end
            object DBEdit3: TDBEdit
              Left = 3
              Top = 14
              Width = 75
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CODIGO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit3Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
            object DBEdit4: TDBEdit
              Left = 106
              Top = 14
              Width = 335
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'DESCRICAO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    Left = 490
    Top = 94
    object cdsDadosLANC: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'LANC'
      Origin = 'JAEADMIN.AJUSTECOM.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'JAEADMIN.AJUSTECOM.DATA'
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.AJUSTECOM.CODIGO'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.AJUSTECOM.DESCRICAO'
      Size = 50
    end
    object cdsDadosUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.AJUSTECOM.UNIDADE'
      Size = 2
    end
    object cdsDadosLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.AJUSTECOM.LANCIT'
    end
    object cdsDadosANTERIOR: TBCDField
      FieldName = 'ANTERIOR'
      Origin = 'JAEADMIN.AJUSTECOM.ANTERIOR'
    end
    object cdsDadosENTRADA: TBCDField
      DisplayLabel = 'Qtde.Entrada'
      FieldName = 'ENTRADA'
      Origin = 'JAEADMIN.AJUSTECOM.ENTRADA'
    end
    object cdsDadosSAIDA: TBCDField
      DisplayLabel = 'Qtde.Sa'#237'da'
      FieldName = 'SAIDA'
      Origin = 'JAEADMIN.AJUSTECOM.SAIDA'
    end
    object cdsDadosSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'JAEADMIN.AJUSTECOM.SALDO'
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.AJUSTECOM.REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.AJUSTECOM.REG_ID'
      Visible = False
    end
    object cdsDadosOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Origin = 'JAEADMIN.AJUSTECOM.OBS'
      Size = 50
    end
  end
  inherited dspDados: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 458
    Top = 94
  end
  inherited dsDados: TDataSource
    Left = 522
    Top = 94
  end
  inherited ImageList1: TImageList
    Left = 671
    Top = 91
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from ajustecom')
    Left = 426
    Top = 94
    object sqlDadosLANC: TIntegerField
      FieldName = 'LANC'
      Origin = 'JAEADMIN.AJUSTECOM.LANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'JAEADMIN.AJUSTECOM.DATA'
    end
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.AJUSTECOM.CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.AJUSTECOM.DESCRICAO'
      Size = 50
    end
    object sqlDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'JAEADMIN.AJUSTECOM.UNIDADE'
      Size = 2
    end
    object sqlDadosLANCIT: TIntegerField
      FieldName = 'LANCIT'
      Origin = 'JAEADMIN.AJUSTECOM.LANCIT'
    end
    object sqlDadosANTERIOR: TBCDField
      FieldName = 'ANTERIOR'
      Origin = 'JAEADMIN.AJUSTECOM.ANTERIOR'
    end
    object sqlDadosENTRADA: TBCDField
      FieldName = 'ENTRADA'
      Origin = 'JAEADMIN.AJUSTECOM.ENTRADA'
    end
    object sqlDadosSAIDA: TBCDField
      FieldName = 'SAIDA'
      Origin = 'JAEADMIN.AJUSTECOM.SAIDA'
    end
    object sqlDadosSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'JAEADMIN.AJUSTECOM.SALDO'
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.AJUSTECOM.REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.AJUSTECOM.REG_ID'
    end
    object sqlDadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'JAEADMIN.AJUSTECOM.OBS'
      Size = 50
    end
  end
  object sqlProduto: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      
        'select codigo, descricao, '#39'P'#39' as tipo from cadprodu where ativo ' +
        '= '#39'S'#39
      'union all'
      
        'select codigo, descricao, '#39'M'#39' as tipo from cadmerca where ativo ' +
        '= '#39'S'#39
      'order by 1')
    Left = 594
    Top = 150
    object sqlProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object sqlProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object sqlProdutoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
end
