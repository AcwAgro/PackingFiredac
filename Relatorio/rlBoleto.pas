unit rlBoleto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrBoleto = class(TQuickRep)
    QRBand1: TQRBand;
    qrConta: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrBoleto: TqrBoleto;
  vblper,vblmul:Double;
  vblli1,vblli2:String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina;

procedure TqrBoleto.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrBoleto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vval:Real;
begin
  if fTra(1,['Select * From CadClien Where Codigo=0'+qrConta.FieldByName('Codigo').Text],1) then begin
     qrLabel1.Caption:=dm.qrSqlTra.FieldByName('Descricao').Text;
     qrLabel2.Caption:=dm.qrSqlTra.FieldByName('Endereco').Text;
     qrLabel3.Caption:=dm.qrSqlTra.FieldByName('Cep').Text;
     qrLabel5.Caption:=dm.qrSqlTra.FieldByName('CidadeDes').Text+'/'+dm.qrSqlTra.FieldByName('Estado').Text;
     qrLabel7.Caption:=dm.qrSqlTra.FieldByName('Fone').Text;
     qrLabel9.Caption:=dm.qrSqlTra.FieldByName('CPF').Text;
  end;
  qrLabel8.Caption:=FloatToStrf(qrConta.FieldByName('Valor').asFloat,ffCurrency,14,2);
  vval:=(qrConta.FieldByName('Valor').asFloat*vblper)/3000;
  qrLabel4.Caption:=vblli1+' ('+FloatToStrF(vval,ffCurrency,10,2)+' ao dia)';
  vval:=(qrConta.FieldByName('Valor').asFloat*vblmul)/100;
  qrLabel6.Caption:=vblli2+' ('+FloatToStrF(vval,ffCurrency,10,2)+')';
end;

end.
