unit rlResAmo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResAmo = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
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
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
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
  qrResAmo: TqrResAmo;
  vrec,vpr:Integer;
  vpes,vqtd,vliq,vmed:Double;
  vvarie:String;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResAmo.QuickRepPreview(Sender: TObject);
begin
  vpr:=0;
  fPreview(Sender);
end;

procedure TqrResAmo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0;
end;

procedure TqrResAmo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if vpr<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vpr:=qrMovim.FieldByName('ProdCod').asInteger;
     vpes:=0; vqtd:=0;
  end;
  vliq:=qrMovim.FieldByName('vMed').asFloat;
  vpes:=vpes+vliq;
  vqtd:=vqtd+qrMovim.FieldByName('vVarieQtd').asFloat;
  qrLabel6.Caption:=FloatToStrF(vliq,ffNumber,13,0);
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  qrLabel9.Caption:=FloatToStrF(vpes,ffNumber,13,0);
  vrec:=0;
  qrAmos.Close;
  qrAmos.Sql.Strings[2]:='Where (am.Lanc=cm.Lanc) and (am.ProdCod='+
                qrMovim.FieldByName('ProdCod').Text+') and am.VarieCod='+
                qrMovim.FieldByName('VarieCod').Text;
  qrAmos.Open;
  if qrAmos.RecordCount>1 then begin
     QRSubDetail1.Height:=18;
     ChildBand3.Height:=30;
     DetailBand1.Height:=34;
  end else begin
     QRSubDetail1.Height:=0;
     ChildBand3.Height:=0;
     DetailBand1.Height:=0;
  end;
end;

procedure TqrResAmo.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  fSql(1,1,['Select Sum(cm.Peso) as vPeso From Amostra am, AmostCom cm',
            'Where (am.Lanc=cm.Lanc) and  am.VarieCod='+
                    qrMovim.FieldByName('VarieCod').Text+' and am.ProdCod='+
                    qrMovim.FieldByName('ProdCod').Text],2);
  if dm.qrSql1.Fields[0].asFloat>0 then begin
     qrLabel1.Caption:=FloatToStrF(qrAmos.FieldByName('vPeso').asFloat*
                                   qrMovim.FieldByName('vMed').asFloat/
                                   dm.qrSql1.Fields[0].asFloat,
                                   ffNumber,13,0);
     qrLabel11.Caption:=FloatToStrF(qrAmos.FieldByName('vPeso').asFloat/
                                   dm.qrSql1.Fields[0].asFloat*100,
                                   ffNumber,13,1);
  end;
  vrec:=vrec+1; ChildBand3.Height:=0;
//  if vrec>=qrAmos.RecordCount then ChildBand3.Height:=30;
end;

end.
