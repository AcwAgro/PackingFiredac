inherited FfrmCadAcesso: TFfrmCadAcesso
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 635
  ClientWidth = 896
  ExplicitWidth = 902
  ExplicitHeight = 664
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 619
    Width = 896
    ExplicitTop = 619
    ExplicitWidth = 896
    inherited PStatusHistorico: TPanel
      Width = 715
      ExplicitWidth = 715
    end
    inherited pnlTela: TPanel
      Left = 828
      ExplicitLeft = 828
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 886
      ExplicitLeft = 886
      ExplicitHeight = 16
    end
  end
  inherited pMenu: TRzPanel
    Height = 619
    ExplicitHeight = 619
    inherited rzpMenu: TRzPanel
      Height = 515
      ExplicitHeight = 515
      inherited rbgAtivo: TRadioGroup
        Top = 395
        OnClick = rbgAtivoClick
        ExplicitTop = 395
      end
      inherited PPeriodo: TPanel
        Top = 435
        ExplicitTop = 435
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 759
    Height = 619
    ExplicitWidth = 759
    ExplicitHeight = 619
    inherited pcItem: TRzPageControl
      Width = 751
      Height = 611
      ExplicitWidth = 751
      ExplicitHeight = 611
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 749
        ExplicitHeight = 590
        inherited pPesquisa: TRzPanel
          Top = 524
          Width = 749
          ExplicitTop = 524
          ExplicitWidth = 749
          inherited Label1: TLabel
            Width = 741
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 628
            ExplicitLeft = 628
          end
          inherited rbPesquisa: TRzPanel
            Width = 741
            ExplicitWidth = 741
          end
          inherited edPesquisa: TMaskEdit
            Width = 624
            ExplicitWidth = 624
          end
        end
        inherited Panel2: TPanel
          Width = 749
          ExplicitWidth = 749
          inherited Label3: TLabel
            Left = 137
            Width = 611
            Height = 18
            ExplicitLeft = 679
          end
        end
        inherited dbDados: TcxGrid
          Width = 749
          Height = 504
          ExplicitWidth = 749
          ExplicitHeight = 504
          inherited dbDadosDBTableView1: TcxGridDBTableView
            object dbDadosDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object dbDadosDBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
            object dbDadosDBTableView1ATIVO: TcxGridDBColumn
              Caption = 'Ativo'
              DataBinding.FieldName = 'ATIVO'
              MinWidth = 50
            end
            object dbDadosDBTableView1SENHA: TcxGridDBColumn
              DataBinding.FieldName = 'SENHA'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PROG1: TcxGridDBColumn
              DataBinding.FieldName = 'PROG1'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1PROG2: TcxGridDBColumn
              DataBinding.FieldName = 'PROG2'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REGLOG: TcxGridDBColumn
              DataBinding.FieldName = 'REGLOG'
              Visible = False
              VisibleForCustomization = False
            end
            object dbDadosDBTableView1REG_ID: TcxGridDBColumn
              DataBinding.FieldName = 'REG_ID'
              Visible = False
              VisibleForCustomization = False
            end
          end
        end
      end
      inherited tsDados: TRzTabSheet
        OnEnter = tsDadosEnter
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 749
        ExplicitHeight = 590
        inherited pDados: TPanel
          Width = 749
          Height = 151
          Align = alTop
          ExplicitWidth = 749
          ExplicitHeight = 151
          object GroupBox1: TGroupBox
            Left = 5
            Top = 5
            Width = 80
            Height = 32
            Caption = ' C'#243'digo '
            TabOrder = 0
            object DBEdit1: TDBEdit
              Left = 5
              Top = 15
              Width = 68
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
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox4: TGroupBox
            Left = 237
            Top = 36
            Width = 132
            Height = 32
            Caption = ' Senha '
            TabOrder = 3
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 115
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'SENHA'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PasswordChar = '*'
              TabOrder = 0
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 230
            Height = 32
            Caption = ' Nome '
            TabOrder = 2
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 218
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
              TabOrder = 0
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 2
            Top = 70
            Width = 745
            Height = 60
            Align = alBottom
            Caption = ' Liberar com senha de autoriza'#231#227'o '
            TabOrder = 4
            object DBCheckBox1: TDBCheckBox
              Left = 3
              Top = 14
              Width = 369
              Height = 17
              Caption = 'Movimentos - altera'#231#227'o e exclus'#227'o ap'#243's per'#237'odo de 10 dias.'
              Color = clWhite
              DataField = 'PROG1'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 3
              Top = 37
              Width = 369
              Height = 17
              Caption = 'Alterar pre'#231'o de venda/desconto na NFe.'
              Color = clWhite
              DataField = 'PROG2'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object Panel1: TPanel
            Left = 2
            Top = 130
            Width = 745
            Height = 19
            Align = alBottom
            Alignment = taLeftJustify
            BevelInner = bvLowered
            BevelOuter = bvNone
            Caption = 
              '                                Marcar/Desmarcar ->             ' +
              '   '
            Color = clWhite
            ParentBackground = False
            TabOrder = 5
            object cbEditar: TCheckBox
              Tag = 1
              Left = 295
              Top = 2
              Width = 17
              Height = 17
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              OnClick = cbEditarClick
            end
            object cbExcluir: TCheckBox
              Tag = 2
              Left = 340
              Top = 2
              Width = 17
              Height = 17
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
              OnClick = cbEditarClick
            end
            object cbMostrar: TCheckBox
              Tag = 3
              Left = 391
              Top = 2
              Width = 17
              Height = 17
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
              OnClick = cbEditarClick
            end
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 103
            Top = 5
            Width = 130
            Height = 32
            Caption = ' Ativo '
            Columns = 2
            DataField = 'ATIVO'
            DataSource = dsDados
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
        end
        object dbDetalhe: TDBGrid
          Left = 0
          Top = 151
          Width = 749
          Height = 439
          Align = alClient
          DataSource = dsRotina
          FixedColor = 14273198
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = [fsBold]
          OnCellClick = dbDetalheCellClick
          OnDrawColumnCell = dbDetalheDrawColumnCell
          Columns = <
            item
              Color = 15592935
              Expanded = False
              FieldName = 'Rotina'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 263
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Editar'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Excluir'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Visualizar'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Mostrar'
              Visible = True
            end>
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    AfterScroll = cdsDadosAfterScroll
    Left = 378
    Top = 166
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsDadosSENHA: TStringField
      FieldName = 'SENHA'
      Visible = False
      Size = 10
    end
    object cdsDadosPROG1: TStringField
      FieldName = 'PROG1'
      Visible = False
      Size = 1
    end
    object cdsDadosPROG2: TStringField
      FieldName = 'PROG2'
      Visible = False
      Size = 1
    end
    object cdsDadosATIVO: TStringField
      FieldName = 'ATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Visible = False
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  inherited dspDados: TDataSetProvider
    Left = 346
    Top = 166
  end
  inherited dsDados: TDataSource
    Left = 410
    Top = 166
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from zacesso where ativo = '#39'S'#39)
    Left = 314
    Top = 166
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sqlDadosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sqlDadosPROG1: TStringField
      FieldName = 'PROG1'
      Size = 1
    end
    object sqlDadosPROG2: TStringField
      FieldName = 'PROG2'
      Size = 1
    end
    object sqlDadosATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlDadosREGLOG: TStringField
      FieldName = 'REGLOG'
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsRotina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 168
    object cdsRotinaRotina: TStringField
      FieldName = 'Rotina'
      Size = 30
    end
    object cdsRotinaTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object cdsRotinaTag: TIntegerField
      FieldName = 'Tag'
      Visible = False
    end
    object cdsRotinaEditar: TStringField
      FieldName = 'Editar'
      Size = 1
    end
    object cdsRotinaExcluir: TStringField
      FieldName = 'Excluir'
      Size = 1
    end
    object cdsRotinaVisualizar: TStringField
      FieldName = 'Visualizar'
      Size = 1
    end
    object cdsRotinaGrupo: TIntegerField
      FieldName = 'Grupo'
    end
  end
  object dsRotina: TDataSource
    DataSet = cdsRotina
    Left = 512
    Top = 168
  end
  object TModulo: TFDQuery
    CachedUpdates = True
    Connection = DM.BDConexao
    Transaction = DM.FDTransaction1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      
        'Select Tag, Editar, Excluir, Visualizar From zModulo Order by Ta' +
        'g')
    Left = 568
    Top = 168
  end
end
