unit rlPomarMov;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPomarMov = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrProdu: TQuery;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  public

  end;

var
  qrPomarMov: TqrPomarMov;
  vrec:Integer; vqtd:Double;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrPomarMov.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrPomarMov.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtd:=0;
end;

procedure TqrPomarMov.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand2.Height:=0;
  vrec:=qrProdu.FieldByName('Codigo').AsInteger;
  vqtd:=vqtd+qrProdu.FieldByName('Qtde').asFloat;
  qrLabel3.Caption:=FloatToStr(vqtd);
  qrProdu.Next;
  if vrec<>qrProdu.FieldByName('Codigo').AsInteger then begin
     ChildBand2.Height:=30; vqtd:=0;
  end;
  if not qrProdu.eof then qrProdu.Prior
  else ChildBand2.Height:=30;
end;


end.
