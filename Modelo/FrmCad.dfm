inherited FfrmCad: TFfrmCad
  Caption = 'Cadastro'
  ClientHeight = 322
  ClientWidth = 594
  ExplicitWidth = 600
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel12: TPanel
    Top = 306
    Width = 594
    ExplicitTop = 306
    ExplicitWidth = 594
    inherited PStatusHistorico: TPanel
      Width = 423
      ExplicitWidth = 423
    end
    inherited pnlTela: TPanel
      Left = 536
      ExplicitLeft = 536
    end
  end
  inherited pMenu: TRzPanel
    Height = 306
    ExplicitHeight = 306
  end
  inherited RzPanel1: TRzPanel
    Width = 454
    Height = 306
    ExplicitWidth = 454
    ExplicitHeight = 306
    inherited pcItem: TRzPageControl
      Width = 440
      Height = 292
      ActivePage = tsDados
      TabIndex = 1
      ExplicitWidth = 440
      ExplicitHeight = 292
      FixedDimension = 19
      inherited tsLista: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 438
        ExplicitHeight = 271
        inherited Label3: TLabel
          Width = 438
        end
        inherited dbDados: TDBGrid
          Width = 438
          Height = 258
        end
        inherited pPesquisa: TRzPanel
          Left = 16
          Top = 69
          ExplicitLeft = 16
          ExplicitTop = 69
        end
      end
      inherited tsDados: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 438
        ExplicitHeight = 271
        inherited pDados: TPanel
          Width = 438
          Height = 271
          ExplicitWidth = 438
          ExplicitHeight = 271
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
          object GroupBox3: TGroupBox
            Left = 5
            Top = 67
            Width = 86
            Height = 32
            Caption = ' C.E.P.'
            TabOrder = 2
            object DBEdit3: TDBEdit
              Left = 5
              Top = 15
              Width = 76
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CEP'
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
            Left = 93
            Top = 67
            Width = 44
            Height = 32
            Caption = ' UF '
            TabOrder = 3
            object DBEdit4: TDBEdit
              Left = 6
              Top = 15
              Width = 33
              Height = 15
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'ESTADO'
              DataSource = dsDados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBEdit4Exit
              OnKeyDown = FormKeyDown
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 36
            Width = 316
            Height = 32
            Caption = ' Nome da Cidade '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 5
              Top = 15
              Width = 308
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
  inherited sqlDados: TQuery
    SQL.Strings = (
      'select * from cadcidad')
  end
end
