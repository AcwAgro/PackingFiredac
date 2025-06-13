unit rlResumoVariedade;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  QRExport;

type
  TqrResumoVariedade = class(TQuickRep)
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    PageHeaderBand1: TQRBand;
    qrVenda: TQuery;
    qrProdu: TQuery;
    DetailBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel55: TQRLabel;
    procedure QuickRepPreview(Sender: TObject);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrResumoVariedade: TqrResumoVariedade;

  vrvarTodos, vrvarParam: String;

implementation

{$R *.DFM}
uses Data,Menu,Rotina,dialogs;

procedure TqrResumoVariedade.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrResumoVariedade.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVenda.Close;
  if vrvarTodos='N' then begin
     qrLabel22.Caption:=qrProdu.FieldByName('Codigo').Text+' - '+qrProdu.FieldByName('Descricao').Text;
     qrVenda.Sql.Strings[3]:= vrvarParam+' and pp.Codigo='+qrProdu.FieldByName('Codigo').Text;
  end else begin
     qrLabel22.Caption:='Todos os Clientes/Produtores.';
     qrVenda.Sql.Strings[3]:= vrvarParam+' and pp.Codigo > 0';
  end;
  qrVenda.Open;

end;

procedure TqrResumoVariedade.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRSubDetail2.Height:=24; //ChildBand4.Height:=0;
  if QRSubDetail2.Color=$00E8E8E8 then QRSubDetail2.Color:=clWhite
  else QRSubDetail2.Color:=$00E8E8E8;

  qrLabel61.Caption := qrVenda.FieldByName('Codigo').Text+' - '+qrVenda.FieldByName('Descricao').Text;
  qrLabel60.Caption := FormatFloat('0.###', qrVenda.FieldByName('QT').asFloat);
  qrLabel58.Caption := FormatFloat('#,0.###', qrVenda.FieldByName('GE').asFloat);
  qrLabel56.Caption := FormatFloat('#,0.00', qrVenda.FieldByName('VL').asFloat);

  if (qrVenda.FieldByName('GE').asFloat <> 0) then
    qrLabel55.Caption := FormatFloat('#,0.00', qrVenda.FieldByName('VL').asFloat / qrVenda.FieldByName('GE').asFloat)
  else
    qrLabel55.Caption := FormatFloat('#,0.00', 0);

  //qrVenda.Next;
 //if qrVenda.Eof then
  //begin
    //ChildBand4.Height:=45;
  //end
 // else qrVenda.Prior;
end;

end.
