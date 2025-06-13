unit rlMovQuadra;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrMovQuadra = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrMovQuadra: TqrMovQuadra;
  vcod:Integer;
  vqtd,vliq:Double;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrMovQuadra.QuickRepPreview(Sender: TObject);
begin
  vcod:=qrMovim.FieldByName('ProdCod').asInteger;
  vqtd:=0; vliq:=0;
  fPreview(Sender);
end;

procedure TqrMovQuadra.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vcod:=qrMovim.FieldByName('ProdCod').asInteger;
  vqtd:=0; vliq:=0;
end;

procedure TqrMovQuadra.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqtd:=vqtd+qrMovim.FieldByName('vqt').asFloat;
  vliq:=vliq+qrMovim.FieldByName('vkg').asFloat;
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,10,0);
  qrLabel9.Caption:=FloatToStrF(vliq,ffNumber,10,0);
  ChildBand2.Height:=0;
  qrMovim.Next;
  if vcod<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vcod:=qrMovim.FieldByName('ProdCod').asInteger;
     ChildBand2.Height:=35;
     vqtd:=0; vliq:=0;
  end;
  if not qrMovim.Eof then qrMovim.Prior
  else ChildBand2.Height:=35;
end;

end.
