unit rlFinanDia;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrFinanDia = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel8: TQRLabel;
    qrnh1: TQRLabel;
    qrne1: TQRLabel;
    qrns1: TQRLabel;
    qrnt1: TQRLabel;
    qrnh2: TQRLabel;
    qrne2: TQRLabel;
    qrns2: TQRLabel;
    qrnt2: TQRLabel;
    qrnh3: TQRLabel;
    qrne3: TQRLabel;
    qrns3: TQRLabel;
    qrnt3: TQRLabel;
    qrnh4: TQRLabel;
    qrne4: TQRLabel;
    qrns4: TQRLabel;
    qrnt4: TQRLabel;
    qrnh5: TQRLabel;
    qrne5: TQRLabel;
    qrns5: TQRLabel;
    qrnt5: TQRLabel;
    qrnh6: TQRLabel;
    qrne6: TQRLabel;
    qrns6: TQRLabel;
    qrnt6: TQRLabel;
    qrnt7: TQRLabel;
    qrnh7: TQRLabel;
    QRLabel33: TQRLabel;
    qrne7: TQRLabel;
    qrnet: TQRLabel;
    qrnst: TQRLabel;
    qrns7: TQRLabel;
    qrntt: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape10: TQRShape;
    QRShape23: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    ChildBand3: TQRChildBand;
    QRLabel10: TQRLabel;
    QRLabel64: TQRLabel;
    qrte1: TQRLabel;
    qrtt1: TQRLabel;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape26: TQRShape;
    QRShape14: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel62: TQRLabel;
    qrte2: TQRLabel;
    qrtet: TQRLabel;
    qrtst: TQRLabel;
    qrts4: TQRLabel;
    qrts3: TQRLabel;
    qrtt2: TQRLabel;
    qrtt3: TQRLabel;
    qrtt4: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel63: TQRLabel;
    qrttt: TQRLabel;
    ChildBand4: TQRChildBand;
    QRLabel11: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel104: TQRLabel;
    QRShape25: TQRShape;
    QRShape18: TQRShape;
    qrcs1: TQRLabel;
    qrcs2: TQRLabel;
    qrcst: TQRLabel;
    qrctt: TQRLabel;
    qrct2: TQRLabel;
    qrct1: TQRLabel;
    ChildBand5: TQRChildBand;
    QRLabel12: TQRLabel;
    qrfh1: TQRLabel;
    qrfh3: TQRLabel;
    QRLabel113: TQRLabel;
    qrfet: TQRLabel;
    qrfe3: TQRLabel;
    qrfe1: TQRLabel;
    qrfs1: TQRLabel;
    qrfs3: TQRLabel;
    qrfst: TQRLabel;
    qrftt: TQRLabel;
    qrft3: TQRLabel;
    qrft1: TQRLabel;
    QRShape21: TQRShape;
    QRShape27: TQRShape;
    QRShape31: TQRShape;
    QRShape7: TQRShape;
    QRShape19: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    qrnh8: TQRLabel;
    qrne8: TQRLabel;
    qrns8: TQRLabel;
    qrnt8: TQRLabel;
    QRShape49: TQRShape;
    qrnh9: TQRLabel;
    qrne9: TQRLabel;
    qrns9: TQRLabel;
    qrnt9: TQRLabel;
    QRShape50: TQRShape;
    qrnh10: TQRLabel;
    qrne10: TQRLabel;
    qrns10: TQRLabel;
    qrnt10: TQRLabel;
    QRShape17: TQRShape;
    qrfh2: TQRLabel;
    qrfe2: TQRLabel;
    qrfs2: TQRLabel;
    qrft2: TQRLabel;
    ChildBand6: TQRChildBand;
    qrct3: TQRLabel;
    qrch3: TQRLabel;
    QRShape56: TQRShape;
    qrce3: TQRLabel;
    qrcet: TQRLabel;
    qrConta: TQuery;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape55: TQRShape;
    QRShape54: TQRShape;
    QRLabel41: TQRLabel;
    qrBanco: TQuery;
    QRShape20: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    procedure QuickRepPreview(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private

  public

  end;

var
  qrFinanDia: TqrFinanDia;
  vbrper1,vbrper2:TDateTime;
  vtgent, vtgsai: Double;


implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrFinanDia.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFinanDia.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vent,vsai,vtent,vtsai:Real; vff:Integer; vqrh,vqre,vqrs,vqrt:TQRLabel;
    vdifcod, vdifnot: String;
begin

  fSql(1,1,['Select codigo From cadnota Where rel_venda = ''S'''],1);
  vdifcod := '  and nn.Difcod in (0';
  vdifnot := '  and (not nn.Difcod in (0';
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin
    vdifcod := vdifcod +', '+ dm.qrSql1.Fields[0].asString;
    vdifnot := vdifnot +', '+ dm.qrSql1.Fields[0].asString;
    dm.qrSql1.Next;
  end;
  vdifcod := vdifcod +')';
  vdifnot := vdifnot +'))';

//*********************************** V E N D A ***********************************
  for vff:=1 to 18 do begin
    Case vff of
      1: begin vqrh:=qrfh1; vqre:=qrfe1; vqrs:=qrfs1; vqrt:=qrft1; end;
      2: begin vqrh:=qrfh2; vqre:=qrfe2; vqrs:=qrfs2; vqrt:=qrft2; end;
      3: begin vqrh:=qrfh3; vqre:=qrfe3; vqrs:=qrfs3; vqrt:=qrft3; end;
      4: begin vqrh:=qrnh1; vqre:=qrne1; vqrs:=qrns1; vqrt:=qrnt1; end;
      5: begin vqrh:=qrnh2; vqre:=qrne2; vqrs:=qrns2; vqrt:=qrnt2; end;
      6: begin vqrh:=qrnh3; vqre:=qrne3; vqrs:=qrns3; vqrt:=qrnt3; end;
      7: begin vqrh:=qrnh4; vqre:=qrne4; vqrs:=qrns4; vqrt:=qrnt4; end;
      8: begin vqrh:=qrnh5; vqre:=qrne5; vqrs:=qrns5; vqrt:=qrnt5; end;
      9: begin vqrh:=qrnh6; vqre:=qrne6; vqrs:=qrns6; vqrt:=qrnt6; end;
     10: begin vqrh:=qrnh7; vqre:=qrne7; vqrs:=qrns7; vqrt:=qrnt7; end;
     11: begin vqrh:=qrnh8; vqre:=qrne8; vqrs:=qrns8; vqrt:=qrnt8; end;
     12: begin vqrh:=qrnh9; vqre:=qrne9; vqrs:=qrns9; vqrt:=qrnt9; end;
     13: begin vqrh:=qrnh10; vqre:=qrne10; vqrs:=qrns10; vqrt:=qrnt10; end;
    end;
    vqrh.Caption:='';vqre.Caption:='';vqrs.Caption:='';vqrt.Caption:='';
  end;
// Venda à Vista
  fSql(1,1,['Select Sum(bb.Valor) From NFVENDA nn, FIPAVE bb',
            'Where (nn.Lanc=bb.Lanc) '+vdifcod+' and (bb.BanCod=1 or bb.BanCod=2)'+
            ' and (nn.Data>'+frInvD(vbrper1-1)+' and nn.Data<'+frInvD(vbrper2+1)+')'],2);
  vqrh:=qrfh1; vqre:=qrfe1; vqrs:=qrfs1; vqrt:=qrft1;
  vqrh.Caption:=vqrh.Caption+' à Vista';
  vent:=vent+dm.qrSql1.Fields[0].asFloat;
  vqre.Caption:=FloatToStrF(vent,ffNumber,10,2);
  vqrs.Caption:=FloatToStrF(0,ffNumber,10,2);
  vqrt.Caption:=FloatToStrF(vent,ffNumber,10,2);
  vtent:=vent;
// Venda à Prazo
  fSql(1,1,['Select Sum(bb.Valor) From NFVENDA nn, FIPAVE bb',
            'Where (nn.Lanc=bb.Lanc) '+vdifcod+' and (bb.BanCod<>1 and bb.BanCod<>2)'+
            ' and (nn.Data>'+frInvD(vbrper1-1)+' and nn.Data<'+frInvD(vbrper2+1)+')'],2);
  vqrh:=qrfh2; vqre:=qrfe2; vqrs:=qrfs2; vqrt:=qrft2;
  vqrh.Caption:=vqrh.Caption+' à Prazo';
  vent:=dm.qrSql1.Fields[0].asFloat;
  vqre.Caption:=FloatToStrF(vent,ffNumber,10,2);
  vqrs.Caption:=FloatToStrF(0,ffNumber,10,2);
  vqrt.Caption:=FloatToStrF(vent,ffNumber,10,2);
  vtent:=vtent+vent;
// Outras Notas
  fSql(1,1,['Select Sum(bb.Valor) From NFVENDA nn, FIPAVE bb',
            'Where (nn.Lanc=bb.Lanc)  '+vdifnot+
            ' and (nn.Data>'+frInvD(vbrper1-1)+' and nn.Data<'+frInvD(vbrper2+1)+')'],2);
  vqrh:=qrfh3; vqre:=qrfe3; vqrs:=qrfs3; vqrt:=qrft3;
  vqrh.Caption:='Outras Notas';
  vsai:=dm.qrSql1.Fields[0].asFloat;
  vqre.Caption:=FloatToStrF(0,ffNumber,10,2);
  vqrs.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  vqrt.Caption:=FloatToStrF(vsai*-1,ffNumber,10,2);
  vtsai:=vsai;
  qrfet.Caption:=FloatToStrF(vtent,ffNumber,10,2);
  qrfst.Caption:=FloatToStrF(vtsai,ffNumber,10,2);
  qrftt.Caption:=FloatToStrF(vtent-vtsai,ffNumber,10,2);
//*********************************** C O M P R A ***********************************
// Devolucao de Vendas
{  fSql(1,1,['Select nn.DifCod, Sum(bb.Valor) From NFVENDA nn, FIPAVE bb',
            'Where (nn.Lanc=bb.Lanc) and (nn.DifCod=4)'+
            ' and (nn.Data>'+frInvD(vbrper1-1)+' and nn.Data<'+frInvD(vbrper2+1)+')',
            'Group By nn.DifCod'],3);
  vqrh:=qrch3; vqre:=qrce3; vqrt:=qrct3;
  vqrh.Caption:='Devolução de Compras';}
  vent:=0;//dm.qrSql1.Fields[1].asFloat;
  vqre.Caption:=FloatToStrF(vent,ffNumber,10,2);
  vqrt.Caption:=FloatToStrF(vent*-1,ffNumber,10,2);
  vtent:=vent; vtsai:=0;
//Compras
  fSql(1,1,['Select Sum(bb.Valor) From NFCOMPR nn, NFCOMPFI bb',
            'Where (nn.Lanc=bb.Lanc) and (bb.BanCod=1 or bb.BanCod=2)'+
            ' and (nn.Data>'+frInvD(vbrper1-1)+' and nn.Data<'+frInvD(vbrper2+1)+')'],2);
  vqrs:=qrcs1; vqrt:=qrct1;
  vsai:=dm.qrSql1.Fields[0].asFloat;
  vqrs.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  vqrt.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  vtsai:=vsai;
  fSql(1,1,['Select Sum(bb.Valor) From NFCOMPR nn, NFCOMPFI bb',
            'Where (nn.Lanc=bb.Lanc) and (bb.BanCod<>1 and bb.BanCod<>2)'+
            ' and (nn.Data>'+frInvD(vbrper1-1)+' and nn.Data<'+frInvD(vbrper2+1)+')'],2);
  vqrs:=qrcs2; vqrt:=qrct2;
  vsai:=dm.qrSql1.Fields[0].asFloat;
  vqrs.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  vqrt.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  vtsai:=vtsai+vsai;
  qrcet.Caption:=FloatToStrF(vtent,ffNumber,10,2);
  qrcst.Caption:=FloatToStrF(vtsai,ffNumber,10,2);
  qrctt.Caption:=FloatToStrF(vtsai-vtent,ffNumber,10,2);
//*********************************** T I T U L O S ***********************************
//Titulos a receber
  fSql(1,1,['Select Sum(Valor) From FiBaiRec',
            'Where (Duplic=0 or Duplic=3) and (Pago='+QuotedStr('N')+
            ') and (Vencto>'+frInvD(vbrper1-1)+' and Vencto<'+frInvD(vbrper2+1)+')'],2);
  qrte1.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,2);
  qrtt1.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,2);
  vent:=dm.qrSql1.Fields[0].asFloat;
  fSql(1,1,['Select Sum(ValorPago) From FiBaiRec',
            'Where (Duplic=0 or Duplic=3) and (Pago='+QuotedStr('S')+
            ') and (DataPago>'+frInvD(vbrper1-1)+' and DataPago<'+frInvD(vbrper2+1)+')'],2);
  qrte2.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,2);
  qrtt2.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,2);
  vent:=vent+dm.qrSql1.Fields[0].asFloat;
