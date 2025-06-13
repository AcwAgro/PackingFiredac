unit rlRecBin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrRelRecBin = class(TQuickRep)
    qrRecBin: TQuery;
    DetailBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText17: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel13: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrRelRecBin: TqrRelRecBin;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrRelRecBin.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRelRecBin.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel22.Caption:='/'+Copy(DateToStr(Now),7,4);
  qrLabel13.Caption:='CNPJ. '+dm.TEmpresa.FieldByName('CPF').Text;
  qrLabel10.Caption:=dm.TEmpresa.FieldByName('Endereco').Text+'   -   Fone:'+dm.TEmpresa.FieldByName('Fone').Text;
  qrLabel12.Caption:=dm.TEmpresa.FieldByName('Bairro').Text+' - '+dm.TEmpresa.FieldByName('Cep').Text
                    +' - '+dm.TEmpresa.FieldByName('CidadeDes').Text+' -  SC';
  qrLabel13.Caption:=dm.TEmpresa.FieldByName('CPF').Text;
end;

end.
