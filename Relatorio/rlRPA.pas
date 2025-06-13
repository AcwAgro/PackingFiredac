unit rlRPA;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrRPA = class(TQuickRep)
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    qrMovim: TQuery;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape28: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel19: TQRLabel;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRShape4: TQRShape;
    QRDBText7: TQRDBText;
    QRRichText1: TQRRichText;
    QRDBText15: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel22: TQRLabel;
    qrLogo: TQRImage;
    qrLogo1: TQRImage;
    QRDBText6: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel12: TQRLabel;
    QRRichText2: TQRRichText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel21: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrRPA: TqrRPA;

implementation

{$R *.DFM}
uses Menu, Data, Rotina;

procedure TqrRPA.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRPA.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.TEmpresa.Locate('Codigo',qrMovim.FieldByName('EmpreCod').Text,[]);
  qrLabel6.Caption:='Fone: '+dm.TEmpresa.FieldByName('Fone').Text;
  qrLabel7.Caption:=dm.TEmpresa.FieldByName('Cep').Text+' - '+
                    dm.TEmpresa.FieldByName('CidadeDes').Text+' - '+
                    dm.TEmpresa.FieldByName('Estado').Text;
  qrLabel16.Caption:=qrLabel6.Caption;
  qrLabel15.Caption:=qrLabel7.Caption;
  qrLabel13.Caption:=qrLabel2.Caption;
  qrLabel1.Caption:=dm.TEmpresa.FieldByName('CidadeDes').Text+', '+
                    frMesI(DateToStr(qrMovim.FieldByName('Data').Value));
  qrLabel20.Caption:=qrLabel1.Caption;
  qrLabel18.Caption:='('+frExte(qrMovim.FieldByName('ValorLiq').asFloat)+')x.x.x.x.x.';
  qrLabel13.Caption:=qrLabel18.Caption;
  QRRichText1.Lines.Clear; QRRichText2.Lines.Clear;
  QRRichText1.Lines.Add(Trim('Valor do Serviço...:(+) '+frPree(FloatToStrF(qrMovim.FieldByName('ValorBru').asFloat,ffCurrency,10,2),12,' ',0)));
  QRRichText1.Lines.Add(Trim('Valor do Inss......:(-) '+frPree(FloatToStrF(qrMovim.FieldByName('VlrInss').asFloat,ffCurrency,10,2),12,' ',0)));
  QRRichText1.Lines.Add(Trim('Valor do Inss Frete:(-) '+frPree(FloatToStrF(qrMovim.FieldByName('FreVal').asFloat,ffCurrency,10,2),12,' ',0)));
  QRRichText1.Lines.Add(Trim('Valor do IRRF......:(-) '+frPree(FloatToStrF(qrMovim.FieldByName('VlrIrrf').asFloat-qrMovim.FieldByName('VlrBase').asFloat,ffCurrency,10,2),12,' ',0)));
  QRRichText1.Lines.Add(Trim('Valor a Receber....:(=) '+frPree(FloatToStrF(qrMovim.FieldByName('ValorLiq').asFloat,ffCurrency,10,2),12,' ',0)));
  QRRichText1.Lines.Add('');
  QRRichText1.Lines.Add(Trim('Valor do Dependente(s): '+frPree(FloatToStrF(qrMovim.FieldByName('VlrDepende').asFloat,ffCurrency,10,2),12,' ',0)));
  QRRichText2.Lines:=QRRichText1.Lines;
  qrLabel3.Caption:=Copy(Trim(qrMovim.FieldByName('Descricao').Text),1,26);
  qrLabel22.Caption:=Copy(Trim(qrMovim.FieldByName('Descricao').Text),1,26);
end;

end.
