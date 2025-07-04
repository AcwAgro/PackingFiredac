unit rlMovAmoSem;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrMovAmoSem = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    qrAmos: TQuery;
    QRDBText14: TQRDBText;
    ChildBand3: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText16: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrMovAmoSem: TqrMovAmoSem;
  vpr:Integer;
  vpes,vqtd,vliq,vmed:Double;
  vvarie:String;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrMovAmoSem.QuickRepPreview(Sender: TObject);
begin
  vpr:=0;
  fPreview(Sender);
end;

procedure TqrMovAmoSem.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrMovim.FieldByName('Peso').asFloat > 0 then
    qrLabel20.Caption := FormatFloat('0.0', qrAmos.FieldByName('Peso').asFloat/qrMovim.FieldByName('Peso').asFloat*100);
end;

procedure TqrMovAmoSem.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0;
end;

procedure TqrMovAmoSem.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if vpr<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vpr:=qrMovim.FieldByName('ProdCod').asInteger;
     vpes:=0; vqtd:=0;
  end;
  vqtd:=vqtd+qrMovim.FieldByName('Peso').asFloat;
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  qrAmos.Close;
  qrAmos.Sql.Strings[2]:='Where (am.lanc=cm.Lanc) and (am.Lanc='+qrMovim.FieldByName('Lanc').Text+')';
  qrAmos.Open;
  DetailBand1.Height:=0; qrSubDetail1.Height:=0; ChildBand3.Height:=0;
  if qrAmos.FieldByName('Lanc').asInteger>0 then begin
     DetailBand1.Height:=34; qrSubDetail1.Height:=18;
  end;
end;

end.
