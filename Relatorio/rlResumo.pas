unit rlResumo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResumo = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
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
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    qrAmos: TQuery;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel19: TQRLabel;
    ChildBand3: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel6: TQRLabel;
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
  qrResumo: TqrResumo;
  vrec,vpr:Integer;
  vpes,vqtd,vliq,vmed:Double;
  vvarie:String;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResumo.QuickRepPreview(Sender: TObject);
begin
  vpr:=0;
  fPreview(Sender);
end;

procedure TqrResumo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0;
end;

procedure TqrResumo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if vpr<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vpr:=qrMovim.FieldByName('ProdCod').asInteger;
     vpes:=0; vqtd:=0;
  end;
  vmed:=qrMovim.FieldByName('BinsLiq').asFloat/qrMovim.FieldByName('Qtde').asFloat;
  vliq:=vmed*qrMovim.FieldByName('VarieQtd').asFloat;
  vpes:=vpes+vliq;
  vqtd:=vqtd+qrMovim.FieldByName('VarieQtd').asFloat;
  qrLabel6.Caption:=FloatToStrF(vliq,ffNumber,13,0);
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  qrLabel9.Caption:=FloatToStrF(vpes,ffNumber,13,0);
  vrec:=0;
  qrAmos.Close;
  qrAmos.Sql.Strings[2]:='Where (am.Lanc=cm.Lanc) and (am.Recibo='+
                qrMovim.FieldByName('Lanc').Text+') and am.VarieCod='+
                qrMovim.FieldByName('VarieCod').Text;
  qrAmos.Open;
end;

procedure TqrResumo.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel19.Caption:=FloatToStrF(qrAmos.FieldByName('vMed').asFloat*vliq/100,ffNumber,13,0);
  vrec:=vrec+1; ChildBand3.Height:=0;
//  if vrec>=qrAmos.RecordCount then ChildBand3.Height:=30;
end;

end.
