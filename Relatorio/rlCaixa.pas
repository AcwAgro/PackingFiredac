unit rlCaixa;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrCaixa = class(TQuickRep)
    qrConta: TQuery;
    QRBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRDBText18: TQRDBText;
    QRSysData4: TQRSysData;
    QRDBText20: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData3: TQRSysData;
    ChildBand1: TQRChildBand;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    vcod:String; vval:Real;
  public

  end;

var
  qrCaixa: TqrCaixa;

implementation

uses Menu, Data;

{$R *.DFM}

procedure TqrCaixa.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrCaixa.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ChildBand1.Height:=0;
  vCod:=qrConta.FieldByName('Codigo').asString;
  vVal:=vVal+qrConta.FieldByName('ValorReal').asFloat;
  qrLabel11.Caption:='Totalizando...  '+FloatToStrF(vval,ffCurrency,10,2);
  qrConta.Next;
  if vCod<>qrConta.FieldByName('Codigo').asString then begin
     ChildBand1.Height:=30; vval:=0;
  end;
  if not qrConta.Eof then qrConta.Prior
  else ChildBand1.Height:=30;
end;

end.
