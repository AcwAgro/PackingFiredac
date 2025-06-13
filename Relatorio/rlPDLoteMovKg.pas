unit rlPDLoteMovKg;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrPDLoteMovKg = class(TQuickRep)
    qrDados: TQuery;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  public

  end;

var
  qrPDLoteMovKg: TqrPDLoteMovKg;
  vprokg,vcatkg,vvarkg:String;
  vqtd1kg,vqtd2kg,vqtdt1kg,vqtdt2kg:Double;
  novapage: Boolean;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrPDLoteMovKg.QuickRepPreview(Sender: TObject);
begin
  novapage := false;
  vqtd1kg:=0; vqtd2kg:=0; vqtdt1kg:=0; vqtdt2kg:=0;
  fPreview(Sender);
end;

procedure TqrPDLoteMovKg.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  novapage := false;
  vqtd1kg:=0; vqtd2kg:=0; vqtdt1kg:=0; vqtdt2kg:=0;
end;

procedure TqrPDLoteMovKg.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vprokg:=qrDados.FieldByName('Codigo').asString;
  vcatkg:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
  vvarkg:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
end;

procedure TqrPDLoteMovKg.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrDados.FieldByName('Codigo').asString<>vprokg then
  begin
     vqtdt1kg:=0; vqtdt2kg:=0;
     vprokg:=qrDados.FieldByName('Codigo').asString;
     NewPage;
  end
  else begin
    if novapage then
    begin
      novapage := false;
      NewPage;
    end;
  end;
end;

procedure TqrPDLoteMovKg.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin

  vqtd1kg:=vqtd1kg+qrDados.FieldByName('QtdeEnt').asFloat;
  vqtd2kg:=vqtd2kg+qrDados.FieldByName('PesoReal').asFloat;
  vqtdt1kg:=vqtdt1kg+qrDados.FieldByName('QtdeEnt').asFloat;
  vqtdt2kg:=vqtdt2kg+qrDados.FieldByName('PesoReal').asFloat;
  qrLabel7.Caption:=FloatToStrF(vqtd2kg,ffNumber,9,0);
  qrLabel10.Caption:=FloatToStrF(vqtdt2kg,ffNumber,9,0);
  qrDados.Next;
  ChildBand1.Height:=0;
  if Copy(qrDados.FieldByName('ProdCod').asString,1,4)<>vcatkg then
  begin
     vcatkg:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
     ChildBand1.Height:=20;
     vqtd1kg:=0; vqtd2kg:=0;
     if Copy(qrDados.FieldByName('ProdCod').asString,1,2)<>vvarkg
     then begin
        vvarkg:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
        ChildBand1.Height:=40;
        vqtdt1kg:=0; vqtdt2kg:=0;
        novapage := true;
     end;
  end;
  if qrDados.FieldByName('Codigo').asString<>vprokg then
  begin
     ChildBand1.Height:=40;
     vqtd1kg:=0; vqtd2kg:=0;
     vqtdt1kg:=0; vqtdt2kg:=0;
  end;
  if not qrDados.Eof then qrDados.Prior
  else ChildBand1.Height:=40;
end;

end.
