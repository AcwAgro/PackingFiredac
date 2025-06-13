unit rlNota;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport, qrPrev;

type
  TqrNota = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand2: TQRBand;
    QRDBText38: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    rbDetail: TQRBand;
    QRDBText53: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRRichText1: TQRRichText;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    qrEstoque: TQuery;
    QRDBText4: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText28: TQRDBText;
    SummaryBand1: TQRBand;
    QRRichText2: TQRRichText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr1: TQRExpr;
    qrEstoqCom: TQuery;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    procedure rbDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
  public
  end;

var
  qrNota: TqrNota;
  vIsen:Real;
  vCC,vPag:Integer;

implementation

uses Menu,Rotina,Data;
{$R *.DFM}

procedure TqrNota.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrNota.rbDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if vCC=0 then vpag:=0;
end;

procedure TqrNota.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vCC:=0;
end;

procedure TqrNota.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vCC:=vCC+1;
  QRSubDetail2.Height:=14; qrLabel16.Caption:='';
  if dm.qrSql3.FieldByName('ITEM').Text='M' then begin
    if fTra(1,['Select Classe, Onu From CadPrCom Where Codigo='+qrEstoqCom.FieldByName('Codigo').Text],1) then begin
      QRSubDetail2.Height:=25;
      qrLabel16.Caption:='Classe Toxicológica '+dm.qrSqlTra.FieldByName('Classe').Text+
                         ' ONU '+dm.qrSqlTra.FieldByName('Onu').Text;
    end;
  end;
end;

procedure TqrNota.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLabel10.Caption := '##############'; qrLabel3.Caption := '##############';
  qrLabel11.Caption := '##############'; qrLabel12.Caption := '##############';
  qrLabel14.Caption := '##############'; qrLabel15.Caption := '##############';
  QRDBText9.Height:=0; QRDBText10.Height:=0;
  QRDBText23.Height:=0; QRDBText38.Height:=0; QRDBText39.Height:=0;
  QRDBText40.Height:=0; QRDBText41.Height:=0; QRDBText44.Height:=0;
  QRRichText2.Lines.Clear;
  if vcc=qrEstoqCom.Recordcount then begin
     if PageNumber = vpag then begin
        qrLabel10.Caption := FloatToStrF(qrEstoque.FieldByName('VlrBase').asFloat,ffCurrency,10,2);
        qrLabel11.Caption := FloatToStrF(qrEstoque.FieldByName('VlrIcms').asFloat,ffCurrency,10,2);
        qrLabel14.Caption := FloatToStrF(0,ffCurrency,10,2);
        qrLabel12.Caption := FloatToStrF(qrEstoque.FieldByName('VlrProduto').asFloat,ffCurrency,10,2);
        qrLabel15.Caption := FloatToStrF(qrEstoque.FieldByName('VlrNota').asFloat,ffCurrency,10,2);
        qrLabel3.Caption := FloatToStrF(qrEstoque.FieldByName('VlrSeguro').asFloat,ffCurrency,10,2);
        QRDBText9.Height:=17; QRDBText10.Height:=17;
        QRDBText23.Height:=17; QRDBText38.Height:=17; QRDBText39.Height:=17;
        QRDBText40.Height:=17; QRDBText41.Height:=17; QRDBText44.Height:=17;
        QRRichText2.Lines.Add('NSU '+frPree(qrEstoque.FieldByName('NSUNUM').AsInteger,9,'0',0)+
                             ' Data/Hora: '+qrEstoque.FieldByName('NSUDAT').Text+'-'+qrEstoque.FieldByName('NSUHOR').Text+
                             ' Nota '+frPree(qrEstoque.FieldByName('NOTA').AsInteger,6,'0',0));
        QRRichText2.Lines.Add(qrEstoque.FieldByName('Obs2').Text+
                              qrEstoque.FieldByName('Obs3').Text+
                              qrEstoque.FieldByName('Obs4').Text+
                              qrEstoque.FieldByName('Obs5').Text+
                              qrEstoque.FieldByName('Obs6').Text);
     end;
  end;
end;

procedure TqrNota.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  vpag:=PageNumber;
end;

end.
