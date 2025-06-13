unit rlVendasProdutorResumo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrVendasProdutorResumo = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    qrProdu: TQuery;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    qrlblprca1: TQRLabel;
    QRDBText12: TQRDBText;
    DetailBand2: TQRBand;
    qrlblprca2: TQRLabel;
    qrlblprca3: TQRLabel;
    qrlblprca4: TQRLabel;
    QRLabel17: TQRLabel;
    qrlblprca5: TQRLabel;
    qrlblprca6: TQRLabel;
    qrlblprcat: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    qrlbldes1: TQRLabel;
    qrlbldes2: TQRLabel;
    qrlbldes3: TQRLabel;
    qrlbldes4: TQRLabel;
    qrlbldes5: TQRLabel;
    qrlbldes6: TQRLabel;
    QRLabel27: TQRLabel;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel61: TQRLabel;
    qrlblprsb1: TQRLabel;
    qrlblprsb2: TQRLabel;
    qrlblprsb3: TQRLabel;
    qrlblprsb4: TQRLabel;
    qrlblprsb5: TQRLabel;
    qrlblprsb6: TQRLabel;
    qrlblprsbt: TQRLabel;
    QRLabel7: TQRLabel;
    qrlblprva1: TQRLabel;
    qrlblprva2: TQRLabel;
    qrlblprva3: TQRLabel;
    qrlblprva4: TQRLabel;
    qrlblprva5: TQRLabel;
    qrlblprva6: TQRLabel;
    qrlblprvat: TQRLabel;
    qrlblqt1: TQRLabel;
    ChildBand5: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    qrlbltcs1: TQRLabel;
    qrlbltcs2: TQRLabel;
    qrlbltcs3: TQRLabel;
    qrlbltcs4: TQRLabel;
    qrlbltcs5: TQRLabel;
    qrlbltcs6: TQRLabel;
    qrlbltcst: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrlblpr1: TQRLabel;
    qrlblvl1: TQRLabel;
    qrlblqt2: TQRLabel;
    qrlblvl2: TQRLabel;
    qrlblpr2: TQRLabel;
    qrlblqt3: TQRLabel;
    qrlblvl3: TQRLabel;
    qrlblpr3: TQRLabel;
    qrlblqt4: TQRLabel;
    qrlblvl4: TQRLabel;
    qrlblpr4: TQRLabel;
    qrlblqt5: TQRLabel;
    qrlblvl5: TQRLabel;
    qrlblpr5: TQRLabel;
    qrlblqt6: TQRLabel;
    qrlblvl6: TQRLabel;
    qrlblpr6: TQRLabel;
    qrlblqtt: TQRLabel;
    qrlblvlt: TQRLabel;
    qrlblprt: TQRLabel;
    qrlblvlca1: TQRLabel;
    qrlblqtca1: TQRLabel;
    qrlblqtca2: TQRLabel;
    qrlblvlca2: TQRLabel;
    qrlblqtca3: TQRLabel;
    qrlblvlca3: TQRLabel;
    qrlblqtca4: TQRLabel;
    qrlblvlca4: TQRLabel;
    qrlblqtca5: TQRLabel;
    qrlblvlca5: TQRLabel;
    qrlblqtca6: TQRLabel;
    qrlblvlca6: TQRLabel;
    qrlblqtcat: TQRLabel;
    qrlblvlcat: TQRLabel;
    qrlblqtsb1: TQRLabel;
    qrlblvlsb1: TQRLabel;
    qrlblqtsb2: TQRLabel;
    qrlblvlsb2: TQRLabel;
    qrlblqtsb3: TQRLabel;
    qrlblvlsb3: TQRLabel;
    qrlblqtsb4: TQRLabel;
    qrlblvlsb4: TQRLabel;
    qrlblqtsb5: TQRLabel;
    qrlblvlsb5: TQRLabel;
    qrlblqtsb6: TQRLabel;
    qrlblvlsb6: TQRLabel;
    qrlblqtsbt: TQRLabel;
    qrlblvlsbt: TQRLabel;
    qrlblqtva1: TQRLabel;
    qrlblvlva1: TQRLabel;
    qrlblqtva2: TQRLabel;
    qrlblvlva2: TQRLabel;
    qrlblqtva3: TQRLabel;
    qrlblvlva3: TQRLabel;
    qrlblqtva4: TQRLabel;
    qrlblvlva4: TQRLabel;
    qrlblqtva5: TQRLabel;
    qrlblvlva5: TQRLabel;
    qrlblqtva6: TQRLabel;
    qrlblvlva6: TQRLabel;
    qrlblqtvat: TQRLabel;
    qrlblvlvat: TQRLabel;
    qrlblqtss1: TQRLabel;
    qrlblvlss1: TQRLabel;
    qrlblprss1: TQRLabel;
    qrlblqtss2: TQRLabel;
    qrlblvlss2: TQRLabel;
    qrlblprss2: TQRLabel;
    qrlblqtss3: TQRLabel;
    qrlblvlss3: TQRLabel;
    qrlblprss3: TQRLabel;
    qrlblqtss4: TQRLabel;
    qrlblvlss4: TQRLabel;
    qrlblprss4: TQRLabel;
    qrlblqtss5: TQRLabel;
    qrlblvlss5: TQRLabel;
    qrlblprss5: TQRLabel;
    qrlblqtss6: TQRLabel;
    qrlblvlss6: TQRLabel;
    qrlblprss6: TQRLabel;
    qrlblqtsst: TQRLabel;
    qrlblvlsst: TQRLabel;
    qrlblprsst: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    //procedure fSomaCat;
    //procedure fSomaVar;
  public
    vDataPervr, vDemaisvr: String;
  end;

