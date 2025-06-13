inherited FfrmCadDados: TFfrmCadDados
  Caption = 'Cadastro hist'#243'rico dados adicionais NFe.'
  ClientHeight = 321
  ClientWidth = 1026
  ExplicitWidth = 1032
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 305
    Width = 1026
    ExplicitTop = 305
    ExplicitWidth = 1026
    inherited PStatusHistorico: TPanel
      Width = 845
      ExplicitWidth = 845
    end
    inherited pnlTela: TPanel
      Left = 958
      ExplicitLeft = 958
    end
    inherited cxtEdSalvar: TcxTextEdit
      Left = 1016
      ExplicitLeft = 1016
    end
  end
  inherited pMenu: TRzPanel
    Height = 305
    ExplicitHeight = 305
    inherited rzpMenu: TRzPanel
      Height = 201
      ExplicitHeight = 201
      inherited rbgAtivo: TRadioGroup
        Top = 81
        ExplicitTop = 81
      end
      inherited PPeriodo: TPanel
        Top = 121
        ExplicitTop = 121
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 889
    Height = 305
    ExplicitWidth = 889
    ExplicitHeight = 305
    inherited pcItem: TRzPageControl
      Width = 881
      Height = 297
      ActivePage = tsDados
      TabIndex = 1
      OnChange = pcItemChange
      ExplicitWidth = 881
      ExplicitHeight = 297
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitWidth = 879
        ExplicitHeight = 276
        inherited pPesquisa: TRzPanel
          Top = 210
          Width = 879
          ExplicitTop = 210
          ExplicitWidth = 879
          inherited Label1: TLabel
            Width = 871
          end
          inherited sbTiraFiltro: TSpeedButton
            Left = 758
            ExplicitLeft = 333
          end
          inherited rbPesquisa: TRzPanel
            Width = 871
            ExplicitWidth = 871
          end
          inherited edPesquisa: TMaskEdit
            Width = 754
            ExplicitWidth = 754
          end
        end
        inherited Panel2: TPanel
          Width = 879
          ExplicitWidth = 879
          inherited Label3: TLabel
            Width = 741
            ExplicitLeft = 461
          end
        end
        inherited dbDados: TcxGrid
          Width = 879
          Height = 190
          ExplicitWidth = 879
          ExplicitHeight = 190
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 879
        ExplicitHeight = 276
        inherited pDados: TPanel
          Width = 879
          Height = 276
          ExplicitWidth = 879
          ExplicitHeight = 276
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 428
            Height = 155
            Caption = ' Dados Adicionais '
            TabOrder = 2
            object memDados: TMemo
              Left = 2
              Top = 15
              Width = 424
              Height = 138
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 500
              ParentFont = False
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 5
            Top = 197
            Width = 127
            Height = 36
            Caption = ' Adicionar Imposto '
            Columns = 2
            DataField = 'FGIMPOSTO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 135
            Top = 197
            Width = 139
            Height = 36
            Caption = ' Adicionar Transp.  '
            Columns = 2
            DataField = 'FGTRANS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              'S'
              'N')
          end
          object dbgrImporta: TDBRadioGroup
            Left = 277
            Top = 197
            Width = 156
            Height = 36
            Caption = ' Adicionar Placa/Transp.'
            Columns = 2
            DataField = 'FGTRANSPL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox14: TGroupBox
            Left = 91
            Top = 5
            Width = 161
            Height = 32
            Caption = ' Prefixo '
            TabOrder = 1
            object DBEdit13: TDBEdit
              Left = 7
              Top = 15
              Width = 150
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
        end
      end
    end
  end
  inherited cdsDados: TClientDataSet
    AfterScroll = cdsDadosAfterScroll
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Prefixo'
      FieldName = 'DESCRICAO'
      Size = 16
    end
    object cdsDadosOBS1: TStringField
      DisplayLabel = 'Dados Adicionais...'
      DisplayWidth = 40
      FieldName = 'OBS1'
      Size = 120
    end
    object cdsDadosOBS2: TStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 120
    end
    object cdsDadosOBS3: TStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 120
    end
    object cdsDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Visible = False
    end
    object cdsDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Visible = False
    end
    object cdsDadosFGIMPOSTO: TStringField
      DisplayLabel = 'AD.Imposto'
      FieldName = 'FGIMPOSTO'
      Size = 1
    end
    object cdsDadosFGTRANS: TStringField
      DisplayLabel = 'AD.Transp.'
      FieldName = 'FGTRANS'
      Size = 1
    end
    object cdsDadosFGTRANSPL: TStringField
      DisplayLabel = 'Ad.Tr.Placa'
      FieldName = 'FGTRANSPL'
      Size = 1
    end
    object cdsDadosREGLOG: TMemoField
      FieldName = 'REGLOG'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object cdsDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Visible = False
    end
  end
  inherited sqlDados: TFDQuery
    SQL.Strings = (
      'select * from caddados')
    object sqlDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'JAEADMIN.CADDADOS.CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'JAEADMIN.CADDADOS.DESCRICAO'
      Size = 16
    end
    object sqlDadosOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'JAEADMIN.CADDADOS.OBS1'
      Size = 120
    end
    object sqlDadosOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'JAEADMIN.CADDADOS.OBS2'
      Size = 120
    end
    object sqlDadosOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'JAEADMIN.CADDADOS.OBS3'
      Size = 120
    end
    object sqlDadosEMPRECOD: TIntegerField
      FieldName = 'EMPRECOD'
      Origin = 'JAEADMIN.CADDADOS.EMPRECOD'
    end
    object sqlDadosACESOCOD: TIntegerField
      FieldName = 'ACESOCOD'
      Origin = 'JAEADMIN.CADDADOS.ACESOCOD'
    end
    object sqlDadosFGIMPOSTO: TStringField
      FieldName = 'FGIMPOSTO'
      Origin = 'JAEADMIN.CADDADOS.FGIMPOSTO'
      Size = 1
    end
    object sqlDadosFGTRANS: TStringField
      FieldName = 'FGTRANS'
      Origin = 'JAEADMIN.CADDADOS.FGTRANS'
      Size = 1
    end
    object sqlDadosFGTRANSPL: TStringField
      FieldName = 'FGTRANSPL'
      Origin = 'JAEADMIN.CADDADOS.FGTRANSPL'
      Size = 1
    end
    object sqlDadosREGLOG: TMemoField
      FieldName = 'REGLOG'
      Origin = 'JAEADMIN.CADDADOS.REGLOG'
      BlobType = ftMemo
      Size = 1
    end
    object sqlDadosREG_ID: TIntegerField
      FieldName = 'REG_ID'
      Origin = 'JAEADMIN.CADDADOS.REG_ID'
    end
  end
end
