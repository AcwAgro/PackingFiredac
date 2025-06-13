unit rlEstoque;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrEstoque = class(TQuickRep)
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
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    SummaryBand1: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrcal1: TQRLabel;
    qrcal2: TQRLabel;
    qrcal3: TQRLabel;
    qrcal4: TQRLabel;
    qrcal5: TQRLabel;
    qrcal10: TQRLabel;
    qrcal9: TQRLabel;
    qrcal8: TQRLabel;
    qrcal7: TQRLabel;
    qrcal6: TQRLabel;
    qrcal20: TQRLabel;
    qrcal19: TQRLabel;
    qrcal18: TQRLabel;
    qrcal17: TQRLabel;
    qrcal16: TQRLabel;
    qrcal15: TQRLabel;
    qrcal14: TQRLabel;
    qrcal13: TQRLabel;
    qrcal12: TQRLabel;
    qrcal11: TQRLabel;
    QRLabel23: TQRLabel;
    qrcal26: TQRLabel;
    qrcal25: TQRLabel;
    qrcal24: TQRLabel;
    qrcal23: TQRLabel;
    qrcal22: TQRLabel;
    qrcal21: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrEstoque: TqrEstoque;

implementation

{$R *.DFM}

uses Menu,Data,Rotina,dialogs;

procedure TqrEstoque.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;


procedure TqrEstoque.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Color=clWhite then DetailBand1.Color:=$00DFDFDF
  else DetailBand1.Color:=clWhite;
end;

end.
