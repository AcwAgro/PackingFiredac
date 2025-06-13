unit rlDiario;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrDiario = class(TQuickRep)
    qrConta: TQuery;
    qrAnterior: TQuery;
    QRBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    ChildBand1: TQRChildBand;
    PageHeaderBand1: TQRBand;
    QRDBText18: TQRDBText;
    QRSysData4: TQRSysData;
    QRDBText20: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    vant,vsal:Real; vddd:TDateTime;
  end;

var
  qrDiario: TqrDiario;

implementation

uses Menu, Data;

{$R *.DFM}

procedure TqrDiario.QuickRepPreview(Sender: TObject);
begin
  vsal:=vant;
  fPreview(Sender);
end;

procedure TqrDiario.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vsal:=vant;
end;

procedure TqrDiario.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vsal:=vsal+qrConta.FieldByName('ValorReal').asFloat;
  qrLabel5.Caption:=FloatToStrF(vsal,ffCurrency,10,2);
end;

procedure TqrDiario.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ChildBand1.Height:=0;
  vddd:=qrConta.FieldByName('Data').Value;
  qrConta.Next;
  if vddd<>qrConta.FieldByName('Data').Value then begin
     vddd:=qrConta.FieldByName('Data').Value;
     ChildBand1.Height:=10;
  end;
  if not qrConta.Eof then qrConta.Prior;
end;


end.
