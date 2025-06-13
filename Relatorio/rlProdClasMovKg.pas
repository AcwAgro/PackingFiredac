unit rlProdClasMovKg;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrProdClasMovKg = class(TQuickRep)
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
    QRDBText12: TQRDBText;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel61: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
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
  qrProdClasMovKg: TqrProdClasMovKg;
  vqt1k,vqt3k,vqt11k,vqt33k,vtqt1k,vtqt3k,vcqt1k,vcqt3k:Double;
  vqtck,vqtvk:Real;
  vsomak,vclok,vcatk,vgruk,vvark,vcatdesk:Integer;
  vlcgerk,vcodigk:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrProdClasMovKg.QuickRepPreview(Sender: TObject);
begin
  QRSubDetail2.Height := 0;
  ChildBand2.Height := 0;
  ChildBand2.Color:=$00FFE6E6;
  ChildBand3.Color:=$00FFD9D9;
  ChildBand4.Color:=$00FFC4C4;
  fPreview(Sender);
end;

procedure TqrProdClasMovKg.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRSubDetail2.Height := 0;
  ChildBand2.Height := 0;
  ChildBand2.Color:=clWhite;
  ChildBand3.Color:=clWhite;
  ChildBand4.Color:=clWhite;
end;

procedure TqrProdClasMovKg.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  if vlcgerk='N' then
  begin
     qrLabel22.Caption:=qrProdu.FieldByName('Codigo').Text+' - '+fBus(1,['Select Descricao From CadForne Where Codigo=0'+qrProdu.FieldByName('Codigo').Text],1)+vpcmLocDes;
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'      and cc.Codigo='+qrProdu.FieldByName('Codigo').Text+vpcmLoc;
     vprodutor := ' and pp.ProdCod = 0'+qrProdu.FieldByName('Codigo').Text + vDataPer+vpcmLoc;
  end else
  begin
     qrLabel22.Caption:='Todos os Produtores.'+vpcmLocDes;
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'      and cc.Codigo>0'+vpcmLoc;
     vprodutor := ' and pp.ProdCod >= 0' + vDataPer;
  end;
  qrVenda.Open;
  vcatk:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgruk:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvark:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  vclok:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,1));
  vqt1k:=0; vqt3k:=0; vqtck:=0; vqtvk:=0; vtqt1k:=0; vtqt3k:=0;
  vqt11k:=0; vqt33k:=0;
  vcqt1k:=0; vcqt3k:=0;
  fSomaCat; fSomaVar;
end;

procedure TqrProdClasMovKg.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand2.Height:=0; ChildBand3.Height:=0; ChildBand4.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then
    QRSubDetail2.Color:=clWhite
  else
    QRSubDetail2.Color:=$00E8E8E8;

  qrLabel17.Caption:=fBus(1,['Select Descricao,Unidade,CategCod From CadProdu Where Codigo=0'+qrVenda.FieldByName('ProdCod').Text],1);
  QRLabel49.Caption:=dm.qrSqlBus.FieldByName('Unidade').asString;
  vqt1k:=vqt1k+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  vqt3k:=vqt3k+qrVenda.FieldByName('Ge').asFloat;
  vqt11k:=vqt11k+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  vqt33k:=vqt33k+qrVenda.FieldByName('Ge').asFloat;
  if UpperCase(QRLabel49.Caption)='CX' then
  begin
     vtqt1k:=vtqt1k+frDeci(qrVenda.FieldByName('qt').asFloat,0);
     vcqt1k:=vcqt1k+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  end;
  vtqt3k:=vtqt3k+qrVenda.FieldByName('Ge').asFloat;
  vcqt3k:=vcqt3k+qrVenda.FieldByName('Ge').asFloat;
  if qrVenda.FieldByName('Ge').asFloat>0 then begin
    if vqtck>0 then
       qrLabel18.Caption:=FloatToStrF(qrVenda.FieldByName('Ge').asFloat/vqtck*100,ffNumber,8,2)
  end else qrLabel18.Caption:='';
  vcatk:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,3,2));
