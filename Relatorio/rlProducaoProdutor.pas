unit rlProducaoProdutor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrProducaoProdutor = class(TQuickRep)
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
    qrlblpr2: TQRLabel;
    qrlblpr5: TQRLabel;
    qrlblpr6: TQRLabel;
    qrlblpr7: TQRLabel;
    qrlblprt: TQRLabel;
    qrlblprca5: TQRLabel;
    qrlblprca6: TQRLabel;
    qrlblprca7: TQRLabel;
    qrlblprcat: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel48: TQRLabel;
    qrlbldes1: TQRLabel;
    qrlbldes2: TQRLabel;
    qrlbldes3: TQRLabel;
    qrlbldes4: TQRLabel;
    qrlbldes5: TQRLabel;
    qrlbldes6: TQRLabel;
    QRLabel27: TQRLabel;
    qrlbldes7: TQRLabel;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    QRLabel61: TQRLabel;
    qrlblprsb1: TQRLabel;
    qrlblprsb2: TQRLabel;
    qrlblprsb3: TQRLabel;
    qrlblprsb4: TQRLabel;
    qrlblprsb5: TQRLabel;
    qrlblprsb6: TQRLabel;
    qrlblprsb7: TQRLabel;
    qrlblprsbt: TQRLabel;
    QRLabel7: TQRLabel;
    qrlblprva1: TQRLabel;
    qrlblprva2: TQRLabel;
    qrlblprva3: TQRLabel;
    qrlblprva4: TQRLabel;
    qrlblprva5: TQRLabel;
    qrlblprva6: TQRLabel;
    qrlblprva7: TQRLabel;
    qrlblprvat: TQRLabel;
    qrlblpr1: TQRLabel;
    qrlblpr4: TQRLabel;
    qrlblpr3: TQRLabel;
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
    vDataPervpx, vDemaisvpx: String;
  end;

