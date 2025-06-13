unit rlEstProdutor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrEstProdutor = class(TQuickRep)
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
    QRLabel15: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrEstProdutor: TqrEstProdutor;
  vqtant,vqten,vqtsa,vqt1,vqt2:Double;
  vcod:Integer;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrEstProdutor.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtant:=0; qrProduto.First;
end;

procedure TqrEstProdutor.QuickRepPreview(Sender: TObject);
begin
  vqtant:=0; qrProduto.First;
  fPreview(Sender);
end;

procedure TqrEstProdutor.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  fSql(4,1,['Select QtdeEnt, QtdeSai',  qrProduto.Sql.Strings[1],
            'Where Produto=0'+qrProduto.FieldByName('Produto').Text+
            ' and Codigo=0'+qrProduto.FieldByName('Codigo').Text+
            ' and Data<'+frInvD(qrProduto.FieldByName('Data').Value),
            'Order by Data Desc'],4);
  vqtant:=dm.qrSql1.Fields[0].asFloat-dm.qrSql1.Fields[1].asFloat;
  vqten:=0; vqtsa:=0;
  qrLabel29.Caption:='Página: '+frPree(PageNumber+1,4,'0',0);
end;

procedure TqrEstProdutor.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel28.Caption:=FloatToStrF(vqtant,ffNumber,10,0);
  vqt1:=qrProduto.FieldByName('QtdeEnt').asFloat;
  vqt2:=qrProduto.FieldByName('QtdeSai').asFloat;
  vqten:=vqten+vqt1;
  vqtsa:=vqtsa+vqt2;
  qrLabel23.Caption:=FloatToStrF(vqten,ffNumber,10,0);
  qrLabel3.Caption:=FloatToStrF(vqtsa,ffNumber,10,0);
  qrLabel5.Caption:=FloatToStrF(vqtant+vqt1-vqt2,ffNumber,10,0);
  vqtant:=vqtant+vqt1-vqt2;
end;

procedure TqrEstProdutor.DetailBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if DetailBand2.Color=$00EEEEEE then DetailBand2.Color:=clWhite
  else DetailBand2.Color:=$00EEEEEE;
  vcod:=qrProduto.FieldByName('Codigo').asInteger;
  qrProduto.Next;
  if vcod<>qrProduto.FieldByName('Codigo').asInteger then NewPage;
  if not qrProduto.Eof then qrProduto.Prior;
end;






end.
