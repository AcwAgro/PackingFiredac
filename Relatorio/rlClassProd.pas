unit rlClassProd;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrClassProd = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    qrProdu: TQuery;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel33: TQRLabel;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel61: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    procedure fSomaCat;
    procedure fSomaVar;
  public
    vDataPer,vcploc,vcplocdes: String;
  end;

var
  qrClassProd: TqrClassProd;
  vccope,vccinv,vqt1,vqt3,vqt11,vqt33,vtqt1,vtqt3,vcqt1,vcqt3:Double;
  vscem,vscop,vscva,vscin,vgcem,vgcop,vgcva,vgcin,vtcem,vtcop,vtcva,vtcin,vccem,vccop,vccva,vccin:Double;
  vqtc,vqtv,vval,vgval,vtval,vcval:Real;
  vsoma,vclo,vcat,vgru,vvar,vcatdes:Integer;
  vccres,vccger,vcodig,vprodutor:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrClassProd.QuickRepPreview(Sender: TObject);
begin
  ChildBand2.Color:=$00FFE6E6;
  ChildBand3.Color:=$00FFD9D9;
  ChildBand4.Color:=$00FFC4C4;
  fPreview(Sender);
end;

procedure TqrClassProd.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ChildBand2.Color:=clWhite;
  ChildBand3.Color:=clWhite;
  ChildBand4.Color:=clWhite;
end;

procedure TqrClassProd.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  if vccger='N' then begin
     qrLabel22.Caption:=qrProdu.FieldByName('Codigo').Text+' - '+fBus(1,['Select Descricao From CadForne Where Codigo=0'+qrProdu.FieldByName('Codigo').Text],1)+vcplocdes;
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'            and pp.Codigo=0'+qrProdu.FieldByName('Codigo').Text+vcploc;
     vprodutor := ' and pp.ProdCod = 0'+qrProdu.FieldByName('Codigo').Text + vDataPer;
  end else begin
     qrLabel22.Caption:='Todos os Produtores.'+vcplocdes;
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'        and pp.Codigo>0'+vcploc;
     vprodutor := ' and pp.ProdCod >= 0' + vDataPer;
  end;
  qrVenda.Open;
  vcat:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,4),0);
  vgru:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,3),0);
  vvar:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,2),0);
  vclo:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,1),0);
  vqt1:=0; vqt3:=0; vqtc:=0; vqtv:=0; vtqt1:=0; vtqt3:=0; vval:=0; vgval:=0; vtval:=0;
  vscem:=0; vscop:=0; vscva:=0; vscin:=0; vtcem:=0; vtcop:=0; vtcva:=0; vtcin:=0;
  vqt11:=0; vqt33:=0; vgcem:=0;vgcop:=0;vgcin:=0;
  vcval:=0;vcqt1:=0;vcqt3:=0;vccem:=0;vccop:=0;vccva:=0;vccin:=0;
  fSomaCat; fSomaVar;
end;

procedure TqrClassProd.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vccemb,vcem,vcop,vcin,vcva:Double; vcdcat:Integer;
    vprmedio: Double;