var
  qrProducaoProdutor: TqrProducaoProdutor;
  vccope,vccinv,vqt1,vqt3,vqt11,vqt33,vtqt1,vtqt3,vcqt1,vcqt3:Double;
  vscem,vscop,vscva,vscin,vgcem,vgcop,vgcva,vgcin,vtcem,vtcop,vtcva,vtcin,vccem,vccop,vccva,vccin:Double;
  vqtc,vqtv,vval,vgval,vtval,vcval:Real;
  vsoma,vclo,vcat,vgru,vvar,vcatdes:Integer;
  vclresvpx,vclgervpx,vcodigvpx,vprodutorvpx,vcrlocvpx,vcrlocdesvpx:String;
  vcodx, vcod1x, vcod2x, vcod3x, vcod4x, vcod5x, vcod6x, vcod7x: Integer;

  vqtpr1,vqtpr2,vqtpr3,vqtpr4,vqtpr5,vqtpr6,vqtpr7,vqtpr99: Double;
  vqtca1,vqtca2,vqtca3,vqtca4,vqtca5,vqtca6,vqtca7,vqtca99: Double;
  vqtsb1,vqtsb2,vqtsb3,vqtsb4,vqtsb5,vqtsb6,vqtsb7,vqtsb99: Double;
  vqtva1,vqtva2,vqtva3,vqtva4,vqtva5,vqtva6,vqtva7,vqtva99: Double;
  vqttt1,vqttt2,vqttt3,vqttt4,vqttt5,vqttt6,vqttt7,vqttt99: Double;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrProducaoProdutor.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrProducaoProdutor.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  qrVenda.Close;
  qrVenda.Sql.Strings[2]:=Copy(qrProdu.Sql.Strings[2],1,138)+'      and pp.Codigo>0'+vcrlocvpx;
  vprodutorvpx := ' and pp.Codigo >= 0' + vDataPervpx;
  qrVenda.Open;

  vcat:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,2));
  vclo:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,1));

  qrlblprt.Caption   := '';
  qrlblprcat.Caption := '';
  qrlblprsbt.Caption := '';
  qrlblprvat.Caption := '';

  for vcodx := 1 to 7 do
  begin

    if vcodx = 1 then
    begin
      qrlblprca1.Caption := '';
      qrlblprsb1.Caption := '';
      qrlblprva1.Caption := '';
      vqtpr1 := 0;
      vqtca1 := 0;
      vqtsb1 := 0;
      vqtva1 := 0;
      vqttt1 := 0;
    end;
    if vcodx = 2 then
    begin
      qrlblprca2.Caption := '';
      qrlblprsb2.Caption := '';
      qrlblprva2.Caption := '';
      vqtpr2 := 0;
      vqtca2 := 0;
      vqtsb2 := 0;
      vqtva2 := 0;
      vqttt2 := 0;
    end;
    if vcodx = 3 then
    begin
      qrlblprca3.Caption := '';
      qrlblprsb3.Caption := '';
      qrlblprva3.Caption := '';
      vqtpr3 := 0;
      vqtca3 := 0;
      vqtsb3 := 0;
      vqtva3 := 0;
      vqttt3 := 0;
    end;
    if vcodx = 4 then
    begin
      qrlblprca4.Caption := '';
      qrlblprsb4.Caption := '';
      qrlblprva4.Caption := '';
      vqtpr4 := 0;
      vqtca4 := 0;
      vqtsb4 := 0;
      vqtva4 := 0;
      vqttt4 := 0;
    end;
    if vcodx = 5 then
    begin
      qrlblprca5.Caption := '';
      qrlblprsb5.Caption := '';
      qrlblprva5.Caption := '';
      vqtpr5 := 0;
      vqtca5 := 0;
      vqtsb5 := 0;
      vqtva5 := 0;
      vqttt5 := 0;
    end;
    if vcodx = 6 then
    begin
      qrlblprca6.Caption := '';
      qrlblprsb6.Caption := '';
      qrlblprva6.Caption := '';
      vqtpr6 := 0;
      vqtca6 := 0;
      vqtsb6 := 0;
      vqtva6 := 0;
      vqttt6 := 0;
    end;
    if vcodx = 7 then
    begin
      qrlblprca7.Caption := '';
      qrlblprsb7.Caption := '';
      qrlblprva7.Caption := '';
      vqtpr7 := 0;
      vqtca7 := 0;
      vqtsb7 := 0;
      vqtva7 := 0;
      vqttt7 := 0;
    end;
  end;

end;

