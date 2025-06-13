unit rlCTCheque;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrCTCheque = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel25: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrConta: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ChildBand2: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrCTCheque: TqrCTCheque;
  vval:Real;

implementation

{$R *.DFM}
uses Data, Menu;

procedure TqrCTCheque.QuickRepPreview(Sender: TObject);
begin
  vval:=0;
  fPreview(Sender);
end;

procedure TqrCTCheque.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vval:=0;
end;

procedure TqrCTCheque.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vcli:String;
begin
  ChildBand2.Height:=0;
  if QRLabel3.Caption='SubTotal...:' then begin
     vval:=vval+qrConta.FieldByName('Valor').asFloat;
     vcli:=qrConta.FieldByName('Cliente').Text;
     qrLabel4.Caption:=FloatToStrF(vval,ffCurrency,10,2);
     qrConta.Next;
     if vcli<>qrConta.FieldByName('Cliente').Text then begin
        ChildBand2.Height:=24; vval:=0;
     end;
     if not qrConta.Eof then qrConta.Prior
     else ChildBand2.Height:=24;
  end;
end;

end.
