unit rlRelAna;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrRelAna = class(TQuickRep)
    qrAna: TQuery;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrRelAna: TqrRelAna;
  vreca,vvari:Integer;
  vAna1,vAna2,vAna3,vAna4:Double;

implementation

uses Menu,Data;
{$R *.DFM}

procedure TqrRelAna.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRelAna.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vAna1:=0; vAna2:=0; vAna3:=0; vAna4:=0;
  vreca:=qrAna.Fields[0].Value;
  vvari:=qrAna.Fields[1].Value;
end;

procedure TqrRelAna.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.TCadProdutor.Locate('Codigo',qrAna.FieldByName('ForCod').Value,[]);
  qrLabel15.Caption:=dm.TCadProdutor.FieldByName('Descricao').Text;
  dm.TCadVarie.Locate('Codigo',qrAna.FieldByName('VarCod').Value,[]);
  qrLabel4.Caption:=dm.TCadVarie.FieldByName('Descricao').Text;
  vAna1:=vAna1+qrAna.FieldByName('vami').asFloat;
  vAna2:=vAna2+qrAna.FieldByName('vsst').asFloat;
  vAna3:=vAna3+qrAna.FieldByName('vfir').asFloat;
  vAna4:=vAna4+qrAna.FieldByName('vAci').asFloat;
  QRLabel18.Caption:=FloatToStrf(vAna1/5,ffNumber,6,1);
  QRLabel19.Caption:=FloatToStrf(vAna2/5,ffNumber,6,1);
  QRLabel20.Caption:=FloatToStrf(vAna3/5,ffNumber,6,1);
  QRLabel7.Caption:=FloatToStrf(vAna4,ffNumber,6,1);
end;

procedure TqrRelAna.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrAna.Next; ChildBand1.Height:=0;
  if (vreca<>qrAna.Fields[0].Value) then begin
    vreca:=qrAna.Fields[0].Value;
    vAna1:=0; vAna2:=0; vAna3:=0;
    ChildBand1.Height:=20;
  end;
  if (vvari<>qrAna.Fields[1].Value) then begin
    vvari:=qrAna.Fields[1].Value;
    vAna1:=0; vAna2:=0; vAna3:=0; vAna4:=0;
    ChildBand1.Height:=20;
  end;
  if not qrAna.Eof then qrAna.Prior
  else ChildBand1.Height:=20;
end;


end.