var
  qrVendasProdutorResumo: TqrVendasProdutorResumo;
  vccope,vccinv,vqt1,vqt3,vqt11,vqt33,vtqt1,vtqt3,vcqt1,vcqt3:Double;
  vscem,vscop,vscva,vscin,vgcem,vgcop,vgcva,vgcin,vtcem,vtcop,vtcva,vtcin,vccem,vccop,vccva,vccin:Double;
  vqtc,vqtv,vval,vgval,vtval,vcval:Real;
  vsoma,vclo,vcat,vgru,vvar,vcatdes:Integer;
  vclresvr,vclgervr,vcodigvr,vprodutorvr,vcrlocvr,vcrlocdesvr:String;
  vcodr, vcodr1, vcodr2, vcodr3, vcodr4, vcodr5, vcodr6, vcodr7: Integer;
  vcustovr: Double;

  vqtpr1,vqtpr2,vqtpr3,vqtpr4,vqtpr5,vqtpr6,vqtpr7,vqtpr99: Double;
  vvlpr1,vvlpr2,vvlpr3,vvlpr4,vvlpr5,vvlpr6,vvlpr7,vvlpr99: Double;

  vqtca1,vqtca2,vqtca3,vqtca4,vqtca5,vqtca6,vqtca7,vqtca99: Double;
  vvlca1,vvlca2,vvlca3,vvlca4,vvlca5,vvlca6,vvlca7,vvlca99: Double;

  vqtsb1,vqtsb2,vqtsb3,vqtsb4,vqtsb5,vqtsb6,vqtsb7,vqtsb99: Double;
  vvlsb1,vvlsb2,vvlsb3,vvlsb4,vvlsb5,vvlsb6,vvlsb7,vvlsb99: Double;

  vqtva1,vqtva2,vqtva3,vqtva4,vqtva5,vqtva6,vqtva7,vqtva99: Double;
  vvlva1,vvlva2,vvlva3,vvlva4,vvlva5,vvlva6,vvlva7,vvlva99: Double;

  vqttt1,vqttt2,vqttt3,vqttt4,vqttt5,vqttt6,vqttt7,vqttt99: Double;
  vvltt1,vvltt2,vvltt3,vvltt4,vvltt5,vvltt6,vvltt7,vvltt99: Double;

  vqtcs1,vqtcs2,vqtcs3,vqtcs4,vqtcs5,vqtcs6,vqtcs7,vqtcs99: Double;
  vvlcs1,vvlcs2,vvlcs3,vvlcs4,vvlcs5,vvlcs6,vvlcs7,vvlcs99: Double;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrVendasProdutorResumo.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrVendasProdutorResumo.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  qrVenda.Close;
  qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'      and pp.Codigo>0'+vcrlocvr;
  vprodutorvr := ' and pp.Codigo >= 0' + vDataPervr;
  qrVenda.Open;

  vcat:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,2));
  vclo:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,1));

  qrlblprt.Caption   := '';
  qrlblprcat.Caption := '';
  qrlblprsbt.Caption := '';
  qrlblprvat.Caption := '';

  for vcodr := 1 to 7 do
  begin

    if vcodr = 1 then
    begin
      qrlblprca1.Caption := '';
      qrlblprsb1.Caption := '';
      qrlblprva1.Caption := '';
      vqtpr1 := 0;
      vqtca1 := 0;
      vqtsb1 := 0;
      vqtva1 := 0;
      vqttt1 := 0;
      vqtcs1 := 0;
      vvlpr1 := 0;
      vvlca1 := 0;
      vvlsb1 := 0;
      vvlva1 := 0;
      vvltt1 := 0;
      vvlcs1 := 0;
    end;
    if vcodr = 2 then
    begin
      qrlblprca2.Caption := '';
      qrlblprsb2.Caption := '';
      qrlblprva2.Caption := '';
      vqtpr2 := 0;
      vqtca2 := 0;
      vqtsb2 := 0;
      vqtva2 := 0;
      vqttt2 := 0;
      vqtcs2 := 0;
      vvlpr2 := 0;
      vvlca2 := 0;
      vvlsb2 := 0;
      vvlva2 := 0;
      vvltt2 := 0;
      vvlcs2 := 0;
    end;
    if vcodr = 3 then
    begin
      qrlblprca3.Caption := '';
      qrlblprsb3.Caption := '';
      qrlblprva3.Caption := '';
      vqtpr3 := 0;
      vqtca3 := 0;
      vqtsb3 := 0;
      vqtva3 := 0;
      vqttt3 := 0;
      vqtcs3 := 0;
      vvlpr3 := 0;
      vvlca3 := 0;
      vvlsb3 := 0;
      vvlva3 := 0;
      vvltt3 := 0;
      vvlcs3 := 0;
    end;
    if vcodr = 4 then
    begin
      qrlblprca4.Caption := '';
      qrlblprsb4.Caption := '';
      qrlblprva4.Caption := '';
      vqtpr4 := 0;
      vqtca4 := 0;
      vqtsb4 := 0;
      vqtva4 := 0;
      vqttt4 := 0;
      vqtcs4 := 0;
      vvlpr4 := 0;
      vvlca4 := 0;
      vvlsb4 := 0;
      vvlva4 := 0;
      vvltt4 := 0;
      vvlcs4 := 0;
    end;
    if vcodr = 5 then
    begin
      qrlblprca5.Caption := '';
      qrlblprsb5.Caption := '';
      qrlblprva5.Caption := '';
      vqtpr5 := 0;
      vqtca5 := 0;
      vqtsb5 := 0;
      vqtva5 := 0;
      vqttt5 := 0;
      vqtcs5 := 0;
      vvlpr5 := 0;
      vvlca5 := 0;
      vvlsb5 := 0;
      vvlva5 := 0;
      vvltt5 := 0;
      vvlcs5 := 0;
    end;
    if vcodr = 6 then
    begin
      qrlblprca6.Caption := '';
      qrlblprsb6.Caption := '';
      qrlblprva6.Caption := '';
      vqtpr6 := 0;
      vqtca6 := 0;
      vqtsb6 := 0;
      vqtva6 := 0;
      vqttt6 := 0;
      vqtcs6 := 0;
      vvlpr6 := 0;
      vvlca6 := 0;
      vvlsb6 := 0;
      vvlva6 := 0;
      vvltt6 := 0;
      vvlcs6 := 0;
    end;
  end;

