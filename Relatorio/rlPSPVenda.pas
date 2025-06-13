unit rlPSPVenda;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPSPVenda = class(TQuickRep)
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
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData4: TQRSysData;
    QRChildBand1: TQRChildBand;
    QRShape4: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel36: TQRLabel;
    QRChildBand2: TQRChildBand;
    QRLabel52: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel55: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel56: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRSubDetail2: TQRSubDetail;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    qrPediCom: TQuery;
    qrPedi: TQuery;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrPSPVenda: TqrPSPVenda;
  vrec,vOpc:Integer;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrPSPVenda.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vrec:=0;
end;

procedure TqrPSPVenda.QuickRepPreview(Sender: TObject);
begin
  vrec:=0;
  fPreview(Sender);
end;

procedure TqrPSPVenda.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=vrec+1;
  ChildBand2.Height:=0;
  qrPediCom.Next;
  if vrec=qrPediCom.RecordCount then begin
     if vrec<18 then ChildBand2.Height:=(29-vrec)*15
     else ChildBand2.Height:=100;
     vrec:=0;
  end else qrPediCom.Prior;
end;

procedure TqrPSPVenda.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=vrec+1;
  qrChildBand2.Height:=0;
  qrPediCom.Next;
  if qrPediCom.Eof then begin
     qrChildBand2.Height:=100;
     vrec:=0;
  end else qrPediCom.Prior;
end;

procedure TqrPSPVenda.QRChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel24.Caption:=QRLabel16.Caption;
  if qrPediCom.RecordCount>17 then begin
     NewPage;
  end;
end;

procedure TqrPSPVenda.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel1.Caption:=xAcess;
  qrLabel4.Caption:=qrLabel1.Caption;
end;

end.
