unit Login;

interface

uses
  Windows, SysUtils, Classes, Forms, Dialogs, ExtCtrls, StdCtrls, Mask,
  Buttons, Graphics, Controls, jpeg, Variants, ShellApi, ComObj,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  TFLogin = class(TForm)
    Timer1: TTimer;
    PTitulo: TPanel;
    lblScript: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    gbEmpresa: TPanel;
    Image5: TImage;
    cbEmpresa: TcxComboBox;
    Panel11: TPanel;
    Image3: TImage;
    cbUsuario: TcxComboBox;
    Panel12: TPanel;
    Image4: TImage;
    imgPassOff: TImage;
    imgPassON: TImage;
    edSenha: TEdit;
    meAcesso: TMaskEdit;
    Panel13: TPanel;
    sbConectar: TSpeedButton;
    imgAtualizar: TImage;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel14: TPanel;
    sbFechar: TImage;
    Panel5: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel10: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    sbEsteira: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure sbConectarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgPassONClick(Sender: TObject);
    procedure imgPassOffClick(Sender: TObject);
    procedure sbFecharClick(Sender: TObject);
    procedure cbUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure sbEsteiraClick(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure meAcessoEnter(Sender: TObject);
    procedure meAcessoExit(Sender: TObject);
  private
    function fMicro(Drive:String):String;
  public
  end;

var
  FLogin: TFLogin;
  vKey:Integer;

implementation

uses Data, Menu, Rotina, zScript;

{$R *.DFM}

procedure TFLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if Key = #13 then begin Key:=#0; vKey:=13; Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFLogin.FormShow(Sender: TObject);
begin

  sbConectar.Tag := 100;
  Timer1.Enabled := True;

end;

procedure TFLogin.imgPassOffClick(Sender: TObject);
begin

  imgPassOn.Top      := imgPassOff.Top;
  imgPassOn.Left     := imgPassOff.Left;
  imgPassOff.Visible := False;
  imgPassOn.Visible  := True;
  meAcesso.PasswordChar := edSenha.PasswordChar;

end;

procedure TFLogin.imgPassONClick(Sender: TObject);
begin

  imgPassOff.Visible := True;
  imgPassOn.Visible  := False;
  meAcesso.PasswordChar := '*';;

end;

procedure TFLogin.meAcessoEnter(Sender: TObject);
begin
  vKey := 0;
end;

procedure TFLogin.meAcessoExit(Sender: TObject);
begin
  if vkey = 13 then sbConectar.onclick(Sender);
end;

procedure TFLogin.Timer1Timer(Sender: TObject);
var vArq:TextFile;
    vtxt:String;
    vtrue:Boolean;
begin
   Timer1.Enabled:=False;
   Timer1.Interval:=300;
   lblScript.Visible := False;

//procura ou mapea rede
   vtrue := false;
   xdirsi:=ExtractFilePath(Application.ExeName);

   //Criar pasta rastrear
   if not DirectoryExists(xdirsi+'rastrear'+xBDConexao) then
   begin
     CreateDir(xdirsi+'rastrear'+xBDConexao);
     Sleep(500);
     if not DirectoryExists(xdirsi+'rastrear'+xBDConexao) then
       CreateDir(xdirsi+'rastrear'+xBDConexao);
   end;

{   if not vtrue then
   begin
     if trim(xdirsi) = '' then
       xdirsi:=ExtractFilePath(Application.ExeName);

     xdirdb:=xdirsi+'Dados\Conexao.ini';
     if not FileExists(xdirdb) then begin
       ShowMessage('Sistema Paralizado ou Fora da Rede!'+#13+xdirdb);
       Halt;
     end;
   end;
}
   //Abre Conexao
   if not fAcesso(xBDConexao) then
   begin
     sbFechar.onClick(sbFechar);
   end
   else begin
     if not dm.TEmpresa.Active then
       dm.TEmpresa.Open;

     if not dm.TAcesso.Active then
      dm.TAcesso.Open;

     if not dm.TImpres.Active then
       dm.TImpres.Open;

     xEmp:=1;
     xEmpre := dm.TEmpresa.Fields[1].Text;
     cbUsuario.Text := '';
     cbUsuario.Properties.Items.Clear;
     dm.TAcesso.First;
     while not dm.TAcesso.Eof do
     begin
       if (dm.TAcesso.FieldByName('ATIVO').AsString = 'S') then
         cbUsuario.Properties.Items.Add(dm.TAcesso.FieldByName('Descricao').AsString);
       dm.TAcesso.Next;
     end;
     dm.TImpres.Open;

{     if FLogin.cbEmpresa.Properties.Items.Count < 1 then
     begin
       vtxt := '01-'+Trim(Copy(xEmpre, 1, 50));
       FLogin.cbEmpresa.Properties.Items.Add(vtxt);
       FLogin.cbEmpresa.Text := vtxt;
     end;
}
     cbUsuario.SetFocus;
   end;

end;

procedure TFLogin.sbConectarClick(Sender: TObject);
var vsen:String;
begin
  xAce:=01;
  xAcesso:=01;
  xAcess:=xJaeInter[1];
  Timer1.Enabled:=False;
  Application.ProcessMessages;

  //Roda o script no inicio -> assim fica automático
  FLogin.lblScript.Visible := True;
  pRodaScript;
  FLogin.lblScript.Visible := False;

  //Processo normal
  if not dm.TEmpresa.Active then
    dm.TEmpresa.Open;

  if not dm.TAcesso.Active then
    dm.TAcesso.Open;

  if not dm.TImpres.Active then
    dm.TImpres.Open;

  xAno:=FormatDateTime('yyyy', Date);
  xEmp:=StrToInt('01');
  xEmpre:=dm.TEmpresa.Fields[1].Text;

  //Se o arquivo foi baixado
//  FMenu.pObtemAcesso(True);

  vsen := LowerCase(cbusuario.Text+meAcesso.Text);
  if (Trim(vsen) = '') or (Trim(meAcesso.Text)= '')then begin
    ShowMessage('Senha Inválida!');
    cbUsuario.SetFocus;
    Exit;
  end;

  if (frCrip('C',vsen) <> xSenha) then
  begin
    vsen:=UpperCase(Trim(MEAcesso.Text));
    if not dm.TAcesso.Locate('Descricao',cbUsuario.Text,[]) then begin
      ShowMessage('Usuário Inválido!');
      cbUsuario.SetFocus;
      Exit;
    end
    else begin
      if dm.TAcesso.FieldByName('Senha').asString <> vsen then begin
        ShowMessage('Senha Inválida!');
        cbUsuario.SetFocus;
        Exit;
      end;
    end;
    xAce    := dm.TAcesso.Fields[0].asInteger;
    xAcesso := dm.TAcesso.Fields[0].asInteger;
    xAcess  := dm.TAcesso.Fields[1].asString;
  end;

  //Abre conexão odbc
  FLogin.lblScript.Caption := 'Aguarde inicializando conexão...';
  FLogin.lblScript.Visible := True;
  Application.ProcessMessages;
  fAcessoBDE(xBDConexao);
  FLogin.lblScript.Visible := False;

  dm.TImpres.Locate('Volume',Copy(xSeria,1,8),[]);
  xSenha   := vsen;
  Visible  := False;
  xFiltro1 := 'EMPRECOD<>99999';
  xPlano   := 'CadPlano';
  with FMenu do
  begin
    Logo.Visible := True;
    LMicro.Caption    := ' Pasta\Local: '+xdirsi;
    LEmpre.Caption    := ' Empresa:  0'+IntToStr(xEmp)+' - '+Trim(xEmpre);
    LUser.Caption     := ' Usuário: '+xAcess;
    titVersao.Caption := ' Versão:'+frVersao;

    if xBDConexao = '02' then
      LEmpre.Color := $006262FF
    else if xBDConexao = '03' then
      LEmpre.Color := $00DDFFFF
    else if xBDConexao = '04' then
      LEmpre.Color := $00DDDDDD
    else
      LEmpre.Color := $008FE8C9;

    Application.Restore;
    WindowState := wsMaximized;
    Enabled     := True;
    pnlCabecalho.Visible := True;
    grpBarPrinc.Visible  := True;
  end;
  if not fVerificaAcesso then
  begin
    Application.Terminate;
    Exit;
  end;
  Close;
end;

procedure TFLogin.sbFecharClick(Sender: TObject);
begin

  dm.Session1.Active := False;
  dm.JaeAdmin.Connected   := False;

  FLogin.Caption := 'FECHAR';
  Flogin.Close;
  FMenu.Close;

end;

procedure TFLogin.cbEmpresaExit(Sender: TObject);
begin

  if sbConectar.Tag = 100 then
  begin
    sbConectar.Tag := 0;
    exit;
  end;

  sbConectar.Tag := 0;
  if Copy(cbEmpresa.Text,1,2) = '01' then
    xBDConexao := ''
  else
    xBDConexao := Copy(cbEmpresa.Text,1,2);

  vKey := 0;
  cbUsuario.Text := '';
  cbUsuario.Properties.Items.Clear;
  FMenu.pAbreConexao(xBDConexao);
  Timer1.Enabled := True;

end;

procedure TFLogin.cbUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if Key = #13 then begin Key:=#0; vKey:=13; meAcesso.SetFocus; end;
end;

function TFLogin.fMicro(Drive:String):String;
var Serial,DirLen,Flags: DWord; DLabel : Array[0..11] of Char;
begin
  GetVolumeInformation(PChar(Drive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
  Result := IntToHex(Serial,8);
end;


procedure TFLogin.sbEsteiraClick(Sender: TObject);
var varquivo: String;
begin
  inherited;

  try

    varquivo := cbEmpresa.Text;

    if (Pos('FRUTAS SOLO', varquivo) > 0) or (Pos('FRUTASSOLO', varquivo) > 0) then
      varquivo :=  xDirSi + 'acwebpacking.exe'
    else
      varquivo :=  xDirSi + 'acwebesteirafixo.exe';

    if FileExists(varquivo) then
      ShellExecute(Handle, 'open', pchar(varquivo), nil, nil, sw_show);

  except

  end;

end;


end.
