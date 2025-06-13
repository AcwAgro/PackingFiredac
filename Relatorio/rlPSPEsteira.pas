unit rlPSPEsteira;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPSPEsteira = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    DetailBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText3: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
  private
  public

  end;

var
  qrPSPEsteira: TqrPSPEsteira;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs,frmEsteira;

procedure TqrPSPEsteira.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