begin
  ChildBand2.Height:=0; ChildBand3.Height:=0; ChildBand4.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then QRSubDetail2.Color:=clWhite
  else QRSubDetail2.Color:=$00E8E8E8;
  qrLabel17.Caption:=fBus(1,['Select Descricao,Unidade, CategCod, custofg, custoope, custoemb, custoluc From CadProdu Where Codigo=0'+qrVenda.FieldByName('ProdCod').Text],1);
  QRLabel49.Caption:=dm.qrSqlBus.FieldByName('Unidade').asString;
  if UpperCase(QRLabel49.Caption)='CX' then qrLabel50.Caption:=FloatToStrF(qrVenda.FieldByName('qt').asFloat,ffNumber,10,0)
  else qrLabel50.Caption:='';
  vcdcat:=dm.qrSqlBus.FieldByName('CategCod').asInteger;
  vqt1:=vqt1+qrVenda.FieldByName('qt').asFloat;
  vqt3:=vqt3+qrVenda.FieldByName('Ge').asFloat;
  vqt11:=vqt11+qrVenda.FieldByName('qt').asFloat;
  vqt33:=vqt33+qrVenda.FieldByName('Ge').asFloat;
  if UpperCase(QRLabel49.Caption)='CX' then begin
     vtqt1:=vtqt1+qrVenda.FieldByName('qt').asFloat;
     vcqt1:=vcqt1+qrVenda.FieldByName('qt').asFloat;
  end;
  vtqt3:=vtqt3+qrVenda.FieldByName('Ge').asFloat;
  vcqt3:=vcqt3+qrVenda.FieldByName('Ge').asFloat;

  vprmedio := frDeci(qrVenda.FieldByName('pr').asFloat,2);

  vval:=vval+(qrVenda.FieldByName('qt').asFloat*vprmedio);//qrVenda.FieldByName('pr').asFloat);
  vgval:=vgval+(qrVenda.FieldByName('qt').asFloat*vprmedio);//qrVenda.FieldByName('pr').asFloat);
  vtval:=vtval+(qrVenda.FieldByName('qt').asFloat*vprmedio);//qrVenda.FieldByName('pr').asFloat);
  vcval:=vcval+(qrVenda.FieldByName('qt').asFloat*vprmedio);//qrVenda.FieldByName('pr').asFloat);
  if qrVenda.FieldByName('Ge').asFloat>0 then begin
    if vqtc>0 then
       qrLabel18.Caption:=FloatToStrF(qrVenda.FieldByName('Ge').asFloat/vqtc*100,ffNumber,8,2)
  end else qrLabel18.Caption:='';
//calculo custo
  vcat:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,3,2),0);
  if (vprmedio > 0) then
  begin
    if (dm.qrSqlBus.FieldByName('CustoFG').asString = 'S') then
    begin
      vccemb := dm.qrSqlBus.FieldByName('CustoEmb').asFloat;
      vcem:=vccemb*qrVenda.FieldByName('Ge').asFloat;
      vcat:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,2),0);
      vccope :=dm.qrSqlBus.FieldByName('CustoOpe').asFloat;
      vccinv :=dm.qrSqlBus.FieldByName('CustoLuc').asFloat;
    end
    else begin

      fSql(1,3,['Select Val1 From CadCategCus Where Lanc = 0' +IntToStr(xCategCustoLanc)+ ' and Codigo=0'+IntToStr(vcat)],1);
      vccemb:=dm.qrSql3.FieldByName('Val1').asFloat;
      vcem:=vccemb*qrVenda.FieldByName('Ge').asFloat;
      vcat:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,2),0);
      fSql(1,3,['Select Val1,Val2 From CadVarieCus Where Lanc = 0' +IntToStr(xVarieCustoLanc)+ ' and Codigo=0'+IntToStr(vcat)],1);
      vccope:=dm.qrSql3.FieldByName('Val1').asFloat;
      vccinv:=dm.qrSql3.FieldByName('Val2').asFloat;

    end;

    vcop:=vccope*qrVenda.FieldByName('Ge').asFloat;
//  qrLabel30.Caption:=FloatToStrF(vcop,ffNumber,10,2);
    vcva:=qrVenda.FieldByName('qt').asFloat*vprmedio;//qrVenda.FieldByName('pr').asFloat;
    vcin:=(vcva-vcem-vcop)*vccinv/100;
  end else begin
    vcem:=0; vcin:=0; vcop:=0;
  end;
//  qrLabel28.Caption:=FloatToStrF(vcem,ffNumber,10,2);
//  qrLabel31.Caption:=FloatToStrF(vcin,ffNumber,10,2);
//Resultado
  qrLabel32.Caption:=FloatToStrF(vcva-vcem-vcop-vcin,ffNumber,10,2);
  if qrVenda.FieldByName('Ge').asFloat>0 then
     qrLabel34.Caption:=FloatToStrF((vcva-vcem-vcop-vcin)/qrVenda.FieldByName('Ge').asFloat,ffNumber,10,3);
  vscem:=vscem+vcem;
  vscop:=vscop+vcop;
  vscin:=vscin+vcin;
//  qrLabel35.Caption:=FloatToStrF(vscem,ffNumber,10,2);
//  qrLabel36.Caption:=FloatToStrF(vscop,ffNumber,10,2);
//  qrLabel37.Caption:=FloatToStrF(vscin,ffNumber,10,2);
  qrLabel38.Caption:=FloatToStrF(vval-vscem-vscop-vscin,ffNumber,10,2);
  if vqt3>0 then qrLabel39.Caption:=FloatToStrF((vval-vscem-vscop-vscin)/vqt3,ffNumber,10,3);
  vgcem:=vgcem+vcem;
  vgcop:=vgcop+vcop;
  vgcin:=vgcin+vcin;
