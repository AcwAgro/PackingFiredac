unit rlCadasCli;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrCadasCli = class(TQuickRep)
    DetailBand1: TQRBand;
    qrMovim: TQuery;
    PageFooterBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrCadasCli: TqrCadasCli;

implementation

{$R *.DFM}
uses Menu, Data, Rotina;

procedure TqrCadasCli.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
