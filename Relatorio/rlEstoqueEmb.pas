unit rlEstoqueEmb;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrEstoqueEmb = class(TQuickRep)
    qrDados: TQuery;
    TitleBand1: TQRBand;
    QRLabel0: TQRLabel;
    QRDBText17: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData4: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrEstoqueEmb: TqrEstoqueEmb;

implementation

{$R *.DFM}

uses Menu,Data,Rotina,dialogs;

procedure TqrEstoqueEmb.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;


procedure TqrEstoqueEmb.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Color=clWhite then DetailBand1.Color:=$00E8E8E8
  else DetailBand1.Color:=clWhite;
end;

end.
