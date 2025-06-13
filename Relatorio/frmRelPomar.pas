unit frmRelPomar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, Printers,
  RzPanel;

type
  TFfrmRelPomar = class(TForm)
    TPesq: TTimer;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP2: TSpeedButton;
    SBP1: TSpeedButton;
    ED1: TMaskEdit;
    ED11: TMaskEdit;
    GP2: TGroupBox;
    Label4: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    GP3: TGroupBox;
    Label2: TLabel;
    ED3: TDateTimePicker;
    ED33: TDateTimePicker;
    GP4: TGroupBox;
    Label3: TLabel;
    SBP33: TSpeedButton;
    SBP3: TSpeedButton;
    ME3: TMaskEdit;
    ME33: TMaskEdit;
    RCB1: TRadioButton;
    RCB2: TRadioButton;
    RCB3: TRadioButton;
    RCB4: TRadioButton;
    RCB5: TRadioButton;
    RCB6: TRadioButton;
    RCB7: TRadioButton;
    RCB18: TRadioButton;
    RCB20: TRadioButton;
    OPRB6: TRadioButton;
    OPRB5: TRadioButton;
    OPRB7: TRadioButton;
    OPRB8: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
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
    procedure Perc1KeyPress(Sender: TObject; var Key: Char);
    procedure SB6Click(Sender: TObject);
    procedure RCB1Click(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure ED3Change(Sender: TObject);
    procedure ED33Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRelPomar: TFfrmRelPomar;

implementation

uses Menu, Data, Rotina, Pesq, rlFechapomar, rlPomarMov, rlFechaPomarEntrada, rlFechaAmosRes, rlHistorico;

{$R *.DFM}
procedure TFfrmRelPomar.ED33Change(Sender: TObject);
begin
  if not(ed33.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelPomar.ED3Change(Sender: TObject);
begin
  if not(ed3.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelPomar.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelPomar.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelPomar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelPomar);
end;

procedure TFfrmRelPomar.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
  ED3.Date:=ED4.Date;
  ED33.Date:=ED44.Date
end;

procedure TFfrmRelPomar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelPomar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelPomar.Perc1KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key in [',','.'] then Key := DecimalSeparator;
  if Key=#13 then begin Key:=#0; Perform(WM_NEXTDLGCTL,0,0); end;
end;

//Pesquisa
procedure TFfrmRelPomar.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     1: fPqRRPomar;
    11: fPqRRPomar;
     3: fPQRRProduto;
    33: fPQRRProduto;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelPomar.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if (xpqpesq=1) then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if (xpqpesq=11) then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
     else if (xpqpesq=3) then begin
       ME3.Text:=fPesq.qrpesq.Fields[0].Text;
       ME3.SetFocus;
     end
     else if (xpqpesq=33) then begin
       ME33.Text:=fPesq.qrpesq.Fields[0].Text;
       ME33.SetFocus;
     end;
  end;
end;

procedure TFfrmRelPomar.SB6Click(Sender: TObject);
var vCod,vDes,vRec,vCon,vDat,vPeriodo:String;
begin
  vPeriodo:='Período '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
  vCod:='(Numero>='+Trim(ED1.Text)+' and Numero<='+Trim(ED11.Text)+')';
  vRec:='(Data>='+frInvD(ED4.Date)+' and Data<'+frInvD(ED44.Date+1)+')';
  vDes:='(Data>='+frInvD(ED3.Date)+' and Data<'+frInvD(ED33.Date+1)+')';
  if (RCB1.Checked) or (RCB2.Checked) then begin
    if qrFechaPomar<>Nil then qrFechaPomar.Destroy; Application.CreateForm(TqrFechaPomar,qrFechaPomar);
     with rlFechaPomar.qrFechaPomar do begin
        vfprec:=vrec; vfpdes:=vdes;
        qrProdu.Close;
        if (RCB1.Checked) then begin
           QRLabel16.Caption:='Fechamento Classificação por Pomar';
           qrProdu.Sql.Strings[0]:='Select Numero,Descricao,ForCod1,ForCod2,ForCod3,ForCod4,ForCod5,Descon,Descon1,Descon2,Descon3,Descon4,Desper as vdesper';
           qrProdu.Sql.Strings[2]:='Where '+vCod;
           qrProdu.Sql.Strings[3]:='Order By Numero';
           vfpcod:='Where '+vcod;
           QRDBText2.Left:=65;
           QRLabel19.Caption:='Pomar...:';
        end else begin
           QRLabel16.Caption:='Resumo do Fechamento Classificação dos Pomares';
           qrProdu.Sql.Strings[0]:='Select Descon,Descon1,Descon2,Descon3,Descon4,Sum(Desper) as vdesper';
           qrProdu.Sql.Strings[2]:='';
           qrProdu.Sql.Strings[3]:='Group By Descon,Descon1,Descon2,Descon3,Descon4';
           vfpcod:='';
           QRDBText2.Left:=5000;
           QRLabel19.Caption:='Totaliza todos os Pomares.';
        end;
        QRLabel62.Caption:='Receita de '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
        QRLabel63.Caption:='Despesa de '+DateToStr(Ed3.Date)+' à '+DateToStr(Ed33.Date);
        qrProdu.Open;
        if qrProdu.RecordCount<1 then begin
           ShowMessage('Não há Lançamento.');
           exit;
        end;
        PrinterSettings.PrinterIndex:=fImpr('imp1');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if (RCB6.Checked) or (RCB7.Checked) then begin
    if qrFechaPomarEntrada<>Nil then qrFechaPomarEntrada.Destroy; Application.CreateForm(TqrFechaPomarEntrada,qrFechaPomarEntrada);
     with rlFechaPomarEntrada.qrFechaPomarEntrada do begin
        vferec:=vrec; vfedes:=vdes;
        qrProdu.Close;
        if (RCB6.Checked) then begin
           QRLabel16.Caption:='Fechamento Entrada por Pomar';
           qrProdu.Sql.Strings[0]:='Select Numero,Descricao,ForCod1,ForCod2,ForCod3,ForCod4,ForCod5,Descon,Descon1,Descon2,Descon3,Descon4,Desper as vdesper';
           qrProdu.Sql.Strings[2]:='Where '+vCod;
           qrProdu.Sql.Strings[3]:='Order By Numero';
           vfecod:='Where '+vcod;
           QRDBText2.Left:=65;
           QRLabel19.Caption:='Pomar...:';
        end else begin
           QRLabel16.Caption:='Resumo Fechamento Entrada dos Pomares';
           qrProdu.Sql.Strings[0]:='Select Descon,Descon1,Descon2,Descon3,Descon4,Sum(Desper) as vdesper';
           qrProdu.Sql.Strings[2]:='';
           qrProdu.Sql.Strings[3]:='Group By Descon,Descon1,Descon2,Descon3,Descon4';
           vfecod:='';
           QRDBText2.Left:=5000;
           QRLabel19.Caption:='Totaliza todos os Pomares.';
        end;
        QRLabel62.Caption:='Receita de '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
        QRLabel63.Caption:='Despesa de '+DateToStr(Ed3.Date)+' à '+DateToStr(Ed33.Date);
        qrProdu.Open;
        if qrProdu.RecordCount<1 then begin
           ShowMessage('Não há Lançamento.');
           exit;
        end;
        PrinterSettings.PrinterIndex:=fImpr('imp1');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if (RCB3.Checked) or (RCB4.Checked) then begin
    if qrPomarMov<>Nil then qrPomarMov.Destroy; Application.CreateForm(TqrPomarMov,qrPomarMov);
     with rlPomarMov.qrPomarMov do begin
        qrProdu.Close;
        vCod:='(PomarCod>='+Trim(ED1.Text)+' and PomarCod<='+Trim(ED11.Text)+')';
        vDes:='(Codigo>='+Trim(ME3.Text)+' and Codigo<='+Trim(ME33.Text)+')';
        if (RCB3.Checked) then begin
           QRLabel16.Caption:='Movimento de Saída de produtos por Pomar';
           qrProdu.Sql.Strings[3]:='Order By PomarCod,Codigo,Numero';
        end else begin
           QRLabel16.Caption:='Movimento de Saída de Produtos';
           qrProdu.Sql.Strings[3]:='Order By Codigo,PomarCod,Numero';
        end;
        qrProdu.Sql.Strings[2]:='Where ss.Lanc=cc.Lanc and '+vCod+' and '+vdes+' and '+vrec;
        QRLabel16.Caption:=QRLabel16.Caption+' no período '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
        qrProdu.Open;
        if qrProdu.RecordCount<1 then begin
           ShowMessage('Não há Lançamento.');
           exit;
        end;
        PrinterSettings.PrinterIndex:=fImpr('imp1');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
  if (RCB18.Checked) then begin // Fechamento
     if qrFechaAmosRes<>Nil then qrFechaAmosRes.Destroy; Application.CreateForm(TqrFechaAmosRes, qrFechaAmosRes);
     with qrFechaAmosRes do begin
       vCon:='ProdCod>='+Trim(Ed1.Text)+' and ProdCod<='+Trim(Ed11.Text);
       vCod:='VarieCod>='+ME3.Text+' and VarieCod<='+ME33.Text;
       vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
       qrFecha.Close;
       QRLabel1.Caption:='Resumo Fechamento Amostra no '+vperiodo;
       qrFecha.Sql.Strings[2]:='Where ('+vCon+') and ('+vdat+') and ('+vCod+')';
       qrFecha.Open;
       PrinterSettings.PrinterIndex := fImpr('Imp1');
       Preview;
     end;
  end;
  if (RCB20.Checked) then begin // Historico Produtor
     vCod:='(Codigo>='+Ed1.Text+' and Codigo<='+Ed11.Text+')';
     vDat:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
     if qrHistorico<>Nil then qrHistorico.Destroy; Application.CreateForm(TqrHistorico,qrHistorico);
     with qrHistorico do begin
        QRLabel16.Caption:='Histórico Produtor no '+vperiodo;
        vHisDat:=vDat;
        vhisvar:='(VarieCod>='+Trim(ME3.Text)+' and VarieCod<='+Trim(ME33.Text)+')';
        vhispro:='(SubString(ProdCod from 1 for 2)>='+Copy(Trim(ME3.Text),1,2)+' SubString(ProdCod from 1 for 2)<='+Copy(Trim(ME33.Text),1,2)+')';
{       if RAC1.Checked then begin
           vhisace:='Acertado<>'+QuotedStr('A');
           qrLabel63.Caption:='Geral';
        end;
        if RAC2.Checked then begin
           vhisace:='Acertado='+QuotedStr('P');
           qrLabel63.Caption:='Perfil';
        end;
        if RAC3.Checked then begin}
           vhisace:='Acertado<>'+QuotedStr('Z');
           qrLabel63.Caption:='Normal';
//      end;}
        qrLabel16.Caption:='Histórico do Produtor ';
        qrCadas.Close;
        qrCadas.Sql.Strings[2]:='Where '+vcod;
        qrCadas.Open;
        qrEmpre.Close; qrEmpre.Open;
        qrEntra.Close; qrEntra.Open;
        qrPerfil.Close; qrPerfil.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp1');
        if qrCadas.RecordCount<1 then ShowMessage('Sem Dados...');
        Preview;
     end;
  end;
end;


procedure TFfrmRelPomar.RCB1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     1: begin GP3.Visible:=True; GP4.Visible:=False; Label4.Caption:='Data Receita                              à'; end;
     2: begin GP4.Visible:=True; GP3.Visible:=False; Label4.Caption:='Data                                      à'; end;
  end;
end;

end.





