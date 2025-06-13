unit rlResSal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResSal = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
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
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
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
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    ChildBand3: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
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
  qrResSal: TqrResSal;
  vrec,vpr:Integer;
  vpes,vqtd:Double;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResSal.QuickRepPreview(Sender: TObject);
begin
  vpr:=0;
  fPreview(Sender);
end;

procedure TqrResSal.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0;
end;

procedure TqrResSal.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if vpr<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vpr:=qrMovim.FieldByName('ProdCod').asInteger;
     vpes:=0; vqtd:=0;
  end;
  vpes:=vpes+qrMovim.FieldByName('BinsLiq').asFloat;
  vqtd:=vqtd+qrMovim.FieldByName('Qtde').asFloat;
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  qrLabel9.Caption:=FloatToStrF(vpes,ffNumber,13,0);
  vrec:=0;
  qrAmos.Close;
  qrAmos.Sql.Strings[2]:=Copy(qrMovim.Sql.Strings[2],1,49)+' and am.ProdCod='+qrMovim.FieldByName('ProdCod').Text;
  qrAmos.Open;
end;

procedure TqrResSal.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=FloatToStrF(qrAmos.FieldByName('vMed').asFloat*
                                 qrMovim.FieldByName('BinsLiq').asFloat/100,ffNumber,13,0);
  vrec:=vrec+1; ChildBand3.Height:=0;
  if vrec>=qrAmos.RecordCount then ChildBand3.Height:=30;
end;

end.
