unit rlPDLoteMov;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrPDLoteMov = class(TQuickRep)
    qrDados: TQuery;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
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
  qrPDLoteMov: TqrPDLoteMov;
  vpro,vcat,vvar:String;
  vqtd1,vqtd2,vqtdt1,vqtdt2:Double;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrPDLoteMov.QuickRepPreview(Sender: TObject);
begin
  vqtd1:=0; vqtd2:=0; vqtdt1:=0; vqtdt2:=0;
  fPreview(Sender);
end;

procedure TqrPDLoteMov.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtd1:=0; vqtd2:=0; vqtdt1:=0; vqtdt2:=0;
end;

procedure TqrPDLoteMov.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vpro:=qrDados.FieldByName('Codigo').asString;
  vcat:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
  vvar:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
end;

procedure TqrPDLoteMov.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrDados.FieldByName('Codigo').asString<>vpro then begin
     vqtdt1:=0; vqtdt2:=0;
     vpro:=qrDados.FieldByName('Codigo').asString;
     NewPage;
  end;
end;

procedure TqrPDLoteMov.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vqtd1:=vqtd1+qrDados.FieldByName('QtdeEnt').asFloat;
  vqtd2:=vqtd2+qrDados.FieldByName('PesoReal').asFloat;
  vqtdt1:=vqtdt1+qrDados.FieldByName('QtdeEnt').asFloat;
  vqtdt2:=vqtdt2+qrDados.FieldByName('PesoReal').asFloat;
  qrLabel6.Caption:=FloatToStrF(vqtd1,ffNumber,9,0);
  qrLabel7.Caption:=FloatToStrF(vqtd2,ffNumber,9,0);
  qrLabel9.Caption:=FloatToStrF(vqtdt1,ffNumber,9,0);
  qrLabel10.Caption:=FloatToStrF(vqtdt2,ffNumber,9,0);
  qrDados.Next;
  ChildBand1.Height:=0;
  if Copy(qrDados.FieldByName('ProdCod').asString,1,4)<>vcat then begin
     vcat:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
     ChildBand1.Height:=20;
     vqtd1:=0; vqtd2:=0;
     if Copy(qrDados.FieldByName('ProdCod').asString,1,2)<>vvar then begin
        vvar:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
        ChildBand1.Height:=40;
        vqtdt1:=0; vqtdt2:=0;
     end;
  end;
  if qrDados.FieldByName('Codigo').asString<>vpro then begin
     ChildBand1.Height:=40;
     vqtd1:=0; vqtd2:=0;
     vqtdt1:=0; vqtdt2:=0;
  end;
  if not qrDados.Eof then qrDados.Prior
  else ChildBand1.Height:=40;
end;

end.