//Titulos a Pagar
  fSql(1,1,['Select Sum(Valor) From FiBaiPag',
            'Where Pago='+QuotedStr('N')+' and (Vencto>'+frInvD(vbrper1-1)+
            ' and Vencto<'+frInvD(vbrper2+1)+')'],2);
  qrts3.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,2);
  qrtt3.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat*-1,ffNumber,10,2);
  vsai:=dm.qrSql1.Fields[0].asFloat;
  fSql(1,1,['Select Sum(ValorPago) From FiBaiPag',
            'Where Pago='+QuotedStr('S')+' and (DataPago>'+frInvD(vbrper1-1)+
            ' and DataPago<'+frInvD(vbrper2+1)+')'],2);
  qrts4.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,2);
  qrtt4.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat*-1,ffNumber,10,2);
  vsai:=vsai+dm.qrSql1.Fields[0].asFloat;
  qrtet.Caption:=FloatToStrF(vent,ffNumber,10,2);
  qrtst.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  qrttt.Caption:=FloatToStrF(vent-vsai,ffNumber,10,2);
//*********************************** F I N A N C E I R O ***********************************
  fSql(1,2,['Select Codigo, Descricao From CadBanco',
            'Order By Codigo'],2);
  vent:=0; vsai:=0;
  while not dm.qrSql2.Eof do begin
    Case dm.qrSql2.Fields[0].asInteger of
      0: begin vqrh:=qrnh1; vqre:=qrne1; vqrs:=qrns1; vqrt:=qrnt1; end;
      1: begin vqrh:=qrnh2; vqre:=qrne2; vqrs:=qrns2; vqrt:=qrnt2; end;
      2: begin vqrh:=qrnh3; vqre:=qrne3; vqrs:=qrns3; vqrt:=qrnt3; end;
      3: begin vqrh:=qrnh4; vqre:=qrne4; vqrs:=qrns4; vqrt:=qrnt4; end;
      4: begin vqrh:=qrnh5; vqre:=qrne5; vqrs:=qrns5; vqrt:=qrnt5; end;
      5: begin vqrh:=qrnh6; vqre:=qrne6; vqrs:=qrns6; vqrt:=qrnt6; end;
      6: begin vqrh:=qrnh7; vqre:=qrne7; vqrs:=qrns7; vqrt:=qrnt7; end;
      7: begin vqrh:=qrnh8; vqre:=qrne8; vqrs:=qrns8; vqrt:=qrnt8; end;
      8: begin vqrh:=qrnh9; vqre:=qrne9; vqrs:=qrns9; vqrt:=qrnt9; end;
      9: begin vqrh:=qrnh10; vqre:=qrne10; vqrs:=qrns10; vqrt:=qrnt10; end;
    end;

    fSql(1,1,['Select BancoCod,BancoDes,Formar,Sum(Valor) From CxBanco',
              'Where (Data>'+frInvD(vbrper1-1)+' and Data<'+frInvD(vbrper2+1)+')',
              '  and (BancoCod = 0'+ dm.qrSql2.Fields[0].AsString +')',
              'Group By BancoCod,BancoDes,Formar'],4);
  //            'Where Baixa='+QuotedStr('S')+' and (Data>'+frInvD(vbrper1-1)+' and Data<'+frInvD(vbrper2+1)+')',

    vqrh.Caption:=IntToStr(dm.qrSql2.Fields[0].asInteger)+'-'+Trim(dm.qrSql2.Fields[1].Text);

    if UpperCase(dm.qrSql1.Fields[2].Text)='E' then begin
       vqre.Caption:=FloatToStrF(dm.qrSql1.Fields[3].asFloat,ffNumber,10,2);
       vqrt.Caption:=FloatToStrF(dm.qrSql1.Fields[3].asFloat,ffNumber,10,2);
       vent:=vent+dm.qrSql1.Fields[3].asFloat;
    end else begin
       vqrs.Caption:=FloatToStrF(dm.qrSql1.Fields[3].asFloat,ffNumber,10,2);
       vqrt.Caption:=FloatToStrF(dm.qrSql1.Fields[3].asFloat*-1,ffNumber,10,2);
       vsai:=vsai+dm.qrSql1.Fields[3].asFloat;
    end;

    dm.qrSql2.Next;

  end;
  qrnet.Caption:=FloatToStrF(vent,ffNumber,10,2);
  qrnst.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  qrntt.Caption:=FloatToStrF(vent-vsai,ffNumber,10,2);

  vtgent:=0;
  vtgsai:=0;