//  qrLabel55.Caption:=FloatToStrF(vgcem,ffNumber,10,2);
//  qrLabel54.Caption:=FloatToStrF(vgcop,ffNumber,10,2);
//  qrLabel53.Caption:=FloatToStrF(vgcin,ffNumber,10,2);
  qrLabel52.Caption:=FloatToStrF(vgval-vgcem-vgcop-vgcin,ffNumber,10,2);
  if vqt3>0 then qrLabel29.Caption:=FloatToStrF((vgval-vgcem-vgcop-vgcin)/vqt33,ffNumber,10,3);
  vtcem:=vtcem+vcem;
  vtcop:=vtcop+vcop;
  vtcin:=vtcin+vcin;
  vccem:=vccem+vcem;
  vccop:=vccop+vcop;
  vccin:=vccin+vcin;
//  qrLabel40.Caption:=FloatToStrF(vtcem,ffNumber,10,2);
//  qrLabel41.Caption:=FloatToStrF(vtcop,ffNumber,10,2);
//  qrLabel42.Caption:=FloatToStrF(vtcin,ffNumber,10,2);
  qrLabel43.Caption:=FloatToStrF(vtval-vtcem-vtcop-vtcin,ffNumber,10,2);
//  qrLabel66.Caption:=FloatToStrF(vccem,ffNumber,10,2);
//  qrLabel67.Caption:=FloatToStrF(vccop,ffNumber,10,2);
//  qrLabel68.Caption:=FloatToStrF(vccin,ffNumber,10,2);
  qrLabel69.Caption:=FloatToStrF(vcval-vccem-vccop-vccin,ffNumber,10,2);
  if vtqt3>0 then begin
     qrLabel44.Caption:=FloatToStrF((vtval-vtcem-vtcop-vtcin)/vtqt3,ffNumber,10,3);
     qrLabel70.Caption:=FloatToStrF((vcval-vccem-vccop-vccin)/vcqt3,ffNumber,10,3);
//     qrLabel45.Caption:=FloatToStrF(vtcem/vtqt3,ffNumber,10,3);
//     qrLabel46.Caption:=FloatToStrF(vtcop/vtqt3,ffNumber,10,3);
//     qrLabel47.Caption:=FloatToStrF(vtcin/vtqt3,ffNumber,10,3);
  end;
end;

procedure TqrClassProd.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if UpperCase(QRLabel49.Caption)='CX' then qrLabel13.Caption:=FloatToStrF(vqt1,ffNumber,14,0)
  else qrLabel13.Caption:='';
  if UpperCase(QRLabel49.Caption)='CX' then qrLabel60.Caption:=FloatToStrF(vqt11,ffNumber,14,0)
  else qrLabel60.Caption:='';
  qrLabel4.Caption:=FloatToStrF(vqt3,ffNumber,14,0);
  qrLabel58.Caption:=FloatToStrF(vqt33,ffNumber,14,0);
  qrLabel10.Caption:=FloatToStrF(vtqt1,ffNumber,14,0);
  qrLabel62.Caption:=FloatToStrF(vcqt1,ffNumber,14,0);
  qrLabel9.Caption:=FloatToStrF(vtqt3,ffNumber,14,0);
  qrLabel63.Caption:=FloatToStrF(vcqt3,ffNumber,14,0);
//  qrLabel12.Caption:=FloatToStrF(vval,ffNumber,14,2);
//  qrLabel56.Caption:=FloatToStrF(vgval,ffNumber,14,2);
//  qrLabel15.Caption:=FloatToStrF(vtval,ffNumber,14,2);
//  qrLabel65.Caption:=FloatToStrF(vcval,ffNumber,14,2);
  qrLabel20.Caption:='';qrLabel59.Caption:='';
  if vqt3>0 then begin
