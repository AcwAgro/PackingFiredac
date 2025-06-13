unit rlNotaMov;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaMov = class(TQuickRep)
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrParc: TQuery;
    qrVenda: TQuery;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    ChildBand3: TQRChildBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    ChildBand1: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qrNotaMov: TqrNotaMov;
  vrec,vnum:Integer;
  vnot,vtnot,vval,vtval,vdes,vtdes:Real;
  vcod:Variant; vnotfil:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrNotaMov.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vnot:=0;vtnot:=0;vval:=0;vtval:=0;vdes:=0;vtdes:=0;vnum:=0;
  qrVenda.First;
end;

procedure TqrNotaMov.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
  vnot:=0;vtnot:=0;vval:=0;vtval:=0;vdes:=0;vtdes:=0;vnum:=0;
  qrVenda.First;
end;

procedure TqrNotaMov.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel13.Caption:=''; QRLabel14.Caption:=''; QRLabel15.Caption:=''; QRLabel17.Caption:='';
  if vnum=0 then begin
     QRLabel13.Caption:=qrVenda.FieldByName('Codigo').Text+' - '+qrVenda.FieldByName('Descricao').Text;
     QRLabel14.Caption:=qrVenda.FieldByName('Nota').Text;
     QRLabel15.Caption:=qrVenda.FieldByName('Data').Text;
     QRLabel17.Caption:=FloatToStrF(qrVenda.FieldByName('VlrNota').asFloat,ffNumber,10,2);
     vnot:=vnot+qrVenda.FieldByName('VlrNota').AsFloat;
     vtnot:=vtnot+qrVenda.FieldByName('VlrNota').AsFloat;
     vnum:=1;
  end;
     vval:=vval+qrVenda.FieldByName('Valor').AsFloat;
     vdes:=vdes+(qrVenda.FieldByName('Valor').AsFloat-
                (qrVenda.FieldByName('VlrDesc').AsFloat*
                 qrVenda.FieldByName('Qtde').AsFloat));
     vtval:=vtval+qrVenda.FieldByName('Valor').AsFloat;
     vtdes:=vtdes+(qrVenda.FieldByName('Valor').AsFloat-
                  (qrVenda.FieldByName('VlrDesc').AsFloat*
                   qrVenda.FieldByName('Qtde').AsFloat));
  ChildBand1.Height:=0; QRSubDetail2.Height:=0; ChildBand3.Height:=0; qrLabel8.Caption:='';
end;

procedure TqrNotaMov.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel9.Caption:=fBus(1,['Select Descricao From CadBanco Where '+xFiltro1+' and Codigo=0'+qrParc.FieldByName('BanCod').Text],1);
  ChildBand3.Height:=0;
  if QRSubDetail2.Height>0 then begin
     vrec:=vrec+1;
     if vrec>=qrParc.RecordCount then ChildBand3.Height:=10;
  end;
end;

procedure TqrNotaMov.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel12.Caption:=FloatToStrF(vtnot,ffCurrency,14,2);
  qrLabel7.Caption:=FloatToStrF(vtval,ffCurrency,14,2);
end;


procedure TqrNotaMov.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vcod:=qrVenda.FieldByName(vnotfil).Value;
  qrVenda.Next;
  if vcod<>qrVenda.FieldByName(vnotfil).Value then begin
     vnum:=0;
     qrLabel6.Caption:=FloatToStrF(vnot,ffCurrency,14,2);
     qrLabel10.Caption:=FloatToStrF(vval,ffCurrency,14,2);
     vnot:=0;vval:=0;vrec:=0;
  end;
  if qrVenda.Eof then begin
     qrLabel6.Caption:=FloatToStrF(vnot,ffCurrency,14,2);
     qrLabel10.Caption:=FloatToStrF(vval,ffCurrency,14,2);
     vnot:=0;vval:=0;vrec:=0;
     ChildBand1.Height:=15; QRSubDetail2.Height:=15;
     qrLabel8.Caption:='Parc.     Vencto           Valor à Pagar       Conta';
     qrParc.Close;
     qrParc.Sql.Strings[2]:='Where Lanc='+qrVenda.FieldByName('Lanc').Text;
     qrParc.Open;
  end else qrVenda.Prior;
  if vnum=0 then begin
     ChildBand1.Height:=15; QRSubDetail2.Height:=15;
     qrLabel8.Caption:='Parc.     Vencto           Valor à Pagar       Conta';
     qrParc.Close;
     qrParc.Sql.Strings[2]:='Where Lanc='+qrVenda.FieldByName('Lanc').Text;
     qrParc.Open;
  end;
end;

end.
