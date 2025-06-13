unit rlPSPVendaMonta;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPSPVendaMonta = class(TQuickRep)
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand2: TQRChildBand;
    qrPediCom: TQuery;
    qrPedi: TQuery;
    QRExpr1: TQRExpr;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    qrCadastro: TQuery;
    qrPediFin: TQuery;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel41: TQRLabel;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    qrlblFinan: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRExpr2: TQRExpr;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape2: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRLabel1: TQRLabel;
    QRShape19: TQRShape;
    QRLabel2: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrPSPVendaMonta: TqrPSPVendaMonta;
  vrec,vOpc:Integer;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrPSPVendaMonta.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vrec:=0;
end;

procedure TqrPSPVendaMonta.QuickRepPreview(Sender: TObject);
begin
  vrec:=0;
  fPreview(Sender);
end;

procedure TqrPSPVendaMonta.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=vrec+1;
  ChildBand2.Height := 0;
  qrPediCom.Next;
  if vrec=qrPediCom.RecordCount then begin
     ChildBand2.Height := 30;
     vrec:=0;
  end else qrPediCom.Prior;
end;

end.
