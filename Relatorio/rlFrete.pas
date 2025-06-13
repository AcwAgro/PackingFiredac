unit rlFrete;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrFrete = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    qrMovim: TQuery;
    qrBanco: TQuery;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    qrPende: TQuery;
    QRDBText4: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel18: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel28: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape1: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrFrete: TqrFrete;
  vrec:Integer;
  vtrmdat,vbmmdata,vbmmcodigo,vbmmfavor,vbmmbaixa,vmmcampo:String;
  vvlre,vvlrs,vsal,vlim,vcon,vent,vsai,vtra:Real;

implementation

{$R *.DFM}
uses Data,Menu,frmRelFinan,Rotina,dialogs;

procedure TqrFrete.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFrete.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrBand2.Height:=32; qrSubDetail1.Height:=15; ChildBand2.Height:=23;

  if (FfrmRelFinan.RCB85.Checked) then
    fSql(1,1,['Select '+vmmcampo+', Sum(Valor) as vant From CxFrete',
              'Where (Tipo in (''P'',''R'')) and Pago<>'+QuotedStr('N')+' and '+vmmcampo+'=0'+qrBanco.Fields[0].Text+vbmmData,
              'Group By '+vmmcampo],3)
  else
    fSql(1,1,['Select '+vmmcampo+', Sum(Valor) as vant From CxFrete',
              'Where (Tipo in (''E'',''S'')) and Pago<>'+QuotedStr('N')+' and '+vmmcampo+'=0'+qrBanco.Fields[0].Text+vbmmData,
              'Group By '+vmmcampo],3);

  vsal:=dm.qrSql1.Fields[1].asFloat;

  vcon:=vsal; vent:=0; vsai:=0; vvlre:=0; vvlrs:=0;
  qrMovim.Close;
  qrMovim.Sql.Strings[2]:=vbmmcodigo+' and '+vmmcampo+'=0'+qrBanco.Fields[0].Text+' and Pago='+QuotedStr('S')+vbmmbaixa;
  qrMovim.Open;
  if qrMovim.RecordCount>0 then
  begin
     QRLabel19.Height   := 0;
     QRSubDetail2.Height:= 15;
  end
  else begin
    QRSubDetail2.Height:= 0;
    QRLabel19.Height   := 17;
  end;
  qrLabel12.Caption:=FloatToStrF(vsal,ffNumber,14,2);
  vlim:=0;
  qrLabel37.Caption:=FloatToStrF(vlim,ffNumber,14,2);
  vrec:=0;
  qrPende.Close;

  if (FfrmRelFinan.RCB85.Checked) then
    qrPende.Sql.Strings[2]:='Where (Tipo in (''P'',''R'')) and Pago<>'+QuotedStr('S')+' and '+vmmcampo+'=0'+qrBanco.Fields[0].Text+vbmmbaixa
  else
    qrPende.Sql.Strings[2]:='Where (Tipo in (''E'',''S'')) and Pago<>'+QuotedStr('S')+' and '+vmmcampo+'=0'+qrBanco.Fields[0].Text+vbmmbaixa;

  qrPende.Open;
  if qrPende.RecordCount<1 then begin
    qrSubDetail1.Height:=0;
    ChildBand2.Height:=0;
  end;
end;

procedure TqrFrete.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (qrMovim.FieldByName('Tipo').Text = 'E') or (qrMovim.FieldByName('Tipo').Text = 'P') then
    vsal := vsal - qrMovim.FieldByName('Valor').asFloat
  else
    vsal := vsal+qrMovim.FieldByName('Valor').asFloat;

  qrLabel11.Caption:=FloatToStrF(vsal,ffNumber,14,2);
  qrLabel36.Caption:=FloatToStrF(vlim+vsal,ffNumber,14,2);
  qrLabel4.Caption:=''; qrLabel10.Caption:='';

  if (qrMovim.FieldByName('Tipo').Text = 'E') or (qrMovim.FieldByName('Tipo').Text = 'P') then
    qrLabel4.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,14,2)
  else
    qrLabel10.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,14,2);

  if (FfrmRelFinan.RCB88.Checked) or (FfrmRelFinan.RCB85.Checked) then
    QRLabel22.Caption:=Trim(qrMovim.FieldByName('ProdDes').Text)+' '+Trim(qrMovim.FieldByName('Historico').Text)
  else
    QRLabel22.Caption:=Trim(qrMovim.FieldByName('Descricao').Text)+' '+Trim(qrMovim.FieldByName('Historico').Text);

  if qrMovim.FieldByName('PAGO').Text='S' then
  begin
    if (qrMovim.FieldByName('Tipo').Text = 'E') or (qrMovim.FieldByName('Tipo').Text = 'P') then
      vvlre:=vvlre+qrMovim.FieldByName('Valor').asFloat
    else
      vvlrs:=vvlrs+qrMovim.FieldByName('Valor').asFloat;
  end;
  QRLabel21.Caption:=FloatToStrF(vvlre,ffNumber,14,2);
  QRLabel26.Caption:=FloatToStrF(vvlrs,ffNumber,14,2);
end;

procedure TqrFrete.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vsal:=vsal+qrPende.FieldByName('Valor').asFloat;
  qrLabel18.Caption:=FloatToStrF(vsal,ffNumber,14,2);

  if (FfrmRelFinan.RCB88.Checked) or (FfrmRelFinan.RCB85.Checked) then
    QRLabel30.Caption:=Trim(qrPende.FieldByName('ProdDes').Text)+' '+Trim(qrPende.FieldByName('Historico').Text)
  else
    QRLabel30.Caption:=Trim(qrPende.FieldByName('Descricao').Text)+' '+Trim(qrPende.FieldByName('Historico').Text);

  qrLabel31.Caption:=''; qrLabel32.Caption:='';

  if (qrPende.FieldByName('Tipo').Text='E') or (qrPende.FieldByName('Tipo').Text='P') then begin
    qrLabel31.Caption:=FloatToStrF(qrPende.FieldByName('Valor').asFloat,ffNumber,14,2);
    vent:=vent+qrPende.FieldByName('Valor').asFloat;
  end else begin
    qrLabel32.Caption:=FloatToStrF(qrPende.FieldByName('Valor').asFloat,ffNumber,14,2);
    vsai:=vsai+qrPende.FieldByName('Valor').asFloat;
  end;
end;

procedure TqrFrete.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=vrec+1;
  qrBand2.Height:=0;
  ChildBand2.Height:=0;
  if qrPende.RecordCount>1 then begin
    if vrec>=qrPende.RecordCount then ChildBand2.Height:=23;
  end;
  QRLabel24.Caption:=FloatToStrF(vent,ffNumber,14,2);
  QRLabel25.Caption:=FloatToStrF(vsai,ffNumber,14,2);
end;

end.
