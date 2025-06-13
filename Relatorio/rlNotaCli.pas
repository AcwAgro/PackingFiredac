unit rlNotaCli;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaCli = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText15: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel16: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrNotaCli: TqrNotaCli;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrNotaCli.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
