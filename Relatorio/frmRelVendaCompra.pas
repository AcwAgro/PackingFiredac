unit frmRelVendaCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, Printers,
  RzPanel;

type
  TFfrmRelVendaCompra = class(TForm)
    TPesq: TTimer;
    DataSource4: TDataSource;
    Table4: TTable;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RCB17: TRadioButton;
    RCB13: TRadioButton;
    RCB7: TRadioButton;
    RCB10: TRadioButton;
    RCB11: TRadioButton;
    RCB12: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP2: TSpeedButton;
    SBP1: TSpeedButton;
    ED1: TMaskEdit;
    ED11: TMaskEdit;
    GP6: TGroupBox;
    CB3: TRadioButton;
    CB5: TRadioButton;
    DBLCBox1: TDBLookupComboBox;
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
    RCB1: TRadioButton;
    RCB22: TRadioButton;
    GP61: TGroupBox;
    CB61A: TRadioButton;
    CB61B: TRadioButton;
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
    procedure DBLCBox1Exit(Sender: TObject);
    procedure CB3Click(Sender: TObject);
    procedure DBLCBox1Click(Sender: TObject);
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
  FfrmRelVendaCompra: TFfrmRelVendaCompra;

implementation

uses Menu, Data, Rotina, Pesq, rlBanco,rlBancoSal,rlFiFinan,rlFinanCli,rlFiDuplic,
     rlNFCooper,rlChequeDev,rlFinanNota,rlNotaMov,rlNotaCli,rlFiAcerto,rlBancoRes,
     rlNotaResDat, rlCompraMov, rlCompraRes, rlFiHisto, rlFinanDia, rlVendaMes,
     rlVendasProdutor, rlProducaoProdutor, rlVendasProdutorResumo;

{$R *.DFM}
procedure TFfrmRelVendaCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelVendaCompra);
end;

procedure TFfrmRelVendaCompra.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
//  ED5.Date:=Now;
  if not Table4.Active then Table4.Open;
  if Table4.Filter<>xFiltro1 then Table4.Filter:=xFiltro1;
  RCB17.Checked := True;
  RCB17.OnClick(RCB17);
  vNotaCodigo := '0';
end;

procedure TFfrmRelVendaCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelVendaCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelVendaCompra.Perc1KeyPress(Sender: TObject; var Key: Char);
begin
//  if Key in [',','.'] then Key := DecimalSeparator;
  if Key=#13 then begin Key:=#0; Perform(WM_NEXTDLGCTL,0,0); end;
end;

procedure TFfrmRelVendaCompra.Perc1Exit(Sender: TObject);
begin
//  Perc1.Text := FormatFloat('0.00',StrToFloat(Perc1.Text));
//  Mult1.Text := FormatFloat('0.00',StrToFloat(Mult1.Text));
end;

//Pesquisa
procedure TFfrmRelVendaCompra.RCB3Click(Sender: TObject);
begin
//  GP0.Visible:=False; GP1.Visible:=False; GP2.Visible:=False;
//  GP3.Visible:=False; GP4.Visible:=False; GP5.Visible:=False;
  GP1.Visible:=False;
  GP3.Visible:=False;
  GP4.Visible:=False;
  GP6.Visible:=False;
  SBP1.Tag:=1; SBP2.Tag:=11; SBP5.Tag:=3; SBP6.Tag:=33;
  ED3.Text:='1';
  xRelMarca:='';
  Case TComponent(Sender).Tag of
     1: begin GP1.Visible:=True; GP4.Visible:=True; GP6.Visible:=True; end;
     2: begin GP1.Visible:=True; GP4.Visible:=True; end;
     3: begin GP1.Visible:=True; GP4.Visible:=True; GP6.Visible:=True; end;
     4: begin GP1.Visible:=True; GP4.Visible:=True; end;
     5: GP4.Visible:=True;
  end;

  GP6.Visible := (RCB17.Checked or RCB13.Checked);
  GP61.Visible := (RCB13.Checked);

end;

procedure TFfrmRelVendaCompra.SBP1Click(Sender: TObject);
begin
  //Tipo de nota
  if (RCB17.Checked) then
  begin
    if (CB5.Checked) then
    begin
      if Table4.fieldByName('RAZAO').Text = 'C' then
        fPqCliente
      else
        fPqFornecedor;
    end
    else
      fPqCliente;
  end
  else begin
    if RCB13.Checked or RCB7.Checked then
      fPqCliente
    else
      fPqFornecedor;
  end;

  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelVendaCompra.TPesqTimer(Sender: TObject);
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
     else if (xpqpesq=3) or (xpqpesq=4) then begin
       Ed3.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed3.SetFocus;
     end
     else if (xpqpesq=33) or (xpqpesq=44) then begin
       Ed33.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed33.SetFocus;
     end;
  end;
