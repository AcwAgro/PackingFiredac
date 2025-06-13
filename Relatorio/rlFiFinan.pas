unit rlFiFinan;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrFiFinan = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel25: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrConta: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel19: TQRLabel;
    qrlblNome: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qrFiFinan: TqrFiFinan;
  vrec:Variant;
  vtvlr,vtjur,vtdes,vttot,vtpag:Real;
  vgvlr,vgjur,vgdes,vgtot,vgpag:Real;
  vdebfol,vfilcam:String;
  vfipos:TDateTime;
  vfiper,vfimul:Double;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,Printers,dialogs;

procedure TqrFiFinan.QuickRepPreview(Sender: TObject);
begin
  Page.Orientation:=poLandscape;
  vrec:=qrConta.FieldByName(vfilcam).Value;
  vtvlr:=0;vtjur:=0;vtdes:=0;vttot:=0;vtpag:=0;
  vgvlr:=0;vgjur:=0;vgdes:=0;vgtot:=0;vgpag:=0;
  fPreview(Sender);
end;

procedure TqrFiFinan.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Page.Orientation:=poLandscape;
  qrConta.First;
  vrec:=qrConta.FieldByName(vfilcam).Value;
  vtvlr:=0;vtjur:=0;vtdes:=0;vttot:=0;vtpag:=0;
  vgvlr:=0;vgjur:=0;vgdes:=0;vgtot:=0;vgpag:=0;
end;

procedure TqrFiFinan.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vjuro,vmult:Real; vatr:Integer; vmost:String;
begin
{  if Pos('Receb', qrLabel16.Caption) > 0 then
    qrlblNome.Caption := fBus(1,['Select Descricao from cadclien where codigo = 0'+qrConta.FieldByName('Codigo').asString],1)
  else
    qrlblNome.Caption := fBus(1,['Select Descricao from cadforne where codigo = 0'+qrConta.FieldByName('Codigo').asString],1);
}
  qrlblNome.Caption := qrConta.FieldByName('Descricao').asString;

  vmost:='OK';
  if Copy(QRLabel14.Caption,1,4)='    ' then begin
     if qrConta.FieldByName('Pago').Text='S' then begin
        if qrConta.FieldByName('Vencto').Value<vfiPos then
           vmost:='NAO'
        else begin
           if qrConta.FieldByName('DataPago').Value<=qrConta.FieldByName('Vencto').Value then
             vmost:='NAO';
        end;
     end;
  end;
  if vmost<>'OK' then DetailBand1.Height:=0
  else begin
    DetailBand1.Height:=16;
    vatr:= 0;
    if qrConta.FieldByName('ValorPago').asFloat=0 then begin
       QRDBText3.Height:=0; qrLabel5.Height:=0;
       qrLabel21.Height:=0; qrLabel23.Height:=0;
       vatr:=vfipos-qrconta.FieldByName('Vencto').Value;
    end else begin
       qrLabel5.Height:=15;
       qrLabel21.Height:=15; qrLabel23.Height:=15;
       qrLabel9.Caption:='';
       if qrconta.FieldByName('DataPago').Value > qrconta.FieldByName('Vencto').Value then
         vatr:= qrconta.FieldByName('DataPago').Value - qrconta.FieldByName('Vencto').Value;
    end;
    vjuro:=0;
    if qrConta.FieldByName('ValorPago').asFloat=0 then begin
      if vatr>0 then begin
        if vfiper<>0 then begin
          vmult:=vfimul*qrConta.FieldByName('Valor').asFloat/100;
          vjuro:=frJuCp(vfiper,vatr,0,qrConta.FieldByName('Valor').asFloat)+vmult;
        end;
      end;
    end else begin
      vjuro:=qrConta.FieldByName('Juro').asFloat;
    end;
    qrLabel20.Caption:=FloatToStrF(vjuro,ffNumber,14,2);
    qrLabel9.Caption:=FloatToStrF(vatr,ffNumber,6,0);
    qrLabel10.Caption:=FloatToStrF(qrConta.FieldByName('Valor').asFloat+
                       vjuro-qrConta.FieldByName('VlrDesc').asFloat,ffNumber,14,2);
    qrLabel5.Caption:=''; QRDBText3.Height:=0;
    if Copy(QRLabel14.Caption,1,4)='Data' then begin
       if qrConta.FieldByName('DataPago').asDateTime<vfiPos then begin
         qrLabel5.Caption:=FloatToStrF(qrConta.FieldByName('ValorPago').asFloat,ffNumber,14,2);
         QRDBText3.Height:=15;
      end;
    end;
    if DetailBand1.Height>0 then begin
      if qrConta.FieldByName('Parc').asInteger<100 then begin
        vtvlr:=vtvlr+qrConta.FieldByName('Valor').asFloat;
        vtjur:=vtjur+vjuro;
        vtdes:=vtdes+qrConta.FieldByName('VlrDesc').asFloat;
        vttot:=vttot+(qrConta.FieldByName('Valor').asFloat+
               vjuro-qrConta.FieldByName('VlrDesc').asFloat);
      end;
      vgvlr:=vgvlr+qrConta.FieldByName('Valor').asFloat;
      vgjur:=vgjur+vjuro;
      vgdes:=vgdes+qrConta.FieldByName('VlrDesc').asFloat;
      vgtot:=vgtot+(qrConta.FieldByName('Valor').asFloat+
             vjuro-qrConta.FieldByName('VlrDesc').asFloat);
//      if Copy(QRLabel14.Caption,1,4)='Data' then begin
//        if qrConta.FieldByName('DataPago').Value<vfiPos then begin
          vtpag:=vtpag+qrConta.FieldByName('ValorPago').asFloat;
          vgpag:=vgpag+qrConta.FieldByName('ValorPago').asFloat;
//        end;
//      end;
    end;
  end;
end;

procedure TqrFiFinan.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailBand1.Height>0 then ChildBand2.Height:=20;
  qrLabel6.Caption:=FloatToStrF(vgvlr,ffNumber,14,2);
  qrLabel12.Caption:=FloatToStrF(vgjur,ffNumber,14,2);
  qrLabel15.Caption:=FloatToStrF(vgdes,ffNumber,14,2);
  qrLabel24.Caption:=FloatToStrF(vgtot,ffNumber,14,2);
  qrLabel23.Caption:=FloatToStrF(vgpag,ffNumber,14,2);
end;

procedure TqrFiFinan.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrLabel4.Caption:=FloatToStrF(vtvlr,ffNumber,14,2);
  qrLabel11.Caption:=FloatToStrF(vtjur,ffNumber,14,2);
  qrLabel13.Caption:=FloatToStrF(vtdes,ffNumber,14,2);
  qrLabel22.Caption:=FloatToStrF(vttot,ffNumber,14,2);
  qrLabel21.Caption:=FloatToStrF(vtpag,ffNumber,14,2);
  ChildBand2.Height:=0;
  qrConta.Next;
  if vrec<>qrConta.FieldByName(vfilcam).value then begin
     if vtvlr>0 then ChildBand2.Height:=20;
     vrec:=qrConta.FieldByName(vfilcam).Value;
     vtvlr:=0;vtjur:=0;vtdes:=0;vttot:=0;vtpag:=0;
  end;
  if not qrConta.Eof then qrConta.Prior
  else ChildBand2.Height:=20;
end;

end.
