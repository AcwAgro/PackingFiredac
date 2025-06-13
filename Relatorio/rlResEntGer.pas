unit rlResEntGer;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResEntGer = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    qrVarie: TQuery;
    QRDBText10: TQRDBText;
    qrEmpr: TQuery;
    QRLabel3: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText13: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
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
  qrResEntGer: TqrResEntGer;
  vrec:Integer;
  vqt,vpe,vqtt,vpet:Double;
  vvarger, vlocger:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResEntGer.QuickRepPreview(Sender: TObject);
begin
  vqtt:=0; vpet:=0;
  fPreview(Sender);
end;

procedure TqrResEntGer.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtt:=0; vpet:=0;
end;

procedure TqrResEntGer.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVarie.Close;
  qrVarie.Sql.Strings[2]:=qrMovim.Sql.Strings[2]+' and (re.Lanc=vv.Lanc)'+
                         ' and '+vvarger+vlocger;
  qrVarie.Open;
  qrEmpr.Close;
  qrEmpr.Sql.Strings[2]:=qrMovim.Sql.Strings[2];
  qrEmpr.Open;
  ChildBand2.Height:=0;
  vrec:=0; vqt:=0; vpe:=0;
end;

procedure TqrResEntGer.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqt:=vqt+qrVarie.FieldByName('VarieQtd').asFloat;
  vpe:=vpe+qrVarie.FieldByName('VariePes').asFloat;
  vqtt:=vqtt+qrVarie.FieldByName('VarieQtd').asFloat;
  vpet:=vpet+qrVarie.FieldByName('VariePes').asFloat;
  QRLabel1.Caption:=FloatToStrF(vqt,ffNumber,10,1);
  QRLabel6.Caption:=FloatToStrF(vpe,ffNumber,10,0);
  QRLabel7.Caption:=FloatToStrF(vqtt,ffNumber,10,1);
  QRLabel10.Caption:=FloatToStrF(vpet,ffNumber,10,0);
  if qrMovim.FieldByName('vBinsLiq').asFloat>0 then
    QRLabel3.Caption:=FloatToStrF(qrVarie.FieldByName('VariePes').asFloat/
                                  qrMovim.FieldByName('vBinsLiq').asFloat*
                                  100,ffNumber,7,2);
  if qrVarie.FieldByName('VarieQtd').asFloat>0 then
     QRLabel19.Caption:=FloatToStrF(qrVarie.FieldByName('VariePes').asFloat/
                                    qrVarie.FieldByName('VarieQtd').asFloat,ffNumber,7,2)
  else QRLabel19.Caption:='0';
  vrec:=vrec+1;
  if vrec>=qrVarie.RecordCount then ChildBand2.Height:=20;
end;

end.
