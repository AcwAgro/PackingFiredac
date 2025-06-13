unit zBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, StdCtrls, ShellApi,
  FileCtrl, ExtCtrls, Gauges;

type
  TFBackup = class(TForm)
    gbx_: TGroupBox;
    Memo1: TMemo;
    lblTitulo: TLabel;
    IdFTP: TIdFTP;
    sbBaixar: TSpeedButton;
    Sb: TStatusBar;
    tmpBackup: TTimer;
    lblAguarde: TLabel;
    pbBarra: TGauge;
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
    procedure tmpBackupTimer(Sender: TObject);
//    procedure ZipMaster1Progress(Sender: TObject; ProgrType: ProgressType;
//      Filename: string; FileSize: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
    AbortTransfer: Boolean;
    TransferrignData: Boolean;
    BytesToTransfer: LongWord;
    STime: TDateTime;
    vDirFtp, vArquivo: String;
    procedure SalvarArquivo(vDir, vNome, vFile: String);
  end;

var
  FBackup: TFBackup;

implementation

{$R *.dfm}

uses Data, Rotina, Menu;

var
  AverageSpeed: Double = 0;

procedure TFBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IdFTP.Connected then IdFTP.Disconnect;
  Close;
end;

procedure TFBackup.FormCreate(Sender: TObject);
begin

  vDirFtp        := fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpBackup')],1);
  IdFTP.Host     := fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpHost')],1);
  IdFTP.Password := 'Acweb#1974';
  IdFTP.Username := fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpUser')],1);
  IdFTP.Port := StrToIntDef(fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpPorta')],1),21);
  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  SB.Panels[2].Text := '';

  Application.ProcessMessages;

  tmpBackup.Enabled := True;

end;

procedure TFBackup.IdFTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  SB.Panels[2].Text := aStatusText;
end;

procedure TFBackup.IdFTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Integer);
Var
  S: String;
  TotalTime: TDateTime;
  H, M, Sec, MS: Word;
  DLTime: Double;
begin
  pbBarra.Visible := True;
  lblAguarde.Visible := pbBarra.Visible;
  TotalTime :=  Now - STime;
  DecodeTime(TotalTime, H, M, Sec, MS);
  Sec := Sec + M * 60 + H * 3600;
  DLTime := Sec + MS / 1000;
  if DLTime > 0 then
    AverageSpeed := (AWorkCount / 1024) / DLTime;

  if AverageSpeed > 0 then begin
    Sec := Trunc(((pbBarra.MaxValue - AWorkCount) / 1024) / AverageSpeed);

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

  pbBarra.Progress := AWorkCount;
  AbortTransfer := false;
  Application.ProcessMessages;
end;

procedure TFBackup.IdFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Integer);
begin
  TransferrignData := true;
  AbortTransfer := false;
  STime := Now;
  if AWorkCountMax > 0 then pbBarra.MaxValue := AWorkCountMax
  else pbBarra.MaxValue := BytesToTransfer;
  AverageSpeed := 0;
end;

procedure TFBackup.IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  BytesToTransfer := 0;
  TransferrignData := false;
  pbBarra.Progress := 0;
  AverageSpeed := 0;
  pbBarra.Visible := False;
  lblAguarde.Visible := pbBarra.Visible;
end;

procedure TFBackup.sbBaixarClick(Sender: TObject);
var vdoc, varqNome, varqNew, varqest:String;
    vic, vbint: Integer;
    vbMarca, vbBase: String;
begin

  try
    sbBaixar.Enabled := False;
    tmpBackup.Enabled := False;
    lblAguarde.Caption := 'Aguarde, compactando...';
    lblAguarde.Visible := true;
    Application.ProcessMessages;

    if not DirectoryExists(xDirSi + 'backup') then
      CreateDir(xDirSi + 'backup');

    vdoc := Trim(frTStr(fBus(1,['Select cpf From empresa'],1)));
    if vdoc = '' then
      vdoc := '000000';

    dm.Session1.Active      := False;
    dm.JaeAdmin.Connected   := False;
    dm.Session2.Active      := False;
    dm.JaeEsteira.Connected := False;

    //Copiar as base - Salvar local.zip e cloud normal
    for vic := 0 to 1 do
    begin
      if vic = 0 then
        vbmarca := 'BDFrutis'
      else
        vbmarca := 'BDEsteira';

      for vbint:= 0 to 10 do
      begin
        if vbint = 0 then
          vbBase := vbmarca+'.mdb'
        else
          vbBase := vbmarca+frPree(vbint,2,'0',0)+'.mdb';
        vbBase := xdirsi+'DADOS\'+vbBase;

        if FileExists(vbBase) then
        begin
          varqNome := vbmarca+frPree(vbint,2,'0',0)+'d'+FormatDateTime('YYMMDD', Date)+'u'+frPree(xAcesso,3,'0',0);
          varqNew  := xDirSi + 'backup\'+varqNome;
          CopyFile(pchar(vbBase), pchar(varqNew+'.bkp'), False);

          sleep(2000);
          if FileExists(varqNew+'.bkp') then
          begin
{            with TFileStream.Create(pchar(varqNew+'.bkp'), fmOpenRead or fmShareExclusive) do
            try
              pbBarra.MaxValue := Size;
              if Size > 30000 then
                pbBarra.MaxValue := pbBarra.MaxValue div 30000;
            finally
              Free;
            end;
}            //Backup
            pbBarra.Visible := True;
