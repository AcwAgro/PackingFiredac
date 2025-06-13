unit rlEtiquetaPequena;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  ClipBrd;

type
  TqrEtiquetaPequena = class(TQuickRep)
    ChildBand1: TQRChildBand;
    DetailBand1: TQRBand;
    qrEtiq: TQuery;
    qrEmbal: TQRLabel;
    qrCateg: TQRLabel;
    qrCalibre: TQRLabel;
    qrCodigo: TQRLabel;
    qrEtiqCODIGO: TStringField;
    qrEtiqDESCRICAO: TStringField;
    qrEtiqPESO: TStringField;
    qrEtiqLOTE: TStringField;
    qrEtiqLINHA1: TStringField;
    qrEtiqLINHA2: TStringField;
    qrEtiqLINHA3: TStringField;
    qrEtiqLINHA4: TStringField;
    qrEtiqLINHA5: TStringField;
    qrEtiqQTDE: TIntegerField;
    qrEtiqCONTADOR: TIntegerField;
    qrEtiqVARIEDADE: TStringField;
    qrEtiqCATEGORIA: TStringField;
    qrEtiqCALIBRE: TStringField;
    qrEtiqBARRA: TStringField;
    QRLabel1: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public
  end;

var
  qrEtiquetaPequena: TqrEtiquetaPequena;

implementation

uses Menu;

{$R *.DFM}

procedure TqrEtiquetaPequena.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrCateg.Caption   := qrEtiq.FieldByName('Categoria').Text;
  qrCalibre.Caption := qrEtiq.FieldByName('Calibre').Text;
  qrEmbal.Caption   := qrEtiq.FieldByName('Linha1').Text;
//  CJVQRBarCode.Texto:= qrEtiq.FieldByName('Linha5').Text;
  qrCodigo.Caption  := qrEtiq.FieldByName('Linha5').Text;
end;

procedure TqrEtiquetaPequena.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

end.
