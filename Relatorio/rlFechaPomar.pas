unit rlFechaPomar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrFechaPomar = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrProdu: TQuery;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel82: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrFechaPomar: TqrFechaPomar;
  vfpcod,vfprec,vfpdes:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrFechaPomar.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFechaPomar.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vqt,vrt,vct,vpt:Double; vrec:Integer;
    vpro:String; vqr1,vqr2,vqr3,vqr4,vqr5,vqr6:TQRLabel;
begin
//limpa os campos
  vqr1:=qrLabel4; vqr2:=qrLabel5; vqr3:=qrLabel6; vqr4:=qrLabel7; vqr5:=qrLabel66; vqr6:=qrLabel39;
  for vrec:=1 to 7 do begin
     if vrec=2 then begin
        vqr1:=qrLabel1; vqr2:=qrLabel9; vqr3:=qrLabel10; vqr4:=qrLabel11; vqr5:=qrLabel67; vqr6:=qrLabel40;
     end;
     if vrec=3 then begin
        vqr1:=qrLabel12; vqr2:=qrLabel13; vqr3:=qrLabel14; vqr4:=qrLabel15; vqr5:=qrLabel68; vqr6:=qrLabel41;
     end;
     if vrec=4 then begin
        vqr1:=qrLabel17; vqr2:=qrLabel18; vqr3:=qrLabel20; vqr4:=qrLabel23; vqr5:=qrLabel69; vqr6:=qrLabel42;
     end;
     if vrec=5 then begin
        vqr1:=qrLabel24; vqr2:=qrLabel25; vqr3:=qrLabel26; vqr4:=qrLabel27; vqr5:=qrLabel70; vqr6:=qrLabel43;
     end;
     if vrec=6 then begin
        vqr1:=qrLabel22; vqr2:=qrLabel44; vqr3:=qrLabel45; vqr4:=qrLabel46; vqr5:=qrLabel71; vqr6:=qrLabel47;
     end;
     if vrec=7 then begin
        vqr1:=qrLabel49; vqr2:=qrLabel50; vqr3:=qrLabel51; vqr4:=qrLabel52; vqr5:=qrLabel72; vqr6:=qrLabel53;
     end;
     vqr1.Caption:='';vqr2.Caption:='';vqr3.Caption:='';vqr4.Caption:='';vqr5.Caption:='';vqr6.Caption:='';
  end;
//sql - produtor
  if vfpcod<>'' then fSql(1,1,['Select * FROM RRPomar Where Numero=0'+qrProdu.FieldByName('Numero').Text],1)
  else fSql(1,1,['Select * FROM RRPomar'],1);
  vpro:='';
  while not dm.qrSql1.Eof do begin
     if dm.qrSql1.FieldByName('ForCod1').asInteger>0 then
        vpro:=vpro+'Codigo=0'+dm.qrSql1.FieldByName('ForCod1').Text+' or ';
     if dm.qrSql1.FieldByName('ForCod2').asInteger>0 then
        vpro:=vpro+'Codigo=0'+dm.qrSql1.FieldByName('ForCod2').Text+' or ';
     if dm.qrSql1.FieldByName('ForCod3').asInteger>0 then
        vpro:=vpro+'Codigo=0'+dm.qrSql1.FieldByName('ForCod3').Text+' or ';
     if dm.qrSql1.FieldByName('ForCod4').asInteger>0 then
        vpro:=vpro+'Codigo=0'+dm.qrSql1.FieldByName('ForCod4').Text+' or ';
     if dm.qrSql1.FieldByName('ForCod5').asInteger>0 then
        vpro:=vpro+'Codigo=0'+dm.qrSql1.FieldByName('ForCod5').Text+' or ';
     dm.qrSql1.Next;
  end;
  if Trim(vpro)<>'' then vpro:=' and ('+Copy(vpro,1,Length(vpro)-3)+')';
  fSql(1,1,['SELECT SubString((ee.PRODCOD from 1 for 1),SUM(ee.PESOREAL) AS GE, SUM(ee.QTDEENT * ee.PRECO) AS PR, SUM(ee.PesoReal * ee.Pesoajus) AS CT',
            'FROM Classif cc, Classifm ee',
            'WHERE (cc.Lanc=ee.Lanc)'+vpro+' and '+vfprec,
            'GROUP BY SubString((ee.PRODCOD from 1 for 1)'],4);
  vrec:=1; vqr1:=qrLabel4; vqr2:=qrLabel5; vqr3:=qrLabel6; vqr4:=qrLabel7; vqr5:=qrLabel66; vqr6:=qrLabel39;
  vqt:=0; vrt:=0; vct:=0;
  while not dm.qrSql1.Eof do begin
     if vrec=2 then begin
        vqr1:=qrLabel1; vqr2:=qrLabel9; vqr3:=qrLabel10; vqr4:=qrLabel11; vqr5:=qrLabel67; vqr6:=qrLabel40;
     end;
     if vrec=3 then begin
        vqr1:=qrLabel12; vqr2:=qrLabel13; vqr3:=qrLabel14; vqr4:=qrLabel15; vqr5:=qrLabel68; vqr6:=qrLabel41;
     end;
     if vrec=4 then begin
        vqr1:=qrLabel17; vqr2:=qrLabel18; vqr3:=qrLabel20; vqr4:=qrLabel23; vqr5:=qrLabel69; vqr6:=qrLabel42;
     end;
     if vrec=5 then begin
        vqr1:=qrLabel24; vqr2:=qrLabel25; vqr3:=qrLabel26; vqr4:=qrLabel27; vqr5:=qrLabel70; vqr6:=qrLabel43;
     end;
     if vrec=6 then begin
        vqr1:=qrLabel22; vqr2:=qrLabel44; vqr3:=qrLabel45; vqr4:=qrLabel46; vqr5:=qrLabel71; vqr6:=qrLabel47;
     end;
     if vrec=7 then begin
        vqr1:=qrLabel49; vqr2:=qrLabel50; vqr3:=qrLabel51; vqr4:=qrLabel52; vqr5:=qrLabel72; vqr6:=qrLabel53;
     end;
