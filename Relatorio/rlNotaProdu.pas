unit rlNotaProdu;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaProdu = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    QRDBText14: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrNotaProdu: TqrNotaProdu;
  vnum,vdes:Integer;
  vval,vtval,vqtd,vtqtd:Real;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrNotaProdu.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vval:=0;vtval:=0;vqtd:=0;vtqtd:=0;vnum:=0;
  qrVenda.First;
end;

procedure TqrNotaProdu.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
  vval:=0;vtval:=0;vqtd:=0;vtqtd:=0;vnum:=0;
  qrVenda.First;
end;

procedure TqrNotaProdu.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vval:=vval+qrVenda.FieldByName('vValor').AsFloat;
  vtval:=vtval+qrVenda.FieldByName('vValor').AsFloat;
  vqtd:=vqtd+qrVenda.FieldByName('vQtde').AsFloat;
  vtqtd:=vtqtd+qrVenda.FieldByName('vQtde').AsFloat;
  qrLabel10.Caption:=FloatToStrF(vval,ffCurrency,14,2);
  qrLabel8.Caption:=FloatToStrF(vqtd,ffNumber,14,0);
  if vnum=0 then begin
     vnum:=1;
     qrLabel6.Caption:=qrVenda.FieldByName('Codigo_1').Text+'-'+qrVenda.FieldByName('Descricao_1').Text;
  end;
  ChildBand3.Height:=0;
  vdes:=qrVenda.FieldByName('Codigo_1').asInteger;
  qrVenda.Next;
  if vdes<>qrVenda.FieldByName('Codigo_1').asInteger then begin
     vdes:=qrVenda.FieldByName('Codigo_1').asInteger;
     ChildBand3.Height:=20;vval:=0;vqtd:=0;vnum:=0;
  end;
  if qrVenda.Eof then begin
     vdes:=qrVenda.FieldByName('Codigo_1').asInteger;
     ChildBand3.Height:=20;vval:=0;vqtd:=0;vnum:=0;
  end else qrVenda.Prior;
end;

procedure TqrNotaProdu.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel7.Caption:=FloatToStrF(vtval,ffCurrency,14,2);
  qrLabel9.Caption:=FloatToStrF(vtqtd,ffNumber,14,0);
end;

end.