//            ZipMaster1.ZipFilename := varqNew+'.zip';
//            ZipMaster1.FSpecArgs.Clear;
//            ZipMaster1.FSpecArgs.Add(varqNew+'.bkp');
//            ZipMaster1.Add;
            sleep(5000);
          end;

          //Agora vai salvar na nuvem
          if pVerificaConexaoFTP then
          begin

            lblAguarde.Caption := 'Aguarde, fazendo conexão...';
            lblAguarde.Visible := true;
            Application.ProcessMessages;

            if IdFTP.Connected then
            begin
              try
                if TransferrignData then IdFTP.Abort;
                IdFTP.Quit;
              finally
              end
            end
            else begin
              try
                IdFTP.Connect;
                if IdFTP.Connected then
                begin
                  SalvarArquivo(vdoc, varqNome+'.zip', varqNew+'.zip');
                  //SalvarArquivo(vdoc, varqNome+'.bkp', varqNew+'.bkp');
                  FMenu.lblVersao.Caption := 'Backup cloud realizado.';
                  FMenu.lblVersao.Visible := True;
                  Application.ProcessMessages;
                  IdFTP.Disconnect;
                end
                else begin
                  MessageBox(0, 'Não foi possível conectar, verifique sua conexão com a internet.', 'Aviso', MB_ICONWARNING or MB_OK);
                  sbBaixar.Enabled := True;
                end;
              except
                try
                  IdFTP.Quit;
                  IdFTP.Port := 28;
                  IdFTP.Connect;
                  if IdFTP.Connected then
                  begin
                    SalvarArquivo(vdoc, varqNome+'.zip', varqNew+'.zip');
                    //SalvarArquivo(vdoc, varqNome+'.bkp', varqNew+'.bkp');
                    FMenu.lblVersao.Caption := 'Backup cloud realizado.';
                    FMenu.lblVersao.Visible := True;
                    Application.ProcessMessages;
                    IdFTP.Disconnect;
                  end
                except
                  MessageBox(0, 'Não foi possível conectar, verifique sua conexão com a internet.', 'Aviso', MB_ICONWARNING or MB_OK);
                  sbBaixar.Enabled := True;
                end;
              end;
            end;
          end;
          sleep(5000);
          //Excluir arquivos temporarios
          if FileExists(varqNew+'.bkp') then
            deletefile(varqNew+'.bkp');
        end;
      end;
    end;
  except
//    ShowMessage('Erro ao fazer backup: ' + IntToStr(ZipMaster1.SuccessCnt));
    sbBaixar.Enabled := True;
    fAcesso('01');
    Close;
  end;

  //Fecha tela
  fAcesso(xDBConexao);
  fSql(1,3,['Update xParametro set Valor = '+QuotedStr(DateToStr(Now)),
            ' Where Codigo = 920'],2);

  FMenu.lblVersao.Caption := 'Backup servidor realizado.';
  FMenu.lblVersao.Visible := True;
  FMenu.pnlData.Caption   := 'Último backup: '+DateToStr(Now);
  Application.ProcessMessages;
  Close;

end;

procedure TFBackup.tmpBackupTimer(Sender: TObject);
begin
  sbBaixar.OnClick(sbBaixar);
end;

//procedure TFBackup.ZipMaster1Progress(Sender: TObject; ProgrType: ProgressType;
//  Filename: string; FileSize: Int64);
//begin
//  pbBarra.Progress := pbBarra.Progress +1;
//  Application.ProcessMessages;
//end;

procedure TFBackup.SalvarArquivo(vDir, vNome, vFile: String);
begin
  try
    IdFTP.ChangeDir(vDirFtp+vdir);
    lblAguarde.Caption := 'Aguarde, upload...';
    lblAguarde.Visible := True;
    Application.ProcessMessages;

    BytesToTransfer := IdFTP.Size(vFile);
    IdFTP.Put(vFile, vDirFtp+vdir+'/'+vNome);

    pbBarra.Visible := False;
    lblAguarde.Visible := pbBarra.Visible;

  except
    on e:exception do
    begin
      MessageBox(0, 'Não foi possível salvar, tentar novamente.', 'Aviso', MB_ICONWARNING or MB_OK);
      IdFTP.MakeDir(vDirFtp+vdir);
      sbBaixar.Enabled := True;
      pbBarra.Visible := False;
      lblAguarde.Visible := pbBarra.Visible;
      fAcesso('01');
    end;
  end;
end;

end.
