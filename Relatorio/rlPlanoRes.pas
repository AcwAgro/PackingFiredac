unit rlPlanoRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPlanoRes = class(TQuickRep)
    qrConta: TQuery;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData4: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrBanco: TQuery;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    vResDat,vResAnt:String;
  end;

var
  qrPlanoRes: TqrPlanoRes;
  vresdat:String;
  vtant,vtent,vtsai:Real;

implementation

uses Menu, Data, frmRelContas;

{$R *.DFM}

procedure TqrPlanoRes.QuickRepPreview(Sender: TObject);
begin
  vtant:=0; vtent:=0; vtsai:=0;
  fPreview(Sender);
end;

procedure TqrPlanoRes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtant:=0; vtent:=0; vtsai:=0;
end;

procedure TqrPlanoRes.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vant,vent,vsai:Real; vcc:Integer;
begin
  qrLabel3.Caption:=''; qrLabel4.Caption:='';
  qrLabel5.Caption:=''; qrLabel6.Caption:='';
  if Length(qrConta.Fields[0].Text)<3 then vcc:=2
  else if Length(qrConta.Fields[0].Text)<6 then vcc:=5
  else vcc:=10;
{  if frmRelContas.CBB1.Checked then begin
     qrBanco.Close;
     qrBanco.Sql.Strings[2]:='Where '+vresant+' and Trim(SubString(Conta from 1 for '+IntToStr(vcc)+'))='+
                             QuotedStr(Copy(qrConta.Fields[0].Text,1,vcc));
     qrBanco.Open;
     vant:=qrBanco.Fields[0].asFloat;
  end else }
  vant:=0;
  qrBanco.Close;
  qrBanco.Sql.Strings[2]:='Where '+vresdat+' and Formar='+
                          QuotedStr('E')+' and Trim(SubString(Conta from 1 for '+IntToStr(vcc)+'))='+
                          QuotedStr(Copy(qrConta.Fields[0].Text,1,vcc));
  qrBanco.Open;
  vent:=qrBanco.Fields[0].asFloat;
  qrBanco.Close;
  qrBanco.Sql.Strings[2]:='Where '+vresdat+' and Formar='+
                          QuotedStr('S')+' and Trim(SubString(Conta from 1 for '+IntToStr(vcc)+'))='+
                          QuotedStr(Copy(qrConta.Fields[0].Text,1,vcc));
  qrBanco.Open;
  vsai:=qrBanco.Fields[0].asFloat*-1;
  if vant<>0 then qrLabel3.Caption:=FloatToStrF(vant,ffNumber,10,2);
  if vent<>0 then qrLabel4.Caption:=FloatToStrF(vent,ffNumber,10,2);
  if vsai<>0 then qrLabel5.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  if vant+vent+vsai<>0 then qrLabel6.Caption:=FloatToStrF(vant+vent-vsai,ffNumber,10,2);
  QRBand1.Height:=0;
  if vant+vent+(vsai*-1)<>0 then begin
     QRBand1.Height:=16;
     if qrBand1.Color=clWhite then qrBand1.Color:=$00D3D3D3
     else qrBand1.Color:=clWhite;
  end;
  if vcc=10 then begin
     vtant:=vtant+vant;
     vtent:=vtent+vent;
     vtsai:=vtsai+vsai;
  end;
end;


procedure TqrPlanoRes.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel8.Caption:=FloatToStrF(vtant,ffNumber,10,2);
  qrLabel9.Caption:=FloatToStrF(vtent,ffNumber,10,2);
  qrLabel11.Caption:=FloatToStrF(vtsai,ffNumber,10,2);
  qrLabel12.Caption:=FloatToStrF(vtant+vtent-vtsai,ffNumber,10,2);
end;

end.
