unit rlFinanCli;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrFinanCli = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrFinanCli: TqrFinanCli;
  vent,vsai:Real;

implementation

{$R *.DFM}
uses Data,Menu,dialogs;

procedure TqrFinanCli.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFinanCli.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vent:=0; vsai:=0;
end;

procedure TqrFinanCli.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:=Trim(qrMovim.FieldByName('Favorecido').Text)+' '+Trim(qrMovim.FieldByName('Prove').Text);
  qrLabel4.Caption:=''; qrLabel10.Caption:='';
  QRDBText6.Height:=0;
  if qrMovim.FieldByName('Baixa').Text='S' then begin
     qrLabel4.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,14,2);
     vent:=vent+qrMovim.FieldByName('Valor').asFloat;
     QRDBText6.Height:=15;
  end else begin
     qrLabel10.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,14,2);
     vsai:=vsai+qrMovim.FieldByName('Valor').asFloat;
  end;
  QRLabel24.Caption:=FloatToStrF(vent,ffNumber,14,2);
  QRLabel25.Caption:=FloatToStrF(vsai,ffNumber,14,2);
end;


end.
