unit rlBancoSal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrBancoSal = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    qrBanco: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    qrSaldo: TQuery;
    qrConta: TQuery;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape2: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape3: TQRShape;
    QRLabel53: TQRLabel;
    QRShape4: TQRShape;
    QRLabel54: TQRLabel;
    QRShape5: TQRShape;
    QRLabel55: TQRLabel;
    QRShape6: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRShape7: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrBancoSal: TqrBancoSal;
  vrec:Integer;
  vbsper:TDateTime;
  vper0,vper1,vper2,vper3,vper4,vper5,vper6:String;
  vtbb,vban,vlim,vf0,vf1,vf2,vf3,vf4,vf5,vf6,vtb,vtr,vtp:Real;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrBancoSal.QuickRepPreview(Sender: TObject);
begin
  vrec:=0;vban:=0;vlim:=0;vtbb:=0;
  fPreview(Sender);
end;

procedure TqrBancoSal.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vrec:=0;vban:=0;vlim:=0;vtbb:=0;
end;

procedure TqrBancoSal.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vreal:Real;
begin
//Baixados
  fBar(1,5,'Contas Baixadas...');
  qrSaldo.Close; qrSaldo.Sql.Clear;
  qrSaldo.SQL.Add('Select BancoCod, Sum(ValorReal)');
  qrSaldo.SQL.Add('From CxBanco');
//  qrSaldo.SQL.Add('Where Baixa='+QuotedStr('S')+' and BancoCod='+qrBanco.Fields[0].Text+' and Vencto<='+frInvD(vbsper+6));
  qrSaldo.SQL.Add('Where BancoCod='+qrBanco.Fields[0].Text+' and Vencto < '+frInvD(vbsper+1));
  qrSaldo.SQL.Add('Group By BancoCod');
  qrSaldo.Open;
  vreal:=qrSaldo.Fields[1].asFloat;
//Em aberto
//  fBar(2,5,'Contas em Aberto...');
//  qrSaldo.Close;
//  qrSaldo.SQL.Strings[2]:='Where Baixa='+QuotedStr('N')+' and BancoCod='+qrBanco.Fields[0].Text+' and Vencto<='+frInvD(vbsper+6);
//  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrBanco.Fields[0].Text+' and Vencto<='+frInvD(vbsper+6);
//  qrSaldo.Open;
//  vreal:=vreal+qrSaldo.Fields[1].asFloat;
  vtbb:=vtbb+vreal;
  vban:=vban+vreal;
  vlim:=vlim+vreal+qrBanco.FieldByName('Limite').asFloat;
  qrLabel4.Caption:=FloatToStrF(vreal,ffCurrency,14,2);
  qrLabel51.Caption:=FloatToStrF(vreal+qrBanco.FieldByName('Limite').asFloat,ffCurrency,14,2);
  qrLabel1.Caption:=FloatToStrF(vtbb,ffCurrency,14,2);
  qrLabel52.Caption:=FloatToStrF(vlim,ffCurrency,14,2);
  //Não deve mais acumular
  vban := 0;
end;

procedure TqrBancoSal.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  fBar(3,5,'Calcula Bancos...');
  qrLabel5.Caption:=DateToStr(vbsper+1)+' à '+DateToStr(vbsper+6);
  qrLabel8.Caption:=DateToStr(vbsper+7)+' à '+DateToStr(vbsper+13);
  qrLabel9.Caption:=DateToStr(vbsper+14)+' à '+DateToStr(vbsper+20);
  qrLabel15.Caption:=DateToStr(vbsper+21)+' à '+DateToStr(vbsper+27);
  qrLabel14.Caption:=DateToStr(vbsper+28)+' à '+DateToStr(vbsper+34);
  qrLabel13.Caption:='Período posterior'; //DateToStr(vbsper+35)+' à frente ';
