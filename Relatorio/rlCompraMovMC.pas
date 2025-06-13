unit rlCompraMovMC;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrCompraMovMC = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel25: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrConta: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrCompraMovMC: TqrCompraMovMC;
  vvlr,vtot,vdes,vtde,vtno,vnot,vkg,vtkg:Real;
  vqtd,vtqt:Double;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,Printers;

procedure TqrCompraMovMC.QuickRepPreview(Sender: TObject);
begin
  Page.Orientation:=poLandscape;
  vvlr:=0;vtot:=0;vqtd:=0;vtqt:=0;vdes:=0;vtde:=0;vtno:=0;vnot:=0;vkg:=0;vtkg:=0;
  fPreview(Sender);
end;

procedure TqrCompraMovMC.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Page.Orientation:=poLandscape;
  qrConta.First;
  vvlr:=0;vtot:=0;vqtd:=0;vtqt:=0;vdes:=0;vtde:=0;vtno:=0;vnot:=0;vkg:=0;vtkg:=0;
end;

procedure TqrCompraMovMC.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vcod:Integer; vnota:Real;
begin
  vqtd:=vqtd+qrConta.FieldByName('qtde').asFloat;
  vtqt:=vtqt+qrConta.FieldByName('qtde').asFloat;
  vvlr:=vvlr+(qrConta.FieldByName('qtde').asFloat * qrConta.FieldByName('Unit').asFloat);
  vtot:=vtot+(qrConta.FieldByName('qtde').asFloat * qrConta.FieldByName('Unit').asFloat);
  qrLabel5.Caption:=FloatToStrF(qrConta.FieldByName('qtde').asFloat * qrConta.FieldByName('Unit').asFloat,ffNumber,14,2);
  qrLabel10.Caption:=FloatToStrF(qrConta.FieldByName('Unit').asFloat,ffNumber,14,2);
  vdes:=vdes+qrConta.FieldByName('VlrDesc').asFloat;
  vtde:=vtde+qrConta.FieldByName('VlrDesc').asFloat;
  qrLabel4.Caption:=FloatToStrF(qrConta.FieldByName('VlrDesc').asFloat,ffNumber,14,2);
{  if (qrConta.FieldByName('Vlrnota').asFloat+qrConta.FieldByName('VlrDesc').asFloat) > 0 then
    vnota:= qrConta.FieldByName('Valor').asFloat/(qrConta.FieldByName('Vlrnota').asFloat+qrConta.FieldByName('VlrDesc').asFloat)*100
  else
    vnota:= 0;
  vnota:=vnota*qrConta.FieldByName('VlrDesc').asFloat/100;
  vnota:=qrConta.FieldByName('Valor').asFloat-vnota;}
  vnota:=qrConta.FieldByName('Valor').asFloat;
  vnot:=vnot+vnota;
  vtno:=vtno+vnota;
  vkg :=vkg+qrConta.FieldByName('pkg').asFloat;
  vtkg:=vtkg+qrConta.FieldByName('pkg').asFloat;
  qrLabel6.Caption:=FloatToStrF(vnota,ffNumber,14,2);
  //vcod:=qrConta.FieldByName('Codigo').asInteger;
  vcod:=qrConta.FieldByName('ProdCod').asInteger;
  qrLabel22.Caption:=FloatToStrF(vqtd,ffNumber,14,0);
  qrLabel21.Caption:=FloatToStrF(vvlr,ffNumber,14,2);
  qrLabel7.Caption:=FloatToStrF(vvlr - vnot,ffNumber,14,2);
  qrLabel8.Caption:=FloatToStrF(vnot,ffNumber,14,2);
  qrLabel24.Caption:=FloatToStrF(vtqt,ffNumber,14,0);
  qrLabel23.Caption:=FloatToStrF(vtot,ffNumber,14,2);
  qrLabel9.Caption:=FloatToStrF(vtot - vtno,ffNumber,14,2);
  qrLabel11.Caption:=FloatToStrF(vtno,ffNumber,14,2);
  qrLabel20.Caption:=FloatToStrF(vkg,ffNumber,14,0);
  qrLabel26.Caption:=FloatToStrF(vtkg,ffNumber,14,0);
  ChildBand2.Height:=0;
  qrConta.Next;
  //if vcod<>qrConta.FieldByName('Codigo').asInteger then begin
  if vcod<>qrConta.FieldByName('ProdCod').asInteger then begin
     ChildBand2.Height:=20;
     vvlr:=0;vqtd:=0;vdes:=0;vnot:=0;vkg:=0;
  end;
  if not qrConta.Eof then qrConta.Prior
  else ChildBand2.Height:=20;
end;

end.
