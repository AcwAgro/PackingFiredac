unit rlEstoqueVer;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrEstoqueVer = class(TQuickRep)
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
    qrCalc3: TQRDBText;
    qrCalc4: TQRDBText;
    qrCalc5: TQRDBText;
    qrCalc6: TQRDBText;
    qrCalc7: TQRDBText;
    qrCalc9: TQRDBText;
    qrCalc8: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrcal1: TQRLabel;
    qrcal3: TQRLabel;
    qrcal4: TQRLabel;
    qrcal5: TQRLabel;
    qrcal6: TQRLabel;
    qrcal7: TQRLabel;
    qrcal8: TQRLabel;
    qrDadosID: TIntegerField;
    qrDadosVCOD: TIntegerField;
    qrDadosVDES: TStringField;
    qrDadosCCOD: TIntegerField;
    qrDadosCDES: TStringField;
    qrDadosPCOD: TIntegerField;
    qrDadosPDES: TStringField;
    qrDadosCALD: TStringField;
    qrDadosUNID: TStringField;
    qrDadosTEX1: TStringField;
    qrDadosENT1: TFloatField;
    qrDadosSAI1: TFloatField;
    qrDadosTEX2: TStringField;
    qrDadosENT2: TFloatField;
    qrDadosSAI2: TFloatField;
    qrDadosTEX3: TStringField;
    qrDadosENT3: TFloatField;
    qrDadosSAI3: TFloatField;
    qrDadosTEX4: TStringField;
    qrDadosENT4: TFloatField;
    qrDadosSAI4: TFloatField;
    qrDadosTEX5: TStringField;
    qrDadosENT5: TFloatField;
    qrDadosSAI5: TFloatField;
    qrDadosTEX6: TStringField;
    qrDadosENT6: TFloatField;
    qrDadosSAI6: TFloatField;
    qrDadosTEX7: TStringField;
    qrDadosENT7: TFloatField;
    qrDadosSAI7: TFloatField;
    qrDadosTEX8: TStringField;
    qrDadosENT8: TFloatField;
    qrDadosSAI8: TFloatField;
    qrDadosTEX9: TStringField;
    qrDadosENT9: TFloatField;
    qrDadosSAI9: TFloatField;
    qrDadosQANT: TFloatField;
    qrDadosQCLA: TFloatField;
    qrDadosQNOT: TFloatField;
    qrDadosQPED: TFloatField;
    qrDadosQAJU: TFloatField;
    qrDadosQEST: TFloatField;
    qrDadosQATU: TFloatField;
    qrDadosACESOCOD: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    qrlblSaldokg: TQRLabel;
    qrlblSomakg: TQRLabel;
    qrlblTotalkg: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

    vcat: Integer;
    vqtde, vtotal, vqtdekg, vtotalkg, vPrecoTotal, vMedioTotal: Double;

  public

  end;

var
  qrEstoqueVer: TqrEstoqueVer;

implementation

{$R *.DFM}

uses Menu,Data,Rotina,dialogs;

procedure TqrEstoqueVer.QuickRepPreview(Sender: TObject);
begin
  vcat     := StrToIntDef(qrDadosCCOD.AsString,0);
  vqtde    := 0;
  vtotal   := 0;
  vqtdekg  := 0;
  vtotalkg := 0;
  vPrecoTotal := 0;
  vMedioTotal := 0;
  fPreview(Sender);
end;


procedure TqrEstoqueVer.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrDados.Next;
  if (vcat<>StrToIntDef(qrDadosCCOD.asString,0)) then
  begin
    ChildBand1.Height:=25;
    vcat := StrToIntDef(qrDadosCCOD.AsString,0);
    vqtde:= 0;
    vqtdekg:= 0;
  end;
  if not qrDados.Eof then
    qrDados.Prior;

end;

procedure TqrEstoqueVer.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Color=clWhite then DetailBand1.Color:=$00DFDFDF
  else DetailBand1.Color:=clWhite;

  ChildBand1.Height:=0;

  //qrlblSai8.Caption := FormatFloat('0.00', qrDadosSAI8.asFloat);
  //qrlblSai7.Caption := FormatFloat('0.00', qrDadosSAI7.asFloat);

  vqtde := vqtde + qrDadosQATU.asFloat;
  vtotal:= vtotal + qrDadosQATU.asFloat;
  qrlblSaldo.Caption := FormatFloat('0.###', vqtde);
  qrlblSoma.Caption  := FormatFloat('0.###', vqtde);
  qrlblTotal.Caption := FormatFloat('0.###', vtotal);

  vqtdekg := vqtdekg + qrDadosSAI9.asFloat;
  vtotalkg:= vtotalkg + qrDadosSAI9.asFloat;
  qrlblSaldokg.Caption := FormatFloat('0.###', vqtdekg);
  qrlblSomakg.Caption  := FormatFloat('0.###', vqtdekg);
  qrlblTotalkg.Caption := FormatFloat('0.###', vtotalkg);


  vMedioTotal:= vMedioTotal + qrDadosSAI7.asFloat;
  if vtotalkg <> 0 then
    vPrecoTotal:= vMedioTotal / vtotalkg
  else
    vPrecoTotal:= 0;
  //qrlblPrecoTotal.Caption := FormatFloat('0.00', vPrecoTotal);
  //qrlblMedioTotal.Caption := FormatFloat('0.00', vMedioTotal);

end;

end.
