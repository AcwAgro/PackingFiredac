unit rlNotaCliProd;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNotaCliProd = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    QRDBText14: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel4: TQRLabel;
    qrlv2: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrlv1: TQRLabel;
    qrlv3: TQRLabel;
    qrlv4: TQRLabel;
    qrlv5: TQRLabel;
    qrlv6: TQRLabel;
    qrVendaCodigo: TIntegerField;
    qrVendaDescricao: TStringField;
    qrVendaprodcod: TIntegerField;
    qrVendaprodnota: TIntegerField;
    qrVendadata: TDateTimeField;
    qrVendavlrnota: TFloatField;
    qrVendafordes: TStringField;
    qrVendavqtde: TFloatField;
    qrVendavlrfun: TFloatField;
    qrVendavlrcom: TFloatField;
    qrVendavlradi: TFloatField;
    qrVendavlrliq: TFloatField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    qrlt1: TQRLabel;
    qrlt2: TQRLabel;
    qrlt3: TQRLabel;
    qrlt4: TQRLabel;
    qrlt5: TQRLabel;
    qrlt6: TQRLabel;
    QRShape1: TQRShape;
    qrlg1: TQRLabel;
    qrlg2: TQRLabel;
    qrlg3: TQRLabel;
    qrlg4: TQRLabel;
    qrlg5: TQRLabel;
    qrlg6: TQRLabel;
    QRShape2: TQRShape;
    qrVendacli_funper: TFloatField;
    qrVendacli_comisper: TFloatField;
    qrVendacli_adiantcx: TFloatField;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrVendaCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  qrNotaCliProd: TqrNotaCliProd;
  vpro,vcli:Integer;
  vvlrq, vvlrn, vvlrf, vvlrc, vvlra, vvlrl: Double;
  vtotq, vtotn, vtotf, vtotc, vtota, vtotl: Double;
  vgerq, vgern, vgerf, vgerc, vgera, vgerl: Double;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrNotaCliProd.qrVendaCalcFields(DataSet: TDataSet);
begin
{
Select es.Codigo, es.Descricao, es.prodcod, es.prodnota, es.data, es.vlrnota, cli.funper, cli.comisper, cli.adiantcx, for.descricao as fordes, Sum(esc.Qtde) as vqtde
From nfVenda es,nfVendCo esc, cadclien cli, cadforne for
Where (es.Lanc=esc.Lanc) and (es.codigo = cli.codigo) and (es.prodcod = for.codigo)
Group By es.Codigo, es.Descricao, es.prodcod, es.prodnota, es.data, es.vlrnota, cli.funper, cli.comisper, cli.adiantcx, for.descricao
Order By es.Descricao, es.prodcod, es.data
}
  qrVendaVlrFun.AsFloat := qrVendaVlrNota.AsFloat * qrVendaCli_Funper.AsFloat / 100;
  qrVendaVlrCom.AsFloat := qrVendaVlrNota.AsFloat * qrVendaCli_Comisper.AsFloat / 100;
  qrVendaVlrAdi.AsFloat := qrVendaVQtde.AsFloat * qrVendaCli_Adiantcx.AsFloat;

  qrVendaVlrLiq.AsFloat := qrVendaVlrNota.AsFloat - (qrVendaVlrFun.AsFloat + qrVendaVlrCom.AsFloat + qrVendaVlrAdi.AsFloat);
end;

procedure TqrNotaCliProd.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vvlrq:=0; vvlrn:=0; vvlrf:=0; vvlrc:=0; vvlra:=0; vvlrl:=0;
  vtotq:=0; vtotn:=0; vtotf:=0; vtotc:=0; vtota:=0; vtotl:=0;
  vgerq:=0; vgern:=0; vgerf:=0; vgerc:=0; vgera:=0; vgerl:=0;
  qrVenda.First;
end;

procedure TqrNotaCliProd.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
  vvlrq:=0; vvlrn:=0; vvlrf:=0; vvlrc:=0; vvlra:=0; vvlrl:=0;
  vtotq:=0; vtotn:=0; vtotf:=0; vtotc:=0; vtota:=0; vtotl:=0;
  vgerq:=0; vgern:=0; vgerf:=0; vgerc:=0; vgera:=0; vgerl:=0;
  qrVenda.First;
