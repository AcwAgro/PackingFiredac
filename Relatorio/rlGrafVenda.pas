unit rlGrafVenda;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrGrafVenda = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrProdu: TQuery;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrGrafVenda: TqrGrafVenda;

implementation

{$R *.DFM}
uses Data, Menu;

procedure TqrGrafVenda.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
