unit rlFiAcerto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrFiAcerto = class(TQuickRep)
    qrBase: TQuery;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel26: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrFiAcerto: TqrFiAcerto;

implementation

{$R *.DFM}

uses Menu,Data;

procedure TqrFiAcerto.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
