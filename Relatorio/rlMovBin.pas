unit rlMovBin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrMovBin = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
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
    QRLabel12: TQRLabel;
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
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrMovBin: TqrMovBin;
  vrec:Variant;
  vtot,vqtd,vpes,vger,vliq,vlit:Double;
  vMostra:String;

implementation

{$R *.DFM}
uses Data,Menu, dialogs, frmRelProducao;

procedure TqrMovBin.QuickRepPreview(Sender: TObject);
begin
  vrec:=qrMovim.FieldByName('ProdCod').Value;
  vtot:=0; vqtd:=0; vpes:=0; vger:=0; vliq:=0; vlit:=0;
  fPreview(Sender);
end;

procedure TqrMovBin.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vrec:=qrMovim.FieldByName('ProdCod').Value;
  vtot:=0; vqtd:=0; vpes:=0; vger:=0; vliq:=0; vlit:=0;
end;

procedure TqrMovBin.DetailBand1BeforePrint(Sender: TQRCustomBand;
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
     DetailBand1.Height:=16;
     vqtd:=vqtd+qrMovim.FieldByName('BinsQtd').asFloat;
     vtot:=vtot+qrMovim.FieldByName('BinsQtd').asFloat;
     vpes:=vpes+qrMovim.FieldByName('BinsPes').asFloat;
     vger:=vger+qrMovim.FieldByName('BinsPes').asFloat;
     vliq:=vliq+qrMovim.FieldByName('Binsliq').asFloat;
     vlit:=vlit+qrMovim.FieldByName('Binsliq').asFloat;
     qrLabel4.Caption:=FloatToStrF(vqtd,ffNumber,13,0);
     qrLabel5.Caption:=FloatToStrF(vtot,ffNumber,13,0);
     qrLabel9.Caption:=FloatToStrF(vpes,ffNumber,13,0);
     qrLabel10.Caption:=FloatToStrF(vger,ffNumber,13,0);
     qrLabel15.Caption:=FloatToStrF(vliq,ffNumber,13,0);
     qrLabel17.Caption:=FloatToStrF(vlit,ffNumber,13,0);

     if qrMovim.FieldByName('BinsQtd').asFloat <> 0 then
       qrLabel19.Caption:=FloatToStrF(qrMovim.FieldByName('Binsliq').asFloat / qrMovim.FieldByName('BinsQtd').asFloat,ffNumber,13,0)
     else
       qrLabel19.Caption:=FloatToStrF(0,ffNumber,13,0);

     qrMovim.Next;
     if vrec<>qrMovim.FieldByName('ProdCod').Value then begin
        ChildBand2.Height:=20;
        vrec:=qrMovim.FieldByName('ProdCod').Value;
        vqtd:=0; vpes:=0; vliq:=0;
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
