unit rlCadasCar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrCadasCar = class(TQuickRep)
    DetailBand1: TQRBand;
    qrMovim: TQuery;
    qrLin11: TQRLabel;
    qrLin21: TQRLabel;
    qrLin31: TQRLabel;
    PageHeaderBand1: TQRBand;
    qrLin12: TQRLabel;
    qrLin22: TQRLabel;
    qrLin32: TQRLabel;
    qrLin13: TQRLabel;
    qrLin23: TQRLabel;
    qrLin33: TQRLabel;
    qrLin14: TQRLabel;
    qrLin24: TQRLabel;
    qrLin34: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrCadasCar: TqrCadasCar;
  vmlin,vmcol:Integer;

implementation

{$R *.DFM}
uses Menu, Data, FiMalaDireta;

procedure TqrCadasCar.QuickRepPreview(Sender: TObject);
begin
  vmcol:=FFiMalaDireta.SE1.Value; vmlin:=FFiMalaDireta.SE2.Value;
  if vmlin=1 then PageHeaderBand1.Height:=0
  else PageHeaderBand1.Height:=(vmlin-1)*98;
  qrLin11.Caption:='';qrLin12.Caption:='';qrLin13.Caption:='';qrLin14.Caption:='';
  qrLin21.Caption:='';qrLin22.Caption:='';qrLin23.Caption:='';qrLin24.Caption:='';
  qrLin31.Caption:='';qrLin32.Caption:='';qrLin33.Caption:='';qrLin34.Caption:='';
  fPreview(Sender);
end;

procedure TqrCadasCar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vmcol:=FFiMalaDireta.SE1.Value; vmlin:=FFiMalaDireta.SE2.Value;
  if vmlin=1 then PageHeaderBand1.Height:=0
  else PageHeaderBand1.Height:=(vmlin-1)*98;
  qrLin11.Caption:='';qrLin12.Caption:='';qrLin13.Caption:='';qrLin14.Caption:='';
  qrLin21.Caption:='';qrLin22.Caption:='';qrLin23.Caption:='';qrLin24.Caption:='';
  qrLin31.Caption:='';qrLin32.Caption:='';qrLin33.Caption:='';qrLin34.Caption:='';
end;

procedure TqrCadasCar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vqr1,vqr2,vqr3,vqr4:TQRLabel; vcc:Integer;
begin
  vqr1:=qrLin11;vqr2:=qrLin12;vqr3:=qrLin13;vqr4:=qrLin14;
  for vcc:=vmcol to 3 do begin
     case vcc of
        1: begin vqr1:=qrLin11;vqr2:=qrLin12;vqr3:=qrLin13;vqr4:=qrLin14; end;
        2: begin vqr1:=qrLin21;vqr2:=qrLin22;vqr3:=qrLin23;vqr4:=qrLin24; end;
        3: begin vqr1:=qrLin31;vqr2:=qrLin32;vqr3:=qrLin33;vqr4:=qrLin34; end;
     end;
     vqr1.Caption:='';vqr2.Caption:='';vqr3.Caption:='';vqr4.Caption:='';
     if not qrMovim.Eof then begin
        vqr1.Caption:=Copy(UpperCase(qrMovim.FieldByName('Descricao').Text),1,40);
        vqr2.Caption:=Copy(UpperCase(qrMovim.FieldByName('Endereco').Text),1,40);
        vqr3.Caption:=Copy(UpperCase(qrMovim.FieldByName('Bairro').Text),1,40);
        vqr4.Caption:=Copy(UpperCase(qrMovim.FieldByName('Cep').Text+' - '+
                      Trim(qrMovim.FieldByName('CidadeDes').Text)+' - '+
                      qrMovim.FieldByName('Estado').Text),1,40);
     end;
     if vcc<3 then qrMovim.Next;
  end;
  vmcol:=1;
  vmlin:=vmlin+1;
  if vmlin>10 then begin
     vmlin:=1;
     PageHeaderBand1.Height:=0;
  end;
end;


end.
