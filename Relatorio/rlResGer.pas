unit rlResGer;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResGer = class(TQuickRep)
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
    ChildBand2: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrResGer: TqrResGer;
  vrec,vpr:Integer;
  vpes,vqtd,vvaz:Double;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResGer.QuickRepPreview(Sender: TObject);
begin
  vpr:=0;
  fPreview(Sender);
end;

procedure TqrResGer.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0;
end;

procedure TqrResGer.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand2.Height:=0;
  if vpr<>qrMovim.FieldByName('ProdCod').asInteger then begin
     vpr:=qrMovim.FieldByName('ProdCod').asInteger;
     vpes:=0; vqtd:=0; vrec:=0; vvaz:=0;
     ChildBand2.Height:=30;
  end;
  vpes:=vpes+qrMovim.FieldByName('BinsLiq').asFloat;
  vqtd:=vqtd+qrMovim.FieldByName('Qtde').asFloat;
  vvaz:=vvaz+qrMovim.FieldByName('BinsQtd').asFloat;
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  qrLabel6.Caption:=FloatToStrF(vvaz,ffNumber,13,0);
  qrLabel9.Caption:=FloatToStrF(vpes,ffNumber,13,0);
  vrec:=vrec+1;
  if vrec>=qrMovim.RecordCount then ChildBand2.Height:=30;
end;

end.
