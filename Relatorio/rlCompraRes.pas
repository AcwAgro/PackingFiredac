unit rlCompraRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrCompraRes = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
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
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrCompraRes: TqrCompraRes;
  vvlr,vtot,vdes,vtde,vtno,vnot:Real;
  vqtd,vtqt:Double;
  vfun,vtfu:Real;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,Printers;

procedure TqrCompraRes.QuickRepPreview(Sender: TObject);
begin
//  Page.Orientation:=poLandscape;
  vvlr:=0;vtot:=0;vqtd:=0;vtqt:=0;vdes:=0;vtde:=0;vtno:=0;vnot:=0;
  vfun:=0;vtfu:=0;
  fPreview(Sender);
end;

procedure TqrCompraRes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//  Page.Orientation:=poLandscape;
  qrConta.First;
  vvlr:=0;vtot:=0;vqtd:=0;vtqt:=0;vdes:=0;vtde:=0;vtno:=0;vnot:=0;
  vfun:=0;vtfu:=0;
end;

procedure TqrCompraRes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vcod:Integer; vnota:Real;
begin
  qrLabel6.Caption:=FloatToStrF(qrConta.FieldByName('Vlrnota').asFloat,ffNumber,14,2);
  qrLabel7.Caption:=FloatToStrF(qrConta.FieldByName('Vlrfunrural').asFloat,ffNumber,14,2);
  vnot := vnot + qrConta.FieldByName('Vlrnota').asFloat;
  vtno := vtno + qrConta.FieldByName('Vlrnota').asFloat;
  vfun := vfun + qrConta.FieldByName('Vlrfunrural').asFloat;
  vtfu := vtfu + qrConta.FieldByName('Vlrfunrural').asFloat;

  vcod:=qrConta.FieldByName('Codigo').asInteger;
  qrLabel8.Caption:=FloatToStrF(vnot,ffNumber,14,2);
  qrLabel11.Caption:=FloatToStrF(vtno,ffNumber,14,2);
  qrLabel9.Caption:=FloatToStrF(vfun,ffNumber,14,2);
  qrLabel10.Caption:=FloatToStrF(vtfu,ffNumber,14,2);
  ChildBand2.Height:=0;
  qrConta.Next;
  if vcod<>qrConta.FieldByName('Codigo').asInteger then
  begin
    if (Pos('Nota', QRLabel16.Caption) = 0) then
      ChildBand2.Height:=20;
    vvlr:=0;vqtd:=0;vdes:=0;vnot:=0;
    vfun:=0;
  end;
  if not qrConta.Eof then
    qrConta.Prior
  else begin
    if (Pos('Nota', QRLabel16.Caption) = 0) then
      ChildBand2.Height:=20;
  end;
end;

end.
