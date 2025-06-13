unit rlNFCooper;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrNFCooper = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrVenda: TQuery;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    qrForne: TQuery;
    QRDBText9: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrNFCooper: TqrNFCooper;
  vqt1,vqtt:Double; vvl1,vvlt:Real;
  vok,vcovendafor,vclien:Integer; vdtvendafor,vccvendafor:String;

implementation

{$R *.DFM}
uses Data,Menu,dialogs;

procedure TqrNFCooper.QuickRepPreview(Sender: TObject);
begin
  vok:=0;
  fPreview(Sender);
end;

procedure TqrNFCooper.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vok:=0;
end;

procedure TqrNFCooper.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  qrVenda.Sql.Strings[2]:='Where ee.DifCod=2 and ee.Lanc=cc.Lanc and cc.Cliente='+qrProdu.Fields[0].Text+
                          ' and '+vdtvendafor+' and '+vccvendafor;
  qrVenda.Open;
  DetailBand2.Height:=0;
  if qrVenda.RecordCount>0 then begin
    DetailBand2.Height:=40;
    vclien:=qrProdu.Fields[0].AsInteger;
    qrProdu.Next;
    if vclien<>qrProdu.Fields[0].AsInteger then begin
       if vok=1 then NewPage;
       qrProdu.Prior; vok:=1;
    end else begin
      if not qrProdu.Eof then qrProdu.Prior;
    end;
  end;
  vqt1:=0; vvl1:=0; vqtt:=0; vvlt:=0;
  vcovendafor:=qrVenda.FieldByName('Codigo').asInteger;
end;

procedure TqrNFCooper.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRSubDetail2.Height:=0;
  ChildBand2.Height:=0;
  ChildBand3.Height:=0;
  if qrVenda.RecordCount>0 then begin
    qrForne.Close;
    qrForne.Sql.Strings[2]:='Where ee.Lanc=cc.Lanc and cc.Codigo='+qrVenda.Fields[5].Text;
    qrForne.Open;
    if qrForne.Fields[3].asFloat>0 then begin
      DetailBand2.Height:=40;
      QRSubDetail2.Height:=15;
      if qrVenda.FieldByName('DifCod').asInteger=2 then begin
         vqt1:=vqt1+qrVenda.FieldByName('qtde').asFloat;
         vqtt:=vqtt+qrVenda.FieldByName('qtde').asFloat;
      end else begin
         vqt1:=vqt1-qrVenda.FieldByName('qtde').asFloat;
         vqtt:=vqtt-qrVenda.FieldByName('qtde').asFloat;
      end;
      vvl1:=vvl1+qrVenda.FieldByName('valor').asFloat;
      vvlt:=vvlt+qrVenda.FieldByName('valor').asFloat;
    end;
  end;
end;

procedure TqrNFCooper.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qrVenda.RecordCount>0 then begin
    if qrForne.Fields[3].asFloat>0 then begin
      qrLabel13.Caption:=FloatToStrF(vqt1,ffNumber,14,0);
      qrLabel6.Caption:=FloatToStrF(vvl1,ffCurrency,14,2);
      qrLabel9.Caption:=FloatToStrF(vqtt,ffNumber,14,0);
      qrLabel8.Caption:=FloatToStrF(vvlt,ffCurrency,14,2);
      qrVenda.Next;
      if vcovendafor<>qrVenda.FieldByName('Codigo').asInteger then begin
         vcovendafor:=qrVenda.FieldByName('Codigo').asInteger;
         ChildBand2.Height:=23;
        vqt1:=0; vvl1:=0;
      end;
      if qrVenda.Eof then begin
         ChildBand2.Height:=23;
         ChildBand3.Height:=23;
      end else qrVenda.Prior;
    end;
  end;
end;




end.
