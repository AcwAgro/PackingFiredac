unit rlMovAmo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrMovAmo = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    qrAmos: TQuery;
    QRDBText14: TQRDBText;
    ChildBand3: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrMovAmo: TqrMovAmo;
  vpr:Integer;
  vpes,vqtd,vliq,vmed:Double;
  vvarie:String;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrMovAmo.QuickRepPreview(Sender: TObject);
begin
  vpr:=0;
  fPreview(Sender);
end;

procedure TqrMovAmo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0;
end;

procedure TqrMovAmo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if vpr<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vpr:=qrMovim.FieldByName('ProdCod').asInteger;
     vpes:=0; vqtd:=0;
  end;
  vliq:=qrMovim.FieldByName('vMed').asFloat;
  vpes:=vpes+vliq;
  vqtd:=vqtd+qrMovim.FieldByName('VarieQtd').asFloat;
  qrLabel6.Caption:=FloatToStrF(vliq,ffNumber,13,0);
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  qrLabel9.Caption:=FloatToStrF(vpes,ffNumber,13,0);
  qrAmos.Close;
  qrAmos.Sql.Strings[2]:='Where (am.Lanc=cm.Lanc) and (am.Recibo='+
                qrMovim.FieldByName('Lanc').Text+') and am.VarieCod='+
                qrMovim.FieldByName('VarieCod').Text;
  qrAmos.Open;
  DetailBand1.Height:=0; qrSubDetail1.Height:=0; ChildBand3.Height:=0;
  if qrAmos.FieldByName('Lanc').asInteger>0 then begin
     DetailBand1.Height:=34; qrSubDetail1.Height:=18;
  end;
end;

procedure TqrMovAmo.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrAmos.FieldByName('Lanc').asInteger>0 then begin
     fSql(1,1,['Select Sum(cm.Peso) as Peso From Amostra am, AmostCom cm',
               'Where (am.Lanc=cm.Lanc) and  am.Lanc='+qrAmos.FieldByName('Lanc').Text],2);
     if dm.qrSql1.Fields[0].asFloat>0 then begin
        qrLabel20.Caption:=FloatToStrF(qrAmos.FieldByName('Peso').asFloat*
                                       qrMovim.FieldByName('vMed').asFloat/
                                       dm.qrSql1.Fields[0].asFloat,
                                       ffNumber,13,0);
        qrLabel19.Caption:=FloatToStrF(qrAmos.FieldByName('Peso').asFloat/
                                       dm.qrSql1.Fields[0].asFloat*100,
                                       ffNumber,13,1);
     end;
  end;
end;

end.
