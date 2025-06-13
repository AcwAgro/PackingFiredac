unit rlPSPLote;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPSPLote = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrVenda: TQuery;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    DetailBand2: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    qrlQuebrades: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    ChildBand4: TQRChildBand;
    QRDBText11: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRLabel18: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    qrProdt: TQuery;
    QRLabel28: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText21: TQRDBText;
    qrlQuebra: TQRLabel;
    qrlPerc: TQRLabel;
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

  end;

var
  qrPSPLote: TqrPSPLote;
  vqt1,vqt3,vqt11,vqt33,vtqt1,vtqt3,vlqt,vlge:Double;
  vsoma,vcat,vgru,vvar:Integer;
  vqtc,vqtv,vval,vtval,vlva:Real;
  vcodig:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrPSPLote.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrPSPLote.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrVenda.First;
end;

procedure TqrPSPLote.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrProdu.FieldByname('Perca').asFloat < 0 then
  begin
    qrlQuebrades.Caption := 'Sobra...:';
    qrlQuebra.Caption := FormatFloat('#,0',qrProdu.FieldByname('Perca').asFloat * -1);
    qrlPerc.Caption := FormatFloat('#,0.00',qrProdu.FieldByname('Perec').asFloat * - 1)+'%';
  end
  else begin
    qrlQuebrades.Caption := 'Quebra...:';
    qrlQuebra.Caption := FormatFloat('#,0',qrProdu.FieldByname('Perca').asFloat);
    qrlPerc.Caption := FormatFloat('#,0.00',qrProdu.FieldByname('Perec').asFloat)+'%';
  end;

  vcat:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  vqt1:=0; vqt3:=0; vqt11:=0; vqt33:=0; vtqt1:=0; vtqt3:=0; vval:=0; vtval:=0;
  vlqt:=0; vlge:=0; vlva:=0;
  vqtc:=0; vqtv:=0;
  fSomaCat; fSomaVar;
end;

procedure TqrPSPLote.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqt1:=vqt1+qrVenda.FieldByName('qtde').asFloat;
  vqt3:=vqt3+qrVenda.FieldByName('PesoReal').asFloat;
  vqt11:=vqt11+qrVenda.FieldByName('qtde').asFloat;
  vqt33:=vqt33+qrVenda.FieldByName('PesoReal').asFloat;
  vtqt1:=vtqt1+qrVenda.FieldByName('qtde').asFloat;
  vtqt3:=vtqt3+qrVenda.FieldByName('PesoReal').asFloat;
  vlqt:=vlqt+qrVenda.FieldByName('qtde').asFloat;
  vlge:=vlge+qrVenda.FieldByName('PesoReal').asFloat;
  qrLabel1.Caption:='';qrLabel28.Caption:='';qrLabel17.Caption:='';
  if qrVenda.FieldByName('PesoReal').asFloat>0 then begin
     if vqtc>0 then qrLabel1.Caption:=FloatToStrF(qrVenda.FieldByName('PesoReal').asFloat/vqtc*100,ffNumber,8,2)+' %'
  end;
  if vqt33>0 then begin
     if vqtv>0 then qrLabel28.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2)+' %'
  end;
  if vqtv>0 then
    qrLabel17.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2)+' %';
{
  vqt1:=vqt1+qrVenda.FieldByName('qtde').asFloat;
  vqt3:=vqt3+qrVenda.FieldByName('PesoLiq').asFloat;
  vqt11:=vqt11+qrVenda.FieldByName('qtde').asFloat;
  vqt33:=vqt33+qrVenda.FieldByName('PesoLiq').asFloat;
  vtqt1:=vtqt1+qrVenda.FieldByName('qtde').asFloat;
  vtqt3:=vtqt3+qrVenda.FieldByName('PesoLiq').asFloat;
  vlqt:=vlqt+qrVenda.FieldByName('qtde').asFloat;
  vlge:=vlge+qrVenda.FieldByName('PesoLiq').asFloat;
  qrLabel1.Caption:='';qrLabel28.Caption:='';qrLabel17.Caption:='';
  if qrVenda.FieldByName('PesoLiq').asFloat>0 then begin
     if vqtc>0 then qrLabel1.Caption:=FloatToStrF(qrVenda.FieldByName('PesoLiq').asFloat/vqtc*100,ffNumber,8,2)+' %'
  end;
  if vqt33>0 then begin
     if vqtv>0 then qrLabel28.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2)+' %'
  end;
  if vqtv>0 then
    qrLabel17.Caption:=FloatToStrF(vqt33/vqtv*100,ffNumber,8,2)+' %';
}
end;

