unit rlPomarRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport, dialogs;

type
  TqrRatCusRes = class(TQuickRep)
    qrGrupo: TQuery;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRSubDetail3: TQRSubDetail;
    QRDBText14: TQRDBText;
    QRLabel10: TQRLabel;
    qrSaldo: TQuery;
    ColumnHeaderBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    qrArea: TQuery;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRShape1: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrRatCusRes: TqrRatCusRes;
  vlrDesp,vlrFixo,vlrRece,VlrInve,VlrResu:Real;

implementation

uses Menu, Data;

{$R *.DFM}

procedure TqrRatCusRes.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender)
end;

procedure TqrRatCusRes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vdesp,vfixo,vrece,vinve,vresu:Real;
begin
  DetailBand1.Height:=0;
{  if Copy(qrGrupo.Fields[0].Text,1,2)<>'FF' then begin
     DetailBand1.Height:=18;
     if dm.TRRArea.Locate('Area',qrGrupo.Fields[0].Text+'-0',[]) then
        qrLabel5.Caption:=dm.TRRArea.Fields[2].Text;
     qrSaldo.Close;
     qrSaldo.Sql.Strings[2]:='Where '+vdat+' and GrupoCod='+QuotedStr('2')+
                             ' and Grupo='+QuotedStr(qrGrupo.Fields[0].Text)+
                             ' and Safra='+QuotedStr(xSafra);
     qrSaldo.Open;
     vdesp:=qrSaldo.Fields[0].asFloat;
     vfixo:=vdesp*vlrfixo/vlrdesp;
     qrLabel2.Caption:=FloatToStrF(vdesp,ffCurrency,14,2);
     qrLabel9.Caption:=FloatToStrF(vFixo,ffCurrency,14,2);
     qrLabel49.Caption:=FloatToStrF(vfixo+vdesp,ffCurrency,14,2);
     qrLabel50.Caption:=FloatToStrF((vdesp+vfixo)/(vlrdesp+vlrFixo)*100,ffNumber,6,2)+' %';
     qrSaldo.Close;
     qrSaldo.Sql.Strings[2]:='Where '+vdat+' and GrupoCod='+QuotedStr('1')+
                             ' and Grupo='+QuotedStr(qrGrupo.Fields[0].Text)+
                             ' and Safra='+QuotedStr(xSafra);
     qrSaldo.Open;
     vrece:=qrSaldo.Fields[0].asFloat;
     qrLabel34.Caption:=FloatToStrF(vrece,ffCurrency,14,2);
     qrLabel35.Caption:=FloatToStrF(vrece/vlrrece*100,ffNumber,6,2)+' %';
     qrSaldo.Close;
     qrSaldo.Sql.Strings[2]:='Where '+vdat+' and GrupoCod='+QuotedStr('3')+
                             ' and Grupo='+QuotedStr(qrGrupo.Fields[0].Text)+
                             ' and Safra='+QuotedStr(xSafra);
     qrSaldo.Open;
     vinve:=qrSaldo.Fields[0].asFloat;
     qrLabel36.Caption:=FloatToStrF(vinve,ffCurrency,14,2);
     qrLabel37.Caption:=FloatToStrF(vinve/vlrinve*100,ffNumber,6,2)+' %';
     vresu:=vrece+vinve-vdesp-vfixo;
     qrLabel28.Caption:=FloatToStrF(vresu,ffCurrency,14,2);
     qrLabel29.Caption:='';
     if vResu>0 then qrLabel29.Caption:=FloatToStrF(vresu/vlrresu*100,ffNumber,6,2)+' %';
  end;
end;

procedure TqrRatCusRes.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrArea.Close;
  qrArea.Sql.Strings[2]:=Copy(qrArea.Sql.Strings[2],1,60)+' and Grupo='+QuotedStr(qrGrupo.Fields[0].Text)+' and Safra='+QuotedStr(xSafra);
  qrArea.Open;
end;

procedure TqrRatCusRes.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vdesp,vfixo,vrece,vinve,vresu:Real;
begin
  QRSubDetail3.Height:=0;
  if Copy(qrGrupo.Fields[0].Text,1,2)<>'FF' then begin
     QRSubDetail3.Height:=18;
     if dm.TRRArea.Locate('Area',qrArea.Fields[0].Text,[]) then
        qrLabel10.Caption:=dm.TRRArea.Fields[2].Text;

     qrSaldo.Close;
     qrSaldo.Sql.Strings[2]:='Where '+vdat+' and GrupoCod='+QuotedStr('2')+
                             ' and Area='+QuotedStr(qrArea.Fields[0].Text)+
                             ' and Safra='+QuotedStr(xSafra);
     qrSaldo.Open;
     vdesp:=qrSaldo.Fields[0].asFloat;
     vfixo:=vdesp*vlrfixo/vlrdesp;
     qrLabel4.Caption:=FloatToStrF(vdesp,ffCurrency,14,2);
     qrLabel17.Caption:=FloatToStrF(vFixo,ffCurrency,14,2);
     qrLabel52.Caption:=FloatToStrF(vfixo+vdesp,ffCurrency,14,2);
     qrLabel51.Caption:=FloatToStrF((vdesp+vfixo)/(vlrdesp+vlrFixo)*100,ffNumber,6,2)+' %';
     qrSaldo.Close;
     qrSaldo.Sql.Strings[2]:='Where '+vdat+' and GrupoCod='+QuotedStr('1')+
                             ' and Area='+QuotedStr(qrArea.Fields[0].Text)+
                             ' and Safra='+QuotedStr(xSafra);
     qrSaldo.Open;
     vrece:=qrSaldo.Fields[0].asFloat;
     qrLabel38.Caption:=FloatToStrF(vrece,ffCurrency,14,2);
     qrLabel39.Caption:=FloatToStrF(vrece/vlrrece*100,ffNumber,6,2)+' %';
     qrSaldo.Close;
     qrSaldo.Sql.Strings[2]:='Where '+vdat+' and GrupoCod='+QuotedStr('3')+
                             ' and Area='+QuotedStr(qrArea.Fields[0].Text)+
                             ' and Safra='+QuotedStr(xSafra);
     qrSaldo.Open;
     vinve:=qrSaldo.Fields[0].asFloat;
     qrLabel40.Caption:=FloatToStrF(vinve,ffCurrency,14,2);
     qrLabel41.Caption:=FloatToStrF(vinve/vlrinve*100,ffNumber,6,2)+' %';
     vresu:=vrece+vinve-vdesp-vfixo;
     qrLabel30.Caption:=FloatToStrF(vresu,ffCurrency,14,2);
     qrLabel31.Caption:='';
     if vResu>0 then qrLabel31.Caption:=FloatToStrF(vresu/vlrresu*100,ffNumber,6,2)+' %';
  end;
end;

end.
