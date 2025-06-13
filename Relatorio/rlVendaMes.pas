unit rlVendaMes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  DBClient;

type
  TqrVendaMes = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel25: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    cdsFatura: TClientDataSet;
    cdsFaturames: TStringField;
    cdsFaturaano: TIntegerField;
    cdsFaturavalor: TFloatField;
    QRLabel3: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrVendaMes: TqrVendaMes;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,Printers;

procedure TqrVendaMes.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
