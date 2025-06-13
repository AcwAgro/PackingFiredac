unit rlFiDuplica;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrFiDuplica = class(TQuickRep)
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText21: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRRichText1: TQRRichText;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand1: TQRChildBand;
    SummaryBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape12: TQRShape;
    QRMemo1: TQRMemo;
    QRShape13: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape16: TQRShape;
    QRImage2: TQRImage;
    QRLabel17: TQRLabel;
    QRRichText2: TQRRichText;
    QRShape17: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape28: TQRShape;
    QRMemo2: TQRMemo;
    QRShape29: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape32: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText30: TQRDBText;
    qrDuplicat: TQuery;
    QRDBText6: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel55: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel25: TQRLabel;
    qrCliente: TQuery;
    QRDBText24: TQRDBText;
    QRDBText40: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrFiDuplica: TqrFiDuplica;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrFiDuplica.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFiDuplica.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRRichText1.Lines.Clear;
  QRRichText1.Lines.Add('( '+fRExte(qrDuplicat.FieldByName('Valor').Value)+' )'+
                             frPree('.x.',20,' x.',1));
end;

procedure TqrFiDuplica.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRRichText2.Lines.Clear;
  QRRichText2.Lines.Add('( '+frExte(qrDuplicat.FieldByName('Valor').Value)+' )'+
                             frPree('.x.',20,' x.',1));
end;


end.
