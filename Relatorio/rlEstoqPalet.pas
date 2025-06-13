unit rlEstoqPalet;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrEstoqPalet = class(TQuickRep)
    qrDados: TQuery;
    TitleBand1: TQRBand;
    QRLabel0: TQRLabel;
    QRDBText17: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData4: TQRSysData;
    DetailBand1: TQRBand;
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
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrEstoqPalet: TqrEstoqPalet;

implementation

{$R *.DFM}

uses Menu,Data,Rotina,dialogs;

procedure TqrEstoqPalet.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;


procedure TqrEstoqPalet.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrDados.FieldByName('Categoria').Text='T  O  T  A  L' then begin
     DetailBand1.Frame.DrawBottom:=True;
     DetailBand1.Color:=$00DFDFDF;
  end else begin
     DetailBand1.Frame.DrawBottom:=False;
     if DetailBand1.Color=clWhite then DetailBand1.Color:=$00EBEBEB
     else DetailBand1.Color:=clWhite;
  end;
end;

end.
