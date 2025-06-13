unit rlEstoquePal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrEstoquePal = class(TQuickRep)
    qrDados: TQuery;
    TitleBand1: TQRBand;
    QRLabel0: TQRLabel;
    QRDBText17: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData4: TQRSysData;
    DetailBand1: TQRBand;
    qrCalc1: TQRDBText;
    qrCalc2: TQRDBText;
    qrCalc4: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrcal3: TQRLabel;
    qrDadosID: TIntegerField;
    qrDadosVCOD: TIntegerField;
    qrDadosVDES: TStringField;
    qrDadosCCOD: TIntegerField;
    qrDadosCDES: TStringField;
    qrDadosPCOD: TIntegerField;
    qrDadosPDES: TStringField;
    qrDadosCALD: TStringField;
    qrDadosUNID: TStringField;
    qrDadosQATU: TFloatField;
    qrDadosACESOCOD: TIntegerField;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    qrlblTotal: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    qrlblSaldo: TQRLabel;
    QRShape2: TQRShape;
    qrlblSoma: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

    vcat: Integer;
    vqtde, vtotal: Double;

  public

  end;

var
  qrEstoquePal: TqrEstoquePal;

implementation

{$R *.DFM}

uses Menu,Data,Rotina,dialogs;

procedure TqrEstoquePal.QuickRepPreview(Sender: TObject);
begin
  vcat := StrToIntDef(qrDadosCCOD.AsString,0);
  vqtde:= 0;
  vtotal := 0;
  fPreview(Sender);
end;


procedure TqrEstoquePal.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrDados.Next;
  if (vcat<>StrToIntDef(qrDadosCCOD.asString,0)) then
  begin
    ChildBand1.Height:=25;
    vcat := StrToIntDef(qrDadosCCOD.AsString,0);
    vqtde:= 0;
  end;
  if not qrDados.Eof then
    qrDados.Prior;

end;

procedure TqrEstoquePal.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Color=clWhite then DetailBand1.Color:=$00DFDFDF
  else DetailBand1.Color:=clWhite;

  ChildBand1.Height:=0;

  vqtde := vqtde + qrDadosQATU.asFloat;
  vtotal:= vtotal + qrDadosQATU.asFloat;
  qrlblSaldo.Caption := FormatFloat('0.#', vqtde);
  qrlblSoma.Caption  := FormatFloat('0.#', vqtde);
  qrlblTotal.Caption := FormatFloat('0.#', vtotal);
end;

end.
