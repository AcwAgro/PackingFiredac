unit rlPDLoteRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrPDLoteRes = class(TQuickRep)
    qrDados: TQuery;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  public

  end;

var
  qrPDLoteRes: TqrPDLoteRes;
  rtip,rdata,rvarie,vpro,vcat,vvar:String;
  vqtde,vperda,vqtd1,vqtd2,vqtdt1,vqtdt2:Double;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrPDLoteRes.QuickRepPreview(Sender: TObject);
begin
  vqtd1:=0; vqtd2:=0; vqtdt1:=0; vqtdt2:=0;
  fPreview(Sender);
end;

procedure TqrPDLoteRes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtd1:=0; vqtd2:=0; vqtdt1:=0; vqtdt2:=0;
end;

procedure TqrPDLoteRes.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vproc,vquil,vbins:Double;
begin
  vpro:=qrDados.FieldByName('Codigo').asString;
  vcat:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
  vvar:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
  if trim(vpro)<>'' then begin
    fSql(1,1,['Select cc.Lote, Count(cc.Lote), Sum(PesoPro), Sum(Perca), Sum(QtdeBin), Sum(PesoBru) as vQtdeBin, cc.Lanc',
                'From Classif cc, Classifm ee',
                'Where (cc.Lanc=ee.Lanc) and (ee.PesoReal<>0) and Codigo='+vpro+' and '+rvarie+' and '+rdata,
                'Group By cc.Lanc, cc.Lote'],4);
    vperda:=0; vqtde:=0; vquil:=0; vbins:=0; vproc:=0;
    while not dm.qrSql1.Eof do begin
       vperda:=vperda+(dm.qrSql1.Fields[3].asFloat/dm.qrSql1.Fields[1].asFloat);
       vqtde:=vqtde+(dm.qrSql1.Fields[5].asFloat/dm.qrSql1.Fields[1].asFloat);
       vproc:=vproc+(dm.qrSql1.Fields[2].asFloat/dm.qrSql1.Fields[1].asFloat);
       vquil:=vquil+(dm.qrSql1.Fields[3].asFloat/dm.qrSql1.Fields[1].asFloat);
       vbins:=vbins+(dm.qrSql1.Fields[4].asFloat/dm.qrSql1.Fields[1].asFloat);
       dm.qrSql1.Next;
    end;
    qrLabel13.Caption:='Peso Proc... '+FloatToStrF(vproc,ffNumber,9,0);
    qrLabel12.Caption:='Perda kg... '+FloatToStrF(vquil,ffNumber,9,0);
    qrLabel11.Caption:='Qtde. Bins... '+FloatToStrF(vbins,ffNumber,9,0);
  end;
end;

procedure TqrPDLoteRes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrDados.FieldByName('Codigo').asString<>vpro then begin
     vqtdt1:=0; vqtdt2:=0;
     vpro:=qrDados.FieldByName('Codigo').asString;
     NewPage;
  end;
end;

procedure TqrPDLoteRes.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vqtd1:=vqtd1+qrDados.FieldByName('vQtd').asFloat;
  vqtd2:=vqtd2+qrDados.FieldByName('vkg').asFloat;
  vqtdt1:=vqtdt1+qrDados.FieldByName('vQtd').asFloat;
  vqtdt2:=vqtdt2+qrDados.FieldByName('vkg').asFloat;
  qrLabel6.Caption:=FloatToStrF(vqtd1,ffNumber,9,0);
  qrLabel7.Caption:=FloatToStrF(vqtd2,ffNumber,9,0);
  qrLabel19.Caption:=FloatToStrF(vqtd2/vqtde*100,ffNumber,9,2)+' %';
  qrLabel9.Caption:=FloatToStrF(vqtdt1,ffNumber,9,0);
  qrLabel10.Caption:=FloatToStrF(vqtdt2,ffNumber,9,0);
//  qrLabel14.Caption:=FloatToStrF(vqtdt2+vPerda,ffNumber,9,0);
  qrDados.Next;
  ChildBand1.Height:=0;
  if Copy(qrDados.FieldByName('ProdCod').asString,1,4)<>vcat then begin
     vcat:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
     ChildBand1.Height:=20;
     vqtd1:=0; vqtd2:=0;
     if Copy(qrDados.FieldByName('ProdCod').asString,1,2)<>vvar then begin
        vvar:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
        ChildBand1.Height:=40;
        vqtdt1:=0; vqtdt2:=0;
     end;
  end;
  if qrDados.FieldByName('Codigo').asString<>vpro then begin
     ChildBand1.Height:=40;
     vqtd1:=0; vqtd2:=0;
     vqtdt1:=0; vqtdt2:=0;
  end;
  if not qrDados.Eof then qrDados.Prior
  else ChildBand1.Height:=40;
end;

end.
