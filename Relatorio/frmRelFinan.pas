unit frmRelFinan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, Printers,
  RzPanel, Vcl.Grids, Vcl.DBGrids;

type
  TFfrmRelFinan = class(TForm)
    TPesq: TTimer;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RCB1: TRadioButton;
    RCB2: TRadioButton;
    RCB16: TRadioButton;
    RCB3: TRadioButton;
    RCB4: TRadioButton;
    RCB5: TRadioButton;
    RCB6: TRadioButton;
    RCB14: TRadioButton;
    GP0: TGroupBox;
    RRBB1: TRadioButton;
    RRBB2: TRadioButton;
    RRBB3: TRadioButton;
    RRBB4: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP2: TSpeedButton;
    SBP1: TSpeedButton;
    ED1: TMaskEdit;
    ED11: TMaskEdit;
    GP4: TGroupBox;
    Label4: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    GP3: TGroupBox;
    Label3: TLabel;
    SBP5: TSpeedButton;
    SBP6: TSpeedButton;
    ED3: TMaskEdit;
    ED33: TMaskEdit;
    GP5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Perc1: TEdit;
    ED5: TDateTimePicker;
    Mult1: TEdit;
    GP6: TGroupBox;
    cbFinanc: TCheckBox;
    GP7: TGroupBox;
    Label2: TLabel;
    SBP7: TSpeedButton;
    SBP77: TSpeedButton;
    ED7: TMaskEdit;
    ED77: TMaskEdit;
    GP66: TGroupBox;
    cbFinanczerada: TCheckBox;
    RCB88: TRadioButton;
    RCB99: TRadioButton;
    RCB85: TRadioButton;
    RCB11: TRadioButton;
    RCB12: TRadioButton;
    gbRFB: TGroupBox;
    RBCC2: TRadioButton;
    RBCC1: TRadioButton;
    RBCC3: TRadioButton;
    RBCC4: TRadioButton;
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
    procedure RCB3Click(Sender: TObject);
    procedure Perc1KeyPress(Sender: TObject; var Key: Char);
    procedure Perc1Exit(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure ED5Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRelFinan: TFfrmRelFinan;

implementation

uses Menu, Data, Rotina, Pesq, rlBanco,rlBancoSal,rlFiFinan,rlFinanCli,rlFiDuplic,
     rlNFCooper,rlChequeDev,rlFinanNota,rlNotaMov,rlNotaCli,rlFiAcerto,rlBancoRes,
     rlNotaResDat, rlCompraMov, rlCompraRes, rlFiHisto, rlFinanDia, rlFrete,
     rlPlanoResBanco;

{$R *.DFM}
procedure TFfrmRelFinan.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelFinan.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelFinan.ED5Change(Sender: TObject);
begin
  if not(ed5.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelFinan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelFinan);
end;

procedure TFfrmRelFinan.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
  ED5.Date:=Now;
//  if not Table4.Active then Table4.Open;
//  if Table4.Filter<>xFiltro1 then Table4.Filter:=xFiltro1;

  RCB2.Checked := true;
  RCB2.OnClick(RCB2);
end;

procedure TFfrmRelFinan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelFinan.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelFinan.FormShow(Sender: TObject);
begin

  case fBus(1,['Select valor From zGenerator Where Tabela = ''RELFINAN'' and Campo = ''CTA_FINANC'''],1) of
    1: RRBB2.Checked := True;
    2: RRBB3.Checked := True;
    3: RRBB4.Checked := True;
  else
    RRBB1.Checked := True;
  end;

end;

procedure TFfrmRelFinan.Perc1KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key in [',','.'] then Key := DecimalSeparator;
  if Key=#13 then begin Key:=#0; Perform(WM_NEXTDLGCTL,0,0); end;
end;

procedure TFfrmRelFinan.Perc1Exit(Sender: TObject);
begin
  Perc1.Text := FormatFloat('0.00',StrToFloat(Perc1.Text));
  Mult1.Text := FormatFloat('0.00',StrToFloat(Mult1.Text));
end;

//Pesquisa
procedure TFfrmRelFinan.RCB3Click(Sender: TObject);
begin
  GP0.Visible:=False; GP1.Visible:=False; //GP2.Visible:=False;
  GP3.Visible:=False; GP4.Visible:=False; GP5.Visible:=False;
  GP6.Visible:=False; GP7.Visible:=False; GP66.Visible:=False;
  RRBB2.Visible:=True; RRBB3.Visible:=True; RRBB4.Visible:=True;
  gbRFB.Visible:=False;
  RRBB1.Caption := 'Descrição';
  RRBB2.Caption := 'Dt. Emissão';
  RRBB3.Caption := 'Dt. Vencto.';
  RRBB4.Caption := 'Dt. Baixa';
  SBP1.Tag:=1; SBP2.Tag:=11; SBP5.Tag:=3; SBP6.Tag:=33;
//  ED3.Text:='0';
  Label3.Caption := 'Conta Inicial                              à';
  Case TComponent(Sender).Tag of
     1: begin GP0.Visible:=True; GP1.Visible:=True; GP3.Visible:=True; GP4.Visible:=True; GP5.Visible:=True; GP66.Visible:=True;
          //RRBB2.Visible:=False; RRBB3.Visible:=False; RRBB4.Visible:=False;
          //RRBB1.Caption := 'Dt.Vencto.';
     end;
     2: begin GP0.Visible:=True; GP1.Visible:=True; GP4.Visible:=True; GP5.Visible:=True; GP6.Visible:=True; end;
     3: begin GP0.Visible:=True; GP1.Visible:=True; GP4.Visible:=True; GP5.Visible:=True; GP6.Visible:=True; SBP1.Tag:=2; SBP2.Tag:=22; gbRFB.Visible:=True; end;
     4: begin GP1.Visible:=True; GP4.Visible:=True; end;
     5: begin GP1.Visible:=True; GP3.Visible:=True; GP4.Visible:=True; SBP1.Tag:=5; SBP2.Tag:=55; SBP5.Tag:=4; SBP6.Tag:=44; end;
     6: begin GP1.Visible:=True; GP3.Visible:=True; GP4.Visible:=True; SBP5.Tag:=6; SBP6.Tag:=66; end;
     7: begin GP5.Visible:=True; end;
     8: begin GP1.Visible:=True; GP4.Visible:=True; SBP1.Tag:=2; SBP2.Tag:=22; end;
     9: begin GP1.Visible:=True; GP3.Visible:=True; GP4.Visible:=True; SBP1.Tag:=2; SBP2.Tag:=22; end;
    10: begin GP1.Visible:=True; GP3.Visible:=True; GP4.Visible:=True; SBP1.Tag:=1; SBP2.Tag:=11; end;
    11: begin GP66.Visible:=True; GP4.Visible:=True; GP7.Visible:=True; GP3.Visible:=True; GP1.Visible:=True; GP0.Visible:=True;
              SBP1.Tag:=2; SBP2.Tag:=22; //SBP5.Tag:=7; SBP6.Tag:=77;
        end;
    22: begin GP4.Visible:=True; end;
    81: begin GP1.Visible:=True; GP4.Visible:=True; GP0.Visible:=True; GP3.Visible:=True;
              if (RCB85.Checked) then begin // Carta frete
                SBP1.Tag:=1; SBP2.Tag:=11;
              end else begin
                SBP1.Tag:=5; SBP2.Tag:=55;
              end;
              SBP5.Tag:=8; SBP6.Tag:=88;
              Label3.Caption := 'Motorista                                  à';
              //RRBB1.Caption := 'Emissão';
              RRBB2.Caption := 'Dt.Pagto';
              RRBB3.Visible:=False;
              RRBB4.Visible:=False;
        end;
  end;
end;

procedure TFfrmRelFinan.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     1: fPqCliente;
    11: fPqCliente;
     2: fPqFornecedor;
    22: fPqFornecedor;
     3: fPqBanco;
    33: fPqBanco;
     4: fPqMercadoria;
    44: fPqMercadoria;
     5: fPqForneCooper;
    55: fPqForneCooper;
     6: fPqProduto;
    66: fPqProduto;
     7: fPqPlano;
    77: fPqPlano;
     8: fPqCarreto;
    88: fPqCarreto;
     9: fPqForneGrupo;
    99: fPqForneGrupo;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelFinan.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if (xpqpesq=1) or (xpqpesq=2) or (xpqpesq=5) or (xpqpesq=6) then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if (xpqpesq=11) or (xpqpesq=22) or (xpqpesq=55) or (xpqpesq=66) then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
     else if (xpqpesq=3) or (xpqpesq=4) or (xpqpesq=8) then begin
       Ed3.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed3.SetFocus;
     end
     else if (xpqpesq=33) or (xpqpesq=44) or (xpqpesq=88) then begin
       Ed33.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed33.SetFocus;
     end
     else if (xpqpesq=7) then begin
       Ed7.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed7.SetFocus;
     end
     else if (xpqpesq=77) then begin
       Ed77.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed77.SetFocus;
     end;
  end;
end;

procedure TFfrmRelFinan.SB6Click(Sender: TObject);
var vPeriodo,vCod,vCon,vDat,vPago:String;
    vpg,vvz,vl0,vl1,vl2,vl3,vl4,vl5,vl10,vc0,vc1,vc2,vc3,vc4,vc5,vc6,vc7,vc8:Integer;
    vext:String;
begin
  vPeriodo:='Período '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
  ed1.text  := trim(ed1.text);
  ed11.text := trim(ed11.text);
  ed3.text  := trim(ed3.text);
  ed33.text := trim(ed33.text);
  ed7.text  := trim(ed7.text);
  ed77.text := trim(ed77.text);

  if ed1.text  = '' then ed1.text  := '0';
  if ed11.text = '' then ed11.text := '9999999';
  if ed3.text  = '' then ed3.text  := '0';
  if ed33.text = '' then ed33.text := '9999999';
  if ed7.text  = '' then ed7.text  := '0';
  if ed77.text = '' then ed77.text := '9999999';

  if (RCB1.Checked) or (RCB11.Checked) then begin // Conta financeira
     vCod:='(FavorCod>='+Ed1.Text+' and FavorCod<='+Ed11.Text+')';
     if (RCB1.Checked) then // Conta financeira
       vCon:='(Codigo>='+Ed3.Text+' and Codigo<='+Ed33.Text+')'
     else begin//Plano de contas
       vCon:='(Reduz>='+Ed7.Text+' and Reduz<='+Ed77.Text+')';
       vCod:= vCod + ' and (BancoCod>='+Ed3.Text+' and BancoCod<='+Ed33.Text+')';
     end;
     if qrBanco<>Nil then qrBanco.Destroy; Application.CreateForm(TqrBanco, qrBanco);
     with rlBanco.qrBanco do begin
        ChildBand4.Height:=0;
        QRSubDetail3.Height:=0;
        ChildBand3.Height:=0;
        qrTransf.Close; qrTransf.Open;

        if (RCB1.Checked) then begin  // Conta financeira
          qrLabel16.Caption:='Movimento de Contas  '+vperiodo;
          qrLabel1.Caption:='Conta Financeira';
          vmCampo := 'BANCOCOD';
        end
        else begin
          qrLabel16.Caption:='Movimento Plano de Contas  '+vperiodo;
          if Trim(Ed3.Text) = Trim(Ed33.Text) then
            qrLabel16.Caption:='Movimento Plano de Contas  '+vperiodo+' e Conta/Banco = '+Trim(Ed3.Text);
          qrLabel1.Caption:='Plano de Conta';
          vmCampo := 'REDUZ';
        end;
        qrMovim.Close;
        if RRBB1.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Vencto';
           vDat:='(Vencto>='+frInvD(Ed4.Date)+' and Vencto<'+frInvD(Ed44.Date+1)+')';
           vbmData:=' and Vencto<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By Vencto, Lanc';
//           qrMovim.Sql.Strings[3]:='Order By 6, 3';
        end else if RRBB2.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Emissão';
           vDat:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
           vbmData:=' and Data<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By Data, Lanc';
//           qrMovim.Sql.Strings[3]:='Order By 5, 3';
        end else if RRBB3.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Vencto';
           vDat:='(Vencto>='+frInvD(Ed4.Date)+' and Vencto<'+frInvD(Ed44.Date+1)+')';
           vbmData:=' and Vencto<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By Vencto, Lanc';
//           qrMovim.Sql.Strings[3]:='Order By 6, 3';
        end else if RRBB4.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Pagto.';
           vDat:='(DTPago>='+frInvD(Ed4.Date)+' and DTPago<'+frInvD(Ed44.Date+1)+')';
           vbmData:=' and DTPago<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By DTPago, Lanc';
//           qrMovim.Sql.Strings[3]:='Order By 7, 3';
        end;
        qrMovim.Close; qrMovim.Open;
        qrPende.Close; qrPende.Open;
        vbmCodigo:='Where '+vdat;
        vtrdat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
        vtrfavor:='(cc.FavorCod>='+Ed1.Text+' and cc.FavorCod<='+Ed11.Text+')';
        if Ed1.Text=Ed11.Text then vbmbaixa:=' and '+vcod
        else vbmbaixa:='';
        vbmFavor:=vcod;
        qrBanco.Close;
        if (RCB1.Checked) then begin// Conta financeira
          qrBanco.SQL.Strings[0]:='Select Codigo, Descricao as Nome, Limite';
          qrBanco.SQL.Strings[1]:='From CadBanco';
          qrBanco.SQL.Strings[2]:='Where '+vcon;
          if (GP66.Visible) and (not cbFinanczerada.Checked) then
            qrBanco.SQL.Strings[2]:= qrBanco.SQL.Strings[2]
                                 +'  and ((select sum(valorreal) from cxbanco where bancocod = codigo'
                                 +'  and ' +vdat
                                 +'  and ' +vcod+') <> 0)';
//                                 +'        and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')'
        end
        else begin
          qrBanco.SQL.Strings[0]:='Select reduz, (Codigo||''-''||Descricao) as Nome, 0.0 as Limite';
          qrBanco.SQL.Strings[1]:='From CadPlano';
          qrBanco.SQL.Strings[2]:='Where Nivel = 3 and '+vcon;
          if (GP66.Visible) and (not cbFinanczerada.Checked) then
            qrBanco.SQL.Strings[2]:= qrBanco.SQL.Strings[2]
                                  +'  and ((select sum(valorreal) from cxbanco where CadPlano.reduz = reduz '
                                  +'  and ' +vdat
                                  +'  and ' +vcod+') <> 0)';
//                                  +'        and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')'
        end;
        qrBanco.Open;
//        if qrBanco.Fields[0].Value<0 then begin
//           Showmessage('Movimento não Encontrado!');
//           Exit;
//        end;
        PrinterSettings.PrinterIndex:=fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if RCB2.Checked then begin // Resumo financeiro
     if qrBancoSal<>Nil then qrBancoSal.Destroy; Application.CreateForm(TqrBancoSal, qrBancoSal);
     with rlBancoSal.qrBancoSal do begin
        qrLabel16.Caption:='Resumo de Contas Financeiras   Posição '+DateToStr(Ed5.DateTime);
        vbsPer:=ED5.Date;
        qrSaldo.Close; qrSaldo.Open;
        qrBanco.Close; qrBanco.Open;
        qrConta.Close; qrConta.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if RCB16.Checked then begin // Resumo Diário
     if qrFinanDia<>Nil then qrFinanDia.Destroy; Application.CreateForm(TqrFinanDia, qrFinanDia);
     with rlFinanDia.qrFinanDia do begin
        qrLabel16.Caption:='Resumo no '+vperiodo;
        vbrPer1:=ED4.Date; vbrPer2:=ED44.Date;
        qrBanco.Close; qrBanco.Open;
        qrConta.Close;
        qrConta.Sql.Strings[3]:='Where (ccp.fgrelfinan = ''S'') and (Data>'+frInvD(vbrper1-1)+' and Data<'+frInvD(vbrper2+1)+')';
        qrConta.Open;

        PrinterSettings.PrinterIndex := fImpr('imp1');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if (RCB3.Checked) or (RCB4.Checked) or (RCB5.Checked) or (RCB6.Checked) then begin
     vCod:='(ff.Codigo>='+Ed1.Text+' and ff.Codigo<='+Ed11.Text+')';
     vDat:='(Vencto>='+frInvD(Ed4.Date)+' and Vencto<'+frInvD(Ed44.Date+1)+')';
     if qrFiFinan<>Nil then qrFiFinan.Destroy; Application.CreateForm(TqrFiFinan, qrFiFinan);
     with rlFiFinan.qrFiFinan do begin
        qrLabel8.Caption := 'Dt.Posição: '+DateToStr(Ed5.DateTime);
        vfipos:=ED5.Date;
        vfiper:=StrToFloat(Perc1.Text);
        vfimul:=StrToFloat(Mult1.Text);
        qrConta.Close;
        if RCB3.Checked then begin
           qrLabel16.Caption:='Títulos à Receber';
           QRLabel14.Caption:='      .';
           vPago:='Pago<>'+QuotedStr('P');
           qrConta.SQL.Strings[1]:='From Fibairec ff, Cadclien cc';
        end else if RCB4.Checked then begin
           qrLabel16.Caption:='Títulos Recebido';
           QRLabel14.Caption:='Data Pgto.     Valor Pago';
           vPago:='Pago='+QuotedStr('S');
           qrConta.SQL.Strings[1]:='From Fibairec ff, Cadclien cc';
        end else if RCB5.Checked then begin
           qrLabel16.Caption:='Títulos à Pagar';
           QRLabel14.Caption:='      .';
           vPago:='Pago<>'+QuotedStr('P');
           qrConta.SQL.Strings[1]:='From Fibaipag ff, CadForne cc';
        end else if RCB6.Checked then begin
           qrLabel16.Caption:='Títulos Pagos';
           QRLabel14.Caption:='Data Pgto.     Valor Pago';
           vPago:='Pago='+QuotedStr('S');
           qrConta.SQL.Strings[1]:='From Fibaipag ff, CadForne cc';
        end;
        if RRBB1.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Descrição';
           vfilcam:='Descricao';//Codigo';
           if (RCB3.Checked) or (RCB5.Checked) then //begin
              vDat:='Vencto>='+frInvD(Ed4.Date)+' and Vencto<'+frInvD(Ed44.Date+1);
           //qrConta.SQL.Strings[3]:='Order By ff.Descricao,Vencto';
           qrConta.SQL.Strings[3]:='Order By 2, 5';
           //end;
        end else if RRBB2.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Emissão';
           vfilcam:='Data';
           vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
           //qrConta.SQL.Strings[3]:='Order By Data,ff.Descricao';
           qrConta.SQL.Strings[3]:='Order By 5, 2';
        end else if RRBB3.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Vencto';
           vfilcam:='Vencto';
           vDat:='Vencto>='+frInvD(Ed4.Date)+' and Vencto<'+frInvD(Ed44.Date+1);
           //qrConta.SQL.Strings[3]:='Order By Vencto,ff.Descricao';
           qrConta.SQL.Strings[3]:='Order By 6, 2';
        end else if RRBB4.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Baixa';
           vfilcam:='DataPago';
           vDat:='DataPago>='+frInvD(Ed4.Date)+' and DataPago<'+frInvD(Ed44.Date+1);
           //qrConta.SQL.Strings[3]:='Order By DataPago,ff.Descricao';
           qrConta.SQL.Strings[3]:='Order By 7, 2';

           if ((RCB3.Checked) or (RCB4.Checked)) then
             qrConta.SQL.Strings[1]:='From Fibairec ff, Cadclien cc'
           else
             qrConta.SQL.Strings[1]:='From Fibaipag ff, Cadforne cc';

        end;
//        if not CB1.Checked then
//           qrConta.SQL.Strings[2]:='Where ff.codigo=cc.codigo and cc.cooper='+QuotedStr('N')+' and '+vpago+' and '+vcod+' and '+vdat
//        else qrConta.SQL.Strings[2]:='Where ff.codigo=cc.codigo and cc.cooper='+QuotedStr('S')+' and '+vpago+' and '+vcod+' and '+vdat;
        qrConta.SQL.Strings[2]:='Where ff.codigo=cc.codigo and '+vpago+' and '+vcod+' and '+vdat;
        //Contas a pagar por Grupo
        if ((RCB5.Checked) or (RCB6.Checked)) then
        begin
          if RBCC2.Checked then
            qrConta.SQL.Strings[2]:= qrConta.SQL.Strings[2] + ' and (cc.TipoCod = ''F'')';
          if RBCC3.Checked then
            qrConta.SQL.Strings[2]:= qrConta.SQL.Strings[2] + ' and (cc.TipoCod = ''P'')';
          if RBCC4.Checked then
            qrConta.SQL.Strings[2]:= qrConta.SQL.Strings[2] + ' and (cc.TipoCod = ''U'')';
        end;

        qrLabel16.Caption:=qrLabel16.Caption+' -  '+vPeriodo;

        if cbFinanc.Checked then
        begin
          vext := qrConta.SQL.Strings[3];
          qrConta.SQL.Strings[3]:=' ';
          qrConta.SQL.Strings[4]:=' union all';
          qrConta.SQL.Strings[5]:=' ';
          qrConta.SQL.Strings[6]:=' select favorcod as codigo, favorecido as descricao, (''F''||lanc) as controle, 1 as parc, data, vencto, dtpago as datapago, baixa as pago, valor, valor as valorpago, 0 as vlrdesc, 0 as juro';
          if ((RCB3.Checked) or (RCB4.Checked)) then
          begin
            qrConta.SQL.Strings[7]:='   from cxbanco c, cadplano p';
            qrConta.SQL.Strings[8]:='  where (lanccom is null or lanccom =0)';
          end
          else begin
            qrConta.SQL.Strings[7]:='   from cxbanco c, cadplano p, cadforne cf';
            qrConta.SQL.Strings[8]:='  where (lanccom is null or lanccom =0) and (c.favorcod=cf.codigo)';
            if RBCC2.Checked then
              qrConta.SQL.Strings[8]:= qrConta.SQL.Strings[8] + ' and (cf.TipoCod = ''F'')';
            if RBCC3.Checked then
              qrConta.SQL.Strings[8]:= qrConta.SQL.Strings[8] + ' and (cf.TipoCod = ''P'')';
            if RBCC4.Checked then
              qrConta.SQL.Strings[8]:= qrConta.SQL.Strings[8] + ' and (cf.TipoCod = ''U'')';
          end;

          if (RCB3.Checked or RCB4.Checked) then
            qrConta.SQL.Strings[9]:='    and (formar = ''E'')'
          else
            qrConta.SQL.Strings[9]:='    and (formar = ''S'')';

          qrConta.SQL.Strings[10]:='    and (favorCod>='+Ed1.Text+' and favorCod<='+Ed11.Text+')';
          if RRBB4.Checked then
             vDat:='DtPago>='+frInvD(Ed4.Date)+' and DtPago<'+frInvD(Ed44.Date+1);
          qrConta.SQL.Strings[11]:='    and ' +vDat +' and ((c.Reduz = p.Reduz) and (p.fgrelfinan is null or p.fgrelfinan = ''S''))';

          qrConta.SQL.Strings[12]:= vext;
        end
        else begin
          qrConta.SQL.Strings[4]:= '';
          qrConta.SQL.Strings[5]:= '';
          qrConta.SQL.Strings[6]:= '';
          qrConta.SQL.Strings[7]:= '';
          qrConta.SQL.Strings[8]:= '';
          qrConta.SQL.Strings[9]:= '';
          qrConta.SQL.Strings[10]:= '';
          qrConta.SQL.Strings[11]:= '';
          qrConta.SQL.Strings[12]:= '';
        end;

        qrConta.Open;
        QRLabel12.Caption:='';
        if qrConta.IsEmpty then begin
           Showmessage('Movimento não Encontrado!');
           Exit;
        end;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if ((RCB88.Checked) or (RCB85.Checked)) then begin // Extrato/Carta frete
     vCod:='(ProdCod>='+Ed1.Text+' and ProdCod<='+Ed11.Text+')';
     vCon:='(Codigo>='+Ed3.Text+' and Codigo<='+Ed33.Text+')';

     if qrFrete<>Nil then qrFrete.Destroy; Application.CreateForm(TqrFrete, qrFrete);
     with rlFrete.qrFrete do begin
        if (RCB85.Checked) then
          qrLabel15.Caption:=''
        else
          qrLabel15.Caption:='Devolução';

        if (RCB88.Checked) then
          qrLabel16.Caption:='Movimento de Frete  '+vperiodo
        else
          qrLabel16.Caption:='Movimento Carta de Frete  '+vperiodo;

        qrLabel1.Caption:='Motorista:';
        vmmCampo := 'CODIGO';

        qrMovim.Close;
        if RRBB1.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Data Emissão';
           vDat:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
           vbmmData:=' and Data<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By Data, Lanc';
        end
        else begin //if RRBB2.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Pagto.';
           vDat:='(DTPago>='+frInvD(Ed4.Date)+' and DTPago<'+frInvD(Ed44.Date+1)+')';
           vbmmData:=' and DTPago<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By DTPago, Lanc';
        end;
        qrMovim.Close; qrMovim.Open;
        qrPende.Close; qrPende.Open;

        if (RCB88.Checked) then
          vbmmCodigo:='Where (Tipo in (''E'',''S'')) and '+vdat
        else
          vbmmCodigo:='Where (Tipo in (''R'',''P'')) and '+vdat;

        vtrmdat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
        if Ed1.Text=Ed11.Text then vbmmbaixa:=' and '+vcod
        else vbmmbaixa:='';
        vbmmFavor:=vcod;
        qrBanco.Close;
        qrBanco.SQL.Strings[0]:='Select Codigo, Descricao as Nome, Sum(valor)';
        qrBanco.SQL.Strings[1]:='From CxFrete';

        if (RCB88.Checked) then
          qrBanco.SQL.Strings[2]:='Where (Tipo in (''E'',''S'')) and (Valor > 0) and '+vcon +' and '+vDat
        else
          qrBanco.SQL.Strings[2]:='Where (Tipo in (''R'',''P'')) and (Valor > 0) and '+vcon +' and '+vDat;

        qrBanco.SQL.Strings[3]:='Group by Codigo, Descricao';
        qrBanco.SQL.Strings[4]:='Order By Codigo';
        qrBanco.Open;

        PrinterSettings.PrinterIndex:=fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if (RCB99.Checked) then begin // Extrato frete - Produtor
     vCod:='(Codigo>='+Ed1.Text+' and Codigo<='+Ed11.Text+')';
     vCon:='(ProdCod>='+Ed3.Text+' and ProdCod<='+Ed33.Text+')';

     if qrFrete<>Nil then qrFrete.Destroy; Application.CreateForm(TqrFrete, qrFrete);
     with rlFrete.qrFrete do begin
        qrLabel16.Caption:='Movimento de Frete  '+vperiodo;
        qrLabel1.Caption:='Produtor:';
        vmmCampo := 'PRODCOD';

        qrMovim.Close;
        if RRBB1.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Data Emissão';
           vDat:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
           vbmmData:=' and Data<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By Data, Lanc';
        end
        else begin //if RRBB2.Checked then begin
           qrLabel16.Caption:=qrLabel16.Caption+'  por Dt.Pagto.';
           vDat:='(DTPago>='+frInvD(Ed4.Date)+' and DTPago<'+frInvD(Ed44.Date+1)+')';
           vbmmData:=' and DTPago<'+frInvD(Ed4.Date);
           qrMovim.Sql.Strings[3]:='Order By DTPago, Lanc';
        end;
        qrMovim.Close; qrMovim.Open;
        qrPende.Close; qrPende.Open;
        vbmmCodigo:='Where (Tipo in (''E'',''S'')) and '+vdat;
        vtrdat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
        if Ed1.Text=Ed11.Text then vbmmbaixa:=' and '+vcod
        else vbmmbaixa:='';
        vbmmFavor:=vcod;
        qrBanco.Close;
        qrBanco.SQL.Strings[0]:='Select ProdCod as Codigo, ProdDes as Nome, Sum(valor)';
        qrBanco.SQL.Strings[1]:='From CxFrete';
        qrBanco.SQL.Strings[2]:='Where (Tipo in (''E'',''S'')) and (Valor > 0) and '+vcon +' and '+vDat;
        qrBanco.SQL.Strings[3]:='Group by ProdCod, ProdDes';
        qrBanco.SQL.Strings[4]:='Order By ProdCod';
        qrBanco.Open;

        PrinterSettings.PrinterIndex:=fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;

  if RCB12.Checked then
  begin // Resumo financeira
     vCon:='(BancoCod>='+Ed3.Text+' and BancoCod<='+Ed33.Text+')';
     if qrPlanoResBanco<>Nil then qrPlanoResBanco.Destroy; Application.CreateForm(TqrPlanoResBanco, qrPlanoResBanco);
     with rlPlanoResBanco.qrPlanoResBanco do begin
        if (RRBB2.Checked) then
          qrLabel16.Caption:='Resumo de Contas  Período Emissão '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime)
        else
          qrLabel16.Caption:='Resumo de Contas  Período Baixa '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
        if (RRBB4.Checked) then
          vResccDat:='DtPago>='+frInvD(Ed4.Date)+' and DtPago<'+frInvD(Ed44.Date+1)
        else if (RRBB3.Checked) then
          vResccDat:='Vencto>='+frInvD(Ed4.Date)+' and Vencto<'+frInvD(Ed44.Date+1)
        else
          vResccDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);

        qrConta.Close;
        qrConta.SQL.Clear;
        qrConta.SQL.Add('Select distinct cx.bancocod, cb.descricao');
        qrConta.SQL.Add('  From cxBanco cx, cadbanco cb');
        qrConta.SQL.Add(' where cx.bancocod=cb.codigo');
        qrConta.SQL.Add('   and '+vresccdat);
        qrConta.SQL.Add('   and '+vCon);
        qrConta.SQL.Add(' Order by cx.bancocod');
        qrConta.Open;

        qrBanco.Close;
        qrBanco.Open;
        qrPlano.Close;
        qrPlano.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
end;


end.