procedure TqrProducaoProdutor.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vprmedio,vccemb,vcem,vcop,vcin,vcva:Double; vcdcat:Integer;
begin
  ChildBand2.Height:=0; ChildBand3.Height:=0; ChildBand4.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then QRSubDetail2.Color:=clWhite
  else QRSubDetail2.Color:=$00E8E8E8;
  qrLabel17.Caption:=fBus(1,['Select Descricao,Unidade,CategCod, CategCod From CadProdu Where Codigo=0'+qrVenda.FieldByName('prodCod').Text],1);
  QRLabel49.Caption:=dm.qrSqlBus.FieldByName('Unidade').asString;

  vcdcat:=dm.qrSqlBus.FieldByName('CategCod').asInteger;
  vqt1:=vqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);

  if UpperCase(QRLabel49.Caption)='CX' then begin
     vtqt1:=vtqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);
     vcqt1:=vcqt1+frDeci(qrVenda.FieldByName('qt').asFloat,0);
  end;

  for vcodx := 1 to 7 do
  begin

    if vcodx = 1 then
    begin
      qrlblpr1.Caption := '';
      vqtpr1 := 0;
      vqttt1 := 0;
    end;
    if vcodx = 2 then
    begin
      qrlblpr2.Caption := '';
      vqtpr2 := 0;
      vqttt2 := 0;
    end;
    if vcodx = 3 then
    begin
      qrlblpr3.Caption := '';
      vqtpr3 := 0;
      vqttt3 := 0;
    end;
    if vcodx = 4 then
    begin
      qrlblpr4.Caption := '';
      vqtpr4 := 0;
      vqttt4 := 0;
    end;
    if vcodx = 5 then
    begin
      qrlblpr5.Caption := '';
      vqtpr5 := 0;
      vqttt5 := 0;
    end;
    if vcodx = 6 then
    begin
      qrlblpr6.Caption := '';
      vqtpr6 := 0;
      vqttt6 := 0;
    end;
    if vcodx = 7 then
    begin
      qrlblpr7.Caption := '';
      vqtpr7 := 0;
      vqttt7 := 0;
    end;
  end;

  for vcodx := 1 to 7 do
  begin

    if vcodx = 1 then
    begin
      qrlblpr1.Caption := '';

      if vcod1x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                ' and pp.codigo = 0'+IntToStr(vcod1x),
                ' order by 1'],4);

        qrlblpr1.Caption := FloatToStrF(dm.qrSql2.Fields[0].asFloat,ffNumber,14,0);

        vqtpr1 := vqtpr1 + dm.qrSql2.Fields[0].asFloat;
        vqtca1 := vqtca1 + dm.qrSql2.Fields[0].asFloat;
        vqtsb1 := vqtsb1 + dm.qrSql2.Fields[0].asFloat;
        vqtva1 := vqtva1 + dm.qrSql2.Fields[0].asFloat;
        vqttt1 := vqttt1 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr1.Caption   := FloatToStrF(vqtpr1,ffNumber,14,0);
        qrlblprca1.Caption := FloatToStrF(vqtca1,ffNumber,14,0);
        qrlblprsb1.Caption := FloatToStrF(vqtsb1,ffNumber,14,0);
        qrlblprva1.Caption := FloatToStrF(vqtva1,ffNumber,14,0);

      end;
    end;
    if vcodx = 2 then
    begin
      qrlblpr2.Caption := '';

      if vcod2x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                ' and pp.codigo = 0'+IntToStr(vcod2x),
                ' order by 1'],4);

        qrlblpr2.Caption := FloatToStrF(dm.qrSql2.Fields[0].asFloat,ffNumber,14,0);
        vqtpr2 := vqtpr2 + dm.qrSql2.Fields[0].asFloat;
        vqtca2 := vqtca2 + dm.qrSql2.Fields[0].asFloat;
        vqtsb2 := vqtsb2 + dm.qrSql2.Fields[0].asFloat;
        vqtva2 := vqtva2 + dm.qrSql2.Fields[0].asFloat;
        vqttt2 := vqttt2 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr2.Caption   := FloatToStrF(vqtpr2,ffNumber,14,0);
        qrlblprca2.Caption := FloatToStrF(vqtca2,ffNumber,14,0);
        qrlblprsb2.Caption := FloatToStrF(vqtsb2,ffNumber,14,0);
        qrlblprva2.Caption := FloatToStrF(vqtva2,ffNumber,14,0);

      end;
    end;
    if vcodx = 3 then
    begin
      qrlblpr3.Caption := '';

      if vcod3x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                ' and pp.codigo = 0'+IntToStr(vcod3x),
                ' order by 1'],4);

        qrlblpr3.Caption := FloatToStrF(dm.qrSql2.Fields[0].asFloat,ffNumber,14,0);
        vqtpr3 := vqtpr3 + dm.qrSql2.Fields[0].asFloat;
        vqtca3 := vqtca3 + dm.qrSql2.Fields[0].asFloat;
        vqtsb3 := vqtsb3 + dm.qrSql2.Fields[0].asFloat;
        vqtva3 := vqtva3 + dm.qrSql2.Fields[0].asFloat;
        vqttt3 := vqttt3 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr3.Caption   := FloatToStrF(vqtpr3,ffNumber,14,0);
        qrlblprca3.Caption := FloatToStrF(vqtca3,ffNumber,14,0);
        qrlblprsb3.Caption := FloatToStrF(vqtsb3,ffNumber,14,0);
        qrlblprva3.Caption := FloatToStrF(vqtva3,ffNumber,14,0);

      end;
    end;
    if vcodx = 4 then
    begin
      qrlblpr4.Caption := '';

      if vcod4x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                ' and pp.codigo = 0'+IntToStr(vcod4x),
                ' order by 1'],4);

        vqtpr4 := vqtpr4 + dm.qrSql2.Fields[0].asFloat;
        vqtca4 := vqtca4 + dm.qrSql2.Fields[0].asFloat;
        vqtsb4 := vqtsb4 + dm.qrSql2.Fields[0].asFloat;
        vqtva4 := vqtva4 + dm.qrSql2.Fields[0].asFloat;
        vqttt4 := vqttt4 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr4.Caption   := FloatToStrF(vqtpr4,ffNumber,14,0);
        qrlblprca4.Caption := FloatToStrF(vqtca4,ffNumber,14,0);
        qrlblprsb4.Caption := FloatToStrF(vqtsb4,ffNumber,14,0);
        qrlblprva4.Caption := FloatToStrF(vqtva4,ffNumber,14,0);

      end;
    end;
    if vcodx = 5 then
    begin
      qrlblpr5.Caption := '';

      if vcod5x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                ' and pp.codigo = 0'+IntToStr(vcod5x),
                ' order by 1'],4);

        vqtpr5 := vqtpr5 + dm.qrSql2.Fields[0].asFloat;
        vqtca5 := vqtca5 + dm.qrSql2.Fields[0].asFloat;
        vqtsb5 := vqtsb5 + dm.qrSql2.Fields[0].asFloat;
        vqtva5 := vqtva5 + dm.qrSql2.Fields[0].asFloat;
        vqttt5 := vqttt5 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr5.Caption   := FloatToStrF(vqtpr5,ffNumber,14,0);
        qrlblprca5.Caption := FloatToStrF(vqtca5,ffNumber,14,0);
        qrlblprsb5.Caption := FloatToStrF(vqtsb5,ffNumber,14,0);
        qrlblprva5.Caption := FloatToStrF(vqtva5,ffNumber,14,0);

      end;
    end;
    if vcodx = 6 then
    begin
      qrlblpr6.Caption := '';

      if vcod6x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                ' and pp.codigo = 0'+IntToStr(vcod6x),
                ' order by 1'],4);

        vqtpr6 := vqtpr6 + dm.qrSql2.Fields[0].asFloat;
        vqtca6 := vqtca6 + dm.qrSql2.Fields[0].asFloat;
        vqtsb6 := vqtsb6 + dm.qrSql2.Fields[0].asFloat;
        vqtva6 := vqtva6 + dm.qrSql2.Fields[0].asFloat;
        vqttt6 := vqttt6 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr6.Caption   := FloatToStrF(vqtpr6,ffNumber,14,0);
        qrlblprca6.Caption := FloatToStrF(vqtca6,ffNumber,14,0);
        qrlblprsb6.Caption := FloatToStrF(vqtsb6,ffNumber,14,0);
        qrlblprva6.Caption := FloatToStrF(vqtva6,ffNumber,14,0);

      end;
    end;
    if vcodx = 7 then
    begin
      qrlblpr7.Caption := '';

      if vcod7x <> 0 then
      begin
        fSql(1,2,['select SUM(co.QTDEENT) AS QT',
                '  from classif pp, classifm co',
                ' Where pp.Lanc=co.Lanc '+vDataPervpx+' and co.prodcod=0'+qrVenda.Fields[0].asString+
                vDemaisvpx+
                ' order by 1'],4);

        vqtpr7 := vqtpr7 + dm.qrSql2.Fields[0].asFloat;
        vqtca7 := vqtca7 + dm.qrSql2.Fields[0].asFloat;
        vqtsb7 := vqtsb7 + dm.qrSql2.Fields[0].asFloat;
        vqtva7 := vqtva7 + dm.qrSql2.Fields[0].asFloat;
        vqttt7 := vqttt7 + dm.qrSql2.Fields[0].asFloat;

        qrlblpr7.Caption   := FloatToStrF(vqtpr7,ffNumber,14,0);
        qrlblprca7.Caption := FloatToStrF(vqtca7,ffNumber,14,0);
        qrlblprsb7.Caption := FloatToStrF(vqtsb7,ffNumber,14,0);
        qrlblprva7.Caption := FloatToStrF(vqtva7,ffNumber,14,0);

      end;
    end;
  end;

  vqtpr99 := vqtpr1 + vqtpr2 + vqtpr3 + vqtpr4 + vqtpr5 + vqtpr6 + vqtpr7;
  vqtca99 := vqtca1 + vqtca2 + vqtca3 + vqtca4 + vqtca5 + vqtca6 + vqtca7;
  vqtsb99 := vqtsb1 + vqtsb2 + vqtsb3 + vqtsb4 + vqtsb5 + vqtsb6 + vqtsb7;
  vqtva99 := vqtva1 + vqtva2 + vqtva3 + vqtva4 + vqtva5 + vqtva6 + vqtva7;
  vqttt99 := vqttt1 + vqttt2 + vqttt3 + vqttt4 + vqttt5 + vqttt6 + vqttt7;

  qrlblprt.Caption   := FloatToStrF(vqtpr99,ffNumber,14,0);
  qrlblprcat.Caption := FloatToStrF(vqtca99,ffNumber,14,0);
  qrlblprsbt.Caption := FloatToStrF(vqtsb99,ffNumber,14,0);
  qrlblprvat.Caption := FloatToStrF(vqtva99,ffNumber,14,0);

