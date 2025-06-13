unit rlPrevisGer;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrPrevisGer = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
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
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
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
  qrPrevisGer: TqrPrevisGer;
  vtot,vqtd,vtbin,vebin:Double;

implementation

{$R *.DFM}
uses Data, Menu, frmRelQualidade, Rotina;

procedure TqrPrevisGer.QuickRepPreview(Sender: TObject);
begin
  vtot:=0; vqtd:=0; vtbin:=0; vebin:=0;
  fPreview(Sender);
end;

procedure TqrPrevisGer.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrMovim.First;
  vtot:=0; vqtd:=0; vtbin:=0; vebin:=0;
end;

procedure TqrPrevisGer.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vqu:Double;
begin
  ChildBand2.Height:=0;
  vqtd:=vqtd+qrMovim.FieldByName('vQtde').asFloat;
  qrLabel5.Caption:=FloatToStrF(vqtd,ffNumber,10,0);
  fSql(1,1,['Select cc.VarieCod, Sum(cc.VariePes) as vBinsLiq, Sum(Varieqtd) as vbin',
            'From EntRE pp, EntREVar cc',
            'Where pp.Lanc=cc.Lanc and cc.VarieCod='+qrMovim.FieldByName('VarieCod').Text+
            '  and Data>='+frInvD(ffrmRelQualidade.Ed4.Date)+' and Data<'+frInvD(ffrmRelQualidade.Ed44.Date+1),
            'Group By cc.VarieCod'],4);
  vtot:=vtot+dm.qrSql1.Fields[1].asFloat;
  qrLabel9.Caption:=FloatToStrF(dm.qrSql1.Fields[1].asFloat,ffNumber,10,0);
  vqu:=dm.qrSql1.Fields[1].asFloat-qrMovim.FieldByName('vqtde').asFloat;
  if dm.qrSql1.Fields[1].asFloat <= 0 then vqu := 0;

  qrLabel11.Caption:=FloatToStrF(vqu,ffNumber,10,0);
  qrLabel12.Caption:=FloatToStrF(vqu/qrMovim.FieldByName('vqtde').asFloat*100,ffNumber,10,2);

  //total
  qrLabel4.Caption:=FloatToStrF(vtot,ffNumber,10,0);
  vqu:=vtot-vqtd;
  if vtot <=0 then vqu := 0;

  qrLabel15.Caption:=FloatToStrF(vqu,ffNumber,10,0);
  qrLabel17.Caption:=FloatToStrF(vqu/vqtd*100,ffNumber,10,2);

  //Bins
  qrLabel14.Caption:=FloatToStrF(dm.qrSql1.Fields[2].asInteger,ffNumber,5,0);
  vebin:=vebin+dm.qrSql1.Fields[2].asInteger;
  qrLabel20.Caption:=FloatToStrF(vebin,ffNumber,5,0);
end;

procedure TqrPrevisGer.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrMovim.Next;
  if qrMovim.Eof then ChildBand2.Height:=20
  else qrMovim.Prior;
end;

end.
