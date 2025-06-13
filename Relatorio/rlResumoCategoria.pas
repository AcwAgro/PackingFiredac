unit rlResumoCategoria;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  IBCustomDataSet, IBQuery, QRExport;

type
  TqrResumoCategoria = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    qrProdu: TQuery;
    ChildBand2: TQRChildBand;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel24: TQRLabel;
    ChildBand3: TQRChildBand;
    QRLabel61: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel55: TQRLabel;
    ChildBand4: TQRChildBand;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape1: TQRShape;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    procedure fSomaCat;
    procedure fSomaVar;
  public

  end;

var
  qrResumoCategoria: TqrResumoCategoria;
  vxccope,vxccinv,vqt1,vqt3,vqt11,vqt33,vtqt1,vtqt3:Double;
  vscem,vscop,vscva,vscin,vgcem,vgcop,vgcva,vgcin,vtcem,vtcop,vtcva,vtcin:Double;
  vqtc,vqtv,vval,vgval,vtval:Real;
  vsoma,vcat,vgru,vvar,vcatdes:Integer;
  vxclres2,vxclger2,vxcodig2:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrResumoCategoria.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrResumoCategoria.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  if vxclger2='N' then begin
     qrLabel22.Caption:=qrProdu.FieldByName('Codigo').Text+' - '+fBus(1,['Select Descricao From CadClien Where Codigo=0'+qrProdu.FieldByName('Codigo').Text],1);
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,195)+'      and pp.Codigo='+qrProdu.FieldByName('Codigo').Text;
  end else begin
     qrLabel22.Caption:='Todos os Clientes.';
     qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,195)+'      and pp.Codigo>1';
  end;
  qrVenda.Open;
  vcat:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,2));
  vqt1:=0; vqt3:=0; vqtc:=0; vqtv:=0; vtqt1:=0; vtqt3:=0; vval:=0; vgval:=0; vtval:=0;
  vscem:=0; vscop:=0; vscva:=0; vscin:=0; vtcem:=0; vtcop:=0; vtcva:=0; vtcin:=0;
  vqt11:=0; vqt33:=0; vgcem:=0;vgcop:=0;vgcin:=0;
  fSomaCat; fSomaVar;
end;

procedure TqrResumoCategoria.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vccemb,vcem,vcop,vcin,vcva,vdiv:Double; vcdcat:Integer; vuni: String;
begin
  ChildBand2.Height:=0; ChildBand3.Height:=0; ChildBand4.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then QRSubDetail2.Color:=clWhite
  else QRSubDetail2.Color:=$00E8E8E8;

  vuni:=fBus(1,['Select Unidade From CadProdu Where Codigo=0'+qrVenda.FieldByName('Codigo').Text],1);
  vdiv := 1;
  if uppercase(vuni) = 'KG' then
    vdiv := 18;

  vqt1:=vqt1  +(qrVenda.FieldByName('qt').asFloat / vdiv);
  vqt3:=vqt3  +qrVenda.FieldByName('Ge').asFloat;
  vqt11:=vqt11+(qrVenda.FieldByName('qt').asFloat / vdiv);
  vqt33:=vqt33+qrVenda.FieldByName('Ge').asFloat;
  vtqt1:=vtqt1+(qrVenda.FieldByName('qt').asFloat / vdiv);
  vtqt3:=vtqt3+qrVenda.FieldByName('Ge').asFloat;
  vval:=vval+(qrVenda.FieldByName('vl').asFloat);
  vgval:=vgval+(qrVenda.FieldByName('vl').asFloat);
  vtval:=vtval+(qrVenda.FieldByName('vl').asFloat);

  //calculo custo
  vcat:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,3,2));
end;

procedure TqrResumoCategoria.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel60.Caption:=FloatToStrF(vqt11,ffNumber,14,0);
  qrLabel58.Caption:=FloatToStrF(vqt33,ffNumber,14,0);
  qrLabel10.Caption:=FloatToStrF(vtqt1,ffNumber,14,0);
  qrLabel9.Caption:=FloatToStrF(vtqt3,ffNumber,14,0);
  qrLabel56.Caption:=FloatToStrF(vgval,ffNumber,14,2);
  qrLabel15.Caption:=FloatToStrF(vtval,ffNumber,14,2);
  if vqt3>0 then begin
    qrLabel57.Caption:=FloatToStrF(vgval/vqt33,ffNumber,14,3);
    qrLabel14.Caption:=FloatToStrF(vtval/vtqt3,ffNumber,14,3);
    qrLabel55.Caption:=FloatToStrF(vgval/vqt11,ffNumber,14,3);
    qrLabel40.Caption:=FloatToStrF(vtval/vtqt1,ffNumber,14,3);
    if vqtv>0 then qrLabel59.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2);
  end;
  vcat:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,2));
  qrVenda.Next;
  if vcat<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,4)) then begin
     vqt1:=0; vqt3:=0; vval:=0; vscem:=0; vscop:=0; vscva:=0; vscin:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vgru<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,3)) then begin
     qrLabel61.Caption:=fBus(1,['Select Descricao From CadClass Where Codigo=0'+Copy(IntToStr(vcat),3,1)],1);
//     ChildBand2.Height:=22;
     ChildBand3.Height:=22;
     vqt1:=0; vqt3:=0; vqt11:=0; vqt33:=0; vval:=0; vgval:=0; vgcem:=0; vgcop:=0; vgcva:=0; vgcin:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vvar<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,2)) then begin
     qrLabel7.Caption:='Total '+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1);
//     ChildBand2.Height:=22;
     ChildBand3.Height:=22; ChildBand4.Height:=45;
     vqt1:=0; vqt3:=0; vtqt1:=0; vtqt3:=0; vval:=0; vgval:=0; vtval:=0;
     vscem:=0; vscop:=0; vscva:=0; vscin:=0; vtcem:=0; vtcop:=0; vtcva:=0; vtcin:=0;
     vqt11:=0; vqt33:=0; vgcem:=0;vgcop:=0;vgcin:=0;
     vqtc:=0.01; vqtv:=0.01; fSomaVar; fSomaCat;
  end;
  if qrVenda.Eof then begin
//     ChildBand2.Height:=22;
     ChildBand3.Height:=22; ChildBand4.Height:=22;
     qrLabel61.Caption:=fBus(1,['Select Descricao From CadClass Where Codigo=0'+Copy(IntToStr(vcat),3,1)],1);
     qrLabel7.Caption :='Total '+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1);
  end else qrVenda.Prior;
end;

procedure TqrResumoCategoria.fSomaCat;
begin
  vsoma:=0;
  vxcodig2:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vxcodig2,1,4)=Copy(frPree(qrVenda.FieldByName('Codigo').Text,7,'0',0),1,4) then
       vqtc:=vqtc+qrVenda.FieldByName('ge').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('Codigo',vxcodig2,[]);
  vsoma:=0;
end;

procedure TqrResumoCategoria.fSomaVar;
begin
  vsoma:=0;
  vxcodig2:=frPree(qrVenda.Fields[0].asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vxcodig2,1,2)=Copy(frPree(qrVenda.FieldByName('Codigo').Text,7,'0',0),1,2) then
       vqtv:=vqtv+qrVenda.FieldByName('ge').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('Codigo',vxcodig2,[]);
  vsoma:=0;
end;


end.
