unit rlFechaAmos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrFechaAmos = class(TQuickRep)
    qrFecha: TQuery;
    Query1: TQuery;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape4: TQRShape;
    PageHeaderBand1: TQRBand;
    QRDBText38: TQRDBText;
    QRShape17: TQRShape;
    QRExpr3: TQRExpr;
    QRDBText17: TQRDBText;
    QRLabel18: TQRLabel;
    SummaryBand1: TQRBand;
    QRDBText73: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText76: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText77: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRShape18: TQRShape;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRShape3: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText48: TQRDBText;
    QRShape14: TQRShape;
    QRShape10: TQRShape;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText53: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRDBText37: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRExpr7: TQRExpr;
    QRLabel38: TQRLabel;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRExpr8: TQRExpr;
    QRLabel39: TQRLabel;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape16: TQRShape;
    QRLabel42: TQRLabel;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRExpr9: TQRExpr;
    QRLabel44: TQRLabel;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRExpr10: TQRExpr;
    QRLabel45: TQRLabel;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRExpr11: TQRExpr;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public
    vSomaCat4:Boolean;
  end;

var
  qrFechaAmos: TqrFechaAmos;

implementation

{$R *.DFM}

uses Menu,Data;

procedure TqrFechaAmos.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;


procedure TqrFechaAmos.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if vSomaCat4 then
  begin
    qrLabel20.Caption:=FloatToStrF(qrFecha.FieldByName('AQTDCAT1').asFloat+qrFecha.FieldByName('CQTDCAT1').asFloat+qrFecha.FieldByName('PQTDCAT1').asFloat+
                                   qrFecha.FieldByName('AQTDCAT2').asFloat+qrFecha.FieldByName('CQTDCAT2').asFloat+qrFecha.FieldByName('PQTDCAT2').asFloat+
                                   qrFecha.FieldByName('AQTDCAT3').asFloat+qrFecha.FieldByName('CQTDCAT3').asFloat+qrFecha.FieldByName('PQTDCAT3').asFloat+
                                   qrFecha.FieldByName('AQTDCAT4').asFloat,ffNumber,10,0);
    qrLabel22.Caption:=FloatToStrF(qrFecha.FieldByName('AVLRCAT1').asFloat+qrFecha.FieldByName('CVLRCAT1').asFloat+qrFecha.FieldByName('PVLRCAT1').asFloat+
                                   qrFecha.FieldByName('AVLRCAT2').asFloat+qrFecha.FieldByName('CVLRCAT2').asFloat+qrFecha.FieldByName('PVLRCAT2').asFloat+
                                   qrFecha.FieldByName('AVLRCAT3').asFloat+qrFecha.FieldByName('CVLRCAT3').asFloat+qrFecha.FieldByName('PVLRCAT3').asFloat+
                                   qrFecha.FieldByName('AVLRCAT4').asFloat,ffNumber,10,2);
    qrLabel21.Caption:=FloatToStrF((qrFecha.FieldByName('AVLRCAT1').asFloat+qrFecha.FieldByName('CVLRCAT1').asFloat+qrFecha.FieldByName('PVLRCAT1').asFloat+
                                   qrFecha.FieldByName('AVLRCAT2').asFloat+qrFecha.FieldByName('CVLRCAT2').asFloat+qrFecha.FieldByName('PVLRCAT2').asFloat+
                                   qrFecha.FieldByName('AVLRCAT3').asFloat+qrFecha.FieldByName('CVLRCAT3').asFloat+qrFecha.FieldByName('PVLRCAT3').asFloat+
                                   qrFecha.FieldByName('AVLRCAT4').asFloat)/
                                  (qrFecha.FieldByName('QTDGER').asFloat),ffNumber,7,3);
    qrLabel41.Caption:=FloatToStrF((qrFecha.FieldByName('AVLRINDU').asFloat)/
                                  (qrFecha.FieldByName('AQTDCAT1').asFloat+qrFecha.FieldByName('CQTDCAT1').asFloat+qrFecha.FieldByName('PQTDCAT1').asFloat+
                                   qrFecha.FieldByName('AQTDCAT2').asFloat+qrFecha.FieldByName('CQTDCAT2').asFloat+qrFecha.FieldByName('PQTDCAT2').asFloat+
                                   qrFecha.FieldByName('AQTDCAT3').asFloat+qrFecha.FieldByName('CQTDCAT3').asFloat+qrFecha.FieldByName('PQTDCAT3').asFloat+
                                   qrFecha.FieldByName('AQTDCAT4').asFloat),ffNumber,7,3);
    qrLabel42.Caption:=FloatToStrF(qrFecha.FieldByName('QTDGER').asFloat,ffNumber,10,0);
  end
  else begin
    qrLabel20.Caption:=FloatToStrF(qrFecha.FieldByName('AQTDCAT1').asFloat+qrFecha.FieldByName('CQTDCAT1').asFloat+qrFecha.FieldByName('PQTDCAT1').asFloat+
                                   qrFecha.FieldByName('AQTDCAT2').asFloat+qrFecha.FieldByName('CQTDCAT2').asFloat+qrFecha.FieldByName('PQTDCAT2').asFloat+
                                   qrFecha.FieldByName('AQTDCAT3').asFloat+qrFecha.FieldByName('CQTDCAT3').asFloat+qrFecha.FieldByName('PQTDCAT3').asFloat
                                   ,ffNumber,10,0);
    qrLabel22.Caption:=FloatToStrF(qrFecha.FieldByName('AVLRCAT1').asFloat+qrFecha.FieldByName('CVLRCAT1').asFloat+qrFecha.FieldByName('PVLRCAT1').asFloat+
                                   qrFecha.FieldByName('AVLRCAT2').asFloat+qrFecha.FieldByName('CVLRCAT2').asFloat+qrFecha.FieldByName('PVLRCAT2').asFloat+
                                   qrFecha.FieldByName('AVLRCAT3').asFloat+qrFecha.FieldByName('CVLRCAT3').asFloat+qrFecha.FieldByName('PVLRCAT3').asFloat
                                   ,ffNumber,10,2);
    qrLabel41.Caption:=FloatToStrF((qrFecha.FieldByName('AVLRINDU').asFloat)/
                                  (qrFecha.FieldByName('AQTDCAT1').asFloat+qrFecha.FieldByName('CQTDCAT1').asFloat+qrFecha.FieldByName('PQTDCAT1').asFloat+
                                   qrFecha.FieldByName('AQTDCAT2').asFloat+qrFecha.FieldByName('CQTDCAT2').asFloat+qrFecha.FieldByName('PQTDCAT2').asFloat+
                                   qrFecha.FieldByName('AQTDCAT3').asFloat+qrFecha.FieldByName('CQTDCAT3').asFloat+qrFecha.FieldByName('PQTDCAT3').asFloat
                                   ),ffNumber,7,3);
    qrLabel42.Caption:=FloatToStrF(qrFecha.FieldByName('QTDGER').asFloat,ffNumber,10,0);
    qrLabel21.Caption:=FloatToStrF((qrFecha.FieldByName('AVLRCAT1').asFloat+qrFecha.FieldByName('CVLRCAT1').asFloat+qrFecha.FieldByName('PVLRCAT1').asFloat+
                                   qrFecha.FieldByName('AVLRCAT2').asFloat+qrFecha.FieldByName('CVLRCAT2').asFloat+qrFecha.FieldByName('PVLRCAT2').asFloat+
                                   qrFecha.FieldByName('AVLRCAT3').asFloat+qrFecha.FieldByName('CVLRCAT3').asFloat+qrFecha.FieldByName('PVLRCAT3').asFloat
                                   )/(qrFecha.FieldByName('QTDGER').asFloat),ffNumber,7,3);
  end;
end;

end.