end;

procedure TFfrmRelVendaCompra.CB3Exit(Sender: TObject);
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

procedure TFfrmRelVendaCompra.DBLCBox1Click(Sender: TObject);
begin
  vNotaCodigo := Table4.FieldByName('Codigo').asString;
end;

procedure TFfrmRelVendaCompra.DBLCBox1Exit(Sender: TObject);
begin
  if Table4.FieldByName('Item').Text='M' then begin
     SBP5.Tag:=4; SBP6.Tag:=44;
  end else begin
     SBP5.Tag:=6; SBP6.Tag:=66;
  end;
  if Table4.FieldByName('Razao').Text='C' then begin
     SBP1.Tag:=1; SBP2.Tag:=11;
  end else if Table4.FieldByName('Razao').Text='F' then begin
     SBP1.Tag:=2; SBP2.Tag:=22;
  end else begin
     SBP1.Tag:=5; SBP2.Tag:=55;
  end;
end;

procedure TFfrmRelVendaCompra.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelVendaCompra.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelVendaCompra.SB6Click(Sender: TObject);
var vPeriodo,vCod,vCon,vDat,vPago,vdifcod:String;
    vpg,vvz,vl0,vl1,vl2,vl3,vl4,vl5,vl10,vc0,vc1,vc2,vc3,vc4,vc5,vc6,vc7,vc8:Integer;
    vext:String;
    vvlr: Double;
    vcct: Integer;
begin
  vPeriodo:='Período '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);

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

  ///Produto
  if (RCB10.Checked) or (RCB17.Checked) then begin
     vDat:='nn.Data>='+frInvD(Ed4.Date)+' and nn.Data<'+frInvD(Ed44.Date+1);
     vCod:='cc.Codigo>='+Ed3.Text+' and cc.Codigo<='+Ed33.Text;
     vCon:='nn.Codigo>='+Ed1.Text+' and nn.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 3) then
       vCod:='nn.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';
     if qrCompraMov<>Nil then qrCompraMov.Destroy; Application.CreateForm(TqrCompraMov,qrCompraMov);
     with qrCompraMov do begin
        qrConta.Close;
        qrConta.SQL.Strings[2]:='Where (nn.Lanc=cc.Lanc) and '+vCon+' and '+vcod+' and '+vdat;
        if (RCB10.Checked) then begin
           QRLabel16.Caption:='Relação Compra por Nome/Produto '+vperiodo;
           qrConta.SQL.Strings[1]:='From nfCompr nn, nfCompCo cc';
        end else begin
           QRLabel16.Caption:='Relação Venda por Nome/Produto '+vperiodo;
           qrConta.SQL.Strings[1]:='From nfVenda nn, nfVendCo cc';
//           if CB3.Checked then qrConta.Sql.Strings[2]:=qrConta.Sql.Strings[2]+' and (DifCod=1)'
//           else qrConta.Sql.Strings[2]:=qrConta.Sql.Strings[2]+' and DifCod=0'+trim(vNotaCodigo);
           qrConta.Sql.Strings[2]:=qrConta.Sql.Strings[2] + vdifcod;
           if CB5.Checked then
             QRLabel16.Caption:='Relação '+Trim(Table4.FieldByName('Descricao').Text)+' '+vperiodo;
        end;
        qrConta.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrConta.Fields[0].Value<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB11.Checked) or (RCB13.Checked) then begin
     vDat:='nn.Data>='+frInvD(Ed4.Date)+' and nn.Data<'+frInvD(Ed44.Date+1);
     vCon:='nn.Codigo>='+Ed1.Text+' and nn.Codigo<='+Ed11.Text;
     if (Length(xRelMarca) > 3) then
       vCod:=' and nn.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';
     if qrCompraRes<>Nil then qrCompraRes.Destroy; Application.CreateForm(TqrCompraRes,qrCompraRes);
     with qrCompraRes do begin
        qrConta.Close;
        qrConta.SQL.Strings[2]:='Where '+vCon + vcod+' and '+vdat;
        if (RCB11.Checked) then begin
           QRLabel16.Caption:='Relação Compra por Nome '+vperiodo;
           qrConta.SQL.Strings[0]:='Select nn.Codigo,nn.Descricao,nn.Nota,nn.Data,nn.VlrProduto,nn.Vlrdesc, nn.VlrNota, 0.00 vlrfunrural';
           qrConta.SQL.Strings[1]:='From nfCompr nn';
        end else begin
           if CB61A.Checked then
             QRLabel16.Caption:='Relação Venda por Nome '+vperiodo
           else
             QRLabel16.Caption:='Relação Venda por Nota '+vperiodo;

           qrConta.SQL.Strings[0]:='Select nn.Codigo,nn.Descricao,nn.Nota,nn.Data,nn.VlrProduto,nn.Vlrdesc, nn.VlrNota, nn.vlrfunrural';
           qrConta.SQL.Strings[1]:='From nfVenda nn';
           //if CB3.Checked then qrConta.Sql.Strings[2]:=qrConta.Sql.Strings[2]+' and (DifCod=1)'
           //else qrConta.Sql.Strings[2]:=qrConta.Sql.Strings[2]+' and DifCod=0'+trim(vNotaCodigo);

           qrConta.Sql.Strings[2]:=qrConta.Sql.Strings[2] + vdifcod;

           if CB5.Checked then
             QRLabel16.Caption:='Relação '+Trim(Table4.FieldByName('Descricao').Text)+' por Nome '+vperiodo;
        end;
        if CB61A.Checked then
          qrConta.SQL.Strings[3]:='Order By nn.Descricao, nn.Data'
        else
          qrConta.SQL.Strings[3]:='Order By nn.nota, nn.Descricao';

        qrConta.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrConta.Fields[0].Value<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB7.Checked) or (RCB12.Checked) then begin
     vCod:='(ff.Codigo>='+Ed1.Text+' and ff.Codigo<='+Ed11.Text+')';
     if (Length(xRelMarca) > 3) then
       vCod:='ff.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     if qrFiHisto<>Nil then qrFiHisto.Destroy; Application.CreateForm(TqrFiHisto, qrFiHisto);
     with rlFiHisto.qrFiHisto do begin