end;

procedure TqrFinanDia.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vent,vsai:Real; vcc:Integer;
begin

  qrBanco.Close;
  qrBanco.Sql.Strings[2]:='Where (Data>'+frInvD(vbrper1-1)+' and Data<'+frInvD(vbrper2+1)+')'+
                          ' and Formar ='+QuotedStr('E')+
                          ' and Reduz = 0'+qrConta.Fields[2].Text;

  qrBanco.Open;
  vent:=qrBanco.Fields[0].asFloat;
  qrBanco.Close;
  qrBanco.Sql.Strings[2]:='Where (Data>'+frInvD(vbrper1-1)+' and Data<'+frInvD(vbrper2+1)+')'+
                          ' and Formar='+QuotedStr('S')+
                          ' and Reduz = 0'+qrConta.Fields[2].Text;

  qrBanco.Open;
  vsai:=qrBanco.Fields[0].asFloat*-1;

  qrLabel13.Caption:=FloatToStrF(vent,ffNumber,10,2);
  qrLabel14.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  qrLabel15.Caption:= FloatToStrF(vent-vsai,ffNumber,10,2);

  vtgent:=vtgent+vent;
  vtgsai:=vtgsai+vsai;

  qrLabel21.Caption:=FloatToStrF(vtgent,ffNumber,10,2);
  qrLabel22.Caption:=FloatToStrF(vtgsai,ffNumber,10,2);
  qrLabel23.Caption:= FloatToStrF(vtgent-vtgsai,ffNumber,10,2);

end;

end.