end;

procedure TqrProducaoProdutor.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  vcat:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,4));
  vgru:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,3));
  vvar:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,2));
  vclo:=StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,1));
  qrVenda.Next;
  if vcat<>StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,4)) then
  begin
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22;

     vqtca1 := 0; vqtca2 := 0; vqtca3 := 0; vqtca4 := 0; vqtca5 := 0; vqtca6 := 0; vqtca7 := 0;

  end;
  if vgru<>StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,3)) then
  begin
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     ChildBand2.Height:=22; ChildBand3.Height:=22;

     vqtca1 := 0; vqtca2 := 0; vqtca3 := 0; vqtca4 := 0; vqtca5 := 0; vqtca6 := 0; vqtca7 := 0;
     vqtsb1 := 0; vqtsb2 := 0; vqtsb3 := 0; vqtsb4 := 0; vqtsb5 := 0; vqtsb6 := 0; vqtsb7 := 0;

  end;
  if vvar<>StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,2)) then
  begin
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';

     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=22;

     vqtca1 := 0; vqtca2 := 0; vqtca3 := 0; vqtca4 := 0; vqtca5 := 0; vqtca6 := 0; vqtca7 := 0;
     vqtsb1 := 0; vqtsb2 := 0; vqtsb3 := 0; vqtsb4 := 0; vqtsb5 := 0; vqtsb6 := 0; vqtsb7 := 0;
     vqtva1 := 0; vqtva2 := 0; vqtva3 := 0; vqtva4 := 0; vqtva5 := 0; vqtva6 := 0; vqtva7 := 0;

  end;
  if vclo<>StrToInt(Copy(qrVenda.FieldByname('prodCod').Text,1,1)) then
  begin
//     qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
     ChildBand4.Height:=70;

  end;
  if qrVenda.Eof then begin
     ChildBand2.Height:=22; ChildBand3.Height:=22; ChildBand4.Height:=70;
     qrLabel61.Caption:='SubTotal ('+fBus(1,['Select VarieDes From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
     qrLabel7.Caption:='Total ('+fBus(1,['Select Descricao From CadVarie Where Codigo=0'+IntToStr(vvar)],1)+')...:';
     qrLabel3.Caption:='SubTotal ('+fBus(1,['Select Descricao From CadCateg Where Codigo=0'+Copy(IntToStr(vcat),3,2)],1)+')...:';
  //   qrLabel51.Caption:='Total Grupo ('+IntToStr(vclo)+')...:';
  end else qrVenda.Prior;
end;


end.
