unit rlBancoRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrBancoRes = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape6: TQRShape;
    qra1: TQRLabel;
    QRShape7: TQRShape;
    qre1: TQRLabel;
    qrs1: TQRLabel;
    qrf1: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel18: TQRLabel;
    qra2: TQRLabel;
    qre2: TQRLabel;
    qrs2: TQRLabel;
    qrf2: TQRLabel;
    QRShape10: TQRShape;
    QRLabel23: TQRLabel;
    qra4: TQRLabel;
    qre4: TQRLabel;
    qrs4: TQRLabel;
    qrf4: TQRLabel;
    qrf3: TQRLabel;
    qrs3: TQRLabel;
    qre3: TQRLabel;
    qra3: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape11: TQRShape;
    QRLabel33: TQRLabel;
    qrat1: TQRLabel;
    qret1: TQRLabel;
    qrst1: TQRLabel;
    qrft1: TQRLabel;
    qrf7: TQRLabel;
    qrs7: TQRLabel;
    qre7: TQRLabel;
    qra7: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    qra6: TQRLabel;
    qra5: TQRLabel;
    qre6: TQRLabel;
    qre5: TQRLabel;
    qrs5: TQRLabel;
    qrs6: TQRLabel;
    qrf6: TQRLabel;
    qrf5: TQRLabel;
    QRShape14: TQRShape;
    QRLabel53: TQRLabel;
    qra11: TQRLabel;
    qre11: TQRLabel;
    qrs11: TQRLabel;
    qrf11: TQRLabel;
    qrf10: TQRLabel;
    qrs10: TQRLabel;
    qre10: TQRLabel;
    qra10: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    qra9: TQRLabel;
    qra8: TQRLabel;
    qre9: TQRLabel;
    qre8: TQRLabel;
    qrs8: TQRLabel;
    qrs9: TQRLabel;
    qrf9: TQRLabel;
    qrf8: TQRLabel;
    QRShape17: TQRShape;
    QRLabel73: TQRLabel;
    qra14: TQRLabel;
    qre14: TQRLabel;
    qrs14: TQRLabel;
    qrf14: TQRLabel;
    qrf13: TQRLabel;
    qrs13: TQRLabel;
    qre13: TQRLabel;
    qra13: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    qra12: TQRLabel;
    qrat2: TQRLabel;
    qre12: TQRLabel;
    qret2: TQRLabel;
    qrst2: TQRLabel;
    qrs12: TQRLabel;
    qrf12: TQRLabel;
    qrft2: TQRLabel;
    QRShape20: TQRShape;
    QRLabel93: TQRLabel;
    qra17: TQRLabel;
    qre17: TQRLabel;
    qrs17: TQRLabel;
    qrf17: TQRLabel;
    qrf16: TQRLabel;
    qrs16: TQRLabel;
    qre16: TQRLabel;
    qra16: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    qra15: TQRLabel;
    qrat3: TQRLabel;
    qre15: TQRLabel;
    qret3: TQRLabel;
    qrst3: TQRLabel;
    qrs15: TQRLabel;
    qrf15: TQRLabel;
    qrft3: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel113: TQRLabel;
    qrat4: TQRLabel;
    qret4: TQRLabel;
    qrst4: TQRLabel;
    qrft4: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    qrVenda: TQuery;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrBancoRes: TqrBancoRes;
  vbrper:TDateTime;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrBancoRes.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
