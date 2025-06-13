unit rlFiHisto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrFiHisto = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrConta: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel16: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabel22: TQRLabel;
    qrCabec: TQuery;
    DetailBand1: TQRBand;
    QRLabel35: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrFiHisto: TqrFiHisto;
  vvlr,vpag,vtde,vtno,vnot:Real;
  vrec,vqtd:Double;
  vDathi,vCodhi,vConhi,vDTPeriodo:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,Printers,dialogs;

procedure TqrFiHisto.QuickRepPreview(Sender: TObject);
begin
  Page.Orientation:=poLandscape;
  fPreview(Sender);
end;

procedure TqrFiHisto.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Page.Orientation:=poLandscape;
  qrCabec.First;
end;

procedure TqrFiHisto.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vvlr:=0;vpag:=0;
  qrConta.Close;
  qrConta.Sql.Strings[2]:='Where Codigo=0'+qrCabec.Fields[0].Text + ' and '+vDTPeriodo;
  qrConta.Open;
end;

procedure TqrFiHisto.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vatr:Integer;
begin
  if qrconta.FieldByName('Parc').asInteger<100 then begin
     vvlr:=vvlr+qrconta.FieldByName('Valor').asFloat;
  end;
  qrLabel20.Caption:=''; qrLabel5.Caption:='';
  if qrconta.FieldByName('Pago').Text='S' then begin
     qrLabel20.Caption:=qrconta.FieldByName('DataPago').Text;
     qrLabel5.Caption:=FloatToStrF(qrconta.FieldByName('ValorPago').asFloat,ffNumber,10,2);
     vpag:=vpag+qrconta.FieldByName('ValorPago').asFloat;
     vatr:=qrconta.FieldByName('DataPago').Value - qrconta.FieldByName('Vencto').Value;
  end
  else
    vatr:=Date-qrconta.FieldByName('Vencto').Value;
  qrLabel9.Caption:=FloatToStrF(vatr,ffNumber,6,0);

  qrLabel4.Caption:=FloatToStrF(vvlr,ffNumber,14,2);
  qrLabel21.Caption:=FloatToStrF(vpag,ffNumber,14,2);
  qrLabel22.Caption:=FloatToStrF(vvlr-vpag,ffNumber,14,2);
  ChildBand2.Height:=0;
  vrec:=qrConta.FieldByName('Codigo').asInteger;
  qrConta.Next;
  if vrec<>qrConta.FieldByName('Codigo').asInteger then begin
     ChildBand2.Height:=47;
  end;
  if not qrConta.Eof then qrConta.Prior
  else begin
     ChildBand2.Height:=47;
  end;
end;


end.