//  qrLabel13.Caption:=DateToStr(vbsper+35)+' à '+DateToStr(vbsper+1000);
  vper0:=' and (Vencto<'+frInvD(vbsper+1)+')';
  vper1:=' and (Vencto>='+frInvD(vbsper+1)+' and Vencto<'+frInvD(vbsper+7)+')';
  vper2:=' and (Vencto>='+frInvD(vbsper+7)+' and Vencto<'+frInvD(vbsper+14)+')';
  vper3:=' and (Vencto>='+frInvD(vbsper+14)+' and Vencto<'+frInvD(vbsper+21)+')';
  vper4:=' and (Vencto>='+frInvD(vbsper+21)+' and Vencto<'+frInvD(vbsper+28)+')';
  vper5:=' and (Vencto>='+frInvD(vbsper+28)+' and Vencto<'+frInvD(vbsper+35)+')';
  vper6:=' and (Vencto>='+frInvD(vbsper+35)+' )';
//  vper6:=' and (Vencto>='+frInvD(vbsper+35)+' and Vencto<'+frInvD(vbsper+42)+')';
  vf0:=0;vf1:=0;vf2:=0;vf3:=0;vf4:=0;vf5:=0;vf6:=0;
end;

procedure TqrBancoSal.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vpag:String;
begin
  vtb:=0;
  vpag:='';//' and Baixa='+QuotedStr('N');
//  QRSubDetail1.Height:=0;
  qrLabel61.Caption:='';
  fBar(3,7,'Calculando...');
{  if qrConta.Fields[0].AsInteger=2 then
  begin
     QRSubDetail1.Height:=15;
//per0
     qrSaldo.Close;
     qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper0;
     qrSaldo.Open;
     qrLabel61.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
     vf0:=vf0+qrSaldo.Fields[1].asFloat;
     vtb:=vtb+qrSaldo.Fields[1].asFloat;
  end
  else if qrConta.Fields[0].AsInteger>10 then QRSubDetail1.Height:=15;}
//  if qrConta.Fields[0].AsInteger > 0 then
//  begin
     QRSubDetail1.Height:=15;
//per0
     qrSaldo.Close;
     qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper0;
     qrSaldo.Open;
     qrLabel61.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
     vf0:=vf0+qrSaldo.Fields[1].asFloat;
     vtb:=vtb+qrSaldo.Fields[1].asFloat;
