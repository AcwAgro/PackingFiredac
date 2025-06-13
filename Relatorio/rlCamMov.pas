unit rlCamMov;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrCamMov = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText7: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    PageFooterBand1: TQRBand;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure ChildBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qrCamMov: TqrCamMov;
  vqual,vpro,vvar,vtip,vcam:Integer;
  vtpr,vtva,vtti,vtca:Double;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrCamMov.QuickRepPreview(Sender: TObject);
begin
  vpro:=qrMovim.FieldByName('ProdCod').asInteger;
  vvar:=qrMovim.FieldByName('VarieCod').asInteger;
  vtip:=qrMovim.FieldByName('TipoCod').asInteger;
  vcam:=qrMovim.FieldByName('CamarCod').asInteger;
  vtpr:=0; vtva:=0; vtti:=0; vtca:=0; vqual:=0;
  fPreview(Sender);
end;

procedure TqrCamMov.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpro:=qrMovim.FieldByName('ProdCod').asInteger;
  vvar:=qrMovim.FieldByName('VarieCod').asInteger;
  vtip:=qrMovim.FieldByName('TipoCod').asInteger;
  vcam:=qrMovim.FieldByName('CamarCod').asInteger;
  vtpr:=0; vtva:=0; vtti:=0; vtca:=0; vqual:=0;
end;

procedure TqrCamMov.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand2.Height:=0;
  vtpr:=vtpr+qrMovim.FieldByName('Qtde').asFloat;
  vtva:=vtva+qrMovim.FieldByName('Qtde').asFloat;
  vtti:=vtti+qrMovim.FieldByName('Qtde').asFloat;
  vtca:=vtca+qrMovim.FieldByName('Qtde').asFloat;
  qrLabel4.Caption:=FloatToStrF(vtpr,ffNumber,10,0);
  qrLabel5.Caption:=FloatToStrF(vtva,ffNumber,10,0);
  qrLabel10.Caption:=FloatToStrF(vtti,ffNumber,10,0);
  qrLabel17.Caption:=FloatToStrF(vtca,ffNumber,10,0);
  qrMovim.Next;
  qrLabel4.Height:=0; qrLabel3.Height:=0;
  qrLabel5.Height:=0; qrLabel6.Height:=0;
  qrLabel10.Height:=0; qrLabel9.Height:=0;
  qrLabel15.Height:=0; qrLabel17.Height:=0;
  if vpro<>qrMovim.FieldByName('ProdCod').asInteger then begin
     ChildBand2.Height:=24; vtpr:=0; vqual:=1;
     vpro:=qrMovim.FieldByName('ProdCod').asInteger;
  end;
  if vvar<>qrMovim.FieldByName('VarieCod').asInteger then begin
     ChildBand2.Height:=24; vtpr:=0; vtva:=0; vqual:=2;
     vvar:=qrMovim.FieldByName('VarieCod').asInteger;
  end;
  if vtip<>qrMovim.FieldByName('TipoCod').asInteger then begin
     ChildBand2.Height:=24; vtpr:=0; vtva:=0; vtti:=0; vqual:=3;
     vtip:=qrMovim.FieldByName('TipoCod').asInteger;
  end;
  if vcam<>qrMovim.FieldByName('CamarCod').asInteger then begin
     ChildBand2.Height:=24; vtpr:=0; vtva:=0; vtti:=0; vtca:=0; vqual:=4;
     vcam:=qrMovim.FieldByName('CamarCod').asInteger;
  end;
  if vqual>0 then begin
     qrLabel4.Height:=17; qrLabel3.Height:=17;
  end;
  if vqual>1 then begin
     qrLabel5.Height:=17; qrLabel6.Height:=17;
  end;
  if vqual>2 then begin
    qrLabel10.Height:=17; qrLabel9.Height:=17;
  end;
  if vqual>3 then begin
    qrLabel15.Height:=17; qrLabel17.Height:=17;
  end;
  if qrMovim.Eof then begin
     ChildBand2.Height:=24;
     qrLabel15.Height:=17; qrLabel17.Height:=17;
  end else qrMovim.Prior;
end;

procedure TqrCamMov.ChildBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if ChildBand2.Height=24 then begin
     qrLabel15.Height:=17; qrLabel17.Height:=17;
     if vqual>3 then begin NewPage; vqual:=0; end;
  end;
end;

end.
