unit rlNotaVar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaVar = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
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
    QRLabel11: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel12: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrNotaVar: TqrNotaVar;
  vdes:Integer;
  vval,vtval,vqtd,vtqtd,vkval,vktval,vkqtd,vktqtd:Real;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrNotaVar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vval:=0;vtval:=0;vqtd:=0;vtqtd:=0;vkval:=0;vktval:=0;vkqtd:=0;vktqtd:=0;
  qrVenda.First;
end;

procedure TqrNotaVar.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
  vval:=0;vtval:=0;vqtd:=0;vtqtd:=0;vkval:=0;vktval:=0;vkqtd:=0;vktqtd:=0;
  qrVenda.First;
end;

procedure TqrNotaVar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Color=$00E8E8E8 then DetailBand1.Color:=clWhite
  else DetailBand1.Color:=$00E8E8E8;
  vval:=vval+qrVenda.FieldByName('vValor').AsFloat;
  vtval:=vtval+qrVenda.FieldByName('vValor').AsFloat;
  vqtd:=vqtd+qrVenda.FieldByName('vQtde').AsFloat;
  vtqtd:=vtqtd+qrVenda.FieldByName('vQtde').AsFloat;
  vkqtd:=vkqtd+(qrVenda.FieldByName('vQtde').AsFloat*qrVenda.FieldByName('vPeso').AsFloat);
  vktqtd:=vktqtd+(qrVenda.FieldByName('vQtde').AsFloat*qrVenda.FieldByName('vPeso').AsFloat);
  qrLabel10.Caption:=FloatToStrF(vval,ffNumber,14,2);
  qrLabel8.Caption:=FloatToStrF(vqtd,ffNumber,14,0);
  qrLabel6.Caption:=qrVenda.FieldByName('Codigo').Text+'-'+qrVenda.FieldByName('Descricao').Text;
  qrLabel7.Caption:=FloatToStrF(vtval,ffNumber,14,2);
  qrLabel9.Caption:=FloatToStrF(vtqtd,ffNumber,14,0);
  QRExpr2.Top:=100; QRExpr4.Top:=100;
  qrLabel14.Caption:=''; qrLabel15.Caption:='';
  qrLabel17.Caption:=''; qrLabel18.Caption:='';
  qrLabel12.Caption:='';qrLabel13.Caption:='';
  if qrVenda.FieldByName('Codigo').asInteger>9999 then begin
     QRExpr2.Top:=1; QRExpr4.Top:=1;
     qrLabel14.Caption:=FloatToStrF(vkqtd,ffNumber,14,0);
     qrLabel15.Caption:=FloatToStrF(vval/vkqtd,ffNumber,14,2);
     qrLabel17.Caption:=FloatToStrF(vktqtd,ffNumber,14,0);
     qrLabel18.Caption:=FloatToStrF(vtval/vktqtd,ffNumber,14,2);
     if vqtd>0 then qrLabel12.Caption:=FloatToStrF(vval/vqtd,ffNumber,14,2);
     if vtqtd>0 then qrLabel13.Caption:=FloatToStrF(vtval/vtqtd,ffNumber,14,2);
  end;
  ChildBand3.Height:=0; ChildBand2.Height:=0;
  vdes:=qrVenda.FieldByName('Codigo').asInteger;
  qrVenda.Next;
  if qrVenda.FieldByName('Codigo').asInteger>9999 then begin
     if Copy(IntToStr(vdes),1,4)<>Copy(IntToStr(qrVenda.FieldByName('Codigo').asInteger),1,4) then begin
        ChildBand3.Height:=20; vval:=0;vqtd:=0;vkval:=0;vkqtd:=0;
     end;
  end;
  if Copy(IntToStr(vdes),1,2)<>Copy(IntToStr(qrVenda.FieldByName('Codigo').asInteger),1,2) then begin
     ChildBand3.Height:=20; ChildBand2.Height:=20;
     vval:=0;vqtd:=0;vtval:=0;vtqtd:=0;vkval:=0;vktval:=0;vkqtd:=0;vktqtd:=0;
  end;
  if qrVenda.Eof then begin
     ChildBand3.Height:=20; ChildBand2.Height:=20; vval:=0;vqtd:=0;vtval:=0;vtqtd:=0;
  end else qrVenda.Prior;
end;

end.
