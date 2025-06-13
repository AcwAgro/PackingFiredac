unit rlMovAmoEnt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrMovAmoEnt = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText16: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrMovAmoEnt: TqrMovAmoEnt;

implementation

{$R *.DFM}
uses Data,Menu,dialogs;

procedure TqrMovAmoEnt.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrMovAmoEnt.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  fSql(1,1,['Select Lanc From EntreVar',
            'Where Lanc='+qrMovim.Fields[1].Text+
            ' and VarieCod='+qrMovim.Fields[3].Text],2);
  if dm.qrSql1.RecordCount>0 then
     DetailBand1.Height:=0
  else DetailBand1.Height:=16;
end;

end.
