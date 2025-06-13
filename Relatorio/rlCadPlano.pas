unit rlCadPlano;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  IBCustomDataSet, IBQuery, QRExport, ADODB;

type
  TqrCadPlano = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    qrMovim: TQuery;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrCadPlano: TqrCadPlano;
  vant:Integer;

implementation

{$R *.DFM}
uses Data, Menu;

procedure TqrCadPlano.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
