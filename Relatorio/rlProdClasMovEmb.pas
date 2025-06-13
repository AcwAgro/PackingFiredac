unit rlProdClasMovEmb;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrProdClasMovEmb = class(TQuickRep)
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
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel23: TQRLabel;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel61: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel63: TQRLabel;
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
    vDataPer,vprodutor,vpcmLoc,vpcmLocDes: String;
  end;

var
  qrProdClasMovEmb: TqrProdClasMovEmb;
  vqt1,vqt3,vqt11,vqt33,vtqt1,vtqt3,vcqt1,vcqt3,vGe:Double;
  vqtc,vqtv:Real;
  vsoma,vclo,vcat,vgru,vvar,vcatdes:Integer;
  vlcgeremb,vcodig:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrProdClasMovEmb.QuickRepPreview(Sender: TObject);
begin
  ChildBand2.Color:=$00FFE6E6;
  ChildBand3.Color:=$00FFD9D9;
  ChildBand4.Color:=$00FFC4C4;
  fPreview(Sender);
end;

procedure TqrProdClasMovEmb.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ChildBand2.Color:=clWhite;
  ChildBand3.Color:=clWhite;
  ChildBand4.Color:=clWhite;
end;

procedure TqrProdClasMovEmb.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  if vlcgeremb='N' then begin
     qrLabel22.Caption:=qrProdu.FieldByName('Codigo').Text+' - '+fBus(1,['Select Descricao From CadEmbal Where BarraCod=0'+qrProdu.FieldByName('Codigo').Text],1)+vpcmLocDes;
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'      and ee.embalCod='+qrProdu.FieldByName('Codigo').Text+vpcmLoc;
     vprodutor := ' and pp.ProdCod = 0'+qrProdu.FieldByName('Codigo').Text + vDataPer+vpcmLoc;
  end else begin
     qrLabel22.Caption:='Todos os Embaladores(as).'+vpcmLocDes;
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'      and ee.embalCod>0'+vpcmLoc;
     vprodutor := ' and pp.ProdCod >= 0' + vDataPer;
  end;
  qrVenda.Open;
  vcat:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  vclo:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,1));
  vqt1:=0; vqt3:=0; vqtc:=0; vqtv:=0; vtqt1:=0; vtqt3:=0;
  vqt11:=0; vqt33:=0;
  vcqt1:=0;vcqt3:=0;
  fSomaCat; fSomaVar;
end;

procedure TqrProdClasMovEmb.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand2.Height:=0; ChildBand3.Height:=0; ChildBand4.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then QRSubDetail2.Color:=clWhite
  else QRSubDetail2.Color:=$00E8E8E8;
  qrLabel17.Caption:=fBus(1,['Select Descricao, Unidade, CategCod, Pesoliq From CadProdu Where Codigo=0'+qrVenda.FieldByName('ProdCod').Text],1);
  QRLabel49.Caption:=dm.qrSqlBus.FieldByName('Unidade').asString;
  if UpperCase(QRLabel49.Caption)='CX' then
    qrLabel50.Caption:=FloatToStrF(qrVenda.FieldByName('qt').asFloat,ffNumber,10,0)
  else
    qrLabel50.Caption:='';
  vqt1:=vqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);

  vGE := qrVenda.FieldByName('GE').asFloat * dm.qrSqlBus.FieldByName('Pesoliq').asFloat;
  qrLabel5.Caption:=FloatToStrF(vGE,ffNumber,14,0);

  vqt3:=vqt3+vGE;//qrVenda.FieldByName('Ge').asFloat;
  vqt11:=vqt11+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  vqt33:=vqt33+vGE;//qrVenda.FieldByName('Ge').asFloat;
  if UpperCase(QRLabel49.Caption)='CX' then begin
     vtqt1:=vtqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);
     vcqt1:=vcqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  end;
  vtqt3:=vtqt3+vGE;//qrVenda.FieldByName('Ge').asFloat;
  vcqt3:=vcqt3+vGE;//qrVenda.FieldByName('Ge').asFloat;
  if qrVenda.FieldByName('QT').asFloat>0 then begin
    if vqtc>0 then
       qrLabel18.Caption:=FloatToStrF(qrVenda.FieldByName('QT').asFloat/vqtc*100,ffNumber,8,2)
  end else qrLabel18.Caption:='';
  vcat:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,3,2));
end;

procedure TqrProdClasMovEmb.ChildBand2BeforePrint(Sender: TQRCustomBand;
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
  qrLabel20.Caption:='';
  qrLabel59.Caption:='';
{
  if vqt3>0 then begin
    if vqtv>0 then qrLabel20.Caption:=FloatToStrF(vqt3/vqtv*100,ffNumber,8,2);
    if vqtv>0 then qrLabel59.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2);
  end;
}
  vcat:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  vclo:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,1));
  qrVenda.Next;
  if vcat<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4)) then begin
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22;
     vqt1:=0; vqt3:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vgru<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3)) then begin
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22; ChildBand3.Height:=22;
     vqt1:=0; vqt3:=0; vqt11:=0; vqt33:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vvar<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2)) then begin
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=22;
     vqt1:=0; vqt3:=0; vtqt1:=0; vtqt3:=0;
     vqt11:=0; vqt33:=0;
     vqtc:=0.01; vqtv:=0.01; fSomaVar; fSomaCat;
  end;
  if vclo<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,1)) then begin
     qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
     ChildBand4.Height:=70;
     vcqt1:=0;vcqt3:=0;
  end;
  if qrVenda.Eof then begin
     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=70;
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
  end else qrVenda.Prior;
end;

procedure TqrProdClasMovEmb.fSomaCat;
begin
  vsoma:=0;
  vcodig:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vcodig,1,4)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,4) then
       vqtc:=vqtc+qrVenda.FieldByName('qt').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('ProdCod',vcodig,[]);
  vsoma:=0;
end;

procedure TqrProdClasMovEmb.fSomaVar;
begin
  vsoma:=0;
  vcodig:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vcodig,1,2)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,2) then
       vqtv:=vqtv+vGE//qrVenda.FieldByName('ge').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('ProdCod',vcodig,[]);
  vsoma:=0;
end;



end.
