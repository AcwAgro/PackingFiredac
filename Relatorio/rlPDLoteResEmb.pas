unit rlPDLoteResEmb;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, DBClient;

type
  TqrPDLoteResEmb = class(TQuickRep)
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
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    qrDados: TClientDataSet;
    qrDadosProdcod: TIntegerField;
    qrDadosProdDes: TStringField;
    qrDadosQtde: TIntegerField;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    qrDadosCodigo: TIntegerField;
    qrDadosDescricao: TStringField;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public

  end;

var
  qrPDLoteResEmb: TqrPDLoteResEmb;
  vproe:String;
  vcat,vvar:Integer;
  vqtd1,vqtd2,vqtd3:Double;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrPDLoteResEmb.QuickRepPreview(Sender: TObject);
begin
  vqtd1:=0; vqtd2:=0; vqtd3:=0;
  fPreview(Sender);
end;

procedure TqrPDLoteResEmb.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrDados.FieldByName('Codigo').asString<>vproe then
  begin
    vqtd1:= 0; vqtd2:= 0; vqtd3:= 0;
    vcat := 0; vvar := 0;
    vproe:=qrDados.FieldByName('Codigo').asString;
    NewPage;
  end;
end;

procedure TqrPDLoteResEmb.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  vproe:=qrDados.FieldByName('Codigo').asString;

end;

procedure TqrPDLoteResEmb.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqtd1:=0;
end;

procedure TqrPDLoteResEmb.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vqtd1:=vqtd1+qrDados.FieldByName('Qtde').asFloat;
  qrLabel9.Caption:=FloatToStrF(vqtd1,ffNumber,9,0);

  vqtd2:=vqtd2+qrDados.FieldByName('Qtde').asFloat;
  qrLabel6.Caption:=FloatToStrF(vqtd2,ffNumber,9,0);

  vqtd3:=vqtd3+qrDados.FieldByName('Qtde').asFloat;
  qrLabel11.Caption:=FloatToStrF(vqtd3,ffNumber,9,0);

  vcat:=StrToInt(Copy(qrDados.FieldByname('ProdCod').Text,1,4));
  vvar:=StrToInt(Copy(qrDados.FieldByname('ProdCod').Text,1,2));

  qrDados.Next;

  ChildBand1.Height:=0;

  if vcat<>StrToInt(Copy(qrDados.FieldByname('ProdCod').Text,1,4)) then
  begin
     qrLabel7.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+'):';
     ChildBand1.Height:=22;
     vqtd1:=0;
  end;
  if vvar<>StrToInt(Copy(qrDados.FieldByname('ProdCod').Text,1,2)) then
  begin
     qrLabel2.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+'):';
     ChildBand1.Height:=43;
     vqtd1:=0; vqtd2:=0;
  end;
  if qrDados.FieldByName('Codigo').asString<>vproe then
  begin
    qrLabel7.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+'):';
    qrLabel2.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+'):';
    ChildBand1.Height:=65;
    vqtd1:=0; vqtd2:=0; vqtd3:=0;
  end;
  if not qrDados.Eof then qrDados.Prior
  else ChildBand1.Height:=65;

end;

end.
