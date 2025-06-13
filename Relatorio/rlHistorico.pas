unit rlHistorico;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrHistorico = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrCadas: TQuery;
    QRSysData1: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    qrEmpre: TQuery;
    QRDBText11: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    qrEntra: TQuery;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRSubDetail3: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    qrPerfil: TQuery;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    ChildBand5: TQRChildBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrHistorico: TqrHistorico;
  vbin,vent,vper,vqui,vc1,vc2,vc3,vc4,vc5,vc6:Double;
  vhisdat,vhisvar,vhispro,vhisace:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrHistorico.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrHistorico.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrEmpre.Close;
  qrEmpre.SQL.Strings[2]:='Where ProdCod=0'+qrCadas.Fields[0].Text+
                          ' and '+vhisdat;
  qrEmpre.Open;
  qrEntra.Close;
  qrEntra.SQL.Strings[2]:='Where (ee.Lanc=vv.Lanc) and ProdCod=0'+qrCadas.Fields[0].Text+
                          ' and '+vhisdat+' and '+vhisvar;
  qrEntra.Open;
  qrPerfil.Close;
  qrPerfil.SQL.Strings[2]:='Where Codigo=0'+qrCadas.Fields[0].Text+
                          ' and '+vhisdat+' and '+vhispro+' and '+vhisace;
  qrPerfil.Open;
  vbin:=0;vent:=0;vper:=0;vqui:=0;vc1:=0;vc2:=0;vc3:=0;vc4:=0;vc5:=0;vc6:=0;
  if qrEmpre.RecordCount>0 then QRSubDetail1.Height:=18
  else QRSubDetail1.Height:=0;
  if qrEntra.RecordCount>0 then QRSubDetail2.Height:=18
  else QRSubDetail2.Height:=0;
  if qrPerfil.RecordCount>0 then QRSubDetail3.Height:=18
  else QRSubDetail3.Height:=0;
end;

procedure TqrHistorico.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand2.Height:=0;
  if qrEmpre.RecordCount>0 then begin
    vbin:=vbin+qrEmpre.FieldByName('Binsqtd').AsFloat;
    qrLabel24.Caption:=FloatToStrF(vbin,ffNumber,10,0);
    qrEmpre.Next;
    if not qrEmpre.Eof then qrEmpre.Prior
    else ChildBand2.Height:=50;
  end;
end;

procedure TqrHistorico.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand3.Height:=0;
  if qrEntra.RecordCount>0 then begin
    vent:=vent+qrEntra.FieldByName('Varieqtd').AsFloat;
    qrLabel26.Caption:=FloatToStrF(vent,ffNumber,10,0);
    qrEntra.Next;
    if not qrEntra.Eof then qrEntra.Prior
    else ChildBand3.Height:=60;
  end;
end;

