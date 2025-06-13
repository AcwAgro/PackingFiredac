unit zRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,
  Provider, DBClient, DBTables, Menus, Mask, DBCtrls, RzDBNav, RzTabs, RzPanel,
  jpeg;

type
  THabilita = (thFonteAlta, thFonteBaixa, thVisivel, thNaoVisivel);
  TFRegistro = class(TForm)
    Panel3: TPanel;
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnGerarCodigo: TRzPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    edValidade: TMaskEdit;
    edRegistro: TEdit;
    edLiberacao: TEdit;
    sbSalvar: TRzPanel;
    btnVerdados: TRzPanel;
    btnComandos: TRzPanel;
    btnScript: TRzPanel;
    btnCFOP: TButton;
    btnAtualizar: TRzPanel;
    btnSincronizar: TButton;
    Label7: TLabel;
    Label8: TLabel;
    edForma: TComboBox;
    edMicros: TEdit;
    edCodigo: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSalvarClick(Sender: TObject);
    procedure btnGerarCodigoClick(Sender: TObject);
    procedure btnVerdadosClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure btnComandosClick(Sender: TObject);
    procedure btnScriptClick(Sender: TObject);
    procedure btnCFOPClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSincronizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//Tamanho maximo da tela é height=560, width=800
var
  FRegistro: TFRegistro;
  vKey: Integer;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, Login, zComandos, zScript, FrmCadSincronizar;


procedure TFRegistro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if xAcesso <> 88888 then
    FreeAndNil(FRegistro);
end;

procedure TFRegistro.FormCreate(Sender: TObject);
begin
  //Busca informação
  if (Trim(edRegistro.Text) ='') then  edRegistro.Text := 'acweb';

  edMicros.Text := fParametroEditaVlr('Sequencia');
  if (Trim(edMicros.Text) = '') then edMicros.Text := '5';

  edValidade.Text := frPegaSenhaData(fParametroEditaVlr('Válidade sistema'));
  if (Length(Trim(edValidade.Text)) < 8) then edValidade.Text := '01/01/2001';

  edForma.Text := fParametroEditaVlr('Forma Pagamento');
  if (Trim(edForma.Text) = '') then edForma.Text := 'Mensal';

  edCodigo.Text := fParametroEditaVlr('Código registro');
  btnGerarCodigo.onClick(Sender);
  edRegistro.Text  := edLiberacao.Text;
  edLiberacao.Text := '';

  btnGerarCodigo.Visible := False;
  btnVerdados.Visible    := False;
  btnComandos.Visible    := False;
//  btnScript.Visible      := False;
  btnCFOP.Visible        := False;
  btnSincronizar.Visible := False;
  edRegistro.ReadOnly    := False;
  edForma.Enabled        := False;
  edValidade.ReadOnly    := True;
  edMicros.ReadOnly      := True;
  edCodigo.ReadOnly      := True;
  //Height := 260;
  if (xAcesso = 99999) or (pos('ACWeb',FMenu.LUser.Caption)>0) or (pos('JARRIER',FMenu.LUser.Caption)>0) then
  begin
    edValidade.Text := DateToStr(incMonth(Now));
    btnGerarCodigo.Visible := True;
    btnVerdados.Visible    := True;
    btnComandos.Visible    := True;
//    btnScript.Visible      := True;
    //btnCFOP.Visible        := True;
    btnSincronizar.Visible := True;
    edRegistro.ReadOnly    := True;
    edForma.Enabled        := True;
    edValidade.ReadOnly    := False;
    edMicros.ReadOnly      := False;
    edCodigo.ReadOnly      := False;

    //Height := 380;
  end;
//  btnCFOP.visible :=  btnScript.Visible;
end;

procedure TFRegistro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key = #13 then
  begin
    key  := #0;
    vKey := 13;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFRegistro.Label4Click(Sender: TObject);
begin
  FMenu.imgACWeb.onClick(FMenu.imgACWeb);
end;


procedure TFRegistro.btnComandosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmcomandos,FrmComandos);
  FrmComandos.ShowModal;
  FreeAndNil(FrmComandos);
end;

