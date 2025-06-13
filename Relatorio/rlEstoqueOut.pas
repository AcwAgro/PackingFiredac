unit rlEstoqueOut;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrEstoqueOut = class(TQuickRep)
    qrDados: TQuery;
    TitleBand1: TQRBand;
    QRLabel0: TQRLabel;
    QRDBText17: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData4: TQRSysData;
    DetailBand1: TQRBand;
    qrCalc1: TQRDBText;
    qrCalc2: TQRDBText;
    qrCalc3: TQRDBText;
    qrCalc4: TQRDBText;
    qrCalc5: TQRDBText;
    qrCalc6: TQRDBText;
    qrCalc7: TQRDBText;
    qrCalc9: TQRDBText;
    qrCalc8: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrcal1: TQRLabel;
    qrcal3: TQRLabel;
    qrcal4: TQRLabel;
    qrcal5: TQRLabel;
    qrcal6: TQRLabel;
    qrcal7: TQRLabel;
    qrcal8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrDadosLINHA: TIntegerField;
    qrDadosDESCRICAO: TStringField;
    qrDadosUNIDADE: TStringField;
    qrDadosCODIGO: TIntegerField;
    qrDadosCAL1: TFloatField;
    qrDadosCAL2: TFloatField;
    qrDadosCAL3: TFloatField;
    qrDadosCAL4: TFloatField;
    qrDadosCAL5: TFloatField;
    qrDadosCAL6: TFloatField;
    qrDadosCAL7: TFloatField;
    qrDadosCAL8: TFloatField;
    qrDadosCAL9: TFloatField;
    qrDadosCAL10: TFloatField;
    qrDadosAcesocod: TIntegerField;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrEstoqueOut: TqrEstoqueOut;

implementation

{$R *.DFM}

uses Menu,Data,Rotina,dialogs;

procedure TqrEstoqueOut.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;


procedure TqrEstoqueOut.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Color=clWhite then DetailBand1.Color:=$00DFDFDF
  else DetailBand1.Color:=clWhite;
end;

end.
