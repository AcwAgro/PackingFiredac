unit rlFechaAmosRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;
type
  TqrFechaAmosRes = class(TQuickRep)
    qrFecha: TQuery;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRDBText38: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText82: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel23: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  public

  end;

var
  qrFechaAmosRes: TqrFechaAmosRes;
  vqqt,vqpe,vqex,vqc1,vqc2,vqc3,vqin,vvex,vvc1,vvc2,vvc3,vvto:Double;
  vtqqt,vtqpe,vtqex,vtqc1,vtqc2,vtqc3,vtqin,vtvex,vtvc1,vtvc2,vtvc3,vtvto:Double;

implementation

{$R *.DFM}

uses Menu,Data;

procedure TqrFechaAmosRes.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFechaAmosRes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vqqt:=0;vqpe:=0;vqex:=0;vqc1:=0;vqc2:=0;vqc3:=0;vqin:=0;vvex:=0;vvc1:=0;vvc2:=0;vvc3:=0;vvto:=0;
  vtqqt:=0;vtqpe:=0;vtqex:=0;vtqc1:=0;vtqc2:=0;vtqc3:=0;vtqin:=0;vtvex:=0;vtvc1:=0;vtvc2:=0;vtvc3:=0;vtvto:=0;
end;

procedure TqrFechaAmosRes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vrec:Integer;
begin
  with qrFecha do begin
    vqqt:=vqqt+FieldByName('Binger').asFloat;
    vqpe:=vqpe+FieldByName('Qtdger').asFloat;
    vqex:=vqex+FieldByName('TQtdExtr').asFloat;
    vqc1:=vqc1+FieldByName('TQtdCat1').asFloat;
    vqc2:=vqc2+FieldByName('TQtdCat2').asFloat;
    vqc3:=vqc3+FieldByName('TQtdCat3').asFloat;
    vqin:=vqin+FieldByName('TQtdIndu').asFloat;
    vvex:=vqex+FieldByName('AVlrExtr').asFloat;
    vvc1:=vvc1+FieldByName('AVlrCat1').asFloat;
    vvc2:=vvc2+FieldByName('AVlrCat2').asFloat;
    vvc3:=vvc3+FieldByName('AVlrCat3').asFloat;
    vvto:=vvto+FieldByName('AVlrIndu').asFloat;
    qrLabel3.Caption:=FloatToStrF(vqqt,ffnumber,10,0);
    qrLabel4.Caption:=FloatToStrF(vqpe,ffnumber,10,0);
    if vqpe =0 then
    begin
      qrLabel5.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel11.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel12.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel13.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel14.Caption:=FloatToStrF(0,ffnumber,10,1);
    end
    else begin
      qrLabel5.Caption:=FloatToStrF(vqex/vqpe*100,ffnumber,10,1);
      qrLabel11.Caption:=FloatToStrF(vqc1/vqpe*100,ffnumber,10,1);
      qrLabel12.Caption:=FloatToStrF(vqc2/vqpe*100,ffnumber,10,1);
      qrLabel13.Caption:=FloatToStrF(vqc3/vqpe*100,ffnumber,10,1);
      qrLabel14.Caption:=FloatToStrF(vqin/vqpe*100,ffnumber,10,1);
    end;
    qrLabel15.Caption:=FloatToStrF(vvex,ffnumber,10,2);
    qrLabel16.Caption:=FloatToStrF(vvc1,ffnumber,10,2);
    qrLabel17.Caption:=FloatToStrF(vvc2,ffnumber,10,2);
    qrLabel18.Caption:=FloatToStrF(vvc3,ffnumber,10,2);
    qrLabel19.Caption:=FloatToStrF(vvto,ffnumber,10,2);
