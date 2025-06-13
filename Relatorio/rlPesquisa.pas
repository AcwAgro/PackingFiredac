unit rlPesquisa;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery, ADODB;

type
  TqrRelPesquisa = class(TQuickRep)
    PageHeader1: TQRBand;
    QRDBText1: TQRDBText;
    qrLData: TQRLabel;
    qrTitulo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    qrL1: TQRLabel;
    qrL2: TQRLabel;
    qrL3: TQRLabel;
    qrL4: TQRLabel;
    qrDB1: TQRDBText;
    qrDB2: TQRDBText;
    qrDB3: TQRDBText;
    qrDb4: TQRDBText;
    qrL5: TQRLabel;
    qrDb5: TQRDBText;
    qrMovim: TADOQuery;
    procedure QuickRepPreview(Sender: TObject);
    procedure PageHeader1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrRelPesquisa: TqrRelPesquisa;

implementation

{$R *.DFM}

uses Menu, Data, Pesq;

procedure TqrRelPesquisa.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var vcol:Integer;
begin
    qrTitulo.Caption:='Listagem '+FPesq.Caption;
    qrL1.Caption:=''; qrL2.Caption:=''; qrL3.Caption:=''; qrL4.Caption:='';qrL5.Caption:='';
    qrDB1.Height:=0; qrDB2.Height:=0; qrDB3.Height:=0; qrDB4.Height:=0; qrDB5.Height:=0;
    qrDB1.Width:=150;qrDB2.Width:=150;qrDB3.Width:=150;qrDB4.Width:=150;qrDB5.Width:=150;
{    if xColuna-1<3 then qrDB2.Width:=550;
    for vCol:=0 to xColuna-1 do begin
      case vCol of
        0: begin
             qrL1.Caption:=xTitulo[vCol];
             qrDB1.DataField:=FPesq.DBGrid1.Columns[vCol].FieldName;
             qrDB1.Height:=15;
             if (qrMovim.Fields[vcol].DataSize*9)<150 then qrDB1.Width:=qrMovim.Fields[vcol].DataSize*9
           end;
        1: begin
             qrL2.Caption:=xTitulo[vCol];
             qrDB2.DataField:=FPesq.DBGrid1.Columns[vCol].FieldName;
             qrDB2.Height:=15;
             if (qrMovim.Fields[vcol].DataSize*9)<150 then qrDB2.Width:=qrMovim.Fields[vcol].DataSize*9
           end;
        2: begin
             qrL3.Caption:=xTitulo[vCol];
             qrDB3.DataField:=FPesq.DBGrid1.Columns[vCol].FieldName;
             qrDB3.Height:=15;
             if (qrMovim.Fields[vcol].DataSize*9)<150 then qrDB3.Width:=qrMovim.Fields[vcol].DataSize*9
           end;
        3: begin
             qrL4.Caption:=xTitulo[vCol];
             qrDB4.DataField:=FPesq.DBGrid1.Columns[vCol].FieldName;
             qrDB4.Height:=15;
             if (qrMovim.Fields[vcol].DataSize*9)<150 then qrDB4.Width:=qrMovim.Fields[vcol].DataSize*9
           end;
        4: begin
             qrL5.Caption:=xTitulo[vCol];
             qrDB5.DataField:=FPesq.DBGrid1.Columns[vCol].FieldName;
             qrDB5.Height:=15;
             if (qrMovim.Fields[vcol].DataSize*9)<150 then qrDB5.Width:=qrMovim.Fields[vcol].DataSize*9
           end;
      end;
    end;}
end;

procedure TqrRelPesquisa.QuickRepPreview(Sender: TObject);
begin
  fPreview(Sender);
end;

procedure TqrRelPesquisa.PageHeader1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLData.Caption:='Impresso em '+DateToStr(Now)+
                   '  Página '+IntToStr(PageNumber)+'  ';
end;

end.
