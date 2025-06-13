unit rlVendaPro;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrVendaPro = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrVenda: TQuery;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel7: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrVendaPro: TqrVendaPro;
  vqt1:Double; vvl1:Real;

implementation

{$R *.DFM}
uses Data,Menu,dialogs;

procedure TqrVendaPro.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrVendaPro.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  if qrVenda.FieldByName('Dif').asString='D' then
//     vqt1:=vqt1-qrVenda.FieldByName('qtde').asFloat;
//  else vqt1:=vqt1+qrVenda.FieldByName('qtde').asFloat;
//  vvl1:=vvl1+qrVenda.FieldByName('valor').asFloat;
//  qrLabel4.Caption:=fBus(1,['Select CPF From CadClien Where Codigo=0'+qrVenda.FieldByName('Codigo').Text],1);
end;

procedure TqrVendaPro.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel13.Caption:=FloatToStrF(vqt1,ffNumber,14,0);
  qrLabel6.Caption:=FloatToStrF(vvl1,ffCurrency,14,2);
{  ChildBand2.Height:=0;
  qrVenda.Next;
  if qrVenda.Eof then begin ChildBand2.Height:=20;
  end else qrVenda.Prior;}
end;

procedure TqrVendaPro.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  qrVenda.Sql.Strings[2]:='Where ee.Lanc=cc.Lanc and cc.Codigo='+qrProdu.Fields[0].Text+
                          ' and '+Copy(qrProdu.Sql.Strings[2],7,55);
//showmessage(qrVenda.Sql.text);
//abort;
  qrVenda.Open;
  vqt1:=0; vvl1:=0;
end;

end.
