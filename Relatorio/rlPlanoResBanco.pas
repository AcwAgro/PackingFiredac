unit rlPlanoResBanco;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrPlanoResBanco = class(TQuickRep)
    qrConta: TQuery;
    QRBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData4: TQRSysData;
    QRSysData1: TQRSysData;
    qrBanco: TQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    qrPlano: TQuery;
    QRLabel14: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private

  public
    //vResDat,vResAnt:String;
  end;

var
  qrPlanoResBanco: TqrPlanoResBanco;
  vresccdat, vplAnt:String;
  vtant,vtent,vtsai:Real;

implementation

uses Menu, Data, frmRelContas;

{$R *.DFM}

procedure TqrPlanoResBanco.QuickRepPreview(Sender: TObject);
begin
  vtant:=0; vtent:=0; vtsai:=0;
  fPreview(Sender);
end;

procedure TqrPlanoResBanco.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtant:=0; vtent:=0; vtsai:=0;
end;

procedure TqrPlanoResBanco.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrPlano.First;
  vtant:=0; vtent:=0; vtsai:=0;
  vplAnt := '';
end;

procedure TqrPlanoResBanco.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vant,vent,vsai:Real; vcc:Integer;
begin
  qrLabel3.Caption:=''; qrLabel4.Caption:='';
  qrLabel5.Caption:=''; qrLabel6.Caption:='';
  if Length(qrPlano.Fields[0].Text)<3 then vcc:=2
  else if Length(qrPlano.Fields[0].Text)<6 then vcc:=5
  else vcc:=10;

  vant:=0;
  qrBanco.Close;
  qrBanco.Sql.Strings[2]:='Where '+vresccdat+' and Formar='+
                          QuotedStr('E')+' and Trim(SubString(Conta from 1 for '+IntToStr(vcc)+'))='+
                          QuotedStr(Copy(qrPlano.Fields[0].Text,1,vcc))+
                          ' and bancocod = 0'+qrConta.Fields[0].asString;
  qrBanco.Open;
  vent:=qrBanco.Fields[0].asFloat;
  qrBanco.Close;
  qrBanco.Sql.Strings[2]:='Where '+vresccdat+' and Formar='+
                          QuotedStr('S')+' and Trim(SubString(Conta from 1 for '+IntToStr(vcc)+'))='+
                          QuotedStr(Copy(qrPlano.Fields[0].Text,1,vcc))+
                          ' and bancocod = 0'+qrConta.Fields[0].asString;
  qrBanco.Open;
  vsai:=qrBanco.Fields[0].asFloat*-1;
  if vant<>0 then qrLabel3.Caption:=FloatToStrF(vant,ffNumber,10,2);
  if vent<>0 then qrLabel4.Caption:=FloatToStrF(vent,ffNumber,10,2);
  if vsai<>0 then qrLabel5.Caption:=FloatToStrF(vsai,ffNumber,10,2);
  if vant+vent+vsai<>0 then qrLabel6.Caption:=FloatToStrF(vant+vent-vsai,ffNumber,10,2);

  QRSubDetail1.Height:=0;

  if vplAnt <> qrPlano.Fields[0].Text then
  begin
    vplAnt := qrPlano.Fields[0].Text;
    if vant+vent+(vsai*-1)<>0 then begin
       QRSubDetail1.Height:=16;
       if QRSubDetail1.Color=clWhite then QRSubDetail1.Color:=$00D3D3D3
       else QRSubDetail1.Color:=clWhite;
    end;
  end;
  if vcc=10 then begin
     vtant:=vtant+vant;
     vtent:=vtent+vent;
     vtsai:=vtsai+vsai;
  end;

end;

end.