//total
    vtqqt:=vtqqt+FieldByName('Binger').asFloat;
    vtqpe:=vtqpe+FieldByName('Qtdger').asFloat;
    vtqex:=vtqex+FieldByName('TQtdExtr').asFloat;
    vtqc1:=vtqc1+FieldByName('TQtdCat1').asFloat;
    vtqc2:=vtqc2+FieldByName('TQtdCat2').asFloat;
    vtqc3:=vtqc3+FieldByName('TQtdCat3').asFloat;
    vtqin:=vtqin+FieldByName('TQtdIndu').asFloat;
    vtvex:=vtqex+FieldByName('AVlrExtr').asFloat;
    vtvc1:=vtvc1+FieldByName('AVlrCat1').asFloat;
    vtvc2:=vtvc2+FieldByName('AVlrCat2').asFloat;
    vtvc3:=vtvc3+FieldByName('AVlrCat3').asFloat;
    vtvto:=vtvto+FieldByName('AVlrIndu').asFloat;
    qrLabel21.Caption:=FloatToStrF(vtqqt,ffnumber,10,0);
    qrLabel22.Caption:=FloatToStrF(vtqpe,ffnumber,10,0);
    if vtqpe = 0 then
    begin
      qrLabel24.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel25.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel26.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel27.Caption:=FloatToStrF(0,ffnumber,10,1);
      qrLabel28.Caption:=FloatToStrF(0,ffnumber,10,1);
    end
    else begin
      qrLabel24.Caption:=FloatToStrF(vtqex/vtqpe*100,ffnumber,10,1);
      qrLabel25.Caption:=FloatToStrF(vtqc1/vtqpe*100,ffnumber,10,1);
      qrLabel26.Caption:=FloatToStrF(vtqc2/vtqpe*100,ffnumber,10,1);
      qrLabel27.Caption:=FloatToStrF(vtqc3/vtqpe*100,ffnumber,10,1);
      qrLabel28.Caption:=FloatToStrF(vtqin/vtqpe*100,ffnumber,10,1);
    end;
    qrLabel29.Caption:=FloatToStrF(vtvex,ffnumber,10,2);
    qrLabel30.Caption:=FloatToStrF(vtvc1,ffnumber,10,2);
    qrLabel31.Caption:=FloatToStrF(vtvc2,ffnumber,10,2);
    qrLabel32.Caption:=FloatToStrF(vtvc3,ffnumber,10,2);
    qrLabel33.Caption:=FloatToStrF(vtvto,ffnumber,10,2);
//Total geral em kgs/centavos
    qrLabel35.Caption:=FloatToStrF(vtqex,ffnumber,10,0);
    qrLabel36.Caption:=FloatToStrF(vtqc1,ffnumber,10,0);
    qrLabel37.Caption:=FloatToStrF(vtqc2,ffnumber,10,0);
    qrLabel38.Caption:=FloatToStrF(vtqc3,ffnumber,10,0);
    qrLabel39.Caption:=FloatToStrF(vtqin,ffnumber,10,0);
    if vtqex>0 then qrLabel40.Caption:=FloatToStrF(vtvex/vtqex,ffnumber,10,4)
    else qrLabel40.Caption:='0';
    if vtqc1>0 then qrLabel41.Caption:=FloatToStrF(vtvc1/vtqc1,ffnumber,10,4)
    else qrLabel41.Caption:='0';
    if vtqc2>0 then qrLabel42.Caption:=FloatToStrF(vtvc2/vtqc2,ffnumber,10,4)
    else qrLabel42.Caption:='0';
    if vtqc3>0 then qrLabel43.Caption:=FloatToStrF(vtvc3/vtqc3,ffnumber,10,4)
    else qrLabel43.Caption:='0';
    if vtqpe>0 then qrLabel44.Caption:=FloatToStrF(vtvto/vtqpe,ffnumber,10,4)
    else qrLabel44.Caption:='0';
//Proximo
    ChildBand1.Height:=0;
    vrec:=FieldByName('ProdCod').asInteger;
    Next;
    if vrec<>FieldByName('ProdCod').asInteger then begin
       ChildBand1.Height:=20;
       vqqt:=0;vqpe:=0;vqex:=0;vqc1:=0;vqc2:=0;vqc3:=0;
       vqin:=0;vvex:=0;vvc1:=0;vvc2:=0;vvc3:=0;vvto:=0;
    end;
    if not Eof then Prior else ChildBand1.Height:=20;
  end;
end;


end.