end;

procedure TqrVendasProdutorResumo.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vprmedio,vccemb,vcem,vcop,vcin,vcva:Double;
    vcdcat:Integer;
    vunid: String;
begin
  ChildBand2.Height:=0; ChildBand3.Height:=0; ChildBand4.Height:=0; ChildBand5.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then QRSubDetail2.Color:=clWhite
  else QRSubDetail2.Color:=$00E8E8E8;
  qrLabel17.Caption:=fBus(1,['Select Descricao,Unidade,CategCod, CategCod From CadProdu Where Codigo=0'+qrVenda.FieldByName('Codigo').Text],1);
  // QRLabel49.Caption:=dm.qrSqlBus.FieldByName('Unidade').asString;
  vunid:=dm.qrSqlBus.FieldByName('Unidade').asString;;

  vcdcat:=dm.qrSqlBus.FieldByName('CategCod').asInteger;
  vqt1:=vqt1+frDeci(qrVenda.FieldByName('qt').asFloat,2);

  if UpperCase(vunid)='CX' then
  begin
    vtqt1:=vtqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);
    vcqt1:=vcqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  end;

  for vcodr := 1 to 6 do
  begin

    if vcodr = 1 then
    begin
      qrlblpr1.Caption := '';
      vqtpr1 := 0;
      vqttt1 := 0;
      vvlpr1 := 0;
    end;
    if vcodr = 2 then
    begin
      qrlblpr2.Caption := '';
      vqtpr2 := 0;
      vqttt2 := 0;
      vvlpr2 := 0;
    end;
    if vcodr = 3 then
    begin
      qrlblpr3.Caption := '';
      vqtpr3 := 0;
      vqttt3 := 0;
      vvlpr3 := 0;
    end;
    if vcodr = 4 then
    begin
      qrlblpr4.Caption := '';
      vqtpr4 := 0;
      vqttt4 := 0;
      vvlpr4 := 0;
    end;
    if vcodr = 5 then
    begin
      qrlblpr5.Caption := '';
      vqtpr5 := 0;
      vqttt5 := 0;
      vvlpr5 := 0;
    end;
    if vcodr = 6 then
    begin
      qrlblpr6.Caption := '';
      vqtpr6 := 0;
      vqttt6 := 0;
      vvlpr6 := 0;
    end;
  end;

  for vcodr := 1 to 6 do
  begin

    if vcodr = 1 then
    begin
      qrlblpr1.Caption := '';

      if vcodr1 <> 0 then
      begin
        fSql(1,2,['select SUM(co.qtde) AS QT, SUM(co.valor) AS VL ',
                '  from esvenda pp, esvendco co',
                ' Where pp.Lanc=co.Lanc '+vDataPervr+' and co.codigo=0'+qrVenda.Fields[0].asString+
                ' and co.prodcod = 0'+IntToStr(vcodr1),
                ' order by 1'],4);

        vqtpr1 := vqtpr1 + dm.qrSql2.Fields[0].asFloat;
        vqtca1 := vqtca1 + dm.qrSql2.Fields[0].asFloat;
        vqtsb1 := vqtsb1 + dm.qrSql2.Fields[0].asFloat;
        vqtva1 := vqtva1 + dm.qrSql2.Fields[0].asFloat;
        vqttt1 := vqttt1 + dm.qrSql2.Fields[0].asFloat;
        vqtcs1 := vqtcs1 + dm.qrSql2.Fields[0].asFloat;
        vvlpr1 := vvlpr1 + dm.qrSql2.Fields[1].asFloat;
        vvlca1 := vvlca1 + dm.qrSql2.Fields[1].asFloat;
        vvlsb1 := vvlsb1 + dm.qrSql2.Fields[1].asFloat;
        vvlva1 := vvlva1 + dm.qrSql2.Fields[1].asFloat;
        vvltt1 := vvltt1 + dm.qrSql2.Fields[1].asFloat;
        vvlcs1 := vvlcs1 + dm.qrSql2.Fields[1].asFloat;

        qrlblqt1.Caption := FormatFloat('0', dm.qrSql2.Fields[0].asFloat);
        qrlblvl1.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat,ffNumber,14,2);
        if dm.qrSql2.Fields[0].asFloat <> 0 then
          qrlblpr1.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat / dm.qrSql2.Fields[0].asFloat,ffNumber,14,2)
        else
          qrlblpr1.Caption := FloatToStrF(0,ffNumber,14,2);

        //Categoria
        qrlblqtca1.Caption := FormatFloat('0', vqtca1);
        qrlblvlca1.Caption := FloatToStrF(vvlca1,ffNumber,14,2);
        if vqtca1 <> 0 then
          qrlblprca1.Caption := FloatToStrF(vvlca1 / vqtca1,ffNumber,14,2)
        else
          qrlblprca1.Caption := FloatToStrF(0,ffNumber,14,2);
        //Subtotais
        qrlblqtsb1.Caption := FormatFloat('0', vqtsb1);
        qrlblvlsb1.Caption := FloatToStrF(vvlsb1,ffNumber,14,2);
        if vqtsb1 <> 0 then
          qrlblprsb1.Caption := FloatToStrF(vvlsb1 / vqtsb1,ffNumber,14,2)
        else
          qrlblprsb1.Caption := FloatToStrF(0,ffNumber,14,2);
        //Variedade
        qrlblqtva1.Caption := FormatFloat('0', vqtva1);
        qrlblvlva1.Caption := FloatToStrF(vvlva1,ffNumber,14,2);
        if vqtva1 <> 0 then
          qrlblprva1.Caption := FloatToStrF(vvlva1 / vqtva1,ffNumber,14,2)
        else
          qrlblprva1.Caption := FloatToStrF(0,ffNumber,14,2);
      end;
    end;
    if vcodr = 2 then
    begin
      qrlblpr2.Caption := '';

      if vcodr2 <> 0 then
      begin
        fSql(1,2,['select SUM(co.qtde) AS QT, SUM(co.valor) AS VL ',
                '  from esvenda pp, esvendco co',
                ' Where pp.Lanc=co.Lanc '+vDataPervr+' and co.codigo=0'+qrVenda.Fields[0].asString+
                ' and co.prodcod = 0'+IntToStr(vcodr2),
                ' order by 1'],4);

        vqtpr2 := vqtpr2 + dm.qrSql2.Fields[0].asFloat;
        vqtca2 := vqtca2 + dm.qrSql2.Fields[0].asFloat;
        vqtsb2 := vqtsb2 + dm.qrSql2.Fields[0].asFloat;
        vqtva2 := vqtva2 + dm.qrSql2.Fields[0].asFloat;
        vqttt2 := vqttt2 + dm.qrSql2.Fields[0].asFloat;
        vqtcs2 := vqtcs2 + dm.qrSql2.Fields[0].asFloat;
        vvlpr2 := vvlpr2 + dm.qrSql2.Fields[1].asFloat;
        vvlca2 := vvlca2 + dm.qrSql2.Fields[1].asFloat;
        vvlsb2 := vvlsb2 + dm.qrSql2.Fields[1].asFloat;
        vvlva2 := vvlva2 + dm.qrSql2.Fields[1].asFloat;
        vvltt2 := vvltt2 + dm.qrSql2.Fields[1].asFloat;
        vvlcs2 := vvlcs2 + dm.qrSql2.Fields[1].asFloat;

        qrlblqt2.Caption := FormatFloat('0', dm.qrSql2.Fields[0].asFloat);
        qrlblvl2.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat,ffNumber,14,2);
        if dm.qrSql2.Fields[0].asFloat <> 0 then
          qrlblpr2.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat / dm.qrSql2.Fields[0].asFloat,ffNumber,14,2)
        else
          qrlblpr2.Caption := FloatToStrF(0,ffNumber,14,2);

        //Categoria
        qrlblqtca2.Caption := FormatFloat('0', vqtca2);
        qrlblvlca2.Caption := FloatToStrF(vvlca2,ffNumber,14,2);
        if vqtca2 <> 0 then
          qrlblprca2.Caption := FloatToStrF(vvlca2 / vqtca2,ffNumber,14,2)
        else
          qrlblprca2.Caption := FloatToStrF(0,ffNumber,14,2);
        //Subtotais
        qrlblqtsb2.Caption := FormatFloat('0', vqtsb2);
        qrlblvlsb2.Caption := FloatToStrF(vvlsb2,ffNumber,14,2);
        if vqtsb2 <> 0 then
          qrlblprsb2.Caption := FloatToStrF(vvlsb2 / vqtsb2,ffNumber,14,2)
        else
          qrlblprsb2.Caption := FloatToStrF(0,ffNumber,14,2);
        //Variedade
        qrlblqtva2.Caption := FormatFloat('0', vqtva2);
        qrlblvlva2.Caption := FloatToStrF(vvlva2,ffNumber,14,2);
        if vqtva2 <> 0 then
          qrlblprva2.Caption := FloatToStrF(vvlva2 / vqtva2,ffNumber,14,2)
        else
          qrlblprva2.Caption := FloatToStrF(0,ffNumber,14,2);

      end;
    end;
    if vcodr = 3 then
    begin
      qrlblpr3.Caption := '';

      if vcodr3 <> 0 then
      begin
        fSql(1,2,['select SUM(co.qtde) AS QT, SUM(co.valor) AS VL ',
                '  from esvenda pp, esvendco co',
                ' Where pp.Lanc=co.Lanc '+vDataPervr+' and co.codigo=0'+qrVenda.Fields[0].asString+
                ' and co.prodcod = 0'+IntToStr(vcodr3),
                ' order by 1'],4);

        vqtpr3 := vqtpr3 + dm.qrSql2.Fields[0].asFloat;
        vqtca3 := vqtca3 + dm.qrSql2.Fields[0].asFloat;
        vqtsb3 := vqtsb3 + dm.qrSql2.Fields[0].asFloat;
        vqtva3 := vqtva3 + dm.qrSql2.Fields[0].asFloat;
        vqttt3 := vqttt3 + dm.qrSql2.Fields[0].asFloat;
        vqtcs3 := vqtcs3 + dm.qrSql2.Fields[0].asFloat;
        vvlpr3 := vvlpr3 + dm.qrSql2.Fields[1].asFloat;
        vvlca3 := vvlca3 + dm.qrSql2.Fields[1].asFloat;
        vvlsb3 := vvlsb3 + dm.qrSql2.Fields[1].asFloat;
        vvlva3 := vvlva3 + dm.qrSql2.Fields[1].asFloat;
        vvltt3 := vvltt3 + dm.qrSql2.Fields[1].asFloat;
        vvlcs3 := vvlcs3 + dm.qrSql2.Fields[1].asFloat;

        qrlblqt3.Caption := FormatFloat('0', dm.qrSql2.Fields[0].asFloat);
        qrlblvl3.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat,ffNumber,14,2);
        if dm.qrSql2.Fields[0].asFloat <> 0 then
          qrlblpr3.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat / dm.qrSql2.Fields[0].asFloat,ffNumber,14,2)
        else
          qrlblpr3.Caption := FloatToStrF(0,ffNumber,14,2);
        //Categoria
        qrlblqtca3.Caption := FormatFloat('0', vqtca3);
        qrlblvlca3.Caption := FloatToStrF(vvlca3,ffNumber,14,2);
        if vqtca3 <> 0 then
          qrlblprca3.Caption := FloatToStrF(vvlca3 / vqtca3,ffNumber,14,2)
        else
          qrlblprca3.Caption := FloatToStrF(0,ffNumber,14,2);
        //Subtotais
        qrlblqtsb3.Caption := FormatFloat('0', vqtsb3);
        qrlblvlsb3.Caption := FloatToStrF(vvlsb3,ffNumber,14,2);
        if vqtsb3 <> 0 then
          qrlblprsb3.Caption := FloatToStrF(vvlsb3 / vqtsb3,ffNumber,14,2)
        else
          qrlblprsb3.Caption := FloatToStrF(0,ffNumber,14,2);
        //Variedade
        qrlblqtva3.Caption := FormatFloat('0', vqtva3);
        qrlblvlva3.Caption := FloatToStrF(vvlva3,ffNumber,14,2);
        if vqtva3 <> 0 then
          qrlblprva3.Caption := FloatToStrF(vvlva3 / vqtva3,ffNumber,14,2)
        else
          qrlblprva3.Caption := FloatToStrF(0,ffNumber,14,2);
      end;
    end;
    if vcodr = 4 then
    begin
      qrlblpr4.Caption := '';

      if vcodr4 <> 0 then
      begin
        fSql(1,2,['select SUM(co.qtde) AS QT, SUM(co.valor) AS VL ',
                '  from esvenda pp, esvendco co',
                ' Where pp.Lanc=co.Lanc '+vDataPervr+' and co.codigo=0'+qrVenda.Fields[0].asString+
                ' and co.prodcod = 0'+IntToStr(vcodr4),
                ' order by 1'],4);

        vqtpr4 := vqtpr4 + dm.qrSql2.Fields[0].asFloat;
        vqtca4 := vqtca4 + dm.qrSql2.Fields[0].asFloat;
        vqtsb4 := vqtsb4 + dm.qrSql2.Fields[0].asFloat;
        vqtva4 := vqtva4 + dm.qrSql2.Fields[0].asFloat;
        vqttt4 := vqttt4 + dm.qrSql2.Fields[0].asFloat;
        vqtcs4 := vqtcs4 + dm.qrSql2.Fields[0].asFloat;
        vvlpr4 := vvlpr4 + dm.qrSql2.Fields[1].asFloat;
        vvlca4 := vvlca4 + dm.qrSql2.Fields[1].asFloat;
        vvlsb4 := vvlsb4 + dm.qrSql2.Fields[1].asFloat;
        vvlva4 := vvlva4 + dm.qrSql2.Fields[1].asFloat;
        vvltt4 := vvltt4 + dm.qrSql2.Fields[1].asFloat;
        vvlcs4 := vvlcs4 + dm.qrSql2.Fields[1].asFloat;

        qrlblqt4.Caption := FormatFloat('0', dm.qrSql2.Fields[0].asFloat);
        qrlblvl4.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat,ffNumber,14,2);
        if dm.qrSql2.Fields[0].asFloat <> 0 then
          qrlblpr4.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat / dm.qrSql2.Fields[0].asFloat,ffNumber,14,2)
        else
          qrlblpr4.Caption := FloatToStrF(0,ffNumber,14,2);
        //Categoria
        qrlblqtca4.Caption := FormatFloat('0', vqtca4);
        qrlblvlca4.Caption := FloatToStrF(vvlca4,ffNumber,14,2);
        if vqtca4 <> 0 then
          qrlblprca4.Caption := FloatToStrF(vvlca4 / vqtca4,ffNumber,14,2)
        else
          qrlblprca4.Caption := FloatToStrF(0,ffNumber,14,2);
        //Subtotais
        qrlblqtsb4.Caption := FormatFloat('0', vqtsb4);
        qrlblvlsb4.Caption := FloatToStrF(vvlsb4,ffNumber,14,2);
        if vqtsb4 <> 0 then
          qrlblprsb4.Caption := FloatToStrF(vvlsb4 / vqtsb4,ffNumber,14,2)
        else
          qrlblprsb4.Caption := FloatToStrF(0,ffNumber,14,2);
        //Variedade
        qrlblqtva4.Caption := FormatFloat('0', vqtva4);
        qrlblvlva4.Caption := FloatToStrF(vvlva4,ffNumber,14,2);
        if vqtva4 <> 0 then
          qrlblprva4.Caption := FloatToStrF(vvlva4 / vqtva4,ffNumber,14,2)
        else
          qrlblprva4.Caption := FloatToStrF(0,ffNumber,14,2);

      end;
    end;
    if vcodr = 5 then
    begin
      qrlblpr5.Caption := '';

      if vcodr5 <> 0 then
      begin
        fSql(1,2,['select SUM(co.qtde) AS QT, SUM(co.valor) AS VL ',
                '  from esvenda pp, esvendco co',
                ' Where pp.Lanc=co.Lanc '+vDataPervr+' and co.codigo=0'+qrVenda.Fields[0].asString+
                ' and co.prodcod = 0'+IntToStr(vcodr5),
                ' order by 1'],4);

        vqtpr5 := vqtpr5 + dm.qrSql2.Fields[0].asFloat;
        vqtca5 := vqtca5 + dm.qrSql2.Fields[0].asFloat;
        vqtsb5 := vqtsb5 + dm.qrSql2.Fields[0].asFloat;
        vqtva5 := vqtva5 + dm.qrSql2.Fields[0].asFloat;
        vqttt5 := vqttt5 + dm.qrSql2.Fields[0].asFloat;
        vqtcs5 := vqtcs5 + dm.qrSql2.Fields[0].asFloat;
        vvlpr5 := vvlpr5 + dm.qrSql2.Fields[1].asFloat;
        vvlca5 := vvlca5 + dm.qrSql2.Fields[1].asFloat;
        vvlsb5 := vvlsb5 + dm.qrSql2.Fields[1].asFloat;
        vvlva5 := vvlva5 + dm.qrSql2.Fields[1].asFloat;
        vvltt5 := vvltt5 + dm.qrSql2.Fields[1].asFloat;
        vvlcs5 := vvlcs5 + dm.qrSql2.Fields[1].asFloat;

        qrlblqt5.Caption := FormatFloat('0', dm.qrSql2.Fields[0].asFloat);
        qrlblvl5.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat,ffNumber,14,2);
        if dm.qrSql2.Fields[0].asFloat <> 0 then
          qrlblpr5.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat / dm.qrSql2.Fields[0].asFloat,ffNumber,14,2)
        else
          qrlblpr5.Caption := FloatToStrF(0,ffNumber,14,2);
        //Categoria
        qrlblqtca5.Caption := FormatFloat('0', vqtca5);
        qrlblvlca5.Caption := FloatToStrF(vvlca5,ffNumber,14,2);
        if vqtca5 <> 0 then
          qrlblprca5.Caption := FloatToStrF(vvlca5 / vqtca5,ffNumber,14,2)
        else
          qrlblprca5.Caption := FloatToStrF(0,ffNumber,14,2);
        //Subtotais
        qrlblqtsb5.Caption := FormatFloat('0', vqtsb5);
        qrlblvlsb5.Caption := FloatToStrF(vvlsb5,ffNumber,14,2);
        if vqtsb5 <> 0 then
          qrlblprsb5.Caption := FloatToStrF(vvlsb5 / vqtsb5,ffNumber,14,2)
        else
          qrlblprsb5.Caption := FloatToStrF(0,ffNumber,14,2);
        //Variedade
        qrlblqtva5.Caption := FormatFloat('0', vqtva5);
        qrlblvlva5.Caption := FloatToStrF(vvlva5,ffNumber,14,2);
        if vqtva5 <> 0 then
          qrlblprva5.Caption := FloatToStrF(vvlva5 / vqtva5,ffNumber,14,2)
        else
          qrlblprva5.Caption := FloatToStrF(0,ffNumber,14,2);
      end;
    end;
    if vcodr = 6 then
    begin
      qrlblpr6.Caption := '';

      if vcodr6 <> 0 then
      begin
        fSql(1,2,['select SUM(co.qtde) AS QT, SUM(co.valor) AS VL ',
                '  from esvenda pp, esvendco co',
                ' Where pp.Lanc=co.Lanc '+vDataPervr+' and co.codigo=0'+qrVenda.Fields[0].asString+
                vDemaisvr,
                ' order by 1'],4);

        vqtpr6 := vqtpr6 + dm.qrSql2.Fields[0].asFloat;
        vqtca6 := vqtca6 + dm.qrSql2.Fields[0].asFloat;
        vqtsb6 := vqtsb6 + dm.qrSql2.Fields[0].asFloat;
        vqtva6 := vqtva6 + dm.qrSql2.Fields[0].asFloat;
        vqttt6 := vqttt6 + dm.qrSql2.Fields[0].asFloat;
        vqtcs6 := vqtcs6 + dm.qrSql2.Fields[0].asFloat;
        vvlpr6 := vvlpr6 + dm.qrSql2.Fields[1].asFloat;
        vvlca6 := vvlca6 + dm.qrSql2.Fields[1].asFloat;
        vvlsb6 := vvlsb6 + dm.qrSql2.Fields[1].asFloat;
        vvlva6 := vvlva6 + dm.qrSql2.Fields[1].asFloat;
        vvltt6 := vvltt6 + dm.qrSql2.Fields[1].asFloat;
        vvlcs6 := vvlcs6 + dm.qrSql2.Fields[1].asFloat;

        qrlblqt6.Caption := FormatFloat('0', dm.qrSql2.Fields[0].asFloat);
        qrlblvl6.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat,ffNumber,14,2);
        if dm.qrSql2.Fields[0].asFloat <> 0 then
          qrlblpr6.Caption := FloatToStrF(dm.qrSql2.Fields[1].asFloat / dm.qrSql2.Fields[0].asFloat,ffNumber,14,2)
        else
          qrlblpr6.Caption := FloatToStrF(0,ffNumber,14,2);
        //Categoria
        qrlblqtca6.Caption := FormatFloat('0', vqtca6);
        qrlblvlca6.Caption := FloatToStrF(vvlca6,ffNumber,14,2);
        if vqtca6 <> 0 then
          qrlblprca6.Caption := FloatToStrF(vvlca6 / vqtca6,ffNumber,14,2)
        else
          qrlblprca6.Caption := FloatToStrF(0,ffNumber,14,2);
        //Subtotais
        qrlblqtsb6.Caption := FormatFloat('0', vqtsb6);
        qrlblvlsb6.Caption := FloatToStrF(vvlsb6,ffNumber,14,2);
        if vqtsb6 <> 0 then
          qrlblprsb6.Caption := FloatToStrF(vvlsb6 / vqtsb6,ffNumber,14,2)
        else
          qrlblprsb6.Caption := FloatToStrF(0,ffNumber,14,2);
        //Variedade
        qrlblqtva6.Caption := FormatFloat('0', vqtva6);
        qrlblvlva6.Caption := FloatToStrF(vvlva6,ffNumber,14,2);
        if vqtva6 <> 0 then
          qrlblprva6.Caption := FloatToStrF(vvlva6 / vqtva6,ffNumber,14,2)
        else
          qrlblprva6.Caption := FloatToStrF(0,ffNumber,14,2);

      end;
    end;
  end;

  vqtpr99 := vqtpr1 + vqtpr2 + vqtpr3 + vqtpr4 + vqtpr5 + vqtpr6 + vqtpr7;
  vvlpr99 := vvlpr1 + vvlpr2 + vvlpr3 + vvlpr4 + vvlpr5 + vvlpr6 + vvlpr7;

  vqtca99 := vqtca1 + vqtca2 + vqtca3 + vqtca4 + vqtca5 + vqtca6 + vqtca7;
  vvlca99 := vvlca1 + vvlca2 + vvlca3 + vvlca4 + vvlca5 + vvlca6 + vvlca7;

  vqtsb99 := vqtsb1 + vqtsb2 + vqtsb3 + vqtsb4 + vqtsb5 + vqtsb6 + vqtsb7;
  vvlsb99 := vvlsb1 + vvlsb2 + vvlsb3 + vvlsb4 + vvlsb5 + vvlsb6 + vvlsb7;

  vqtva99 := vqtva1 + vqtva2 + vqtva3 + vqtva4 + vqtva5 + vqtva6 + vqtva7;
  vvlva99 := vvlva1 + vvlva2 + vvlva3 + vvlva4 + vvlva5 + vvlva6 + vvlva7;

  vqttt99 := vqttt1 + vqttt2 + vqttt3 + vqttt4 + vqttt5 + vqttt6 + vqttt7;
  vvltt99 := vvltt1 + vvltt2 + vvltt3 + vvltt4 + vvltt5 + vvltt6 + vvltt7;

  vqtcs99 := vqtcs1 + vqtcs2 + vqtcs3 + vqtcs4 + vqtcs5 + vqtcs6 + vqtcs7;
  vvlcs99 := vvlcs1 + vvlcs2 + vvlcs3 + vvlcs4 + vvlcs5 + vvlcs6 + vvlcs7;


  qrlblqtt.Caption   := FormatFloat('0', vqtpr99);
  qrlblvlt.Caption   := FloatToStrF(vvlpr99,ffNumber,14,2);
  if vqtpr99 <> 0 then
    qrlblprt.Caption   := FloatToStrF(vvlpr99 / vqtpr99,ffNumber,14,2)
  else
    qrlblprt.Caption   := '';

  qrlblqtcat.Caption   := FormatFloat('0', vqtca99);
  qrlblvlcat.Caption   := FloatToStrF(vvlca99,ffNumber,14,2);
  if vqtca99 <> 0 then
    qrlblprcat.Caption   := FloatToStrF(vvlca99 / vqtca99,ffNumber,14,2)
  else
    qrlblprcat.Caption   := '';

  qrlblqtsbt.Caption   := FormatFloat('0', vqtsb99);
  qrlblvlsbt.Caption   := FloatToStrF(vvlsb99,ffNumber,14,2);
  if vqtsb99 <> 0 then
    qrlblprsbt.Caption   := FloatToStrF(vvlsb99 / vqtsb99,ffNumber,14,2)
  else
    qrlblprsbt.Caption   := '';

  qrlblqtvat.Caption   := FormatFloat('0', vqtva99);
  qrlblvlvat.Caption   := FloatToStrF(vvlva99,ffNumber,14,2);
  if vqtva99 <> 0 then
    qrlblprvat.Caption   := FloatToStrF(vvlva99 / vqtva99,ffNumber,14,2)
  else
    qrlblprvat.Caption   := '';

