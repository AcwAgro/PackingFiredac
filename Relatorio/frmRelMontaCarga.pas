unit frmRelMontaCarga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, Printers,
  RzPanel;

type
  TFfrmRelMontaCarga = class(TForm)
    TPesq: TTimer;
    DataSource4: TDataSource;
    Table4: TTable;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RCB17: TRadioButton;
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
    RCB21: TRadioButton;
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
  FfrmRelMontaCarga: TFfrmRelMontaCarga;

implementation

uses Menu, Data, Rotina, Pesq, rlBanco,rlBancoSal,rlFiFinan,rlFinanCli,rlFiDuplic,
     rlNFCooper,rlChequeDev,rlFinanNota,rlNotaMov,rlNotaCli,rlFiAcerto,rlBancoRes,
     rlNotaResDat, rlCompraMov, rlCompraRes, rlFiHisto, rlFinanDia, rlVendaMes,
     rlVendasProdutor, rlProducaoProdutor, rlVendasProdutorResumo,
  rlCompraMovMC;

{$R *.DFM}
procedure TFfrmRelMontaCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelMontaCarga);
end;

procedure TFfrmRelMontaCarga.FormCreate(Sender: TObject);
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

procedure TFfrmRelMontaCarga.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelMontaCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelMontaCarga.Perc1KeyPress(Sender: TObject; var Key: Char);
begin
 // if Key in [',','.'] then Key := DecimalSeparator;
  if Key=#13 then begin Key:=#0; Perform(WM_NEXTDLGCTL,0,0); end;
end;

procedure TFfrmRelMontaCarga.Perc1Exit(Sender: TObject);
begin
//  Perc1.Text := FormatFloat('0.00',StrToFloat(Perc1.Text));
//  Mult1.Text := FormatFloat('0.00',StrToFloat(Mult1.Text));
end;

//Pesquisa
procedure TFfrmRelMontaCarga.RCB3Click(Sender: TObject);
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

  GP6.Visible := (RCB17.Checked);

end;

procedure TFfrmRelMontaCarga.SBP1Click(Sender: TObject);
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
      FPQForneCooper;
  end;

  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelMontaCarga.TPesqTimer(Sender: TObject);
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

procedure TFfrmRelMontaCarga.CB3Exit(Sender: TObject);
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

procedure TFfrmRelMontaCarga.DBLCBox1Click(Sender: TObject);
begin
  vNotaCodigo := Table4.FieldByName('Codigo').asString;
end;

procedure TFfrmRelMontaCarga.DBLCBox1Exit(Sender: TObject);
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

procedure TFfrmRelMontaCarga.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelMontaCarga.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelMontaCarga.SB6Click(Sender: TObject);
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
  if (RCB17.Checked) then
  begin
     vDat:='nn.Data>='+frInvD(Ed4.Date)+' and nn.Data<'+frInvD(Ed44.Date+1);
     vCod:='cc.Codigo>='+Ed3.Text+' and cc.Codigo<='+Ed33.Text;
     vCon:='cc.ProdCod>='+Ed1.Text+' and cc.ProdCod<='+Ed11.Text;
     if qrCompraMovMC<>Nil then qrCompraMovMC.Destroy; Application.CreateForm(TqrCompraMovMC,qrCompraMovMC);
     with qrCompraMovMC do begin