//  end;
//  else if qrConta.Fields[0].AsInteger>10 then QRSubDetail1.Height:=15;}
//Per1
  fBar(4,7,'Calculando Semana 1...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper1;
  qrSaldo.Open;
  qrLabel10.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
  if QRSubDetail1.Height=15 then vf1:=vf1+qrSaldo.Fields[1].asFloat;
  vtb:=vtb+qrSaldo.Fields[1].asFloat;
//Per2
  fBar(4,7,'Calculando Semana 2...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper2;
  qrSaldo.Open;
  qrLabel11.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
  if QRSubDetail1.Height=15 then vf2:=vf2+qrSaldo.Fields[1].asFloat;
  vtb:=vtb+qrSaldo.Fields[1].asFloat;
//Per3
  fBar(4,7,'Calculando Semana 3...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper3;
  qrSaldo.Open;
  qrLabel12.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
  if QRSubDetail1.Height=15 then vf3:=vf3+qrSaldo.Fields[1].asFloat;
  vtb:=vtb+qrSaldo.Fields[1].asFloat;
//Per4
  fBar(4,7,'Calculando Semana 4...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper4;
  qrSaldo.Open;
  qrLabel17.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
  if QRSubDetail1.Height=15 then vf4:=vf4+qrSaldo.Fields[1].asFloat;
  vtb:=vtb+qrSaldo.Fields[1].asFloat;
//Per5
  fBar(4,7,'Calculando Semana 5...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper5;
  qrSaldo.Open;
  qrLabel18.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
  if QRSubDetail1.Height=15 then vf5:=vf5+qrSaldo.Fields[1].asFloat;
  vtb:=vtb+qrSaldo.Fields[1].asFloat;
//Per6
  fBar(4,7,'Calculando Semana 6...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where BancoCod='+qrConta.Fields[0].Text+vpag+vper6;
  qrSaldo.Open;
  qrLabel19.Caption:=FloatToStrF(qrSaldo.Fields[1].asFloat,ffCurrency,14,2);
  if QRSubDetail1.Height=15 then vf6:=vf6+qrSaldo.Fields[1].asFloat;
  vtb:=vtb+qrSaldo.Fields[1].asFloat;
  qrLabel63.Caption:=FloatToStrF(vtb,ffCurrency,14,2);
end;


procedure TqrBancoSal.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vtr:=0;vtp:=0;
  fBar(1,5,'Calcula à Receber...');
  qrSaldo.Close; qrSaldo.Sql.Clear;
  qrSaldo.SQL.Add('Select Sum(Valor)');
  qrSaldo.SQL.Add('From FiBaiRec, CadClien');
  qrSaldo.SQL.Add('Where fibairec.codigo=cadclien.codigo'+
                  '  and Pago='+QuotedStr('N')+vper0);
//                  ' and Duplic<>1 and Pago='+QuotedStr('N')+vper0);
//                  ' and Duplic<>1 and Cadclien.Cooper='+QuotedStr('N')+' and Pago='+QuotedStr('N')+vper0);
  qrSaldo.Open;
  qrLabel57.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf0:=vf0+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
//Per1
  fBar(3,7,'Calculando Semana 1...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibairec.codigo=cadclien.codigo'+
                          ' and Pago='+QuotedStr('N')+vper1;
  qrSaldo.Open;
  qrLabel24.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf1:=vf1+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
//Per2
  fBar(4,7,'Calculando Semana 2...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibairec.codigo=cadclien.codigo'+
                          ' and Pago='+QuotedStr('N')+vper2;
  qrSaldo.Open;
  qrLabel25.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf2:=vf2+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
//Per3
  fBar(4,7,'Calculando Semana 3...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibairec.codigo=cadclien.codigo'+
                          ' and Pago='+QuotedStr('N')+vper3;
  qrSaldo.Open;
  qrLabel26.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf3:=vf3+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
//Per4
  fBar(4,7,'Calculando Semana 4...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibairec.codigo=cadclien.codigo'+
                          ' and Pago='+QuotedStr('N')+vper4;
  qrSaldo.Open;
  qrLabel27.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf4:=vf4+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
//Per5
  fBar(4,7,'Calculando Semana 5...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibairec.codigo=cadclien.codigo'+
                          ' and Pago='+QuotedStr('N')+vper5;
  qrSaldo.Open;
  qrLabel28.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf5:=vf5+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
//Per6
  fBar(4,7,'Calculando Semana 6...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibairec.codigo=cadclien.codigo'+
                          ' and Pago='+QuotedStr('N')+vper6;
  qrSaldo.Open;
  qrLabel30.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf6:=vf6+qrSaldo.Fields[0].asFloat;
  vtr:=vtr+qrSaldo.Fields[0].asFloat;
  qrLabel64.Caption:=FloatToStrF(vtr,ffCurrency,14,2);
//Per1 *** à pagar
  fBar(1,5,'Calcula à Pagar...');
  qrSaldo.Close; qrSaldo.Sql.Clear;
  qrSaldo.SQL.Add('Select Sum(Valor)');
  qrSaldo.SQL.Add('From FiBaiPag, CadForne');
  qrSaldo.SQL.Add('Where fibaipag.codigo=cadforne.codigo'+
                  ' and Pago='+QuotedStr('N')+vper0);
//                  ' and cadforne.Cooper='+QuotedStr('N')+' and Pago='+QuotedStr('N')+vper0);
  qrSaldo.Open;
  qrLabel29.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf0:=vf0-qrSaldo.Fields[0].asFloat;
  vtp:=vtp-qrSaldo.Fields[0].asFloat;
//Per1
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibaipag.codigo=cadforne.codigo'+
                          ' and Pago='+QuotedStr('N')+vper1;
  qrSaldo.Open;
  qrLabel31.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf1:=vf1-qrSaldo.Fields[0].asFloat;
  vtp:=vtp+qrSaldo.Fields[0].asFloat;
//Per2
  fBar(3,7,'Calculando Semana 1...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibaipag.codigo=cadforne.codigo'+
                          ' and Pago='+QuotedStr('N')+vper2;
  qrSaldo.Open;
  qrLabel32.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf2:=vf2-qrSaldo.Fields[0].asFloat;
  vtp:=vtp+qrSaldo.Fields[0].asFloat;
//Per3
  fBar(4,7,'Calculando Semana 2...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibaipag.codigo=cadforne.codigo'+
                          ' and Pago='+QuotedStr('N')+vper3;
  qrSaldo.Open;
  qrLabel33.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf3:=vf3-qrSaldo.Fields[0].asFloat;
  vtp:=vtp+qrSaldo.Fields[0].asFloat;
//Per4
  fBar(4,7,'Calculando Semana 3...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibaipag.codigo=cadforne.codigo'+
                          ' and Pago='+QuotedStr('N')+vper4;
  qrSaldo.Open;
  qrLabel34.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf4:=vf4-qrSaldo.Fields[0].asFloat;
  vtp:=vtp+qrSaldo.Fields[0].asFloat;
//Per5
  fBar(4,7,'Calculando Semana 4...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibaipag.codigo=cadforne.codigo'+
                          ' and Pago='+QuotedStr('N')+vper5;
  qrSaldo.Open;
  qrLabel35.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf5:=vf5-qrSaldo.Fields[0].asFloat;
  vtp:=vtp+qrSaldo.Fields[0].asFloat;
//Per6
  fBar(4,7,'Calculando Semana 5...');
  qrSaldo.Close;
  qrSaldo.SQL.Strings[2]:='Where fibaipag.codigo=cadforne.codigo'+
                          ' and Pago='+QuotedStr('N')+vper6;
  qrSaldo.Open;
  qrLabel36.Caption:=FloatToStrF(qrSaldo.Fields[0].asFloat,ffCurrency,14,2);
  vf6:=vf6-qrSaldo.Fields[0].asFloat;
  vtp:=vtp+qrSaldo.Fields[0].asFloat;
  qrLabel65.Caption:=FloatToStrF(vtp,ffCurrency,14,2);
//Totais
  fBar(1,5,'Calcula Totais...');
  qrLabel59.Caption:=FloatToStrF(vf0,ffCurrency,14,2);
  qrLabel37.Caption:=FloatToStrF(vf1,ffCurrency,14,2);
  qrLabel39.Caption:=FloatToStrF(vf2,ffCurrency,14,2);
  qrLabel40.Caption:=FloatToStrF(vf3,ffCurrency,14,2);
  qrLabel41.Caption:=FloatToStrF(vf4,ffCurrency,14,2);
  qrLabel42.Caption:=FloatToStrF(vf5,ffCurrency,14,2);
  qrLabel43.Caption:=FloatToStrF(vf6,ffCurrency,14,2);
//Acumulado
  qrLabel44.Caption:=FloatToStrF(vban+vf1,ffCurrency,14,2);
  qrLabel45.Caption:=FloatToStrF(vban+vf1+vf2,ffCurrency,14,2);
  qrLabel46.Caption:=FloatToStrF(vban+vf1+vf2+vf3,ffCurrency,14,2);
  qrLabel47.Caption:=FloatToStrF(vban+vf1+vf2+vf3+vf4,ffCurrency,14,2);
  qrLabel48.Caption:=FloatToStrF(vban+vf1+vf2+vf3+vf4+vf5,ffCurrency,14,2);
  qrLabel49.Caption:=FloatToStrF(vban+vf1+vf2+vf3+vf4+vf5+vf6,ffCurrency,14,2);
//Acumulado+Atraso
  qrLabel58.Caption:=FloatToStrF(vban+vf0+vf1,ffCurrency,14,2);
  qrLabel66.Caption:=FloatToStrF(vban+vf0+vf1+vf2,ffCurrency,14,2);
  qrLabel67.Caption:=FloatToStrF(vban+vf0+vf1+vf2+vf3,ffCurrency,14,2);
  qrLabel68.Caption:=FloatToStrF(vban+vf0+vf1+vf2+vf3+vf4,ffCurrency,14,2);
  qrLabel69.Caption:=FloatToStrF(vban+vf0+vf1+vf2+vf3+vf4+vf5,ffCurrency,14,2);
  qrLabel70.Caption:=FloatToStrF(vban+vf0+vf1+vf2+vf3+vf4+vf5+vf6,ffCurrency,14,2);
  fBar(2,5,'');
end;

end.
