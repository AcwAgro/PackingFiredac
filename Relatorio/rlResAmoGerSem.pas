unit rlResAmoGerSem;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResAmoGerSem = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    qrAmos: TQuery;
    QRDBText14: TQRDBText;
    ChildBand3: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel20: TQRLabel;
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
  qrResAmoGerSem: TqrResAmoGerSem;
  vrec,vpr:Integer;
  vpes,vqtd,vliq,vmed:Double;
  vvarie:String;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResAmoGerSem.QuickRepPreview(Sender: TObject);
begin
  vpr:=0; vpes:=0; vqtd:=0;
  fPreview(Sender);
end;

procedure TqrResAmoGerSem.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vpr:=0; vpes:=0; vqtd:=0;
end;

procedure TqrResAmoGerSem.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vpes:=vpes+vliq;
  vqtd:=vqtd+qrMovim.FieldByName('vPeso').asFloat;
  qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,2);
  vrec:=0;
  qrAmos.Close;
  qrAmos.Sql.Strings[2]:='Where (am.Lanc=cm.Lanc) and  am.VarieCod='+
                qrMovim.FieldByName('VarieCod').Text;
  qrAmos.Open;
  if qrAmos.RecordCount<1 then begin
     QRSubDetail1.Height:=0;
     ChildBand3.Height:=0;
  end else begin
     QRSubDetail1.Height:=18;
     ChildBand3.Height:=30;
  end;
end;

procedure TqrResAmoGerSem.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrMovim.FieldByName('vPeso').asFloat > 0 then
    qrLabel20.Caption := FormatFloat('0.0', qrAmos.FieldByName('vPeso').asFloat/qrMovim.FieldByName('vPeso').asFloat*100);

  vrec:=vrec+1; ChildBand3.Height:=0;
end;

end.
