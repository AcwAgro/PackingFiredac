unit rlEstMerca;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrEstMerca = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrProduto: TQuery;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    DetailBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand2: TQRChildBand;
    QRDBText5: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText17: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrEstMerca: TqrEstMerca;
  vqten,vqtsa,vqt1,vqt2:Double;
  vlren,vlrsa,vva1,vva2,vme1:Real;
  vcod:Integer;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrEstMerca.QuickRepPreview(Sender: TObject);
begin
  vcod:=qrProduto.FieldByName('Produto').asInteger;
  vqten:=0; vqtsa:=0; vlren:=0; vlrsa:=0;
  fPreview(Sender);
end;

procedure TqrEstMerca.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrProduto.First;
  vcod:=qrProduto.FieldByName('Produto').asInteger;
  vqten:=0; vqtsa:=0; vlren:=0; vlrsa:=0;
end;

procedure TqrEstMerca.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqt1:=vqt1+qrProduto.FieldByName('QtdeEnt').asFloat;
  vva1:=vva1+qrProduto.FieldByName('ValorEnt').asFloat;
  vqt2:=vqt2+qrProduto.FieldByName('QtdeSai').asFloat;
  vva2:=vva2+qrProduto.FieldByName('ValorSai').asFloat;
  vqten:=vqten+qrProduto.FieldByName('QtdeEnt').asFloat;
  vlren:=vlren+qrProduto.FieldByName('ValorEnt').asFloat;
  vqtsa:=vqtsa+qrProduto.FieldByName('QtdeSai').asFloat;
  vlrsa:=vlrsa+qrProduto.FieldByName('ValorSai').asFloat;
  qrLabel13.Caption:=FormatFloat('#,0.###',vqten);
  qrLabel22.Caption:=FloatToStrF(vlren,ffNumber,10,2);
  if vqten>0 then qrLabel19.Caption:=FloatToStrF(vlren/vqten,ffNumber,10,2)
  else qrLabel19.Caption:='';
  qrLabel23.Caption:=FormatFloat('#,0.###',vqtsa);
  qrLabel25.Caption:=FloatToStrF(vlrsa,ffNumber,10,2);
  if vqtsa>0 then qrLabel24.Caption:=FloatToStrF(vlrsa/vqtsa,ffNumber,10,2)
  else qrLabel24.Caption:='';
{  qrLabel3.Caption:=FloatToStrF(vqten-vqtsa,ffNumber,10,3);
  if (vqten-vqtsa)>0 then qrLabel26.Caption:=FloatToStrF((vlren-vlrsa)/(vqten-vqtsa),ffNumber,10,2)
  else qrLabel26.Caption:='';
  qrLabel27.Caption:=FloatToStrF(vlren-vlrsa,ffNumber,10,2);}
end;

procedure TqrEstMerca.DetailBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if DetailBand2.Color=$00EEEEEE then DetailBand2.Color:=clWhite
  else DetailBand2.Color:=$00EEEEEE;
  vqt1:=qrProduto.FieldByName('QtdeSal').asFloat;
  vme1:=qrProduto.FieldByName('VlrMedSal').asFloat;
  vva1:=qrProduto.FieldByName('ValorSal').asFloat;
  qrLabel28.Caption:=FormatFloat('#,0.###',vqt1);
  qrLabel30.Caption:=FloatToStrF(vme1,ffNumber,10,2);
  qrLabel31.Caption:=FloatToStrF(vva1,ffNumber,10,2);
  qrProduto.Next;
  if vcod<>qrProduto.FieldByName('Produto').asInteger then begin
     vcod:=qrProduto.FieldByName('Produto').asInteger;
     vqten:=0; vqtsa:=0; vlren:=0; vlrsa:=0;
     NewPage;
  end;
  if not qrProduto.Eof then qrProduto.Prior;
end;

procedure TqrEstMerca.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  fSql(4,1,['Select QtdeSal, VlrMedSal, ValorSal',
            qrProduto.Sql.Strings[1],
            'Where Produto=0'+qrProduto.FieldByName('Produto').Text+
            ' and Data<'+frInvD(qrProduto.FieldByName('Data').Value),
            'Order by Data Desc'],4);
  vqt1:=0; vqt2:=0; vva1:=0; vva2:=0; vme1:=0;
  if dm.qrSql1.RecordCount>0 then begin
    vqt1:=dm.qrSql1.Fields[0].asFloat;
    vme1:=dm.qrSql1.Fields[1].asFloat;
    vva1:=dm.qrSql1.Fields[2].asFloat;
  end;
  qrLabel28.Caption:=FormatFloat('#,0.###',vqt1);
  qrLabel30.Caption:=FloatToStrF(vme1,ffNumber,10,2);
  qrLabel31.Caption:=FloatToStrF(vva1,ffNumber,10,2);
  qrLabel29.Caption:='Página: '+frPree(PageNumber+1,4,'0',0);
end;


end.
