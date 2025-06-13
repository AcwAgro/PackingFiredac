unit rlEstMercaRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrEstMercaRes = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrProduto: TQuery;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    DetailBand2: TQRBand;
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
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel20: TQRLabel;
    ChildBand2: TQRChildBand;
    QRDBText5: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrEstMercaRes: TqrEstMercaRes;
  vdatares:String;
  vtant,vtent,vtsai,vtsal:Real;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrEstMercaRes.QuickRepPreview(Sender: TObject);
begin
  vtant:=0; vtent:=0; vtsai:=0; vtsal:=0;
  fPreview(Sender);
end;

procedure TqrEstMercaRes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtant:=0; vtent:=0; vtsai:=0; vtsal:=0;
  qrProduto.First;
end;

procedure TqrEstMercaRes.DetailBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
var vqant,vqent,vqsai,vqsal,vvant,vvent,vvsai,vvsal:Real;
begin
  if ChildBand2.Color=$00D4D4D4 then ChildBand2.Color:=clWhite
  else ChildBand2.Color:=$00D4D4D4;
  if Copy(qrProduto.Sql.Strings[1],1,11)='From EstMer' then
     qrLabel38.Caption:=fBus(1,['Select Descricao From CadMerca Where Codigo='+qrProduto.Fields[0].Text],1)
  else qrLabel38.Caption:=fBus(1,['Select Descricao From CadProdu Where Codigo='+qrProduto.Fields[0].Text],1);
//Anterior
  fSql(4,1,['Select Sum(QtdeEnt-QtdeSai) as vqtd, Sum(ValorEnt-ValorSai) as vValor',
             qrProduto.Sql.Strings[1],
            'Where Produto='+qrProduto.Fields[0].Text+' and '+vdatares],3);
  vqant:=dm.qrSql1.Fields[0].asFloat;
  vvant:=dm.qrSql1.Fields[1].asFloat;
  qrLabel28.Caption:=FloatToStrF(vqant,ffNumber,10,3);
  if vqent>0.00 then qrLabel30.Caption:=FloatToStrF(vvant/vqant,ffNumber,10,2)
  else qrLabel30.Caption:='0,00';
  qrLabel31.Caption:=FloatToStrF(vvant,ffNumber,10,2);
  vtant:=vtant+vvant;
//Entrada
  vqent:=qrProduto.Fields[1].asFloat;
  vvent:=qrProduto.Fields[2].asFloat;
  qrLabel1.Caption:=FloatToStrF(vqent,ffNumber,10,3);
  if vqent>0.00 then qrLabel3.Caption:=FloatToStrF(vvent/vqent,ffNumber,10,2)
  else qrLabel3.Caption:='0,00';
  qrLabel9.Caption:=FloatToStrF(vvent,ffNumber,10,2);
  vtent:=vtent+vvent;
//Saída
  vqsai:=qrProduto.Fields[3].asFloat;
  vvsai:=qrProduto.Fields[4].asFloat;
  qrLabel13.Caption:=FloatToStrF(vqsai,ffNumber,10,3);
  if vqsai>0.00 then qrLabel19.Caption:=FloatToStrF(vvsai/vqsai,ffNumber,10,2)
  else qrLabel19.Caption:='0,00';
  qrLabel21.Caption:=FloatToStrF(vvsai,ffNumber,10,2);
  vtsai:=vtsai+vvsai;
//Saldo
  vqsal:=vqant+vqent-vqsai;
  vvsal:=vvant+vvent-vvsai;
  qrLabel22.Caption:=FloatToStrF(vqsal,ffNumber,10,3);
  if vqsal>0.00 then qrLabel23.Caption:=FloatToStrF(vvsal/vqsal,ffNumber,10,2)
  else qrLabel23.Caption:='0,00';
  qrLabel24.Caption:=FloatToStrF(vvsal,ffNumber,10,2);
  vtsal:=vtsal+(vvent-vvsai);
end;

procedure TqrEstMercaRes.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel27.Caption:=FloatToStrF(vtant,ffNumber,10,2);
  qrLabel26.Caption:=FloatToStrF(vtent,ffNumber,10,2);
  qrLabel32.Caption:=FloatToStrF(vtsai,ffNumber,10,2);
  qrLabel37.Caption:=FloatToStrF(vtsal,ffNumber,10,2);
end;

end.
