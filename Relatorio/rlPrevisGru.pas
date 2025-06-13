unit rlPrevisGru;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrPrevisGru = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrPrevisGru: TqrPrevisGru;
  vrec:Integer;
  vtot,vqtd:Double;
  vVaried:String;

implementation

{$R *.DFM}
uses Data, Menu, frmRelProducao, Rotina;

procedure TqrPrevisGru.QuickRepPreview(Sender: TObject);
begin
  vrec:=qrMovim.FieldByName('ProdCod').asInteger;
  vtot:=0; vqtd:=0;
  fPreview(Sender);
end;

procedure TqrPrevisGru.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrMovim.First;
  vrec:=qrMovim.FieldByName('ProdCod').asInteger;
  vtot:=0; vqtd:=0;
end;

procedure TqrPrevisGru.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqtd:=vqtd+qrMovim.FieldByName('Qtde').asFloat;
  qrLabel5.Caption:=FloatToStrF(vqtd,ffNumber,10,0);
  fSql(1,1,['Select Prodcod, Sum(cc.VarieQtd), Sum(cc.VarieQtd*pp.BinsLiq/pp.Qtde) as vBinsLiq',
            'From EntRE pp, EntREVar cc',
            'Where pp.Lanc=cc.Lanc and ProdCod='+qrMovim.FieldByName('ProdCod').Text+
            ' and '+vVaried+
            ' and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1),
            'Group By Prodcod'],4);
  vtot:=vtot+dm.qrSql1.Fields[2].asFloat;
  qrLabel9.Caption:=FloatToStrF(dm.qrSql1.Fields[2].asFloat,ffNumber,10,0);
  qrLabel4.Caption:=FloatToStrF(vtot,ffNumber,10,0);
end;

end.
