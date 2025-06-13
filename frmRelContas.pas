unit frmRelContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Spin, RzPanel;

type
  TFfrmRelContas = class(TForm)
    TPesq: TTimer;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RB15: TRadioButton;
    RB14: TRadioButton;
    RB3: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP1: TSpeedButton;
    SBP2: TSpeedButton;
    ED1: TMaskEdit;
    ED11: TMaskEdit;
    GP4: TGroupBox;
    Label4: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RCB11: TRadioButton;
    GP0: TGroupBox;
    RRBB2: TRadioButton;
    RRBB4: TRadioButton;
    rzpUtilitario: TRzPanel;
    sb6: TSpeedButton;
    sb7: TSpeedButton;
    RzPanel4: TRzPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRelContas: TFfrmRelContas;

implementation

uses Menu, Data, Rotina, Pesq, rlCaixa, rlDiario, rlPlanoRes;

{$R *.DFM}
procedure TFfrmRelContas.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelContas.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelContas);
end;

procedure TFfrmRelContas.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
end;

procedure TFfrmRelContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

//Pesquisa
procedure TFfrmRelContas.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     0: fPqPlano;
     1: fPqPlano;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelContas.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if xpqpesq = 0 then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if xpqpesq = 1 then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
  end;
end;

procedure TFfrmRelContas.SB6Click(Sender: TObject);
var vEmp,vCli,vDat:String;
begin
  ed1.text  := trim(ed1.text);
  ed11.text := trim(ed11.text);
  if ed1.text  = '' then ed1.text  := '0';
  if ed11.text = '' then ed11.text := '9999999';

  if (RB14.Checked) then begin   //Razão
    vCli:='(cc.Reduz>='+Trim(ED1.Text)+' and cc.Reduz<='+Trim(ED11.Text)+')';
    if (RRBB2.Checked) then
      vDat:='(Data>='+frInvD(ED4.Date)+' and Data<'+frInvD(ED44.Date+1)+')'
    else
      vDat:='(DtPago>='+frInvD(ED4.Date)+' and DtPago<'+frInvD(ED44.Date+1)+')';

    if qrCaixa<>Nil then qrCaixa.Destroy; Application.CreateForm(TqrCaixa,qrCaixa);
     with rlCaixa.qrCaixa do begin
        qrConta.Close;
        qrConta.Sql.Strings[2]:='Where (cc.Reduz=pp.Reduz) and '+vCli+' and '+vDat;
        qrConta.Open;
        if qrConta.RecordCount<1 then begin
           ShowMessage('Não há Lançamento.');
           exit;
        end;
        if (RRBB2.Checked) then
          qrLabel16.Caption := 'Livro Razão - Período Emissão '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date)
        else
          qrLabel16.Caption := 'Livro Razão - Período Baixa '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date);
        PrinterSettings.PrinterIndex:=fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if (RB15.Checked) then begin   //Diario
     vCli:='(Reduz>='+Trim(ED1.Text)+' and Reduz<='+Trim(ED11.Text)+')';
     if (RRBB2.Checked) then
     begin
       vDat:='(Data>='+frInvD(ED4.Date)+' and Data<'+frInvD(ED44.Date+1)+')';
       vEmp:='(Data<'+frInvD(ED4.Date)+')';
     end
     else begin
       vDat:='(DTPago>='+frInvD(ED4.Date)+' and DTPago<'+frInvD(ED44.Date+1)+')';
       vEmp:='(DTPago<'+frInvD(ED4.Date)+')';
     end;

     if qrDiario<>Nil then qrDiario.Destroy; Application.CreateForm(TqrDiario,qrDiario);
     with rlDiario.qrDiario do begin
        qrConta.Close;
        if (RRBB2.Checked) then
          qrConta.Sql.Strings[2]:='Where Baixa='+QuotedStr('N')+' and '+vCli+' and '+vDat
        else
          qrConta.Sql.Strings[2]:='Where Baixa='+QuotedStr('S')+' and '+vCli+' and '+vDat;
        qrConta.Open;
        if qrConta.RecordCount < 1 then begin
           ShowMessage('Não há Lançamento.');
           exit;
        end;
        qrAnterior.Close;
        qrAnterior.Sql.Strings[2]:='Where '+vEmp;
        qrAnterior.Open;
        if (RRBB2.Checked) then
          qrLabel16.Caption := 'Livro Diário - Período Emissão '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date)
        else
          qrLabel16.Caption := 'Livro Diário - Período Baixa '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date);
        vant:=qrAnterior.Fields[0].asFloat;
        qrLabel11.Caption:='Saldo Anterior... '+FloatToStrF(vant,ffCurrency,10,2);
        PrinterSettings.PrinterIndex:=fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if RB3.Checked then begin // Resumo financeira
     if qrPlanoRes<>Nil then qrPlanoRes.Destroy; Application.CreateForm(TqrPlanoRes, qrPlanoRes);
     with rlPlanoRes.qrPlanoRes do begin
        if (RRBB2.Checked) then
          qrLabel16.Caption:='Resumo de Contas  Período Emissão '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime)
        else
          qrLabel16.Caption:='Resumo de Contas  Período Baixa '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
        if (RRBB2.Checked) then
        begin
          vResDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
          vResAnt:='Data>='+frInvD(StrToDate('01/01/2000'))+' and Data<'+frInvD(Ed4.Date);
        end
        else begin
          vResDat:='DtPago>='+frInvD(Ed4.Date)+' and DtPago<'+frInvD(Ed44.Date+1);
          vResAnt:='DtPago>='+frInvD(StrToDate('01/01/2000'))+' and DtPago<'+frInvD(Ed4.Date);
        end;
//        vPago:='01/01/2006';//'01/'+frPree(SE1.Value,2,'0',0)+'/'+fPreencher(SE2.Value,4,'0',0);
        qrBanco.Close; qrBanco.Open;
        qrConta.Close;
        qrConta.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
end;

end.


