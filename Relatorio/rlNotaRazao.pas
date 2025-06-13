unit rlNotaRazao;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaRazao = class(TQuickRep)
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
    QRDBText13: TQRDBText;
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
  qrNotaRazao: TqrNotaRazao;
  vnum,vdes:Integer;
  vval,vtval:Real;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrNotaRazao.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vval:=0;vtval:=0;vnum:=0;
  qrVenda.First;
end;

procedure TqrNotaRazao.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
  vval:=0;vtval:=0;vnum:=0;
  qrVenda.First;
end;

procedure TqrNotaRazao.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vval:=vval+qrVenda.FieldByName('vValor').AsFloat;
  vtval:=vtval+qrVenda.FieldByName('vValor').AsFloat;
  qrLabel10.Caption:=FloatToStrF(vval,ffCurrency,14,2);
  if vnum=0 then begin
     vnum:=1;
     qrLabel6.Caption:=qrVenda.FieldByName('Descricao').Text;
  end;
  ChildBand3.Height:=0;
  vdes:=qrVenda.FieldByName('Codigo').asInteger;
  qrVenda.Next;
  if vdes<>qrVenda.FieldByName('Codigo').asInteger then begin
     vdes:=qrVenda.FieldByName('Codigo').asInteger;
     ChildBand3.Height:=20;vval:=0;vnum:=0;
  end;
  if qrVenda.Eof then begin
     vdes:=qrVenda.FieldByName('Codigo').asInteger;
     ChildBand3.Height:=20;vval:=0;vnum:=0;
  end else qrVenda.Prior;
end;

procedure TqrNotaRazao.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel7.Caption:=FloatToStrF(vtval,ffCurrency,14,2);
end;

end.