procedure TqrHistorico.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vpqt,vpbi,vpc1,vpc2,vpc3,vpc4,vpc5,vpc6:Double;
begin
  ChildBand4.Height:=0;
  if qrPerfil.RecordCount>0 then begin
    fSql(1,1,['SELECT Lanc, SUM(PESOLIQ), SUM(QTDEBIN)',
              'FROM CLASSIF',
              'WHERE LANC=0'+qrPerfil.FieldByName('LANC').Text+
              ' and Codigo=0'+qrCadas.FieldByName('Codigo').Text,
              'Group By Lanc'],4);
    vpqt:=dm.qrSql1.Fields[1].asFloat;
    vpbi:=dm.qrSql1.Fields[2].asFloat;
    vqui:=vqui+vpbi;
    qrLabel30.Caption:=FloatToStrF(vqui,ffNumber,10,0);
    vper:=vper+vpqt;
    qrLabel59.Caption:=FloatToStrF(vper,ffNumber,10,0);
    qrLabel61.Caption:=FloatToStrF(vpbi,ffNumber,10,0);
    qrLabel62.Caption:=FloatToStrF(vpqt,ffNumber,10,0);
    fSql(1,1,['SELECT SubString(ProdCod from 1 for 3), Sum(PesoReal)',
              'FROM CLASSIFM',
              'WHERE Lanc=0'+dm.qrSql1.FieldByName('Lanc').Text,
              'GROUP BY SubString(ProdCod from 1 for 3)'],4);
    vpc1:=0;vpc2:=0;vpc3:=0;vpc4:=0;vpc5:=0;vpc6:=0;
    dm.qrSql1.First;
    qrLabel60.Caption:=fBus(1,['Select Descricao From CadVarie Where Codigo=0'+Copy(dm.qrSql1.Fields[0].Text,1,2)],1);
    while not dm.qrSql1.Eof do begin
       if Copy(dm.qrSql1.Fields[0].Text,3,1)='0' then begin
          vpc1:=vpc1+frDeci((dm.qrSql1.Fields[1].asFloat/vpqt*100),2);
          vc1:=vc1+dm.qrSql1.Fields[1].asFloat;
       end;
       if Copy(dm.qrSql1.Fields[0].Text,3,1)='1' then begin
          vpc2:=vpc2+frDeci((dm.qrSql1.Fields[1].asFloat/vpqt*100),2);
          vc2:=vc2+dm.qrSql1.Fields[1].asFloat;
       end;
       if Copy(dm.qrSql1.Fields[0].Text,3,1)='2' then begin
          vpc3:=vpc3+frDeci((dm.qrSql1.Fields[1].asFloat/vpqt*100),2);
          vc3:=vc3+dm.qrSql1.Fields[1].asFloat;
       end;
       if Copy(dm.qrSql1.Fields[0].Text,3,1)='3' then begin
          vpc4:=vpc4+frDeci((dm.qrSql1.Fields[1].asFloat/vpqt*100),2);
          vc4:=vc4+dm.qrSql1.Fields[1].asFloat;
       end;
       if Copy(dm.qrSql1.Fields[0].Text,3,1)='4' then begin
          vpc5:=vpc5+frDeci((dm.qrSql1.Fields[1].asFloat/vpqt*100),2);
          vc5:=vc5+dm.qrSql1.Fields[1].asFloat;
       end;
       if Copy(dm.qrSql1.Fields[0].Text,3,1)='5' then begin
          vpc6:=vpc6+frDeci((dm.qrSql1.Fields[1].asFloat/vpqt*100),2);
          vc6:=vc6+dm.qrSql1.Fields[1].asFloat;
       end;
       dm.qrSql1.Next;
    end;
    qrLabel52.Caption:=FloatToStrF(vpc1,ffNumber,10,2);
    qrLabel53.Caption:=FloatToStrF(vpc2,ffNumber,10,2);
    qrLabel54.Caption:=FloatToStrF(vpc3,ffNumber,10,2);
    qrLabel55.Caption:=FloatToStrF(vpc4,ffNumber,10,2);
    qrLabel56.Caption:=FloatToStrF(vpc5,ffNumber,10,2);
    qrLabel57.Caption:=FloatToStrF(vpc6,ffNumber,10,2);
    qrPerfil.Next;
    if not qrPerfil.Eof then qrPerfil.Prior
    else ChildBand4.Height:=20;
    qrLabel31.Caption:=FloatToStrF(frDeci(vc1/vper*100,2),ffNumber,10,2);
    qrLabel32.Caption:=FloatToStrF(frDeci(vc2/vper*100,2),ffNumber,10,2);
    qrLabel33.Caption:=FloatToStrF(frDeci(vc3/vper*100,2),ffNumber,10,2);
    qrLabel34.Caption:=FloatToStrF(frDeci(vc4/vper*100,2),ffNumber,10,2);
    qrLabel35.Caption:=FloatToStrF(frDeci(vc5/vper*100,2),ffNumber,10,2);
    qrLabel36.Caption:=FloatToStrF(frDeci(vc6/vper*100,2),ffNumber,10,2);
  end;
end;

procedure TqrHistorico.ChildBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vmedia,vqtde:Double;
begin
  qrLabel42.Caption:=FloatToStrF(vbin-vent,ffNumber,10,0);
  if vqui>0 then begin
     vmedia:=vper/vqui;
     vqtde:=vent*vmedia;
     qrLabel45.Caption:=FloatToStrF(vqtde,ffNumber,10,0);
     qrLabel46.Caption:=FloatToStrF(frDeci(vc1/vper*vqtde,2),ffNumber,10,0);
     qrLabel47.Caption:=FloatToStrF(frDeci(vc2/vper*vqtde,2),ffNumber,10,0);
     qrLabel48.Caption:=FloatToStrF(frDeci(vc3/vper*vqtde,2),ffNumber,10,0);
     qrLabel49.Caption:=FloatToStrF(frDeci(vc4/vper*vqtde,2),ffNumber,10,0);
     qrLabel50.Caption:=FloatToStrF(frDeci(vc5/vper*vqtde,2),ffNumber,10,0);
     qrLabel51.Caption:=FloatToStrF(frDeci(vc6/vper*vqtde,2),ffNumber,10,0);
  end else begin
     vmedia:=0; vqtde:=0;
     qrLabel45.Caption:=FloatToStrF(vqtde,ffNumber,10,0);
     qrLabel46.Caption:=FloatToStrF(0,ffNumber,10,0);
     qrLabel47.Caption:=FloatToStrF(0,ffNumber,10,0);
     qrLabel48.Caption:=FloatToStrF(0,ffNumber,10,0);
     qrLabel49.Caption:=FloatToStrF(0,ffNumber,10,0);
     qrLabel50.Caption:=FloatToStrF(0,ffNumber,10,0);
     qrLabel51.Caption:=FloatToStrF(0,ffNumber,10,0);
  end;
  ChildBand5.Height:=0;
  qrPerfil.Next;
  if not qrPerfil.Eof then qrPerfil.Prior
  else ChildBand5.Height:=55;
end;

end.
