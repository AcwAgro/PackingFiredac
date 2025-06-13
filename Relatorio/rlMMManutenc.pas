unit rlMMManutenc;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrMMManutenc = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRDBText3: TQRDBText;
    qrDados: TQuery;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    qrDadosCom: TQuery;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qrMMManutenc: TqrMMManutenc;

implementation

uses Data, Menu;

{$R *.DFM}

procedure TqrMMManutenc.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender)
end;

procedure TqrMMManutenc.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrDadosCom.Close;
  qrDadosCom.Sql.Strings[2]:=Copy(qrDadosCom.Sql.Strings[2],1,70)+'        and Codigo='+qrDados.Fields[0].Text;
  qrDadosCom.Open;
  if fTra(1,['Select Marca,Placa,Ano From CadMaquina Where Codigo=0'+qrDados.Fields[0].Text],1) then begin
     qrLabel6.Caption:=dm.qrSqlTra.Fields[0].Text;
     qrLabel7.Caption:=dm.qrSqlTra.Fields[1].Text;
     qrLabel8.Caption:=dm.qrSqlTra.Fields[2].Text;
  end;
end;

procedure TqrMMManutenc.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrLabel3.Caption:=FloatToStrF(qrDados.Fields[2].asFloat,ffCurrency,10,2);
end;

end.