end;

procedure TqrVendasProdutorResumo.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  vcat:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,2));
  vclo:=StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,1));
  qrVenda.Next;
  if vcat<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,4)) then
  begin
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22;

     vqtca1 := 0; vqtca2 := 0; vqtca3 := 0; vqtca4 := 0; vqtca5 := 0; vqtca6 := 0; vqtca7 := 0;
     vvlca1 := 0; vvlca2 := 0; vvlca3 := 0; vvlca4 := 0; vvlca5 := 0; vvlca6 := 0; vvlca7 := 0;

  end;
  if vgru<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,3)) then
  begin
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22; ChildBand3.Height:=22;

     vqtca1 := 0; vqtca2 := 0; vqtca3 := 0; vqtca4 := 0; vqtca5 := 0; vqtca6 := 0; vqtca7 := 0;
     vqtsb1 := 0; vqtsb2 := 0; vqtsb3 := 0; vqtsb4 := 0; vqtsb5 := 0; vqtsb6 := 0; vqtsb7 := 0;
     vvlca1 := 0; vvlca2 := 0; vvlca3 := 0; vvlca4 := 0; vvlca5 := 0; vvlca6 := 0; vvlca7 := 0;
     vvlsb1 := 0; vvlsb2 := 0; vvlsb3 := 0; vvlsb4 := 0; vvlsb5 := 0; vvlsb6 := 0; vvlsb7 := 0;

  end;
  if vvar<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,2)) then
  begin
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';

     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=22;

     vqtca1 := 0; vqtca2 := 0; vqtca3 := 0; vqtca4 := 0; vqtca5 := 0; vqtca6 := 0; vqtca7 := 0;
     vqtsb1 := 0; vqtsb2 := 0; vqtsb3 := 0; vqtsb4 := 0; vqtsb5 := 0; vqtsb6 := 0; vqtsb7 := 0;
     vqtva1 := 0; vqtva2 := 0; vqtva3 := 0; vqtva4 := 0; vqtva5 := 0; vqtva6 := 0; vqtva7 := 0;
     vvlca1 := 0; vvlca2 := 0; vvlca3 := 0; vvlca4 := 0; vvlca5 := 0; vvlca6 := 0; vvlca7 := 0;
     vvlsb1 := 0; vvlsb2 := 0; vvlsb3 := 0; vvlsb4 := 0; vvlsb5 := 0; vvlsb6 := 0; vvlsb7 := 0;
     vvlva1 := 0; vvlva2 := 0; vvlva3 := 0; vvlva4 := 0; vvlva5 := 0; vvlva6 := 0; vvlva7 := 0;

  end;
  if vclo<>StrToInt(Copy(qrVenda.FieldByname('Codigo').Text,1,1)) then
  begin
