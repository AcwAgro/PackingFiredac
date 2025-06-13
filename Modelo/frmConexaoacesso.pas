unit frmConexaoacesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, StdCtrls, ShellApi,
  ExtCtrls;

type
  TFConexaoAcesso = class(TForm)
    gbx_: TGroupBox;
    lblTitulo: TLabel;
    IdFTP: TIdFTP;
    pbBarra: TProgressBar;
    sbBaixar: TSpeedButton;
    Sb: TStatusBar;
    tmpAtualiza: TTimer;
    lblAguarde: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdFTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdFTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Integer);
    procedure IdFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Integer);
    procedure IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure tmpAtualizaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AbortTransfer: Boolean;
    TransferrignData: Boolean;
    BytesToTransfer: LongWord;
    STime: TDateTime;
    vDirFtp, vArquivo: String;
    procedure BaixarArquivo;
  end;

var
  FConexaoAcesso: TFConexaoAcesso;

implementation

uses Data, Rotina;

{$R *.dfm}
var
  AverageSpeed: Double = 0;

procedure TFConexaoAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IdFTP.Connected then IdFTP.Disconnect;
end;

procedure TFConexaoAcesso.FormCreate(Sender: TObject);
begin

  vArquivo := frSoNumero(dm.TEmpresa.FieldByName('CPF').asString);
  if trim(vArquivo) = '' then
    vArquivo := 'ARQ81896220991.ini'
  else vArquivo := 'ARQ'+vArquivo+'.ini';

  lblTitulo.Caption := ' Informaçes: '+vArquivo;
  vDirFtp        := fBus(1,['Select valor From xparametro Where parametro = ''ftpAtualiza'''],1);
  IdFTP.Host     := fBus(1,['Select valor From xparametro Where parametro = ''ftpHost'''],1);
  IdFTP.Password := 'Acweb#1974';
  IdFTP.Username := fBus(1,['Select valor From xparametro Where parametro = ''ftpUser'''],1);
  IdFTP.Port     := StrToIntDef(fBus(1,['Select valor From xparametro Where parametro = ''ftpPorta'''],1),21);
  vDirFtp        := vDirFtp + 'acesso/';

  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  SB.Panels[2].Text := '';

  Application.ProcessMessages;

end;

procedure TFConexaoAcesso.IdFTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  SB.Panels[2].Text := aStatusText;
end;

procedure TFConexaoAcesso.IdFTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Integer);
Var
  S: String;
  TotalTime: TDateTime;
  H, M, Sec, MS: Word;
  DLTime: Double;
begin
  pbBarra.Visible := True;
  TotalTime :=  Now - STime;
  DecodeTime(TotalTime, H, M, Sec, MS);
  Sec := Sec + M * 60 + H * 3600;
  DLTime := Sec + MS / 1000;
  if DLTime > 0 then
    AverageSpeed := (AWorkCount / 1024) / DLTime;

  if AverageSpeed > 0 then begin
    Sec := Trunc(((pbBarra.Max - AWorkCount) / 1024) / AverageSpeed);

    S := Format('%2d:%2d:%2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);
    S := 'Tempo restante: ' + S;
  end
  else S := '';
  SB.Panels[0].Text := s;

  S := FormatFloat('0.00 KB/s', AverageSpeed);
  case AWorkMode of
    wmRead: SB.Panels[1].Text := S;
    wmWrite: SB.Panels[1].Text := S;
  end;

  if AbortTransfer then IdFTP.Abort;

  pbBarra.Position := AWorkCount;
  AbortTransfer := false;
  Application.ProcessMessages;
end;

procedure TFConexaoAcesso.IdFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Integer);
begin
  TransferrignData := true;
  AbortTransfer := false;
  STime := Now;
  if AWorkCountMax > 0 then pbBarra.Max := AWorkCountMax
  else pbBarra.Max := BytesToTransfer;
  AverageSpeed := 0;
end;

procedure TFConexaoAcesso.IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  BytesToTransfer := 0;
  TransferrignData := false;
  pbBarra.Position := 0;
  AverageSpeed := 0;
  pbBarra.Visible := False;
end;

procedure TFConexaoAcesso.sbBaixarClick(Sender: TObject);
var vArq, vtxt, vstr: String;
    i: Integer;
begin

  if not pVerificaConexaoFTP then
    Close

  else begin

    lblAguarde.Caption := 'Aguarde...';
    lblAguarde.Visible := true;
    Application.ProcessMessages;

    //Se o arquivo NÃO foi baixado
    vArq := xdirsi+vArquivo;
    if not FileExists(vArq) then
    begin
      //Busca arquivo no site...
      if IdFTP.Connected then
      try
        if TransferrignData then
          IdFTP.Abort;
        IdFTP.Quit;
      finally
      end
      else begin
        try
          IdFTP.Connect;
          if IdFTP.Connected then
          begin
            sbBaixar.Enabled := False;
            BaixarArquivo;
          end
          else begin
            close;
          end;
        except
          try
            IdFTP.Quit;
            IdFTP.Port := 28;
            IdFTP.Connect;
            if IdFTP.Connected then
            begin

              sbBaixar.Enabled := False;
              BaixarArquivo;

            end;
          except
            close;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFConexaoAcesso.tmpAtualizaTimer(Sender: TObject);
begin

  tmpAtualiza.Enabled := False;
  sbBaixar.OnClick(sbBaixar);

end;

procedure TFConexaoAcesso.BaixarArquivo;
Var
  vErro: boolean;
begin

  lblAguarde.Caption := 'Aguarde...';
  lblAguarde.Visible := true;
  Application.ProcessMessages;

  vErro := false;
  IdFTP.ChangeDir(vDirFtp);
  BytesToTransfer := IdFTP.Size(vArquivo);

  try

    IdFTP.Get(vArquivo, 'new_' + vArquivo, true);

  except
    on e:exception do
    begin
      vErro := true;
    end;
  end;

  if not vErro then
  begin
    try
      DeleteFile('old_' + vArquivo);
      Sleep(400);
      RenameFile(vArquivo, 'old_' + vArquivo);
      Sleep(400);
      RenameFile('new_' + vArquivo, vArquivo);
      Close;
    except
      on e:exception do
      begin
        vErro := true;
        Close;
      end;
    end;
  end
  else
    Close;
end;

end.
