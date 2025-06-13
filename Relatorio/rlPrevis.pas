unit rlPrevis;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrPrevis = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qrPrevis: TqrPrevis;
  vrec:Integer;
  vtot,vqtd,vtbin,vebin:Double;

implementation

{$R *.DFM}
uses Data, Menu, frmRelProducao, Rotina;

procedure TqrPrevis.QuickRepPreview(Sender: TObject);
begin
  vrec:=qrMovim.FieldByName('ProdCod').asInteger;
  vtot:=0; vqtd:=0; vtbin:=0; vebin:=0;
  fPreview(Sender);
end;

procedure TqrPrevis.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrMovim.First;
  vrec:=qrMovim.FieldByName('ProdCod').asInteger;
  vtot:=0; vqtd:=0; vtbin:=0; vebin:=0;
end;

procedure TqrPrevis.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vqu:Double;
begin
  ChildBand2.Height:=0;
  vqtd:=vqtd+qrMovim.FieldByName('vQtde').asFloat;
  qrLabel5.Caption:=FloatToStrF(vqtd,ffNumber,10,0);
  fSql(1,1,['Select Sum(cc.VariePes) as vliq, Sum(Varieqtd) as vbin',
            '  From EntRE pp, EntREVar cc',
            ' Where pp.Lanc=cc.Lanc and ProdCod='+qrMovim.FieldByName('ProdCod').Text+
            '   and pp.Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and pp.Data<'+frInvD(ffrmRelProducao.Ed44.Date+1)+
            '   and cc.VarieCod='+qrMovim.FieldByName('VarieCod').Text,
            ' Group By Prodcod, cc.VarieCod'],4);
  vtot:=vtot+dm.qrSql1.Fields[0].asFloat;
  qrLabel9.Caption:=FloatToStrF(dm.qrSql1.Fields[0].asFloat,ffNumber,10,0);
  vqu:=dm.qrSql1.Fields[0].asFloat-qrMovim.FieldByName('vqtde').asFloat;
  if dm.qrSql1.Fields[0].asFloat <= 0 then vqu := 0;

  qrLabel11.Caption:=FloatToStrF(vqu,ffNumber,10,0);
  qrLabel12.Caption:=FloatToStrF(vqu/qrMovim.FieldByName('vqtde').asFloat*100,ffNumber,10,2);

  //total
  qrLabel4.Caption:=FloatToStrF(vtot,ffNumber,10,0);
  vqu:=vtot-vqtd;
  if vtot <=0 then vqu := 0;
  qrLabel15.Caption:=FloatToStrF(vqu,ffNumber,10,0);
  qrLabel17.Caption:=FloatToStrF(vqu/vqtd*100,ffNumber,10,2);

  //Bins
  qrLabel13.Caption:=FloatToStrF(dm.qrSql1.Fields[1].asInteger,ffNumber,5,0);
  vebin:=vebin+dm.qrSql1.Fields[1].asInteger;
  qrLabel19.Caption:=FloatToStrF(vebin,ffNumber,5,0);
end;

procedure TqrPrevis.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrMovim.Next;
  if vrec<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vrec:=qrMovim.FieldByName('ProdCod').asInteger;
     vtot:=0; vqtd:=0;
     ChildBand2.Height:=20;
     QRDBText7.Height:=15;
     QRDBText8.Height:=15;
  end else begin
     QRDBText7.Height:=0;
     QRDBText8.Height:=0;
  end;
  if qrMovim.Eof then ChildBand2.Height:=20
  else qrMovim.Prior;
end;

end.
