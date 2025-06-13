unit rlRelCal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrRelCal = class(TQuickRep)
    qrCont: TQuery;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel24: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText3: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrRelCal: TqrRelCal;

implementation

uses Menu,Data;
{$R *.DFM}

procedure TqrRelCal.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRelCal.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='0 %';
  QRLabel7.Caption:='0 %';
  QRLabel8.Caption:='0 %';
  if qrCont.FieldByName('vqtd').asfloat>0 then  begin
    qrLabel3.Caption:=FloatToStrf(qrCont.FieldByName('vgra').asfloat/qrCont.FieldByName('vqtd').asfloat*100,ffNumber,6,2)+'%';
    qrLabel7.Caption:=FloatToStrf(qrCont.FieldByName('vmed').asfloat/qrCont.FieldByName('vqtd').asfloat*100,ffNumber,6,2)+'%';
    qrLabel8.Caption:=FloatToStrf(qrCont.FieldByName('vmiu').asfloat/qrCont.FieldByName('vqtd').asfloat*100,ffNumber,6,2)+'%';
  end;
end;

end.
