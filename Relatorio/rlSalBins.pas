unit rlSalBins;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrSalBin = class(TQuickRep)
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
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape2: TQRShape;
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
  qrSalBin: TqrSalBin;
  vent,vsai,vvas,vfun,vlad:Integer;
  vsbtip,vMostraGrupo,vMostraSoMovim: String;
  vgru,vgent,vgsai,vgvas,vgfun,vglad:Integer;


implementation

{$R *.DFM}
uses Data,Menu, frmRelProducao, Rotina;

procedure TqrSalBin.QuickRepPreview(Sender: TObject);
begin
  vent:=0; vsai:=0; vvas:=0; vfun:=0; vlad:=0;
  vgent:=0; vgsai:=0; vgvas:=0; vgfun:=0; vglad:=0;
  fPreview(Sender);
end;

procedure TqrSalBin.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vent:=0; vsai:=0; vvas:=0; vfun:=0; vlad:=0;
  vgent:=0; vgsai:=0; vgvas:=0; vgfun:=0; vglad:=0;
end;

procedure TqrSalBin.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vsal, vgsal, vsoma:Integer;
begin
  ChildBand2.Height:=0;
  qrSoma.Close;
  qrSoma.Sql.Clear;
  qrSoma.Sql.Add('select Sum(Qtd) as xqtd, Sum(Fun) as xfun, Sum(Lad) as xlad, Sum(Qtent) as xQtEnt, Sum(qtVaz) as xQtVaz');
  qrSoma.Sql.Add('from (');
  qrSoma.Sql.Add('    Select Sum(BinsQtd) as qtd, Sum(PlFun) as fun, Sum(PlLad) as lad, 0 as QtEnt, 0 as QtVaz');
  qrSoma.Sql.Add('    From EntRB');
  qrSoma.Sql.Add('    Where ProdCod='+qrMovim.FieldByName('Codigo').Text+' and '+vsbtip);
  qrSoma.Sql.Add('      and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1));
  qrSoma.Sql.Add('    union');
  qrSoma.Sql.Add('    Select 0 as qtd, 0 as fun, 0 as lad, Sum(Varieqtd) as QtEnt, 0 as QtVaz');
  qrSoma.Sql.Add('    From EntRE re, EntreVar vv');
  qrSoma.Sql.Add('    Where (re.Lanc=vv.Lanc) and ProdCod='+qrMovim.FieldByName('Codigo').Text+' and '+vsbtip);
  qrSoma.Sql.Add('    and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1));
  qrSoma.Sql.Add('    union');
  qrSoma.Sql.Add('    Select 0 as qtd, 0 as fun, 0 as lad, 0 as QtEnt, Sum(BINSQTD) as QtVaz');
  qrSoma.Sql.Add('    From EntRE');
  qrSoma.Sql.Add('    Where ProdCod='+qrMovim.FieldByName('Codigo').Text);
  qrSoma.Sql.Add('    and Data>='+frInvD(ffrmRelProducao.Ed4.Date)+' and Data<'+frInvD(ffrmRelProducao.Ed44.Date+1));
  qrSoma.Sql.Add(')');
  qrSoma.Open;

  qrLabel11.Caption:=IntToStr(qrSoma.Fields[0].asInteger);
  qrLabel15.Caption:=IntToStr(qrSoma.Fields[1].asInteger);
  qrLabel17.Caption:=IntToStr(qrSoma.Fields[2].asInteger);

  vsal:=qrSoma.Fields[0].asInteger;
  vgsal:=qrSoma.Fields[0].asInteger;
  vsoma:=qrSoma.Fields[0].asInteger;

  vent:=vent+qrSoma.Fields[0].asInteger;
  vgent:=vgent+qrSoma.Fields[0].asInteger;

  vfun:=vfun+qrSoma.Fields[1].asInteger;
  vgfun:=vgfun+qrSoma.Fields[1].asInteger;

  vlad:=vlad+qrSoma.Fields[2].asInteger;
  vglad:=vglad+qrSoma.Fields[2].asInteger;

  //Entrada
  qrLabel10.Caption:=IntToStr(qrSoma.Fields[3].asInteger);

  vsal:=vsal-StrToInt(IntToStr(qrSoma.Fields[3].asInteger));
  vgsal:=vgsal-StrToInt(IntToStr(qrSoma.Fields[3].asInteger));
  vsoma:=vsoma + qrSoma.Fields[3].asInteger;

  vsai:=vsai+StrToInt(IntToStr(qrSoma.Fields[3].asInteger));
  vgsai:=vgsai+StrToInt(IntToStr(qrSoma.Fields[3].asInteger));

  //Entrada - vazio
  qrLabel21.Caption:=IntToStr(qrSoma.Fields[4].asInteger);

  vsal:=vsal-StrToInt(IntToStr(qrSoma.Fields[4].asInteger));
  vgsal:=vgsal-StrToInt(IntToStr(qrSoma.Fields[4].asInteger));

  vvas:=vvas+qrSoma.Fields[4].asInteger;
  vgvas:=vgvas+qrSoma.Fields[4].asInteger;
  vsoma:=vsoma + qrSoma.Fields[4].asInteger;

  qrLabel6.Caption:=IntToStr(vsal);

  if vMostraSoMovim = 'S' then
  begin
    if (vsoma > 0) then
       DetailBand1.Height := 16
    else
       DetailBand1.Height := 0;
  end;

  if (vMostraGrupo = 'S') then
  begin
    vgru := qrMovim.FieldByName('GrupoCod').asInteger;
    qrMovim.Next;
    if (vgru <> qrMovim.FieldByName('GrupoCod').asInteger) or
       (qrMovim.Eof) then
    begin
      ChildBand2.Height:=30;
      qrLabel23.Caption:='SubTotal (Grupo: '+IntToStr(vgru)+' - '+fBus(1,['Select Descricao From CadForne_Grupo Where Codigo=0'+IntToStr(vgru)],1)+')...:';
      qrLabel24.Caption:=IntToStr(vgent);
      qrLabel25.Caption:=IntToStr(vgsai);
      qrLabel26.Caption:=IntToStr(vgvas);
      qrLabel27.Caption:=IntToStr(vgent-vgsai-vgvas);
      qrLabel28.Caption:=IntToStr(vgfun);
      qrLabel30.Caption:=IntToStr(vglad);
      if not (qrMovim.Eof) then
        qrMovim.Prior;

      vgent:=0; vgsai:=0; vgvas:=0; vgfun:=0; vglad:=0;
    end else qrMovim.Prior;
  end;
end;

procedure TqrSalBin.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel4.Caption:=IntToStr(vent);
  qrLabel9.Caption:=IntToStr(vsai);
  qrLabel22.Caption:=IntToStr(vvas);
  qrLabel5.Caption:=IntToStr(vent-vsai-vvas);
  qrLabel18.Caption:=IntToStr(vfun);
  qrLabel19.Caption:=IntToStr(vlad);
end;

end.