//       vDathi:='nn.Data>='+frInvD(Ed4.Date)+' and nn.Data<'+frInvD(Ed44.Date+1);
//       vCodhi:='cc.Codigo>='+Ed3.Text+' and cc.Codigo<='+Ed33.Text;
       qrConta.Close; qrCabec.Close;
       if RCB7.Checked then begin
         qrLabel16.Caption:='Histórico do Cliente '+vperiodo;
         qrCabec.SQL.Strings[1]:='From FiBaiRec ff, CadClien cc';
         qrConta.SQL.Strings[1]:='From FiBaiRec';
         vDTPeriodo := vDat;
       end else begin
         qrLabel16.Caption:='Histórico do Fornecedor '+vperiodo;
         qrCabec.SQL.Strings[1]:='From FiBaiPag ff, CadForne cc';
         qrConta.SQL.Strings[1]:='From FiBaiPag';
         vDTPeriodo := vDat;
       end;
//       if not CB1.Checked then
//         qrCabec.SQL.Strings[2]:='Where (ff.Codigo=cc.Codigo) and cc.Cooper='+QuotedStr('N')+' and '+vdat+' and '+vcod
//       else qrCabec.SQL.Strings[2]:='Where (ff.Codigo=cc.Codigo) and cc.Cooper='+QuotedStr('S')+' and '+vdat+' and '+vcod;
       qrCabec.SQL.Strings[2]:='Where (ff.Codigo=cc.Codigo) and '+vdat+' and '+vcod;
       qrLabel16.Caption:=qrLabel16.Caption+'  por Descrição';
       vfilcam:='Codigo';
       qrCabec.Open;
       if qrCabec.RecordCount<1 then begin
         Showmessage('Movimento não Encontrado!');
         Exit;
       end;
       qrConta.Open;
       PrinterSettings.PrinterIndex:=fImpr('Imp2');
       if TComponent(Sender).Tag=0 then Preview else Print;
    end;
  end;
  if (RCB1.Checked) then begin
     vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
     if qrVendaMes<>Nil then qrVendaMes.Destroy; Application.CreateForm(TqrVendaMes,qrVendaMes);
     with qrVendaMes do
     begin
       QRLabel16.Caption:='Relatório Faturamento '+vperiodo;
       cdsFatura.CreateDataSet;
       vvlr := 0;
       fSql(1,1,['select Extract(year from data), Extract(month from data), sum(vlrnota)',
                 '  from nfvenda nf',
                 ' inner join cadnota cc on (cc.codigo = nf.difcod and cc.rel_venda = ''S'')'+
                 ' where nf.difcod > 0',
                 '   and '+vdat,
                 'group by Extract(year from data), Extract(month from data)',
                 'order by 1, 2'],6);
       while not dm.qrSql1.Eof do
       begin
         cdsFatura.Append;
         cdsFaturaMes.asString := frMes(dm.qrSql1.Fields[1].asInteger);
         cdsFaturaAno.asString := dm.qrSql1.Fields[0].asString;
         cdsFaturaValor.asFloat:= dm.qrSql1.Fields[2].asFloat;
         cdsFatura.Post;
         vvlr := vvlr + dm.qrSql1.Fields[2].asFloat;
         dm.qrSql1.Next;
       end;
       qrLabel3.Caption := FormatFloat('#,0.00', vvlr);
       PrinterSettings.PrinterIndex := fImpr('Imp2');
       if cdsFatura.IsEmpty then ShowMessage('Sem Dados...')
       else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;
  if (RCB22.Checked) then
  begin // Producao por produtor
    vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
    if qrProducaoProdutor<>Nil then qrProducaoProdutor.Destroy;
    Application.CreateForm(TqrProducaoProdutor,qrProducaoProdutor);

    with qrProducaoProdutor do
    begin
      vDataPervpx :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
      vcrlocvpx := '';
      vcrlocdesvpx := '';
      vDemaisvpx := 'and (not co.prodcod in (0';

      qrlbldes1.Caption := '';
      qrlbldes2.Caption := '';
      qrlbldes3.Caption := '';
      qrlbldes4.Caption := '';
      qrlbldes5.Caption := '';
      qrlbldes6.Caption := '';
      qrlbldes7.Caption := 'Demais';
      vcod1x := 0;
      vcod2x := 0;
      vcod3x := 0;
      vcod4x := 0;
      vcod5x := 0;
      vcod6x := 0;
      vcod7x := 99999;
      vcct := 0;

      fSql(1,1,['Select pp.codigo, cf.descricao, Sum(co.Qtdeent)',
                '  From classif pp, classifm co, cadforne cf',
                ' Where (pp.Lanc=co.Lanc) and (pp.codigo=cf.codigo)',
                '   and ('+vDat+') ',
                ' Group by pp.codigo, cf.descricao',
                ' Order by 3 desc, 1'],6);

      while not dm.qrSql1.Eof do
      begin
        inc(vcct);
        case vcct of
          1: begin
               qrlbldes1.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod1x := dm.qrSql1.Fields[0].asInteger;
               vDemaisvpx := vDemaisvpx + ', '+IntToStr(vcod1x);
             end;
          2: begin
               qrlbldes2.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod2x := dm.qrSql1.Fields[0].asInteger;
               vDemaisvpx := vDemaisvpx + ', '+IntToStr(vcod2x);
             end;
          3: begin
               qrlbldes3.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod3x := dm.qrSql1.Fields[0].asInteger;
               vDemaisvpx := vDemaisvpx + ', '+IntToStr(vcod3x);
             end;
          4: begin
               qrlbldes4.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod4x := dm.qrSql1.Fields[0].asInteger;
               vDemaisvpx := vDemaisvpx + ', '+IntToStr(vcod4x);
             end;
          5: begin
               qrlbldes5.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod5x := dm.qrSql1.Fields[0].asInteger;
               vDemaisvpx := vDemaisvpx + ', '+IntToStr(vcod5x);
             end;
          6: begin
               qrlbldes6.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod6x := dm.qrSql1.Fields[0].asInteger;
               vDemaisvpx := vDemaisvpx + ', '+IntToStr(vcod6x);
             end;
          7: begin
               dm.qrSql1.Last;
               break;
             end;
        end;

        dm.qrSql1.Next;
      end;

      vDemaisvpx := vDemaisvpx + '))';

      QRLabel16.Caption:='Resumo Classificação no '+vperiodo;
      qrVenda.Close; qrProdu.Close;

      qrProdu.Sql.Strings[0]:='Select Sum(co.Qtdeent)';
      qrProdu.Sql.Strings[1]:='FROM classif pp, classifm co ';
      qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') ';

      qrVenda.Sql.Strings[0]:='SELECT co.prodcod,SUM(co.QTDEENT) AS QT';
      qrVenda.Sql.Strings[1]:='FROM classif pp, classifm co ';
      qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') ';
      qrVenda.Sql.Strings[3]:='GROUP BY CO.prodcod';

      QRSubDetail2.Height:=13;
      ChildBand2.Color:=$00FFC4C4;
      vclresvpx:='N';
      vclgervpx:='S';
      qrVenda.Open;
      qrProdu.Open;
      PrinterSettings.PrinterIndex := fImpr('Imp2');
      if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
      else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
    end;
  end;
end;


procedure TFfrmRelVendaCompra.CB3Click(Sender: TObject);
begin
  DBLCBox1.Visible:=False;
  SBP1.Tag:=2; SBP2.Tag:=22;
  if CB5.Checked then DBLCBox1.Visible:=True;
  if CB3.Checked then begin SBP1.Tag:=1; SBP2.Tag:=11; end;
  Ed1.SetFocus;
end;

end.





