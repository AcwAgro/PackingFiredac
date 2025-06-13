unit rlPDLoteMovEmb;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrPDLoteMovEmb = class(TQuickRep)
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
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
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
  qrPDLoteMovEmb: TqrPDLoteMovEmb;
  vproe,vcate,vvare:String;
  vqtd1,vqtd2,vqtdt1,vqtdt2:Double;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrPDLoteMovEmb.QuickRepPreview(Sender: TObject);
begin
  vqtd1:=0; vqtd2:=0; vqtdt1:=0; vqtdt2:=0;
  fPreview(Sender);
end;

procedure TqrPDLoteMovEmb.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtd1:=0; vqtd2:=0; vqtdt1:=0; vqtdt2:=0;
end;

procedure TqrPDLoteMovEmb.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vproe:=qrDados.FieldByName('Codigo').asString;
  vcate:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
  vvare:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
end;

procedure TqrPDLoteMovEmb.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrDados.FieldByName('Codigo').asString<>vproe then
  begin
     vqtdt1:=0; vqtdt2:=0;
     vproe:=qrDados.FieldByName('Codigo').asString;
     NewPage;
  end;
end;

procedure TqrPDLoteMovEmb.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vqtd1:=vqtd1+qrDados.FieldByName('QtdeEnt').asFloat;
  vqtdt1:=vqtdt1+qrDados.FieldByName('QtdeEnt').asFloat;
  qrLabel6.Caption:=FloatToStrF(vqtd1,ffNumber,9,0);
  qrLabel9.Caption:=FloatToStrF(vqtdt1,ffNumber,9,0);
  qrDados.Next;
  ChildBand1.Height:=0;
  if Copy(qrDados.FieldByName('ProdCod').asString,1,4)<>vcate then begin
     vcate:=Copy(qrDados.FieldByName('ProdCod').asString,1,4);
     ChildBand1.Height:=20;
     vqtd1:=0; vqtd2:=0;
     if Copy(qrDados.FieldByName('ProdCod').asString,1,2)<>vvare then begin
        vvare:=Copy(qrDados.FieldByName('ProdCod').asString,1,2);
        ChildBand1.Height:=40;
        vqtdt1:=0; vqtdt2:=0;
     end;
  end;
  if qrDados.FieldByName('Codigo').asString<>vproe then begin
     ChildBand1.Height:=40;
     vqtd1:=0; vqtd2:=0;
     vqtdt1:=0; vqtdt2:=0;
  end;
  if not qrDados.Eof then qrDados.Prior
  else ChildBand1.Height:=40;
end;

end.