//From Esvenda nn, EsVendCo cc, nfVenda nf
        qrConta.Close;
        qrConta.SQL.Strings[3]:='Where (nn.Lanc=cc.Lanc) and (nn.Registro=nf.PSP) and '+vCon+' and '+vcod+' and '+vdat;
        qrConta.Sql.Strings[3]:=qrConta.Sql.Strings[3] + vdifcod;

        if CB5.Checked then
          QRLabel16.Caption:='Relação '+Trim(Table4.FieldByName('Descricao').Text)+' '+vperiodo
        else
          QRLabel16.Caption:='Relação Venda por Nome/Produto '+vperiodo;

        qrConta.Open;
        PrinterSettings.PrinterIndex := fImpr('Imp2');
        if qrConta.Fields[1].Value<1 then ShowMessage('Sem Dados...')
        else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
     end;
  end;

  if (RCB21.Checked) then
  begin // Venda por produtor
    vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
    if qrVendasProdutor<>Nil then qrVendasProdutor.Destroy;
    Application.CreateForm(TqrVendasProdutor,qrVendasProdutor);

    with qrVendasProdutor do
    begin
      vDataPervp :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
      vcrlocvp := '';
      vcrlocdesvp := '';
      vDemaisvp := 'and (not co.prodcod in (0';

      qrlbldes1.Caption := '';
      qrlbldes2.Caption := '';
      qrlbldes3.Caption := '';
      qrlbldes4.Caption := '';
      qrlbldes5.Caption := '';
      qrlbldes6.Caption := '';
      qrlbldes7.Caption := 'Demais';
      vcod1 := 0;
      vcod2 := 0;
      vcod3 := 0;
      vcod4 := 0;
      vcod5 := 0;
      vcod6 := 0;
      vcod7 := 99999;
      vcct  := 0;

      fSql(1,1,['Select co.prodcod, cf.descricao, Sum(co.Qtde)',
                '  From esvenda pp, esvendco co, cadforne cf',
                ' Where (pp.Lanc=co.Lanc) and (co.prodcod=cf.codigo)',
                '   and ('+vDat+') ',
                ' Group by co.prodcod, cf.descricao',
                ' Order by 3 desc, 1'],6);
      while not dm.qrSql1.Eof do
      begin
        inc(vcct);
        case vcct of
          1: begin
               qrlbldes1.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod1 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvp := vDemaisvp + ', '+IntToStr(vcod1);
             end;
          2: begin
               qrlbldes2.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod2 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvp := vDemaisvp + ', '+IntToStr(vcod2);
             end;
          3: begin
               qrlbldes3.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod3 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvp := vDemaisvp + ', '+IntToStr(vcod3);
             end;
          4: begin
               qrlbldes4.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod4 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvp := vDemaisvp + ', '+IntToStr(vcod4);
             end;
          5: begin
               qrlbldes5.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod5 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvp := vDemaisvp + ', '+IntToStr(vcod5);
             end;
          6: begin
               qrlbldes6.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcod6 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvp := vDemaisvp + ', '+IntToStr(vcod6);
             end;
          7: begin
               dm.qrSql1.Last;
               break;
             end;
        end;

        dm.qrSql1.Next;
      end;

      vDemaisvp := vDemaisvp + '))';

      QRLabel16.Caption:='Resumo monta carga por qtde. no '+vperiodo;
      qrVenda.Close; qrProdu.Close;

      qrProdu.Sql.Strings[0]:='Select Sum(Qtde)';
      qrProdu.Sql.Strings[1]:='FROM esvenda pp, esvendco co ';
      qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') ';

      qrVenda.Sql.Strings[0]:='SELECT co.CODIGO, SUM(co.QTDE) AS QT';
      qrVenda.Sql.Strings[1]:='FROM esvenda pp, esvendco co ';
      qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') ';
      qrVenda.Sql.Strings[3]:='GROUP BY CO.CODIGO';

      QRSubDetail2.Height:=13;
      ChildBand2.Color:=$00FFC4C4;
      vclresvp:='N';
      vclgervp:='S';
      qrVenda.Open;
      qrProdu.Open;
      PrinterSettings.PrinterIndex := fImpr('Imp2');
      if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
      else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
    end;
  end;
  if (RCB23.Checked) then
  begin // Venda por produtor
    vDat:='pp.Data>='+frInvD(Ed4.Date)+' and pp.Data<'+frInvD(Ed44.Date+1);
    if qrVendasProdutorResumo<>Nil then qrVendasProdutorResumo.Destroy;
    Application.CreateForm(TqrVendasProdutorResumo,qrVendasProdutorResumo);

    with qrVendasProdutorResumo do
    begin
      vDataPervr :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
      vcrlocvr := '';
      vcrlocdesvr := '';
      vDemaisvr := 'and (not co.prodcod in (0';

      qrlbldes1.Caption := '';
      qrlbldes2.Caption := '';
      qrlbldes3.Caption := '';
      qrlbldes4.Caption := '';
      qrlbldes5.Caption := '';
      qrlbldes6.Caption := 'Demais';
      vcodr1 := 0;
      vcodr2 := 0;
      vcodr3 := 0;
      vcodr4 := 0;
      vcodr5 := 0;
      vcodr6 := 99999;
      vcct := 0;

      fSql(1,1,['Select co.prodcod, cf.descricao, Sum(co.Valor), Sum(co.Qtde)',
                '  From esvenda pp, esvendco co, cadforne cf',
                ' Where (pp.Lanc=co.Lanc) and (co.prodcod=cf.codigo)',
                '   and ('+vDat+') ',
                ' Group by co.prodcod, cf.descricao',
                ' Order by 3 desc, 1'],6);
      while not dm.qrSql1.Eof do
      begin
        inc(vcct);
        case vcct of
          1: begin
               qrlbldes1.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcodr1 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvr := vDemaisvr + ', '+IntToStr(vcodr1);
             end;
          2: begin
               qrlbldes2.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcodr2 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvr := vDemaisvr + ', '+IntToStr(vcodr2);
             end;
          3: begin
               qrlbldes3.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcodr3 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvr := vDemaisvr + ', '+IntToStr(vcodr3);
             end;
          4: begin
               qrlbldes4.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcodr4 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvr := vDemaisvr + ', '+IntToStr(vcodr4);
             end;
          5: begin
               qrlbldes5.Caption := Copy(dm.qrSql1.Fields[1].asString, 1, 10);
               vcodr5 := dm.qrSql1.Fields[0].asInteger;
               vDemaisvr := vDemaisvr + ', '+IntToStr(vcodr5);
             end;
          6: begin
               dm.qrSql1.Last;
               break;
             end;
        end;

        dm.qrSql1.Next;
      end;

      vDemaisvr := vDemaisvr + '))';

      QRLabel16.Caption:='Resumo monta carga no '+vperiodo;
      qrVenda.Close; qrProdu.Close;

      qrProdu.Sql.Strings[0]:='Select Sum(co.valor), Sum(co.Qtde)';
      qrProdu.Sql.Strings[1]:='FROM esvenda pp, esvendco co ';
      qrProdu.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') ';

      qrVenda.Sql.Strings[0]:='SELECT co.CODIGO, SUM(co.valor) AS VL, SUM(co.Qtde) AS QT';
      qrVenda.Sql.Strings[1]:='FROM esvenda pp, esvendco co ';
      qrVenda.Sql.Strings[2]:='Where pp.Lanc=co.Lanc and ('+vDat+') ';
      qrVenda.Sql.Strings[3]:='GROUP BY CO.CODIGO';

      QRSubDetail2.Height:=13;
      ChildBand2.Color:=$00FFC4C4;
      vclresvr:='N';
      vclgervr:='S';
      vcustovr:= dm.TEmpresa.FieldByName('Tributo3').asFloat;
      qrVenda.Open;
      qrProdu.Open;
      PrinterSettings.PrinterIndex := fImpr('Imp2');
      if qrVenda.RecordCount<1 then ShowMessage('Sem Dados...')
      else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
    end;
  end;
end;


procedure TFfrmRelMontaCarga.CB3Click(Sender: TObject);
begin
  DBLCBox1.Visible:=False;
  SBP1.Tag:=2; SBP2.Tag:=22;
  if CB5.Checked then DBLCBox1.Visible:=True;
  if CB3.Checked then begin SBP1.Tag:=1; SBP2.Tag:=11; end;
  Ed1.SetFocus;
end;

end.





