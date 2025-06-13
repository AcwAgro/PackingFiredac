unit rlListaProduto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  IBCustomDataSet, IBQuery;

type
  TqrListaProduto = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrConta: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrListaProduto: TqrListaProduto;

implementation

{$R *.DFM}
uses Data,Menu ;

procedure TqrListaProduto.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrListaProduto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QRBand1.Color=clWhite then QRBand1.Color:=$00c4c4c4
  else QRBand1.Color:=clWhite;
end;

end.
