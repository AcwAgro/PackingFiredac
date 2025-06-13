unit rlPSPVendaLote;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPSPVendaLote = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape3: TQRShape;
    ChildBand2: TQRChildBand;
    QRLabel26: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSysData4: TQRSysData;
    qrPediCom: TQuery;
    qrPedi: TQuery;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText19: TQRDBText;
    qrCadastro: TQuery;
    QRLabel21: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    qrlblFinan: TQRLabel;
    qrPediFin: TQuery;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrPSPVendaLote: TqrPSPVendaLote;
  vrec,vOpc:Integer;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrPSPVendaLote.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vrec:=0;
end;

procedure TqrPSPVendaLote.QuickRepPreview(Sender: TObject);
begin
  vrec:=0;
  fPreview(Sender);
end;

procedure TqrPSPVendaLote.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=vrec+1;
  ChildBand2.Height:=0;
  qrPediCom.Next;
  if vrec=qrPediCom.RecordCount then begin
     if vrec<40 then ChildBand2.Height:=(39-vrec)*15
     else ChildBand2.Height:=100;
     vrec:=0;
  end else qrPediCom.Prior;
end;

procedure TqrPSPVendaLote.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel1.Caption:=xAcess;
end;

end.
