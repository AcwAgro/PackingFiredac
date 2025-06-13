unit rlNotaResDat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaResDat = class(TQuickRep)
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel1: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    ChildBand3: TQRChildBand;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrNotaResDat: TqrNotaResDat;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrNotaResDat.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
