unit rlBanco;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrBanco = class(TQuickRep)
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
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
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
    QRDBText12: TQRDBText;
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
    QRSubDetail3: TQRSubDetail;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape3: TQRShape;
    qrTransf: TQuery;
    ChildBand4: TQRChildBand;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText20: TQRDBText;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrBanco: TqrBanco;
  vrec:Integer;
  vtrdat,vtrfavor,vbmdata,vbmcodigo,vbmfavor,vbmbaixa,vmcampo:String;
  vvlre,vvlrs,vsal,vlim,vcon,vent,vsai,vtra:Real;

implementation

{$R *.DFM}
uses Data,Menu,frmRelFinan,Rotina,dialogs;

procedure TqrBanco.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrBanco.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrBand2.Height:=32; qrSubDetail1.Height:=15; ChildBand2.Height:=23;
  if FfrmRelFinan.RRBB2.Checked then begin
    if FfrmRelFinan.ED4.Date>StrToDate('15/09/2005') then begin
       fSql(1,1,['Select '+vmcampo+', Sum(ValorReal) as vant From CxBanco',
                 'Where '+vmcampo+'=0'+qrBanco.Fields[0].Text+
                      ' and (Data>'+frInvD(StrToDate('31/12/2004'))+
                      ' and Data<'+frInvD(StrToDate('14/09/2005'))+') and '+vbmfavor,
                 'Group By '+vmcampo],3);
       vsal:=dm.qrSql1.Fields[1].asFloat;
       vbmData:=' and (Data>='+frInvD(StrToDate('14/09/2005'))+' and Data<'+frInvD(FfrmRelFinan.ED4.Date)+')';
       fSql(1,1,['Select '+vmcampo+', Sum(ValorReal) as vant From CxBanco',
                 'Where '+vmcampo+'=0'+qrBanco.Fields[0].Text+vbmData+' and '+vbmfavor,
                 'Group By '+vmcampo],3);
       vsal:=vsal+dm.qrSql1.Fields[1].asFloat;
    end else begin //Baixa='+QuotedStr('S')+' and
       fSql(1,1,['Select '+vmcampo+', Sum(ValorReal) as vant From CxBanco',
                 'Where '+vmcampo+'=0'+qrBanco.Fields[0].Text+
                      ' and Data>'+frInvD(StrToDate('31/12/2004'))+vbmData+' and '+vbmfavor,
                 'Group By '+vmcampo],3);
       vsal:=dm.qrSql1.Fields[1].asFloat;
    end;
  end else begin
     ChildBand4.Height:=0; QRSubDetail3.Height:=0;
     ChildBand3.Height:=0; qrTransf.Close;
     fSql(1,1,['Select '+vmcampo+', Sum(ValorReal) as vant From CxBanco',
               'Where Baixa='+QuotedStr('S')+' and '+vmcampo+'=0'+qrBanco.Fields[0].Text+vbmData,
               'Group By '+vmcampo],3);
     vsal:=dm.qrSql1.Fields[1].asFloat;
  end;
  vcon:=vsal; vent:=0; vsai:=0; vvlre:=0; vvlrs:=0;

//  ffrmRelFinan.qrMovim.Close;
  qrMovim.Close;
  if FfrmRelFinan.RRBB2.Checked then
     qrMovim.Sql.Strings[2]:=vbmcodigo+' and '+vmcampo+'=0'+qrBanco.Fields[0].Text+vbmbaixa+' and '+vbmfavor
  else qrMovim.Sql.Strings[2]:=vbmcodigo+' and '+vmcampo+'=0'+qrBanco.Fields[0].Text+' and Baixa='+QuotedStr('S')+vbmbaixa+' and '+vbmfavor;

//  ffrmRelFinan.Memo1.Lines.Clear;
//  ffrmRelFinan.Memo1.Lines.Add(qrMovim.Sql.Text);
//  ffrmRelFinan.qrMovim.Sql.Text := qrMovim.Sql.Text;
//  ffrmRelFinan.qrMovim.Open;

  qrMovim.Open;

  if not qrMovim.IsEmpty then
  begin
     QRLabel19.Height   := 0;
     QRSubDetail2.Height:= 15;
  end
  else begin
    QRSubDetail2.Height:= 0;
    QRLabel19.Height   := 17;
  end;
  qrLabel12.Caption:=FloatToStrF(vsal,ffNumber,14,2);
  vlim:=qrBanco.FieldByName('Limite').asFloat;
  qrLabel37.Caption:=FloatToStrF(vlim,ffNumber,14,2);
  vrec:=0;
  qrPende.Close;
  if FfrmRelFinan.RRBB2.Checked then
     qrPende.Sql.Strings[2]:='Where Baixa='+QuotedStr('X')+' and '+vmcampo+'=0'+qrBanco.Fields[0].Text+vbmbaixa+' and '+vbmfavor
  else qrPende.Sql.Strings[2]:='Where Baixa<>'+QuotedStr('S')+' and '+vmcampo+'=0'+qrBanco.Fields[0].Text+vbmbaixa+' and '+vbmfavor;
  qrPende.Open;
  if qrPende.IsEmpty then begin
    qrSubDetail1.Height:=0;
    ChildBand2.Height:=0;
  end;
