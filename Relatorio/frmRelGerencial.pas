unit frmRelGerencial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, RzPanel;

type
  TFfrmRelGerencial = class(TForm)
    TPesq: TTimer;
    DataSource4: TDataSource;
    Table4: TTable;
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
    GP6: TGroupBox;
    CB3: TRadioButton;
    CB5: TRadioButton;
    DBLCBox1: TDBLookupComboBox;
    RCB3: TRadioButton;
    RCB14: TRadioButton;
    RCB7: TRadioButton;
    RCB21: TRadioButton;
    GP7: TGroupBox;
    GBRB1: TRadioButton;
    GBRB2: TRadioButton;
    GP9: TGroupBox;
    GB9_raz: TRadioButton;
    GB9_prod: TRadioButton;
    GBRB3: TRadioButton;
    RCB17: TRadioButton;
    RCB16: TRadioButton;
    RCB15: TRadioButton;
    GP10: TGroupBox;
    Label6: TLabel;
    SBP9: TSpeedButton;
    ED9: TMaskEdit;
    RCB22: TRadioButton;
    RCB23: TRadioButton;
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
    procedure Perc1Exit(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure DBLCBox1Click(Sender: TObject);
    procedure CB3Click(Sender: TObject);
    procedure CB3Exit(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vNotaCodigo: String;
  public
    { Public declarations }
  end;

var
  FfrmRelGerencial: TFfrmRelGerencial;

implementation

uses Menu, Data, Rotina, Pesq, rlNotaMov, rlNotaRes, rlNotaRazao, rlNotaProdu,
     rlClassRes, rlNotaVar, rlVendaPro, rlClassCli, rlClassProd, rlNotaCliProd,
  rlResumoCliCat, rlResumoClasse, rlResumoProdutor, rlResumoVariedade,
  rlClassCliPrecoMedio;

{$R *.DFM}
procedure TFfrmRelGerencial.CB3Click(Sender: TObject);
begin
  Ed1.SetFocus;
end;

procedure TFfrmRelGerencial.CB3Exit(Sender: TObject);
begin
  if CB3.Checked then
  begin
    vNotaCodigo := '0';
    DBLCBox1.Visible := False;
  end
  else begin
    vNotaCodigo := '1';
    DBLCBox1.Visible := True;
  end;
end;

procedure TFfrmRelGerencial.DBLCBox1Click(Sender: TObject);
begin
  if CB5.Checked then
    vNotaCodigo := Table4.FieldByName('Codigo').asString
  else
    vNotaCodigo := '0';
end;

procedure TFfrmRelGerencial.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelGerencial.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelGerencial);
end;

procedure TFfrmRelGerencial.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
  if not Table4.Active then Table4.Open;
  if Table4.Filter<>xFiltro1 then Table4.Filter:=xFiltro1;
  RCB7.Checked := True;
  RCB7.OnClick(RCB7);
  vNotaCodigo := '0';
end;

procedure TFfrmRelGerencial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelGerencial.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelGerencial.Perc1Exit(Sender: TObject);
begin
end;

//Pesquisa
procedure TFfrmRelGerencial.RCB3Click(Sender: TObject);
begin
  xRelMarca := '';
  Label3.Caption := 'Item Inicial                              à';
  SBP1.Tag:=1; SBP2.Tag:=11; SBP5.Tag:=6; SBP6.Tag:=66;
  GP3.Visible:=True; GP10.Visible:=True;
  GP6.Visible:=False; GP7.Visible:=False; GP9.Visible:=False;
  GBRB3.Visible := False;
  Case TComponent(Sender).Tag of
    1: begin GP6.Visible:=True; GP9.Visible:=True; end;
    4: begin SBP1.Tag:=5; SBP2.Tag:=55; SBP5.Tag:=3; SBP6.Tag:=33; GP7.Visible:=True; GBRB3.Visible := True; end;
    5: begin SBP1.Tag:=1; SBP2.Tag:=11; SBP5.Tag:=3; SBP6.Tag:=33; GP6.Visible:=True; GP7.Visible:=True; end;
    6:begin
        SBP1.Tag:=5; SBP2.Tag:=5; SBP5.Tag:=1; SBP6.Tag:=11;
        Label3.Caption := 'Cliente Inicial                          à';
      end;
    7: begin SBP1.Tag:=5; SBP2.Tag:=55; GP3.Visible:=False; end;
    8:begin
        GP1.Visible:=True;
        GP4.Visible:=True;
        GP7.Visible:=True;
        GP6.Visible:=True;
        GP3.Visible:=False;
        GP10.Visible:=False;

      end;
  end;
  GP10.Visible := (RCB7.Checked);
end;

procedure TFfrmRelGerencial.SBP1Click(Sender: TObject);
begin
  xRelMarca := '';
  Case TComponent(Sender).Tag of
     1: fPqCliente;
    11: fPqCliente;
     3: fPqVariedade;
    33: fPqVariedade;
     5: fPqForneCooper;
    55: fPqForneCooper;
     6: fPqProduto;
    66: fPqProduto;
     9: fPqLocal;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelGerencial.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if (xpqpesq=5) then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end;
     if (xpqpesq=55) then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end;
     if (xpqpesq=1) and (not rcb21.Checked) then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if (xpqpesq=11) and (not rcb21.Checked) then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end;
     if (xpqpesq=1) and (rcb21.Checked) then begin
       Ed3.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed3.SetFocus;
     end
     else if (xpqpesq=11) and (rcb21.Checked) then begin
       Ed33.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed33.SetFocus;
     end;

     if (xpqpesq=2) or (xpqpesq=6) then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if (xpqpesq=22) or (xpqpesq=66) then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
     else if (xpqpesq=3) or (xpqpesq=4) then begin
       Ed3.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed3.SetFocus;
     end
     else if (xpqpesq=33) or (xpqpesq=44) then begin
       Ed33.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed33.SetFocus;
     end
     else if xpqpesq = 9 then begin
       Ed9.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed9.SetFocus;
     end;
  end;
end;

procedure TFfrmRelGerencial.SB6Click(Sender: TObject);
var vPeriodo,vCod,vCon,vDat,vloc,vlocdes,vdifcod:String;
begin
  vPeriodo:='Período '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
  if (StrToIntDef(Trim(ed9.Text),0) > 0) then
  begin
    vloc := ' and (LocalCod = '+Trim(ed9.Text)+')';
    vlocDes := ' - Local: '+fBus(1,['Select descricao from cadlocal where codigo = 0'+Trim(ed9.Text)],1);
  end
  else begin
    vloc := '';
    vlocDes := '';
  end;

  //Custo por data -> dtpClaFim.Date
  fSql(1,3,['select Max(lanc) from cadcategcus where data < '+frInvD(ed44.Date+1)],1);
  xCategCustoLanc := dm.qrSql3.Fields[0].AsInteger;
  fSql(1,3,['select Max(lanc) from cadvariecus where data < '+frInvD(ed44.Date+1)],1);
  xVarieCustoLanc := dm.qrSql3.Fields[0].AsInteger;
  dm.qrSql3.Close;

  //Trazer todas as notas que fazem vendas
  if (vNotaCodigo = '0') then
  begin
    vdifcod := '  and Difcod in (0';
    Table4.First;
    while not Table4.Eof do
    begin
      if (Table4.FieldByName('rel_venda').asString = 'S') then
        vdifcod := vdifcod +', '+ Table4.FieldByName('codigo').asString;
      Table4.Next;
    end;
    vdifcod := vdifcod +')';
  end
  else
    vdifcod :='  and Difcod = 0'+trim(vNotaCodigo);

  if RCB3.Checked and gb9_raz.Checked then begin
     vCod:='es.Codigo>='+Ed1.Text+' and es.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='es.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vCon:='esc.Codigo>='+Ed3.Text+' and esc.Codigo<='+Ed33.Text;
     vDat:='es.Data>='+frInvD(Ed4.Date)+' and es.Data<'+frInvD(Ed44.Date+1);
     if qrNotaRazao<>Nil then qrNotaRazao.Destroy; Application.CreateForm(TqrNotaRazao,qrNotaRazao);
     with qrNotaRazao do begin
        QRLabel16.Caption:='Resumo Venda por Razão  no '+vperiodo;
        qrVenda.Close;
        qrVenda.Sql.Strings[1]:='From nfVenda es,nfVendCo esc, CadClien cc';
        qrVenda.Sql.Strings[2]:='Where (es.Lanc=esc.lanc and es.Codigo=cc.Codigo) and ('+vCod+') and ('+vCon+') and ('+vDat+')';

        //if CB3.Checked then qrVenda.Sql.Strings[2]:=qrVenda.Sql.Strings[2]+' and (DifCod=1)'
        //else qrVenda.Sql.Strings[2]:=qrVenda.Sql.Strings[2]+' and DifCod=0'+Table4.FieldByName('Codigo').Text;
        qrVenda.Sql.Strings[2]:= qrVenda.Sql.Strings[2] + vdifcod;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        qrVenda.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if RCB3.Checked and gb9_prod.Checked then begin
     vCod:='es.Codigo>='+Ed1.Text+' and es.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='es.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vCon:='esc.Codigo>='+Ed3.Text+' and esc.Codigo<='+Ed33.Text;
     vDat:='es.Data>='+frInvD(Ed4.Date)+' and es.Data<'+frInvD(Ed44.Date+1);
     if qrNotaProdu<>Nil then qrNotaProdu.Destroy; Application.CreateForm(TqrNotaProdu,qrNotaProdu);
     with qrNotaProdu do begin
        QRLabel16.Caption:='Resumo Venda por Produto  no '+vperiodo;
        qrVenda.Close;
        qrVenda.Sql.Strings[1]:='From nfVenda es,nfVendCo esc, CadClien cc';
        qrVenda.Sql.Strings[2]:='Where (es.Lanc=esc.lanc and es.Codigo=cc.Codigo) and ('+vCod+') and ('+vCon+') and ('+vDat+')';
        //if CB3.Checked then qrVenda.Sql.Strings[2]:=qrVenda.Sql.Strings[2]+' and (DifCod=1)'
        //else qrVenda.Sql.Strings[2]:=qrVenda.Sql.Strings[2]+' and DifCod=0'+Table4.FieldByName('Codigo').Text;
        qrVenda.Sql.Strings[2]:= qrVenda.Sql.Strings[2] + vdifcod;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        qrVenda.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB7.Checked) and (not GBRB3.Checked) then begin // RESUMO classificacao
     vCon:='Codigo>='+frPree(Ed3.Text,7,'0',1)+' and Codigo<='+frPree(Ed33.Text,7,'9',1);
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
//     if frPerg('Recalcular Preço Médio?') then
     fRecalPreco(vcon,vdat,'S');
     vCon:='co.ProdCod>='+frPree(Ed3.Text,7,'0',1)+' and co.ProdCod<='+frPree(Ed33.Text,7,'9',1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     if qrClassRes<>Nil then qrClassRes.Destroy; Application.CreateForm(TqrClassRes,qrClassRes);
     with qrClassRes do begin
        vDataPer :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
        vcrloc := vloc;
        vcrlocdes := vlocdes;
        QRLabel16.Caption:='Resumo Romaneio de Classificação  no '+vperiodo;
        qrVenda.Close; qrProdu.Close;
        qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+') and ('+vCod+')';
        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';
        qrVenda.Sql.Strings[0]:='SELECT co.PRODCOD,SUM(co.QTDEENT) AS QT,SUM(co.PESOREAL) AS GE, AVG(PRECO) AS PR';
        qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+') and ('+vCod+')';
        qrVenda.Sql.Strings[3]:='GROUP BY CO.PRODCOD';
        if (GBRB2.Checked) then begin
           QRSubDetail2.Height:=13;
           ChildBand2.Color:=$00FFC4C4;
           vclres:='N'; vclger:='N';
//        end else if (RCB8.Checked) then begin
//           QRSubDetail2.Height:=0;
//           ChildBand2.Color:=clWhite;
//           vclres:='S'; vclger:='N';
        end else if (GBRB1.Checked) then begin
           vclres:='N'; vclger:='S';
           QRSubDetail2.Height:=13;
           ChildBand2.Color:=$00FFC4C4;
           qrProdu.Sql.Strings[0]:='Select Sum(QtdeEnt)';
           qrProdu.Sql.Strings[3]:='';
           qrProdu.Sql.Strings[4]:='';
           qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+')';
//        end else if (RCB10.Checked) then begin
//           QRSubDetail2.Height:=0;
//           ChildBand2.Color:=clWhite;
//           vclres:='S'; vclger:='S';
//           qrProdu.Sql.Strings[0]:='Select Sum(QtdeEnt)';
//           qrProdu.Sql.Strings[3]:='';
//           qrProdu.Sql.Strings[4]:='';
//           qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+')';
        end;
        qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB7.Checked) and (GBRB3.Checked) then begin // RESUMO classificacao
     vCon:='Codigo>='+frPree(Ed3.Text,7,'0',1)+' and Codigo<='+frPree(Ed33.Text,7,'9',1);
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     //if frPerg('Recalcular Preço Médio?') then
     fRecalPreco(vcon,vdat,'S');
     vCon:='co.ProdCod>='+frPree(Ed3.Text,7,'0',1)+' and co.ProdCod<='+frPree(Ed33.Text,7,'9',1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     if qrClassProd<>Nil then qrClassProd.Destroy; Application.CreateForm(TqrClassProd,qrClassProd);
     with qrClassProd do begin
        vcploc := vloc;
        vcplocdes := vlocdes;
        vDataPer :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
        QRLabel16.Caption:='Resumo Acerto Produtor pela Classificação  no '+vperiodo;
        qrVenda.Close; qrProdu.Close;
        qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+') and ('+vCod+')';
        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';
        qrVenda.Sql.Strings[0]:='SELECT co.PRODCOD,SUM(co.QTDEENT) AS QT,SUM(co.PESOREAL) AS GE, AVG(PRECO) AS PR';
        qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+') and ('+vCod+')';
        qrVenda.Sql.Strings[3]:='GROUP BY CO.PRODCOD';
        QRSubDetail2.Height:=13;
        ChildBand2.Color:=$00FFC4C4;
        vccres:='N'; vccger:='N';
        qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB14.Checked) then begin // RESUMO classificacao
     vCon:='Codigo>='+frPree(Ed3.Text,7,'0',1)+' and Codigo<='+frPree(Ed33.Text,7,'9',1);
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     fRecalPreco(vcon,vdat,'N');
     vCon:='co.Codigo>='+frPree(Ed3.Text,7,'0',1)+' and co.Codigo<='+frPree(Ed33.Text,7,'9',1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     if qrClassCli<>Nil then qrClassCli.Destroy; Application.CreateForm(TqrClassCli,qrClassCli);
     with qrClassCli do begin
        QRLabel16.Caption:='Resumo Fechamento Venda  no '+vperiodo;
        qrVenda.Close; qrProdu.Close;
        qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';
//      qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc) and (pp.NFE_STATUS <> ''CA'') and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and ('+vDat+') and ('+vCon+')    and ('+vCod+')'+vdifcod;
        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';
        qrVenda.Sql.Strings[0]:='SELECT co.Codigo,SUM(co.QTDE) AS QT,SUM(co.QTDE*co.PesoLiq) AS GE, SUM(co.RVlrMedio) AS VL';
        qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrVenda.Sql.Strings[3]:='GROUP BY CO.Codigo';
        if (GBRB2.Checked) then begin
           QRSubDetail2.Height:=13;
           ChildBand2.Color:=$00FFC4C4;
           vxclres:='N'; vxclger:='N';
//        end else if (RCB15.Checked) then begin
//           QRSubDetail2.Height:=0;
//           ChildBand2.Color:=clWhite;
//           vxclres:='S'; vxclger:='N';
        end else if (GBRB1.Checked) then begin
           vxclres:='N'; vxclger:='S';
           QRSubDetail2.Height:=13;
           ChildBand2.Color:=$00FFC4C4;
           qrProdu.Sql.Strings[0]:='Select Sum(Qtde)';
           qrProdu.Sql.Strings[3]:='';
           qrProdu.Sql.Strings[4]:='';
   //      qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc) and (pp.NFE_STATUS <> ''CA'') and ('+vDat+') and ('+vCon+')';
           qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and ('+vDat+') and ('+vCon+')'+vdifcod;
        end;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        xRelQtdeB := Length(qrProdu.Sql.Text);
        qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if RCB21.Checked then begin
     vCon:='es.ProdCod>='+Ed1.Text+' and es.ProdCod<='+Ed11.Text;
     vCod:='es.Codigo>='+Ed3.Text+' and es.Codigo<='+Ed33.Text;
     if (Length(xRelMarca) > 2) then
       vCon:='es.ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';
     vDat:='es.Data>='+frInvD(Ed4.Date)+' and es.Data<'+frInvD(Ed44.Date+1);
     if qrNotaCliProd<>Nil then qrNotaCliProd.Destroy; Application.CreateForm(TqrNotaCliProd,qrNotaCliProd);
     with qrNotaCliProd do begin
        QRLabel16.Caption:='Relatório Venda por Cliente e produtor no '+vperiodo;
        qrVenda.Close;
//        qrVenda.Sql.Strings[2]:='Where (es.Lanc=esc.Lanc) and (es.codigo = cli.codigo) and (es.prodcod = for.codigo) and ('+vCod+') and ('+vCon+') and ('+vDat+')';
        qrVenda.Sql.Strings[2]:='Where (es.Lanc=esc.Lanc) and (es.prodcod = for.codigo) and ('+vCod+') and ('+vCon+') and ('+vDat+')';

        qrVenda.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB15.Checked) then begin // RESUMO classificacao - Categoria
     vCon:='Codigo>='+frPree(Ed3.Text,7,'0',1)+' and Codigo<='+frPree(Ed33.Text,7,'9',1);
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     fRecalPreco(vcon,vdat,'N');
     vCon:='co.Codigo>='+frPree(Ed3.Text,7,'0',1)+' and co.Codigo<='+frPree(Ed33.Text,7,'9',1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     if qrResumoCliCat<>Nil then qrResumoCliCat.Destroy; Application.CreateForm(TqrResumoCliCat,qrResumoCliCat);
     with qrResumoCliCat do begin
        QRLabel16.Caption:='Resumo Venda x Categoria no '+vperiodo;
        qrVenda.Close; qrProdu.Close;
        qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';
//      qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc) and (pp.NFE_STATUS <> ''CA'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')    and ('+vCod+')'+vdifcod;
        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';
        qrVenda.Sql.Strings[0]:='SELECT co.Codigo,SUM(co.QTDE) AS QT,SUM(co.QTDE*co.PesoLiq) AS GE, SUM(co.RVlrMedio) AS VL';
        qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrVenda.Sql.Strings[3]:='GROUP BY CO.Codigo';
        QRSubDetail2.Height:=0;
        if (GBRB2.Checked) then begin
           vxclres1:='N'; vxclger1:='N';
        end else if (GBRB1.Checked) then begin
           vxclres1:='N'; vxclger1:='S';
           qrProdu.Sql.Strings[0]:='Select Sum(Qtde)';
           qrProdu.Sql.Strings[3]:='';
           qrProdu.Sql.Strings[4]:='';
  //       qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc) and (pp.NFE_STATUS <> ''CA'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')';
           qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')'+vdifcod;
        end;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        xRelQtdeB := Length(qrProdu.Sql.Text);
        qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB16.Checked) then begin // RESUMO classificacao - Classe
     vCon:='Codigo>='+frPree(Ed3.Text,7,'0',1)+' and Codigo<='+frPree(Ed33.Text,7,'9',1);
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     fRecalPreco(vcon,vdat,'N');
     vCon:='co.Codigo>='+frPree(Ed3.Text,7,'0',1)+' and co.Codigo<='+frPree(Ed33.Text,7,'9',1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     if qrResumoClasse<>Nil then qrResumoClasse.Destroy; Application.CreateForm(TqrResumoClasse,qrResumoClasse);
     with qrResumoClasse do begin
        QRLabel16.Caption:='Resumo Venda x Classe no '+vperiodo;
        qrVenda.Close; qrProdu.Close;
        qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';
//      qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc) and (pp.NFE_STATUS <> ''CA'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')    and ('+vCod+')'+vdifcod;
        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';
        qrVenda.Sql.Strings[0]:='SELECT co.Codigo,SUM(co.QTDE) AS QT,SUM(co.QTDE*co.PesoLiq) AS GE, SUM(co.RVlrMedio) AS VL';
        qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrVenda.Sql.Strings[3]:='GROUP BY CO.Codigo';
        QRSubDetail2.Height:=0;
        ChildBand2.Height:=0;;
        if (GBRB2.Checked) then begin
           vxclres2:='N'; vxclger2:='N';
        end else if (GBRB1.Checked) then begin
           vxclres2:='N'; vxclger2:='S';
           qrProdu.Sql.Strings[0]:='Select Sum(Qtde)';
           qrProdu.Sql.Strings[3]:='';
           qrProdu.Sql.Strings[4]:='';
   //      qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc) and (pp.NFE_STATUS <> ''CA'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')';
           qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and (co.unidade <> '+quotedstr('bi')+') and ('+vDat+') and ('+vCon+')'+vdifcod;
        end;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        xRelQtdeB := Length(qrProdu.Sql.Text);
        qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB17.Checked) then begin // RESUMO Produtor x financeiro
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     vCod:='Codigo >= '+Ed1.Text+' and Codigo <= '+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';
     if qrResumoProdutor<>Nil then qrResumoProdutor.Destroy;
     Application.CreateForm(TqrResumoProdutor,qrResumoProdutor);
     with qrResumoProdutor do begin
        QRLabel16.Caption:='Resumo Venda x Financeiro no '+vperiodo;
        qrSqlNota.Close; qrSqlFinan.Close;
        qrSqlFinan.Sql.Strings[2]:='Where Lanc = -1';
        qrSqlNota.Sql.Strings[2]:='Where naturcod = 1.102 and ('+vDat+') and ('+vCod+')';
        qrSqlNota.Open;
        qrSqlFinan.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrSqlNota.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;

  if (RCB22.Checked) then begin // RESUMO classificacao - Classe
     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if qrResumoVariedade<>Nil then qrResumoVariedade.Destroy; Application.CreateForm(TqrResumoVariedade,qrResumoVariedade);
     with qrResumoVariedade do begin

        QRLabel16.Caption:='Resumo NFe. por Variedade no '+vperiodo;
        if (vNotaCodigo <> '0') then
          QRLabel16.Caption:=QRLabel16.Caption+'  '+ Trim(Table4.FieldByName('Descricao').asString);

        qrVenda.Close; qrProdu.Close;

        if (GBRB1.Checked) then
          qrProdu.Sql.Strings[0]:='Select first 1 pp.Codigo, pp.Descricao'
        else
          qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';

        qrProdu.Sql.Strings[2]:='Where ('+vDat+') and ('+vCod+') '+vdifcod;

        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';

        qrVenda.Sql.Strings[3]:='  and ('+vDat+') and ('+vCod+') '+vdifcod;

        vrvarParam := qrVenda.Sql.Strings[3];
        if (GBRB1.Checked) then
          vrvarTodos := 'S'
        else
          vrvarTodos := 'N';

        QRSubDetail2.Height:=0;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        xRelQtdeB := Length(qrProdu.Sql.Text);
        //qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrProdu.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;

  if (RCB23.Checked) then begin // RESUMO VENDA
     vCon:='Codigo>='+frPree(Ed3.Text,7,'0',1)+' and Codigo<='+frPree(Ed33.Text,7,'9',1);
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     fRecalPreco(vcon,vdat,'N');
     vCon:='co.Codigo>='+frPree(Ed3.Text,7,'0',1)+' and co.Codigo<='+frPree(Ed33.Text,7,'9',1);
     vCod:='pp.Codigo>='+Ed1.Text+' and pp.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 2) then
       vCod:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
     if qrClassCliPrecoMedio<>Nil then qrClassCliPrecoMedio.Destroy; Application.CreateForm(TqrClassCliPrecoMedio,qrClassCliPrecoMedio);
     with qrClassCliPrecoMedio do begin
        QRLabel16.Caption:='Resumo Venda no '+vperiodo;
        qrVenda.Close; qrProdu.Close;
        qrProdu.Sql.Strings[0]:='Select pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and ('+vDat+') and ('+vCon+')    and ('+vCod+')'+vdifcod;
        qrProdu.Sql.Strings[3]:='GROUP BY pp.Codigo, pp.Descricao';
        qrProdu.Sql.Strings[4]:='ORDER BY pp.Descricao';
        qrVenda.Sql.Strings[0]:='SELECT co.Codigo,SUM(co.QTDE) AS QT,SUM(co.QTDE*co.PesoLiq) AS GE, SUM(co.RVlrMedio) AS VL';
        qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') and ('+vCon+')    and ('+vCod+')';
        qrVenda.Sql.Strings[3]:='GROUP BY CO.Codigo';
        if (GBRB2.Checked) then begin
           QRSubDetail2.Height:=13;
           ChildBand2.Color:=$00FFC4C4;
           vxclresm:='N';
           vxclgerm:='N';
        end else if (GBRB1.Checked) then begin
           vxclresm:='N';
           vxclgerm:='S';
           QRSubDetail2.Height:=13;
           ChildBand2.Color:=$00FFC4C4;
           qrProdu.Sql.Strings[0]:='Select Sum(Qtde)';
           qrProdu.Sql.Strings[3]:='';
           qrProdu.Sql.Strings[4]:='';
           qrProdu.Sql.Strings[2]:='Where (pp.Lanc=co.Lanc and pp.dif=''S'' and pp.estoque=''S'') and ('+vDat+') and ('+vCon+')'+vdifcod;
        end;
        xRelQtdeA := Length(qrVenda.Sql.Text);
        xRelQtdeB := Length(qrProdu.Sql.Text);
        qrVenda.Open;
        qrProdu.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;

end;


end.





