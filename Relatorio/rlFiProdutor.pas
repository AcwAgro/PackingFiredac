unit rlFiProdutor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrFiProdutor = class(TQuickRep)
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    qrBase: TQuery;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ChildBand1: TQRChildBand;
    QRDBText1: TQRDBText;
    qrSub: TQuery;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape4: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText16: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel26: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel28: TQRLabel;
    QRShape5: TQRShape;
    QRLabel29: TQRLabel;
    QRShape6: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel32: TQRLabel;
    ChildBand5: TQRChildBand;
    QRSysData4: TQRSysData;
    QRSysData2: TQRSysData;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qrFiProdutor: TqrFiProdutor;
  vrec:Integer;

implementation

{$R *.DFM}

uses Menu,Data;

procedure TqrFiProdutor.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFiProdutor.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrSub.close;
  qrSub.Sql.Strings[2]:='Where Registro='+qrBase.FieldByName('Registro').Text;
  qrSub.Open;
  vrec:=0;
  ChildBand2.Height:=0;
end;

procedure TqrFiProdutor.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vrec:=vrec+1;
  qrsub.Next;
  ChildBand1.Height:=0;
  ChildBand5.Height:=0;
  if qrsub.Eof then begin
     ChildBand1.Height:=(310-(vrec*15));
     ChildBand2.Height:=70;
     ChildBand5.Height:=90;
  end else qrSub.Prior;
end;

procedure TqrFiProdutor.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrSub.close;
  qrSub.Sql.Strings[2]:='Where Registro='+qrBase.FieldByName('Registro').Text;
  qrSub.Open;
  vrec:=0;
  ChildBand4.Height:=0;
end;

procedure TqrFiProdutor.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vrec:=vrec+1;
  qrsub.Next;
  ChildBand3.Height:=0;
  if qrsub.Eof then begin
     ChildBand3.Height:=ChildBand1.Height;
     ChildBand4.Height:=ChildBand2.Height;
  end else qrSub.Prior;
end;

end.
