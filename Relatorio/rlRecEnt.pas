unit rlRecEnt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TqrRelRecEnt = class(TQuickRep)
    qrRecBin: TQuery;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    qrRecBinVar: TQuery;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel42: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    qrRecAmostra: TQuery;
    QRChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrRelRecEnt: TqrRelRecEnt;
  vrec:Integer;

implementation

{$R *.DFM}

uses Menu,Data;

procedure TqrRelRecEnt.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRelRecEnt.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel22.Caption:='/'+Copy(DateToStr(Now),7,4);
  qrLabel13.Caption:='CNPJ. '+dm.TEmpresa.FieldByName('CPF').Text;
  qrLabel10.Caption:=dm.TEmpresa.FieldByName('Endereco').Text+'   -   Fone:'+dm.TEmpresa.FieldByName('Fone').Text;
  qrLabel12.Caption:=dm.TEmpresa.FieldByName('Bairro').Text+' - '+dm.TEmpresa.FieldByName('Cep').Text
                    +' - '+dm.TEmpresa.FieldByName('CidadeDes').Text+' -  SC';
end;

end.
