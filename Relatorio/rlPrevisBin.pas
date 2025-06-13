unit rlPrevisBin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrPrevisBin = class(TQuickRep)
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
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
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
  qrPrevisBin: TqrPrevisBin;
  vrec:Integer;
  vtres,vtqbi,vqbi,vtot,vqtd,vtpes,vtper,vtbin,vtsal:Double;
  vGrupo:String;

implementation

{$R *.DFM}
uses Data, Menu, frmRelProducao, Rotina;

procedure TqrPrevisBin.QuickRepPreview(Sender: TObject);
begin
  vrec:=qrMovim.FieldByName('ProdCod').asInteger;
  vtqbi:=0; vqbi:=0; vtot:=0; vqtd:=0; vtpes:=0;
  vtper:=0; vtbin:=0; vtsal:=0; vtres:=0;
  fPreview(Sender);
end;

procedure TqrPrevisBin.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrMovim.First;
  vrec:=qrMovim.FieldByName('ProdCod').asInteger;
  vtqbi:=0; vqbi:=0; vtot:=0; vqtd:=0; vtpes:=0;
  vtper:=0; vtbin:=0; vtsal:=0; vtres:=0;
end;

procedure TqrPrevisBin.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vbin,vpes,vper,vsal:Double;
begin
  fSql(1,1,['Select Sum(BinsQtd) as qtd From EntRB',
            'Where ProdCod='+qrMovim.FieldByName('ProdCod').Text+
            '  and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1)],2);
  vbin:=dm.qrSql1.Fields[0].asFloat;

  fSql(1,1,['Select Sum(Qtde) as qtd From EntRE',
              'Where ProdCod='+qrMovim.FieldByName('ProdCod').Text+
            '  and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1)],2);
  vbin:=vbin-dm.qrSql1.Fields[0].asFloat;

  qrLabel18.Caption:=FloatToStrF(vbin,ffNumber,10,0);
  vqtd:=vqtd+qrMovim.FieldByName('Qtde').asFloat;
  qrLabel5.Caption:=FloatToStrF(vqtd,ffNumber,10,0);


  fSql(1,1,['Select Prodcod, Sum(cc.VarieQtd), Sum(cc.VarieQtd*pp.BinsLiq/pp.Qtde) as vBinsLiq, Sum(pp.BinsQtd)',
            'From EntRE pp, EntREVar cc',
            'Where pp.Lanc=cc.Lanc and ProdCod='+qrMovim.FieldByName('ProdCod').Text+
            '  and '+vgrupo+
            '  and pp.Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and pp.Data<'+frInvD(ffrmRelProducao.Ed44.Date+1)+
            ' Group By Prodcod'],4);
  vqbi:=dm.qrSql1.Fields[1].asFloat+dm.qrSql1.Fields[3].asFloat;

  vtot:=vtot+dm.qrSql1.Fields[2].asFloat;
  vtqbi:=vtqbi+vqbi;
  qrLabel25.Caption:=FloatToStrF(vqbi,ffNumber,10,0);
  qrLabel9.Caption:=FloatToStrF(dm.qrSql1.Fields[2].asFloat,ffNumber,10,0);
  qrLabel4.Caption:=FloatToStrF(vtot,ffNumber,10,0);
  vpes:=qrMovim.FieldByName('Qtde').asFloat/350;
  qrLabel15.Caption:=FloatToStrF(vpes,ffNumber,10,0);
  vper:=(vpes-vqbi)*0.30;
  qrLabel17.Caption:=FloatToStrF(vper,ffNumber,10,0);
  qrLabel28.Caption:=FloatToStrF((vpes-vqbi),ffNumber,10,0);
  vsal:=vpes-vqbi-vbin;
  qrLabel19.Caption:=FloatToStrF(vsal,ffNumber,10,0);
//Saldo
  qrLabel26.Caption:=FloatToStrF(vtqbi,ffNumber,10,0);
  vtres:=vtres+(vpes-vqbi);
  qrLabel30.Caption:=FloatToStrF(vtres,ffNumber,10,0);
  vtpes:=vtpes+vpes;
  qrLabel20.Caption:=FloatToStrF(vtpes,ffNumber,10,0);
  vtper:=vtper+vper;
  qrLabel21.Caption:=FloatToStrF(vtper,ffNumber,10,0);
  vtbin:=vtbin+vbin;
  qrLabel22.Caption:=FloatToStrF(vtbin,ffNumber,10,0);
  vtsal:=vtsal+vsal;
  qrLabel23.Caption:=FloatToStrF(vtsal,ffNumber,10,0);
end;

end.
