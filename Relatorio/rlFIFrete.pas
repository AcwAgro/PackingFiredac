unit rlFIFrete;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrFiFrete = class(TQuickRep)
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText21: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    ChildBand1: TQRChildBand;
    SummaryBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRImage2: TQRImage;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    qrRecibo: TQuery;
    QRDBText17: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrFiFrete: TqrFiFrete;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrFiFrete.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
