unit rlChequeDev;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg, QRExport;

type
  TqrChequeDev = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrChequeDev: TqrChequeDev;
  vcheant,vtotal:Real;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrChequeDev.QuickRepPreview(Sender: TObject);
begin
  vtotal:=vcheant;
  fPreview(Sender);
end;

procedure TqrChequeDev.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtotal:=vcheant;
end;

procedure TqrChequeDev.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:=Trim(qrMovim.FieldByName('Prove').Text);
  qrLabel4.Caption:=''; qrLabel8.Caption:='';
  if qrMovim.FieldByName('Formar').Text='E' then begin
     qrLabel4.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,10,2);
     vtotal:=vtotal+qrMovim.FieldByName('Valor').asFloat;
  end else begin
     qrLabel8.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,10,2);
     vtotal:=vtotal-qrMovim.FieldByName('Valor').asFloat;
  end;
  qrLabel10.Caption:=FloatToStrF(vtotal,ffNumber,10,2)
end;



end.
