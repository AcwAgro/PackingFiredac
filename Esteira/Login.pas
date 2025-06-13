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
    procedure meAcessoEnter(Sender: TObject);
    procedure meAcessoExit(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function fMicro(Drive:String):String;
  public
  end;

var
  FLogin: TFLogin;
  vKey:Integer;

implementation

uses Data, Esteira, Rotina;

{$R *.DFM}

procedure TFLogin.FormCreate(Sender: TObject);
begin

   //Conexão padrão
   FEsteira.gbEmpresa.Visible := True;
   FEsteira.cbEmpresa.Items.Clear;
   cbEmpresa.Properties.Items.Clear;
   cbEmpresa.Properties.Items.Add(xBASE1);
   FEsteira.cbEmpresa.Items.Add(xBASE1);
   //Caso tenha segunda empresa
   if xBASE2 <> '' then
   begin
     cbEmpresa.Properties.Items.Add(xBASE2);
     FEsteira.cbEmpresa.Items.Add(xBASE2);
   end;

   cbEmpresa.Text := xBASE1;
   FEsteira.cbEmpresa.Text := xBASE1;

end;

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
  vKey:=0;
end;

procedure TFLogin.meAcessoExit(Sender: TObject);
begin
  if vkey = 13 then sbConectar.onclick(Sender);
end;

procedure TFLogin.Timer1Timer(Sender: TObject);
var vtxt:String;
begin
   Timer1.Enabled:=False;
   Timer1.Interval:=300;
   lblScript.Visible := False;

   xEmp:=1;
   dm.TEmpresa.Open;
   dm.ZAcesso.Open;
   cbUsuario.Text := '';
   cbUsuario.Properties.Items.Clear;
   dm.ZAcesso.First;
   while not dm.ZAcesso.Eof do
   begin
     if (dm.ZAcesso.FieldByName('ATIVO').AsString = 'S') then
       cbUsuario.Properties.Items.Add(dm.ZAcesso.FieldByName('Descricao').AsString);
     dm.ZAcesso.Next;
   end;
{
   if FLogin.cbEmpresa.Properties.Items.Count < 1 then
   begin
     vtxt := '01-'+Trim(Copy(dm.TEmpresa.FieldByName('Descricao').asString, 1, 50));
     FLogin.cbEmpresa.Properties.Items.Add(vtxt);
     FLogin.cbEmpresa.Text := vtxt;
   end;

   if (Trim(xBASE2) <> '') then
     FLogin.cbEmpresa.Properties.Items.Add(xBASE2);
}

   cbUsuario.SetFocus;

end;

procedure TFLogin.sbConectarClick(Sender: TObject);
var vsen:String;
begin
  xAcesso:=01;
  Timer1.Enabled:=False;
  Application.ProcessMessages;

  FLogin.lblScript.Visible := False;

  //Processo normal
  xAno:=FormatDateTime('yyyy', Date);

  dm.ZAcesso.Open;
  vsen := LowerCase(cbusuario.Text+meAcesso.Text);
  if (Trim(vsen) = '') or (Trim(meAcesso.Text)='') then begin
    ShowMessage('Senha Inválida!');
    cbUsuario.SetFocus;
    Exit;
  end;

  if (frCrip('C',vsen) <> xSenha) then
  begin
    vsen:=UpperCase(Trim(MEAcesso.Text));
    if not dm.ZAcesso.Locate('Descricao',cbUsuario.Text,[]) then begin
      ShowMessage('Usuário Inválido!');
      cbUsuario.SetFocus;
      Exit;
    end
    else begin
      if dm.ZAcesso.FieldByName('Senha').asString <> vsen then begin
        ShowMessage('Senha Inválida!');
        cbUsuario.SetFocus;
        Exit;
      end;
    end;
    xAcesso:=dm.ZAcesso.Fields[0].asInteger;
  end;
  xSenha:=vsen;

  FEsteira.gbEmpresa.Visible := True;
  FEsteira.cbEmpresa.Items.Clear;
  FEsteira.cbEmpresa.Items.Add(cbEmpresa.Text);
  FEsteira.cbEmpresa.Text := cbEmpresa.Text;

  Visible:=False;

  Close;
end;

procedure TFLogin.sbFecharClick(Sender: TObject);
begin
  dm.BDConexao.Connected   := False;

  FLogin.Caption := 'FECHAR';
  Flogin.Close;
  FEsteira.Close;

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

  FEsteira.pAbreConexao(xBDConexao);
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


end.