procedure TqrPSPLote.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vcat1,vgru1,vvar1:Integer;
begin
  qrLabel13.Caption:=FloatToStrF(vqt1,ffNumber,14,0);
  qrLabel4.Caption:=FloatToStrF(vqt3,ffNumber,14,0);
  qrLabel10.Caption:=FloatToStrF(vqt11,ffNumber,14,0);
  qrLabel9.Caption:=FloatToStrF(vqt33,ffNumber,14,0);
  qrLabel24.Caption:=FloatToStrF(vtqt1,ffNumber,14,0);
  qrLabel27.Caption:=FloatToStrF(vtqt3,ffNumber,14,0);
  ChildBand2.Height:=0; ChildBand3.Height:=0; QRChildBand1.Height:=0;
  vcat:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  qrVenda.Next;
  vcat1:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,4));
  vgru1:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,3));
  vvar1:=StrToInt(Copy(qrVenda.FieldByname('ProdCod').Text,1,2));
  if vcat<>vcat1 then begin
     qrLabel3.Caption:='SubCat. ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=20;
     vqt1:=0; vqt3:=0; vval:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vgru<>vgru1 then begin
     qrLabel7.Caption:='SubGrupo ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand3.Height:=20;
     vqt1:=0; vqt3:=0; vqt11:=0; vqt33:=0; vval:=0;
     vqtc:=0.01; fSomaCat;
  end;
  if vvar<>vvar1 then begin
     qrLabel22.Caption:='Total Variedade ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     ChildBand2.Height:=20; ChildBand3.Height:=20; QRChildBand1.Height:=20;
     vqt1:=0; vqt3:=0; vqt11:=0; vqt33:=0; vval:=0; vtqt1:=0; vtqt3:=0; vtval:=0;
     vlqt:=0; vlge:=0; vlva:=0;
     vqtc:=0.01; vqtv:=0.01; fSomaVar; fSomaCat;
  end;
  Application.ProcessMessages;
  if qrVenda.Eof then begin
     ChildBand2.Height:=20; ChildBand3.Height:=20;  QRChildBand1.Height:=20;
     qrLabel3.Caption:='SubCat. ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel7.Caption:='SubGrupo ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel22.Caption:='Total Variedade ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     ChildBand2.Height:=20; ChildBand3.Height:=20; QRChildBand1.Height:=20;
  end else qrVenda.Prior;
end;

procedure TqrPSPLote.fSomaCat;
begin
  vsoma:=0;
  vcodig:=frPree(qrVenda.FieldByName('ProdCod').asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vcodig,1,4)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,4) then
       vqtc:=vqtc+qrVenda.FieldByName('PesoReal').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('ProdCod',vcodig,[]);
  vsoma:=0;
end;

procedure TqrPSPLote.fSomaVar;
begin
  vsoma:=0;
  vcodig:=frPree(qrVenda.FieldByName('ProdCod').asInteger,7,'0',0);
  while vsoma=0 do begin
    if Copy(vcodig,1,2)=Copy(frPree(qrVenda.FieldByName('ProdCod').Text,7,'0',0),1,2) then
       vqtv:=vqtv+qrVenda.FieldByName('PesoReal').asFloat
    else vsoma:=1;
    qrVenda.Next;
    if qrVenda.Eof then vsoma:=1;
  end;
  qrVenda.Locate('ProdCod',vcodig,[]);
  vsoma:=0;
end;


end.