end;

procedure TqrBanco.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vsal:=vsal+qrMovim.FieldByName('ValorReal').asFloat;
  qrLabel11.Caption:=FloatToStrF(vsal,ffNumber,14,2);
  qrLabel36.Caption:=FloatToStrF(vlim+vsal,ffNumber,14,2);
  qrLabel4.Caption:=''; qrLabel10.Caption:='';

  if qrMovim.FieldByName('Formar').Text='E' then
     qrLabel4.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,14,2)
  else
    qrLabel10.Caption:=FloatToStrF(qrMovim.FieldByName('Valor').asFloat,ffNumber,14,2);

  QRLabel22.Caption:=Trim(qrMovim.FieldByName('Favorecido').Text)+' '+Trim(qrMovim.FieldByName('Prove').Text);

  //Baixa
  if qrMovim.FieldByName('Baixa').Text='S' then
  begin

    if qrMovim.FieldByName('Formar').Text='E' then
       qrLabel4.Caption:=FloatToStrF(qrMovim.FieldByName('ValorPago').asFloat,ffNumber,14,2)
    else
      qrLabel10.Caption:=FloatToStrF(qrMovim.FieldByName('ValorPago').asFloat,ffNumber,14,2);


     if qrMovim.FieldByName('Formar').Text='E' then
        vvlre:=vvlre+qrMovim.FieldByName('ValorPago').asFloat
     else
        vvlrs:=vvlrs+qrMovim.FieldByName('ValorPago').asFloat;

  end;
  QRLabel21.Caption:=FloatToStrF(vvlre,ffNumber,14,2);
  QRLabel26.Caption:=FloatToStrF(vvlrs,ffNumber,14,2);
end;

procedure TqrBanco.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vsal:=vsal+qrPende.FieldByName('ValorReal').asFloat;
  qrLabel18.Caption:=FloatToStrF(vsal,ffNumber,14,2);
  QRLabel30.Caption:=Trim(qrPende.FieldByName('Favorecido').Text)+' '+Trim(qrPende.FieldByName('Prove').Text);
  qrLabel31.Caption:=''; qrLabel32.Caption:='';
  if qrPende.FieldByName('Formar').Text='E' then begin
     qrLabel31.Caption:=FloatToStrF(qrPende.FieldByName('Valor').asFloat,ffNumber,14,2);
     vent:=vent+qrPende.FieldByName('Valor').asFloat;
  end else begin
     qrLabel32.Caption:=FloatToStrF(qrPende.FieldByName('Valor').asFloat,ffNumber,14,2);
     vsai:=vsai+qrPende.FieldByName('Valor').asFloat;
  end;
end;

procedure TqrBanco.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vrec:=vrec+1;
  qrBand2.Height:=0;
  ChildBand2.Height:=0;
//  if not qrPende.IsEmpty then begin
//     if vrec>=qrPende.RecordCount then ChildBand2.Height:=23;
//  end;
  QRLabel24.Caption:=FloatToStrF(vent,ffNumber,14,2);
  QRLabel25.Caption:=FloatToStrF(vsai,ffNumber,14,2);
  if (FfrmRelFinan.RRBB2.Checked) and (FfrmRelFinan.RCB1.Checked) then begin
    qrTransf.Close;
    qrTransf.Sql.Strings[2]:='Where ff.Registro=cc.Lanc and '+vtrDat+' and BanSaiCod='+qrBanco.Fields[0].Text+' and '+vtrfavor;
    qrTransf.Open;
    vtra:=0;
    if not qrTransf.IsEmpty  then begin
       ChildBand4.Height:=35;
       QRSubDetail3.Height:=15;
    end;
  end;
end;

procedure TqrBanco.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QRSubDetail3.Height>0 then begin
    vtra:=vtra+qrTransf.FieldByName('Valor').asFloat;
    qrLabel40.Caption:=FloatToStrF(vtra,ffNumber,10,2);
    qrTransf.Next;
    if qrTransf.Eof then ChildBand3.Height:=22
    else qrTransf.Prior;
  end;
end;

end.
