unit rlPSPPalet;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  IBCustomDataSet, IBQuery, QRExport;

type
  TqrPSPPalet = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    DetailBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    qrProdt: TQuery;
    QRDBText4: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
  private
  public

  end;

var
  qrPSPPalet: TqrPSPPalet;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrPSPPalet.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
