unit rlProdClasMovEmbTot;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrProdClasMovEmbTot = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrProdu: TQuery;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel13: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private

  public
    vQtdeTot, vPesoTot: Double;
  end;

var
  qrProdClasMovEmbTot: TqrProdClasMovEmbTot;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrProdClasMovEmbTot.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  qrLabel13.Caption:=FloatToStrF(vQtdeTot,ffNumber,10,0);
  qrLabel4.Caption :=FloatToStrF(vPesoTot,ffNumber,10,1);

end;

procedure TqrProdClasMovEmbTot.QuickRepPreview(Sender: TObject);
begin

  fPreview(Sender);

end;

procedure TqrProdClasMovEmbTot.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  qrLabel5.Caption:=FloatToStrF(qrProdu.FieldByName('qt').asFloat,ffNumber,10,0);
  qrLabel6.Caption:=FloatToStrF(qrProdu.FieldByName('ge').asFloat,ffNumber,10,1);

  if (vPesoTot > 0) then
    qrLabel7.Caption:=FloatToStrF(qrProdu.FieldByName('ge').asFloat / vPesoTot * 100,ffNumber,10,2)
  else
    qrLabel7.Caption:=FloatToStrF(0,ffNumber,10,1);

  ChildBand2.Height := 0;
  qrProdu.Next;
  if qrProdu.Eof then ChildBand2.Height := 22
  else qrProdu.Prior;

end;


end.