//repassa valor
     vqr1.Caption:=dm.qrSql1.Fields[0].Text;
     vqr1.Caption:=vqr1.Caption+' - '+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+(dm.qrSql1.Fields[0].Text+'0')],1);
     vqr2.Caption:=FloatToStrF(dm.qrSql1.Fields[1].asFloat,ffNumber,10,0);
     vqr3.Caption:=FloatToStrF(dm.qrSql1.Fields[2].asFloat,ffNumber,10,2);
     vqr5.Caption:=FloatToStrF(dm.qrSql1.Fields[3].asFloat,ffNumber,10,2);
     if dm.qrSql1.Fields[2].asFloat>0 then
        vqr6.Caption:=FloatToStrF(dm.qrSql1.Fields[3].asFloat/dm.qrSql1.Fields[1].asFloat,ffNumber,10,2)
     else vqr6.Caption:='0,00';
     if dm.qrSql1.Fields[1].asFloat>0 then
        vqr4.Caption:=FloatToStrF(dm.qrSql1.Fields[2].asFloat/dm.qrSql1.Fields[1].asFloat,ffNumber,10,3);
     vqt:=vqt+dm.qrSql1.Fields[1].asFloat;
     vrt:=vrt+dm.qrSql1.Fields[2].asFloat;
     vct:=vct+dm.qrSql1.Fields[3].asFloat;
     dm.qrSql1.Next;
     vrec:=vrec+1;
  end;
  qrLabel29.Caption:=FloatToStrF(vqt,ffNumber,10,0);
  qrLabel30.Caption:=FloatToStrF(vrt,ffNumber,10,2);
  if vqt>0 then qrLabel31.Caption:=FloatToStrF(vrt/vqt,ffNumber,10,3)
  else qrLabel31.Caption:='0';
  qrLabel82.Caption:=FloatToStrF(vct,ffNumber,10,2);
  qrLabel36.Caption:=FloatToStrF((vrt-vct),ffNumber,10,2);
  if vqt>0 then qrLabel37.Caption:=FloatToStrF((vrt-vct)/vqt,ffNumber,10,3)
  else qrLabel37.Caption:='0';
  if vqt>0 then qrLabel33.Caption:=FloatToStrF(vct/vqt,ffNumber,10,3)
  else qrLabel33.Caption:='0';
//repassa custo por variedade
  vqr6:=qrLabel74;
  for vrec:=1 to 7 do begin
     if vrec=1 then begin vqr3:=qrLabel5;  vqr4:=qrLabel6;  vqr2:=qrLabel55; vqr6:=qrLabel74; vqr5:=qrLabel66; end;
     if vrec=2 then begin vqr3:=qrLabel9;  vqr4:=qrLabel10; vqr2:=qrLabel56; vqr6:=qrLabel75; vqr5:=qrLabel67; end;
     if vrec=3 then begin vqr3:=qrLabel13; vqr4:=qrLabel14; vqr2:=qrLabel57; vqr6:=qrLabel76; vqr5:=qrLabel68; end;
     if vrec=4 then begin vqr3:=qrLabel18; vqr4:=qrLabel20; vqr2:=qrLabel58; vqr6:=qrLabel77; vqr5:=qrLabel69; end;
     if vrec=5 then begin vqr3:=qrLabel25; vqr4:=qrLabel26; vqr2:=qrLabel59; vqr6:=qrLabel78; vqr5:=qrLabel70; end;
     if vrec=6 then begin vqr3:=qrLabel44; vqr4:=qrLabel45; vqr2:=qrLabel60; vqr6:=qrLabel79; vqr5:=qrLabel71; end;
     if vrec=7 then begin vqr3:=qrLabel50; vqr4:=qrLabel51; vqr2:=qrLabel61; vqr6:=qrLabel80; vqr5:=qrLabel72; end;
     vqr2.Caption:=''; vqr6.Caption:='';
     if Trim(vqr3.Caption)<>'' then begin
        vqt:=StrToFloat(frTStr(vqr3.Caption));
        vrt:=StrToFloat(frTStr(vqr4.Caption))/100;
        vpt:=StrToFloat(frTStr(vqr5.Caption))/100;
        vqr2.Caption:=FloatToStrF(vrt-vpt,ffNumber,10,2);
        vqr6.Caption:=FloatToStrF((vrt-vpt)/vqt,ffNumber,10,3);
     end;
  end;
end;

end.