end;

procedure TqrNotaCliProd.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vvlrq:=vvlrq + qrVendaVQtde.AsFloat;
  vvlrn:=vvlrn + qrVendaVlrNota.AsFloat;
  vvlrf:=vvlrf + qrVendaVlrFun.AsFloat;
  vvlrc:=vvlrc + qrVendaVlrCom.AsFloat;
  vvlra:=vvlra + qrVendaVlrAdi.AsFloat;
  vvlrl:=vvlrl + qrVendaVlrLiq.AsFloat;
  qrlv1.Caption := FormatFloat('#,0', vvlrq);
  qrlv2.Caption := FormatFloat('#,0.00', vvlrn);
  qrlv3.Caption := FormatFloat('#,0.00', vvlrf);
  qrlv4.Caption := FormatFloat('#,0.00', vvlrc);
  qrlv5.Caption := FormatFloat('#,0.00', vvlra);
  qrlv6.Caption := FormatFloat('#,0.00', vvlrl);

  vtotq:=vtotq + qrVendaVQtde.AsFloat;
  vtotn:=vtotn + qrVendaVlrNota.AsFloat;
  vtotf:=vtotf + qrVendaVlrFun.AsFloat;
  vtotc:=vtotc + qrVendaVlrCom.AsFloat;
  vtota:=vtota + qrVendaVlrAdi.AsFloat;
  vtotl:=vtotl + qrVendaVlrLiq.AsFloat;
  qrlt1.Caption := FormatFloat('#,0', vtotq);
  qrlt2.Caption := FormatFloat('#,0.00', vtotn);
  qrlt3.Caption := FormatFloat('#,0.00', vtotf);
  qrlt4.Caption := FormatFloat('#,0.00', vtotc);
  qrlt5.Caption := FormatFloat('#,0.00', vtota);
  qrlt6.Caption := FormatFloat('#,0.00', vtotl);

  vgerq:=vgerq + qrVendaVQtde.AsFloat;
  vgern:=vgern + qrVendaVlrNota.AsFloat;
  vgerf:=vgerf + qrVendaVlrFun.AsFloat;
  vgerc:=vgerc + qrVendaVlrCom.AsFloat;
  vgera:=vgera + qrVendaVlrAdi.AsFloat;
  vgerl:=vgerl + qrVendaVlrLiq.AsFloat;
  qrlg1.Caption := FormatFloat('#,0', vgerq);
  qrlg2.Caption := FormatFloat('#,0.00', vgern);
  qrlg3.Caption := FormatFloat('#,0.00', vgerf);
  qrlg4.Caption := FormatFloat('#,0.00', vgerc);
  qrlg5.Caption := FormatFloat('#,0.00', vgera);
  qrlg6.Caption := FormatFloat('#,0.00', vgerl);

  ChildBand3.Height:=0;
  vpro:=qrVenda.FieldByName('ProdCod').asInteger;
  vcli:=qrVenda.FieldByName('Codigo').asInteger;
  qrVenda.Next;

  if vpro<>qrVenda.FieldByName('ProdCod').asInteger then begin
     vpro:=qrVenda.FieldByName('Prodcod').asInteger;
     vvlrq:=0; vvlrn:=0; vvlrf:=0; vvlrc:=0; vvlra:=0; vvlrl:=0;
     ChildBand3.Height:=26;
  end;
  if vcli<>qrVenda.FieldByName('Codigo').asInteger then begin
     vcli:=qrVenda.FieldByName('Codigo').asInteger;
     vtotq:=0; vtotn:=0; vtotf:=0; vtotc:=0; vtota:=0; vtotl:=0;
     ChildBand3.Height:=60;
  end;

  if qrVenda.Eof then begin
     vcli:=qrVenda.FieldByName('Codigo').asInteger;
     vtotq:=0; vtotn:=0; vtotf:=0; vtotc:=0; vtota:=0; vtotl:=0;
     vgerq:=0; vgern:=0; vgerf:=0; vgerc:=0; vgera:=0; vgerl:=0;
     ChildBand3.Height:=60;
  end else qrVenda.Prior;
end;

end.
