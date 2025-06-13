unit rlDefeito;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrDefeito = class(TQuickRep)
    qrCont: TQuery;
    qrMovim: TQuery;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRSubDetail2: TQRSubDetail;
    ChildBand3: TQRChildBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qrAna: TQuery;
    QRShape2: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel22: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrDefeito: TqrDefeito;
  vrec,vreca:Integer;
  vData,vMov,vMos,vvtip:String;
  vper,vqtd,vAna1,vAna2,vAna3,vAna4:Double;

implementation

uses Menu,Data,dialogs;
{$R *.DFM}

procedure TqrDefeito.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrDefeito.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=0; vreca:=0; vqtd:=0; vper:=0;
  qrLabel8.Height:=0; qrDBText2.Height:=17;
  qrMovim.Close;
  if Copy(vmos,1,1)='S' then qrLabel8.Height:=17;
  QRLabel5.Caption:='Produtor...';
  if Copy(vmos,2,1)='S' then begin
     QRLabel5.Caption:='Produtor em geral';
     qrDBText2.Height:=0;
     qrMovim.Sql.Strings[2]:='Where cc.Lanc=co.Lanc and cc.VarCod='+
                qrCont.Fields[0].Text+' and '+vdata+' and '+vvtip;
  end else qrMovim.Sql.Strings[2]:='Where cc.Lanc=co.Lanc and cc.VarCod='+qrCont.Fields[2].Text+' and cc.ForCod='+
                qrCont.Fields[0].Text+' and '+vdata+' and '+vvtip;
  qrMovim.Open;
end;

procedure TqrDefeito.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vrec,1);
  qrDBText4.Height:=0;
  if Copy(vmos,1,1)='S' then qrDBText4.Height:=17;
  if qrCont.FieldByName('vqtd').asFloat>0 then
     vper:=vper+(qrMovim.FieldByName('vqtd').asFloat/qrCont.FieldByName('vqtd').asFloat*100);
  vqtd:=vqtd+qrMovim.FieldByName('vqtd').asFloat;
end;

procedure TqrDefeito.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vAna1:=0; vAna2:=0; vAna3:=0; vAna4:=0;
  ChildBand2.Height:=0;  QRSubDetail2.Height:=0; qrLabel16.Caption:=''; qrLabel17.Caption:='';
  if vrec=qrMovim.RecordCount then begin
     ChildBand2.Height:=80;
     if Copy(vmos,3,1)='S' then begin
        ChildBand2.Height:=120;
        qrLabel16.Caption:='Análise de Maturação';
        qrLabel17.Caption:='Item      Iodo Amido    S.S.T.(Brix)     Firmeza(LBS)     Acidez';
        qrAna.Close;
        QRSubDetail2.Height:=15;
        if Copy(vmos,2,1)='S' then begin
           qrDBText2.Height:=0;
           qrAna.Sql.Strings[2]:='Where cc.Lanc=co.Lanc and cc.VarCod='+qrCont.Fields[0].Text+' and '+vdata+' and '+vvtip;
        end else qrAna.Sql.Strings[2]:='Where cc.Lanc=co.Lanc and cc.VarCod='+qrCont.Fields[2].Text+' and cc.ForCod='+qrCont.Fields[0].Text+
           ' and '+vdata+' and '+vvtip;
        qrAna.Open;
     end;
  end;
  qrDBText5.Height:=0;qrDBText6.Height:=0;
  qrDBText7.Height:=0;qrDBText8.Height:=0;
  if Copy(vmos,1,1)='S' then begin
     qrDBText5.Height:=17;qrDBText6.Height:=17;
     qrDBText7.Height:=17;qrDBText8.Height:=17;
  end;
end;

procedure TqrDefeito.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vreca,1);
  ChildBand3.Height:=0;
  if vreca=qrAna.RecordCount then begin
     if Copy(vmos,3,1)='S' then ChildBand3.Height:=30;
  end;
  vAna1:=vAna1+qrAna.FieldByName('vami').asFloat;
  vAna2:=vAna2+qrAna.FieldByName('vsst').asFloat;
  vAna3:=vAna3+qrAna.FieldByName('vfir').asFloat;
  if vreca=1 then vAna4:=qrAna.FieldByName('vAci').asFloat;
end;

procedure TqrDefeito.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=FloatToStrf(vAna1/5,ffNumber,6,1);
  QRLabel19.Caption:=FloatToStrf(vAna2/5,ffNumber,6,1);
  QRLabel20.Caption:=FloatToStrf(vAna3/5,ffNumber,6,1);
  QRLabel10.Caption:=FloatToStrf(vAna4,ffNumber,6,1);
end;


end.
