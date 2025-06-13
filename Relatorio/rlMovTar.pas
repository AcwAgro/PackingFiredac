unit rlMovTar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrMovTar = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrMovim: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrMovTar: TqrMovTar;
  vrec:Variant;
  vcon,vtot,vqtd:Double;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu, frmRelProducao;

procedure TqrMovTar.QuickRepPreview(Sender: TObject);
begin
  vrec:=qrMovim.FieldByName('ProdCod').Value;
  vtot:=0; vqtd:=0; vcon:=0;
  fPreview(Sender);
end;

procedure TqrMovTar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vrec:=qrMovim.FieldByName('ProdCod').Value;
  vtot:=0; vqtd:=0; vcon:=0;
end;

procedure TqrMovTar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vMostra:='S';
{  if FfrmRelProducao.CB1.Checked then begin
    if fTra(1,['Select Cooper From CadForne Where Codigo=0'+qrMovim.FieldByName('ProdCod').Text],1) then begin
        if dm.qrSqlTra.Fields[0].Text='S' then vMostra:='S'
        else vMostra:='N';
    end else vMostra:='N';
  end else begin
    if fTra(1,['Select Cooper From CadForne Where Codigo=0'+qrMovim.FieldByName('ProdCod').Text],1) then begin
        if dm.qrSqlTra.Fields[0].Text<>'S' then vMostra:='S'
        else vMostra:='N';
     end else vMostra:='N';
  end;}
  DetailBand1.Height:=0;
  ChildBand2.Height:=0;
  if vMostra='S' then begin
     DetailBand1.Height:=16; vcon:=vcon+1;
     vqtd:=vqtd+qrMovim.FieldByName('Peso').asFloat;
     vtot:=vtot+qrMovim.FieldByName('Peso').asFloat;
     qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,0);
     qrLabel5.Caption:=FloatToStrF(vtot,ffNumber,13,0);
     qrLabel9.Caption:=FloatToStrF(vqtd/vcon,ffNumber,13,0);
     qrMovim.Next;
     if vrec<>qrMovim.FieldByName('ProdCod').Value then begin
        ChildBand2.Height:=20;
        vrec:=qrMovim.FieldByName('ProdCod').Value;
        vqtd:=0; vcon:=0;
     end;
     if qrMovim.Eof then ChildBand2.Height:=45
     else qrMovim.Prior;
  end else begin
     qrMovim.Next;
     if qrMovim.Eof then ChildBand2.Height:=45
     else qrMovim.Prior;
  end;
end;

end.
