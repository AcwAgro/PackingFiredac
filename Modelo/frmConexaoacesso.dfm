object FConexaoAcesso: TFConexaoAcesso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Atualizar informa'#231#245'es'
  ClientHeight = 95
  ClientWidth = 264
  Color = 14273198
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sbBaixar: TSpeedButton
    Left = 2
    Top = 45
    Width = 63
    Height = 27
    Cursor = crHandPoint
    Caption = 'Download'
    Enabled = False
    OnClick = sbBaixarClick
  end
  object lblAguarde: TLabel
    Left = 71
    Top = 45
    Width = 60
    Height = 13
    Caption = 'Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object gbx_: TGroupBox
    Left = 0
    Top = 0
    Width = 264
    Height = 37
    Align = alTop
    Caption = 'Instru'#231#245'es'
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Padding.Top = 5
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 2
      Top = 20
      Width = 81
      Height = 13
      Align = alTop
      Caption = ' Informa'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object pbBarra: TProgressBar
    Left = 71
    Top = 60
    Width = 154
    Height = 12
    Smooth = True
    TabOrder = 1
    Visible = False
  end
  object Sb: TStatusBar
    Left = 0
    Top = 77
    Width = 264
    Height = 18
    Color = 14273198
    Panels = <
      item
        Width = 180
      end
      item
        Width = 150
      end
      item
        Width = 180
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object IdFTP: TIdFTP
    OnStatus = IdFTPStatus
    OnWork = IdFTPWork
    OnWorkBegin = IdFTPWorkBegin
    OnWorkEnd = IdFTPWorkEnd
    AutoLogin = True
    Passive = True
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 136
  end
  object tmpAtualiza: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmpAtualizaTimer
    Left = 168
  end
end
