unit rlPromissoria;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport, IBCustomDataSet, IBQuery;

type
  TqrPromissoria = class(TQuickRep)
    qrRec: TQuery;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrPromissoria: TqrPromissoria;

implementation

uses Data,Menu,Rotina;
{$R *.DFM}

procedure TqrPromissoria.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrPromissoria.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vcc:Integer; vtt:String;
begin
  fSql(1,1,['Select GrupoCod, Count(GrupoCod) From nfVendCo Where Lanc='+qrRec.FieldByName('Lanc').Text,
            'Group By GrupoCod'],2);
  vcc:=-1; vtt:='';
  while not dm.qrSql1.Eof do begin
    if vcc<>dm.qrSql1.Fields[0].asInteger then begin
       vcc:=dm.qrSql1.Fields[0].asInteger;
       vtt:=vtt+Trim(UpperCase(Copy(fBus(1,['Select Descricao From CadVarie Where Codigo='+IntToStr(vcc)],1),6,20)))+',';
    end;
    dm.qrSql1.Next;
  end;
  qrLabel9.Caption:='MAÇÃ';
  qrLabel10.Caption:=vtt;
  qrLabel11.Caption:=Trim(qrRec.FieldByName('QtdEsp').Text);
  qrLabel1.Caption:='de  '+Trim(dm.TEmpresa.FieldByName('CidadeDes').Text)+
                    '  para  '+Trim(qrRec.FieldByName('CidadeDes').Text);
  qrLabel2.Caption:=DateToStr(qrRec.FieldByName('Data').Value+4);
  qrLabel3.Caption:=Trim(dm.TEmpresa.FieldByName('CidadeDes').Text);
  qrLabel4.Caption:=frMesI(qrRec.FieldByName('Data').Value);
  qrLabel5.Caption:=Copy(qrRec.FieldByName('SegTip').Text,4,20);
  qrLabel16.Caption:=qrLabel8.Caption;
  qrLabel17.Caption:=qrLabel6.Caption;
end;

end.
