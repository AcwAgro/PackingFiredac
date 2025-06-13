unit rlRelDef;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrRelDef = class(TQuickRep)
    qrMovim: TQuery;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    qrSaldo: TQuery;
    QRLabel6: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrRelDef: TqrRelDef;

implementation

uses Menu,Data,dialogs;
{$R *.DFM}

procedure TqrRelDef.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRelDef.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrSaldo.Close;
  qrSaldo.Sql.Strings[2]:=qrMovim.Sql.Strings[2]+
                          ' and co.DefCod='+qrMovim.FieldByName('DefCod').Text;
  qrSaldo.Open;
  qrLabel3.Caption:=FloatToStrF(qrMovim.FieldByName('vqtd').asFloat/
                                qrSaldo.Fields[0].asFloat*100,ffNumber,5,2);
exit;
end;

end.