end;

procedure TqrProdClasMovKg.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel4.Caption:=FloatToStrF(vqt3k,ffNumber,14,0);
  qrLabel58.Caption:=FloatToStrF(vqt33k,ffNumber,14,0);
  qrLabel9.Caption:=FloatToStrF(vtqt3k,ffNumber,14,0);
  qrLabel63.Caption:=FloatToStrF(vcqt3k,ffNumber,14,0);
  qrLabel20.Caption:='';qrLabel59.Caption:='';
  if vqt3k>0 then begin
    if vqtvk>0 then qrLabel20.Caption:=FloatToStrF(vqt3k/vqtvk*100,ffNumber,8,2);
    if vqtvk>0 then qrLabel59.Caption:=FloatToStrF(vqt33k/vqtvk*100,ffNumber,8,2);
  end;
  vcatk:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgruk:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvark:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  vclok:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,1));
  qrVenda.Next;
  if vcatk<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4)) then
  begin
     //qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcatk),3,2)],1)+')...:';
     //ChildBand2.Height:=22;
     vqt1k:=0; vqt3k:=0;
     vqtck:=0.01; fSomaCat;
  end;
  if vgruk<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3)) then
  begin
     qrLabel61.Caption:= fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcatk),3,2)],1);
     //qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcatk),3,2)],1)+')...:';
     //ChildBand2.Height:=22;
     ChildBand3.Height:=22;
     vqt1k:=0; vqt3k:=0; vqt11k:=0; vqt33k:=0;
     vqtck:=0.01; fSomaCat;
  end;
  if vvark<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2)) then
  begin
     qrLabel7.Caption:= fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvark)],1);
     //qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvark)],1)+')...:';
     //ChildBand2.Height:=22;
     ChildBand3.Height:=22;
     ChildBand4.Height:=45;
     vqt1k:=0; vqt3k:=0; vtqt1k:=0; vtqt3k:=0;
     vqt11k:=0; vqt33k:=0;
     vqtck:=0.01; vqtvk:=0.01; fSomaVar; fSomaCat;
  end;
  if vclok<>StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,1)) then
  begin
     //qrLabel51.Caption:='Total Grupo ('+IntToStr(vclok)+')...:';
     qrLabel51.Caption:='Total Grupo';
     ChildBand4.Height:=70;
     vcqt1k:=0;vcqt3k:=0;
  end;
  if qrVenda.Eof then
  begin
     //ChildBand2.Height:=22;
     ChildBand3.Height:=22;
     ChildBand4.Height:=70;
     qrLabel61.Caption := fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcatk),3,2)],1);
     qrLabel7.Caption  := fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvark)],1);
     qrLabel51.Caption := 'Total Grupo';
     //qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvark)],1)+')';
     //qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcatk),3,2)],1)+')...:';
     //qrLabel51.Caption:='Total Grupo ('+IntToStr(vclok)+')...:';
  end else qrVenda.Prior;
end;

procedure TqrProdClasMovKg.fSomaCat;
begin
  vsomak:=0;
  vcodigk:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsomak=0 do begin
    if Copy(vcodigk,1,4)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,4) then
       vqtck:=vqtck+qrVenda.FieldByName('ge').asFloat
    else vsomak:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsomak:=1;
  end;
  qrVenda.Locate('ProdCod',vcodigk,[]);
  vsomak:=0;
end;

procedure TqrProdClasMovKg.fSomaVar;
begin
  vsomak:=0;
  vcodigk:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsomak=0 do begin
    if Copy(vcodigk,1,2)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,2) then
       vqtvk:=vqtvk+qrVenda.FieldByName('ge').asFloat
    else vsomak:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsomak:=1;
  end;
  qrVenda.Locate('ProdCod',vcodigk,[]);
  vsomak:=0;
end;



end.
