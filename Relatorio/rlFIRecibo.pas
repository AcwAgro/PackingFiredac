unit rlFIRecibo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrFiRecibo = class(TQuickRep)
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText21: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRRichText1: TQRRichText;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    ChildBand1: TQRChildBand;
    SummaryBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRImage2: TQRImage;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRRichText2: TQRRichText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText25: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    qrRecibo: TQuery;
    QRDBText17: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  qrFiRecibo: TqrFiRecibo;

implementation

{$R *.DFM}

uses Menu,Data,Rotina;

procedure TqrFiRecibo.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrFiRecibo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      QRRichText1.Lines.Clear;
      QRRichText1.Lines.Add('( '+frExte(qrRecibo.FieldByName('Valor').Value)+' )'+
                             frPree('.x.',20,' x.',1));
      if qrRecibo.FieldByName('Tipo').Text<>'1' then begin
         QRLabel4.Caption :='Pagamento a';
         QRLabel15.Caption :='    '+qrRecibo.FieldByName('Terceiro').Text+'    ';
      end
      else begin
         QRLabel4.Caption :='Recebi da(e)';
         QRLabel15.Caption :='    '+dm.TEmpresa.FieldByName('Descricao').Text+'    ';
      end;
end;

procedure TqrFiRecibo.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      QRRichText2.Lines.Clear;
      QRRichText2.Lines.Add('( '+frExte(qrRecibo.FieldByName('Valor').Value)+' )'+
                             frPree('.x.',20,' x.',1));
      if qrRecibo.FieldByName('Tipo').Text<>'1' then begin
         QRLabel25.Caption :='Pagamento a';
         QRLabel33.Caption :='    '+qrRecibo.FieldByName('Terceiro').Text+'    ';
      end
      else begin
         QRLabel25.Caption :='Recebi da(e)';
         QRLabel33.Caption :='    '+dm.TEmpresa.FieldByName('Descricao').Text+'    ';
      end;
end;


end.