//     qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
     ChildBand4.Height:=40;

  end;
  if qrVenda.Eof then
  begin
     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=40; ChildBand5.Height:=50;
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     qrLabel13.Caption:='Total Custo ('+FloatToStrF(vcustovr,ffNumber,14,2)+'%)...:';

     qrlblqtss1.Caption   := FormatFloat('0', vqtcs1);
     qrlblvlss1.Caption   := FloatToStrF(vvlcs1,ffNumber,14,2);
     if vqtcs1 <> 0 then
       qrlblprss1.Caption   := FloatToStrF(vvlcs1 / vqtcs1,ffNumber,14,2)
     else
       qrlblprss1.Caption   := '';

     qrlblqtss2.Caption   := FormatFloat('0', vqtcs2);
     qrlblvlss2.Caption   := FloatToStrF(vvlcs2,ffNumber,14,2);
     if vqtcs2 <> 0 then
       qrlblprss2.Caption   := FloatToStrF(vvlcs2 / vqtcs2,ffNumber,14,2)
     else
       qrlblprss2.Caption   := '';

     qrlblqtss3.Caption   := FormatFloat('0', vqtcs3);
     qrlblvlss3.Caption   := FloatToStrF(vvlcs3,ffNumber,14,2);
     if vqtcs3 <> 0 then
       qrlblprss3.Caption   := FloatToStrF(vvlcs3 / vqtcs3,ffNumber,14,2)
     else
       qrlblprss3.Caption   := '';

     qrlblqtss4.Caption   := FormatFloat('0', vqtcs4);
     qrlblvlss4.Caption   := FloatToStrF(vvlcs4,ffNumber,14,2);
     if vqtcs4 <> 0 then
       qrlblprss4.Caption   := FloatToStrF(vvlcs4 / vqtcs4,ffNumber,14,2)
     else
       qrlblprss4.Caption   := '';

     qrlblqtss5.Caption   := FormatFloat('0',  vqtcs5);
     qrlblvlss5.Caption   := FloatToStrF(vvlcs5,ffNumber,14,2);
     if vqtcs5 <> 0 then
       qrlblprss5.Caption   := FloatToStrF(vvlcs5 / vqtcs5,ffNumber,14,2)
     else
       qrlblprss5.Caption   := '';

     qrlblqtss6.Caption   := FormatFloat('0', vqtcs6);
     qrlblvlss6.Caption   := FloatToStrF(vvlcs6,ffNumber,14,2);
     if vqtcs6 <> 0 then
       qrlblprss6.Caption   := FloatToStrF(vvlcs6 / vqtcs6,ffNumber,14,2)
     else
       qrlblprss6.Caption   := '';

     qrlblqtsst.Caption   := FormatFloat('0', vqtcs99);
     qrlblvlsst.Caption   := FloatToStrF(vvlcs99,ffNumber,14,2);
     if vqtcs99 <> 0 then
       qrlblprsst.Caption   := FloatToStrF(vvlcs99 / vqtcs99,ffNumber,14,2)
     else
       qrlblprsst.Caption   := '';

     qrlbltcs1.Caption   := FloatToStrF(vvlcs1 * vcustovr / 100,ffNumber,14,2);
     qrlbltcs2.Caption   := FloatToStrF(vvlcs2 * vcustovr / 100,ffNumber,14,2);
     qrlbltcs3.Caption   := FloatToStrF(vvlcs3 * vcustovr / 100,ffNumber,14,2);
     qrlbltcs4.Caption   := FloatToStrF(vvlcs4 * vcustovr / 100,ffNumber,14,2);
     qrlbltcs5.Caption   := FloatToStrF(vvlcs5 * vcustovr / 100,ffNumber,14,2);
     qrlbltcs6.Caption   := FloatToStrF(vvlcs6 * vcustovr / 100,ffNumber,14,2);
     qrlbltcst.Caption   := FloatToStrF(vvlcs99 * vcustovr / 100,ffNumber,14,2);


  end
  else qrVenda.Prior;
end;


end.
