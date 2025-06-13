unit rlPalet;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TqrPalet = class(TQuickRep)
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    qrPalet: TQuery;
    QRLabel0: TQRLabel;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);

  private

  public

  end;

var
  qrPalet: TqrPalet;

implementation

{$R *.DFM}
uses Esteira;


procedure TqrPalet.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