//    qrLabel11.Caption:=FloatToStrF(vval/vqt3,ffNumber,14,3);
//    qrLabel57.Caption:=FloatToStrF(vgval/vtqt3,ffNumber,14,3);
//    qrLabel14.Caption:=FloatToStrF(vtval/vtqt3,ffNumber,14,3);
//    qrLabel64.Caption:=FloatToStrF(vcval/vcqt3,ffNumber,14,3);
    if vqtv>0 then qrLabel20.Caption:=FloatToStrF(vqt3/vqtv*100,ffNumber,8,2);
    if vqtv>0 then qrLabel59.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2);
  end;
  vcat:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,4),0);
  vgru:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,3),0);
  vvar:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,2),0);
  vclo:=StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,1),0);
  qrVenda.Next;
  if vcat<>StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,4),0) then begin
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22;
     vqt1:=0; vqt3:=0; vval:=0; vscem:=0; vscop:=0; vscva:=0; vscin:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vgru<>StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,3),0) then begin
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22; ChildBand3.Height:=22;
     vqt1:=0; vqt3:=0; vqt11:=0; vqt33:=0; vval:=0; vgval:=0; vgcem:=0; vgcop:=0; vgcva:=0; vgcin:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vvar<>StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,2),0) then begin
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     //totaliza qtde de bins
     qrLabel71.Caption := 'Qtde.: '+FormatFloat('#,0.###', StrToFloatDef(fBus(1,['Select sum(pp.qtdebin) FROM roman rr, romanpro pp '+
                                                                                   'Where (rr.lanc = pp.lanc) ' +vprodutor+' and rr.VarieCod = 0'+IntToStr(vvar)+vcploc],1),0));
     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=22;
     vqt1:=0; vqt3:=0; vtqt1:=0; vtqt3:=0; vval:=0; vgval:=0; vtval:=0;
     vscem:=0; vscop:=0; vscva:=0; vscin:=0; vtcem:=0; vtcop:=0; vtcva:=0; vtcin:=0;
     vqt11:=0; vqt33:=0; vgcem:=0;vgcop:=0;vgcin:=0;
     vqtc:=0.01; vqtv:=0.01; fSomaVar; fSomaCat;
  end;
  if vclo<>StrToIntDef(Copy(qrVenda.FieldByname('ProdCod').Text,1,1),0) then begin
     qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
     //totaliza qtde de bins
     qrLabel5.Caption := 'Qtde.: '+FormatFloat('#,0.###', StrToFloatDef(fBus(1,['Select sum(pp.qtdebin) FROM roman rr, romanpro pp '+
                                                                                  'Where (rr.lanc = pp.lanc) ' +vprodutor+' and SubString(rr.VarieCod from 1 for 1) = 0'+IntToStr(vclo)+vcploc],1),0));
     ChildBand4.Height:=70;
     vcval:=0;vcqt1:=0;vcqt3:=0;vccem:=0;vccop:=0;vccva:=0;vccin:=0;
  end;
  if qrVenda.Eof then begin
     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=70;
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
     //totaliza qtde de bins
     qrLabel71.Caption := 'Qtde.: '+FormatFloat('#,0.###', StrToFloatDef(fBus(1,['Select sum(pp.qtdebin) FROM roman rr, romanpro pp '+
                                                                                   'Where (rr.lanc = pp.lanc) ' +vprodutor+' and rr.VarieCod = 0'+IntToStr(vvar)+vcploc],1),0));
     qrLabel5.Caption := 'Qtde.: '+FormatFloat('#,0.###', StrToFloatDef(fBus(1,['Select sum(pp.qtdebin) FROM roman rr, romanpro pp '+
                                                                                  'Where (rr.lanc = pp.lanc) ' +vprodutor+' and SubString(rr.VarieCod from 1 for 1) = 0'+IntToStr(vclo)+vcploc],1),0));
  end else qrVenda.Prior;
end;

procedure TqrClassProd.fSomaCat;
begin
  vsoma:=0;
  vcodig:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vcodig,1,4)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,4) then
       vqtc:=vqtc+qrVenda.FieldByName('ge').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('ProdCod',vcodig,[]);
  vsoma:=0;
end;

procedure TqrClassProd.fSomaVar;
begin
  vsoma:=0;
  vcodig:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vcodig,1,2)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,2) then
       vqtv:=vqtv+qrVenda.FieldByName('ge').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('ProdCod',vcodig,[]);
  vsoma:=0;
end;



end.
