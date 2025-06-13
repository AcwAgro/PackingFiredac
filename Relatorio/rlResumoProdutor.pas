unit rlResumoProdutor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrResumoProdutor = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    qrSqlfinan: TQuery;
    qrSqlNota: TQuery;
    DetailBand2: TQRBand;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qrSqlNotaCodigo: TIntegerField;
    qrSqlNotaDescricao: TStringField;
    qrSqlNotanota: TIntegerField;
    qrSqlNotadata: TDateTimeField;
    qrSqlNotavlrnota: TFloatField;
    qrSqlNotavlrfunrural: TFloatField;
    qrSqlNotavtotal: TFloatField;
    qrSqlNotaLanc: TIntegerField;
    qrSqlfinanvencto: TDateTimeField;
    qrSqlfinandatapago: TDateTimeField;
    qrSqlfinanvalor: TFloatField;
    qrSqlfinanvalorpago: TFloatField;
    qrSqlfinanpago: TStringField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qrSqlfinanvlrdescon: TFloatField;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrResumoProdutor: TqrResumoProdutor;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrResumoProdutor.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrResumoProdutor.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrSqlFinan.Close;
  qrSqlFinan.Sql.Strings[2]:='Where Pago = '+QuotedStr('S')+' and Lanc = 0'+qrSqlNotaLanc.AsString;
  qrSqlFinan.Open;
end;

end.
