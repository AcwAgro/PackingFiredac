unit rlNotaCat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport, IBCustomDataSet, IBQuery, qrPrev;

type
  TqrNotaCat = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    rbDetail: TQRBand;
    QRDBText53: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    qrEstoque: TQuery;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    qrEstoqCom: TQuery;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel26: TQRLabel;
    ChildBand1: TQRChildBand;
    QRRichText2: TQRRichText;
    QRDBText41: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel2: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public
  end;

var
  qrNotaCat: TqrNotaCat;
  vIsen:Real;
  vCC,vPag:Integer;

implementation

uses Menu,Rotina,Data;
{$R *.DFM}

procedure TqrNotaCat.QuickRepPreview(Sender: TObject);
begin
  vcc:=0;
  fPreview(Sender);
end;

procedure TqrNotaCat.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vcc:=vcc+1;
  ChildBand1.Height:=0;
  if vcc>=qrEstoqCom.RecordCount then ChildBand1.Height:=150-(qrEstoqCom.RecordCount*20)
end;

procedure TqrNotaCat.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrEstoqCom.First;
  vcc:=0;
end;

procedure TqrNotaCat.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vbruto:Real;
begin
  vbruto:=qrEstoque.FieldByName('PesoLiq').asFloat;
  vbruto:=vbruto+(vbruto*0.05);
  qrLabel2.Caption:=Floattostrf(vBruto,ffNumber,10,0)+' kg';
  qrLabel5.Caption:=Floattostrf(qrEstoque.FieldByName('PesoLiq').asFloat,ffNumber,10,0)+' kg';
end;

procedure TqrNotaCat.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vcod:String;
begin
  qrLabel4.Caption:='';
  vcod:=qrEstoqCom.Fields[0].Text;
  if StrToInt(vCod)<3999 then qrLabel4.Caption:='MAÇÃ ';
  if fTra(1,['Select Descricao From CadVarie Where Codigo=0'+Copy(vCod,1,2)],1) then
    qrLabel4.Caption:=qrLabel4.Caption+dm.qrSqlTra.Fields[0].Text+' ';
  if fTra(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(vCod,3,2)],1) then
    qrLabel4.Caption:=qrLabel4.Caption+dm.qrSqlTra.Fields[0].Text+' ';
  qrLabel4.Caption:=Trim(qrLabel4.Caption);
end;

procedure TqrNotaCat.rbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrEstoque.FieldByName('VlrDesc').asFloat>0 then
     qrLabel7.Caption:='Vlr. Desconto...'+FloatToStrF(qrEstoque.FieldByName('Vlrdesc').asFloat,ffCurrency,10,2)
  else qrLabel7.Caption:='';
end;

end.
