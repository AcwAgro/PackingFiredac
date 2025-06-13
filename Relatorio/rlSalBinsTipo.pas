unit rlSalBinsTipo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrSalBinTipo = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    qrSoma: TQuery;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrSalBinTipo: TqrSalBinTipo;
  vant,vent,vsai:Integer;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu, frmRelProducao, Rotina;

procedure TqrSalBinTipo.QuickRepPreview(Sender: TObject);
begin
  vant:=0; vent:=0; vsai:=0;
  fPreview(Sender);
end;

procedure TqrSalBinTipo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vant:=0; vent:=0; vsai:=0;
end;

procedure TqrSalBinTipo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vsal:Integer;
begin
  //Anterior
  qrSoma.Close;
  qrSoma.Sql.Clear;
  qrSoma.Sql.Add('select Sum(Qtd) as xqtd, Sum(Qtent) as xQtEnt, Sum(qtVaz) as xQtVaz');
  qrSoma.Sql.Add('from (');
  qrSoma.Sql.Add('    Select Sum(BinsQtd) as qtd, 0 as QtEnt, 0 as QtVaz');
  qrSoma.Sql.Add('    From EntRB');
  qrSoma.Sql.Add('    Where BinsCod='+qrMovim.FieldByName('Codigo').Text);
  qrSoma.Sql.Add('      and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1));
  qrSoma.Sql.Add('    union');
  qrSoma.Sql.Add('    Select 0 as qtd, Sum(Varieqtd) as QtEnt, Sum(BINSQTD) as QtVaz');
  qrSoma.Sql.Add('    From EntRE re, EntreVar vv');
  qrSoma.Sql.Add('    Where (re.Lanc=vv.Lanc) and BinsCod='+qrMovim.FieldByName('Codigo').Text);
  qrSoma.Sql.Add('    and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1));
  qrSoma.Sql.Add(')');
  qrSoma.Open;
  qrLabel11.Caption:=IntToStr(qrMovim.FieldByName('Peso3').asInteger);
  vsal := qrMovim.FieldByName('Peso3').asInteger;
  vant := vant + qrMovim.FieldByName('Peso3').asInteger;

  //Emprestimo
  qrLabel10.Caption:=IntToStr(qrSoma.Fields[0].asInteger);
  vsal := vsal - qrSoma.Fields[0].asInteger;
  vent := vent + qrSoma.Fields[0].asInteger;

  //Devolução
  qrLabel21.Caption:=IntToStr(qrSoma.Fields[1].asInteger+qrSoma.Fields[2].asInteger);
  vsal := vsal + StrToInt(IntToStr(qrSoma.Fields[1].asInteger+qrSoma.Fields[2].asInteger));
  vsai := vsai + StrToInt(IntToStr(qrSoma.Fields[1].asInteger+qrSoma.Fields[2].asInteger));

  //Saldo
  qrLabel6.Caption:=IntToStr(vsal);
end;

procedure TqrSalBinTipo.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel4.Caption:=IntToStr(vant);
  qrLabel9.Caption:=IntToStr(vent);
  qrLabel22.Caption:=IntToStr(vsai);
  qrLabel5.Caption:=IntToStr(vant - vent + vsai);
end;

end.
