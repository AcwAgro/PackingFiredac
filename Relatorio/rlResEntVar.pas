unit rlResEntVar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResEntVar = class(TQuickRep)
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
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    qrVarie: TQuery;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    qrEmpr: TQuery;
    QRLabel3: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape1: TQRShape;
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
  qrResEntVar: TqrResEntVar;
  vrec:Integer;
  vqt,vpe,vqtt,vpet:Double;
  vvarpro,vvlocal:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResEntVar.QuickRepPreview(Sender: TObject);
begin
  vqtt:=0; vpet:=0;
  fPreview(Sender);
end;

procedure TqrResEntVar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtt:=0; vpet:=0;
end;

procedure TqrResEntVar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVarie.Close;
  qrVarie.Sql.Strings[2]:=Copy(qrMovim.Sql.Strings[2],1,63)+
                         ' and (re.Lanc=vv.Lanc) and ProdCod='+
                         qrMovim.FieldByName('ProdCod').Text+
                         ' and '+vvarpro+vvlocal;
  qrVarie.Open;
  qrEmpr.Close;
  qrEmpr.Sql.Strings[2]:=Copy(qrMovim.Sql.Strings[2],1,63)+' and ProdCod='+
                         qrMovim.FieldByName('ProdCod').Text;
  qrEmpr.Open;
  ChildBand2.Height:=0;
  vrec:=0; vqt:=0; vpe:=0;
end;

procedure TqrResEntVar.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqt:=vqt+qrVarie.FieldByName('VarieQtd').asFloat;
  vpe:=vpe+qrVarie.FieldByName('VariePes').asFloat;
  vqtt:=vqtt+qrVarie.FieldByName('VarieQtd').asFloat;
  vpet:=vpet+qrVarie.FieldByName('VariePes').asFloat;
  QRLabel22.Caption:=FloatToStrF(vqt,ffNumber,10,1);
  QRLabel23.Caption:=FloatToStrF(vpe,ffNumber,10,0);
  QRLabel20.Caption:=FloatToStrF(vqtt,ffNumber,10,1);
  QRLabel21.Caption:=FloatToStrF(vpet,ffNumber,10,0);
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
