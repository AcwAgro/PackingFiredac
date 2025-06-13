unit rlFinanNota;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrFinanNota = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrConta: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText3: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrFinanNota: TqrFinanNota;
  vcooper,vrec:Integer; vtvlr:Real;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrFinanNota.QuickRepPreview(Sender: TObject);
begin
  vtvlr:=0;
  fPreview(Sender);
end;

procedure TqrFinanNota.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtvlr:=0;
end;

procedure TqrFinanNota.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vnr:String;
begin
  vnr:=qrConta.FieldByName('Controle').Text;
  if frEnum(vnr) then begin
    vtvlr:=vtvlr+qrConta.FieldByName('Valor').asInteger;
    qrLabel4.Caption:=FloatToStrF(vtvlr,ffNumber,14,2);
    fSql(1,1,['Select DifCod,Nota From NfVenda Where Nota='+vnr+' and Codigo='+qrConta.FieldByName('Codigo').Text],1);
    if dm.qrSql1.RecordCount>0 then begin
       if dm.qrSql1.Fields[0].asInteger=1 then qrLabel20.Caption:='Produto'
       else if dm.qrSql1.Fields[0].asInteger=2 then qrLabel20.Caption:='Insumos'
       else qrLabel20.Caption:='Outros';
    end else qrLabel20.Caption:='Inexistente';
    ChildBand2.Height:=0;
  end;
  vrec:=qrConta.FieldByName('Codigo').asInteger;
  qrConta.Next;
  if vrec<>qrConta.FieldByName('Codigo').asInteger then begin
     if vtvlr>0 then ChildBand2.Height:=20;
     vrec:=qrConta.FieldByName('Codigo').asInteger;
     vtvlr:=0;
  end;
  if not qrConta.Eof then qrConta.Prior
  else ChildBand2.Height:=20;
end;

end.