procedure TFRegistro.btnGerarCodigoClick(Sender: TObject);
var vfor, vsen, vdata, vforma, vsequen: String;
begin
  vdata   := Copy(edValidade.Text,1,2)+Copy(edValidade.Text,4,2)+Copy(edValidade.Text,9,2);
  vforma  := edForma.Text;
  vsequen := Copy(edValidade.Text,4,2);
  if StrToInt(vsequen) > 5  then
    vsequen := IntToStr(StrToInt(vsequen) div 2);
  vsequen := frPree(vsequen,2,'0',0);
  //Forma pagamento
  if      (edForma.Text = 'Mensal')     then vfor := '01'
  else if (edForma.Text = 'Trimestral') then vfor := '02'
  else if (edForma.Text = 'Semestral')  then vfor := '03'
  else if (edForma.Text = 'Anual')      then vfor := '04'
  else                                       vfor := '01';

  vsen := Copy(vdata,1,1)+Copy(vdata,6,1)+
          Copy(vdata,2,1)+Copy(vdata,5,1)+
          Copy(vdata,3,1)+Copy(vdata,4,1)+
          Copy(vdata,4,1)+Copy(vdata,3,1)+
          Copy(vdata,5,1)+Copy(vdata,2,1)+
          Copy(vdata,6,1)+Copy(vdata,1,1);
  vsen := frLiberacao('C', vsequen, vsen);
  vsen := Copy(vsen,1,4)+ vsequen +'.'+Copy(vsen,5,4)+ Copy(vfor,1,1) +'.'+Copy(vsen,9,4)+ Copy(vfor,2,1);

  if (edRegistro.Text = vsen) then
  begin
    frPerg('Senha igual a anterior '+#13+'mude a Data de válidade?','OK');
    edValidade.SetFocus;
  end
  else
    edLiberacao.Text := vsen;
end;

procedure TFRegistro.sbSalvarClick(Sender: TObject);
var vdtval, vfor, vsen, vdata, vbloq, vsequen, vforma: String;
begin
//ddddss.mmmmf.yyyyf
//123456 89012 45678
  if (Trim(edLiberacao.Text) = '') then
    Exit;

  vsen := edLiberacao.Text;
  vsequen := Copy(vsen,5,2);
  vfor    := Copy(vsen,12,1)+Copy(vsen,18,1);
  vsen    := Copy(vsen,1,4)+Copy(vsen,8,4)+Copy(vsen,14,4);

  vsen := frLiberacao('D', vsequen, vsen);

  vdata := Copy(vsen,1,1)+Copy(vsen,3,1)+
           Copy(vsen,5,1)+Copy(vsen,7,1)+
           '20'+Copy(vsen,9,1)+Copy(vsen,11,1);

  if      (vfor = '01') then  vforma := 'Mensal'
  else if (vfor = '02') then  vforma := 'Trimestral'
  else if (vfor = '03') then  vforma := 'Semestral'
  else if (vfor = '04') then  vforma := 'Anual'
  else                        vforma := 'Mensal';

  vdtval := Copy(vdata,1,2)+'/'+Copy(vdata,3,2)+'/'+Copy(vdata,5,4);
  try
    if (StrToDate(vdtval) > 0) then
    begin
      vbloq  := frCrip('C', vdata) + '5nh53<7pd6';
      vdata  := frCrip('C', 'ac'+vdata+'web');
      fParametroSalvaVlr('Válidade sistema',vdata);
      fParametroSalvaVlr('Forma Pagamento', vforma);
      fParametroSalvaVlr('Bloqueado', 'NAO');
      fParametroSalvaVlr('Sequencia', vsequen);
    end;
    frPerg('Registro atualizado.','OK');
    Halt;
  except
    frPerg('Chave inválida.','OK');
  end;
  Close;
end;

procedure TFRegistro.btnVerdadosClick(Sender: TObject);
var vfor, vsen, vdata, vhora, vforma, vsequen: String;
begin
//ddddss.mmmmf.yyyyf
//123456 89012 45678
  vsen := edRegistro.Text;
  if (Trim(vsen) = '') then Exit;

  vsequen := Copy(vsen,5,2);
  vfor    := Copy(vsen,12,1)+Copy(vsen,18,1);
  vsen    := Copy(vsen,1,4)+Copy(vsen,8,4)+Copy(vsen,14,4);

  vsen := frLiberacao('D', vsequen, vsen);

  vdata := Copy(vsen,1,1)+Copy(vsen,3,1)+'/'+
           Copy(vsen,5,1)+Copy(vsen,7,1)+'/'+
           '20'+Copy(vsen,9,1)+Copy(vsen,11,1);

  edValidade.Text := vdata;
  edMicros.Text := vsequen;
  if      (vfor = '01') then  edForma.Text := 'Mensal'
  else if (vfor = '02') then  edForma.Text := 'Trimestral'
  else if (vfor = '03') then  edForma.Text := 'Semestral'
  else if (vfor = '04') then  edForma.Text := 'Anual'
  else                        edForma.Text := 'Mensal';
  frPerg('Verificado','OK');
end;

procedure TFRegistro.btnSincronizarClick(Sender: TObject);
begin
  Application.CreateForm(TFCadSincronizar,FCadSincronizar);
  FCadSincronizar.ShowModal;
  FreeAndNil(FCadSincronizar);
end;

procedure TFRegistro.btnScriptClick(Sender: TObject);
begin
  //Roda o script
  pRodaScript;
end;

procedure TFRegistro.btnAtualizarClick(Sender: TObject);
begin

  //busca arquivo no site para atualizar automático
//  FMenu.pObtemAcesso;
  fParametroSalvaVlr('Bloqueado', 'NAO');
//  FConexaoAcesso.ShowModal;
  Application.Terminate;

end;

procedure TFRegistro.btnCFOPClick(Sender: TObject);
var vi:Integer;
    vfil: TextFile;
    varq, vlin, vta, vtb: String;
    vtc: double;
begin
  Try
    fSql(1,1,['Delete from cadnatur'],1);

    varq := ExtractFilePath(Application.ExeName)+'dados\TabelaCFOP.csv';
    if FileExists(varq) then
    begin
      vta := '';
      vtb := '';
      AssignFile(vfil, varq);
      Reset(vfil);
      while not Eof(vfil) do
      begin
        Readln(vfil, vlin);
        vi := pos(';',vlin);
        vta := copy(vlin, 1, vi-1);
        vtb := copy(vlin, vi+1, 120);
        vtb := frAcen(vtb);
        vtb := frMaiu(vtb);
        if vta <> 'CFOP' then
        begin
          vtc := StrToFloat(vta) / 1000;
          if Trim(vtb) <> '' then
            fSql(1,1,['insert into cadnatur (codigo, descricao, emprecod, acesocod)',
                      ' values ('+frInvV(vtc,3)+','+QuotedStr(Copy(vtb,1,120))+',1,1)'],2);
        end;
      end;
      CloseFile(vfil);
    end;
  except
    frPerg(pChar('Erro CFOP'),'OK');
  end;
end;

end.
