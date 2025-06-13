unit rlFiDuplic;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrFiDuplic = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    ChildBand2: TQRChildBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrFiDuplic: TqrFiDuplic;
  vcod:Integer;
  vval1,vval2:Real;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrFiDuplic.QuickRepPreview(Sender: TObject);
begin
  vval1:=0; vval2:=0;
  fPreview(Sender);
end;

procedure TqrFiDuplic.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vval1:=0; vval2:=0;
end;

procedure TqrFiDuplic.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vval1:=vval1+qrMovim.FieldByName('Valor').asFloat;
  vval2:=vval2+qrMovim.FieldByName('Valor').asFloat;
  qrLabel3.Caption:=FloatToStrF(vval1,ffNumber,10,2);
  qrLabel5.Caption:=FloatToStrF(vval2,ffNumber,10,2);
  vcod:=qrMovim.FieldByName('FavorCod').asInteger;
  ChildBand2.Height:=0;
  qrMovim.Next;
  if vcod<>qrMovim.FieldByName('FavorCod').asInteger then begin
     ChildBand2.Height:=20; vval1:=0;
  end;
  if qrMovim.Eof then ChildBand2.Height:=20
  else qrMovim.Prior;
end;


end.
