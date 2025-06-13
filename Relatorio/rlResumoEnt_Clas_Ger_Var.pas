unit rlResumoEnt_Clas_Ger_Var;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResumoEnt_Clas_Ger_Var = class(TQuickRep)
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    qrProdu: TQuery;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    qrEmpr: TQuery;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    qrEntra: TQuery;
    qrRoman: TQuery;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrResumoEnt_Clas_Ger_Var: TqrResumoEnt_Clas_Ger_Var;
  vrec:Integer;
  vqtE,vqtC,vtqtE,vtqtC:Double;
  vvar_gv, vdat_gv:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResumoEnt_Clas_Ger_Var.QuickRepPreview(Sender: TObject);
begin
  vtqtE := 0;
  vtqtC := 0;
  fPreview(Sender);
end;

procedure TqrResumoEnt_Clas_Ger_Var.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtqtE := 0;
  vtqtC := 0;
end;

procedure TqrResumoEnt_Clas_Ger_Var.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //total da entrada
  qrEntra.Close;
  qrEntra.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                          +'  and variecod = '+qrProdu.Fields[0].asString
                          +'  and '+vvar_gv
                          +'  and '+vdat_gv;
  qrEntra.Open;
  vqtE := qrEntra.Fields[0].asFloat;
  QRLabel1.Caption:=FormatFloat('#,0.###', vqtE);

  //total da classificãção
  qrRoman.Close;
  qrRoman.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                          +'  and variecod = '+qrProdu.Fields[0].asString
                          +'  and '+vvar_gv
                          +'  and '+vdat_gv;
  qrRoman.Open;
  vqtC := qrRoman.Fields[0].asFloat;
  QRLabel4.Caption:=FormatFloat('#,0.###', vqtC);

  QRLabel3.Caption:=FormatFloat('#,0.###', vqtE - vqtC);

//Totalizar
  vtqtE:=vtqtE+vqtE;
  vtqtC:=vtqtC+vqtC;
  QRLabel20.Caption:=FormatFloat('#,0.###', vtqtE);
  QRLabel21.Caption:=FormatFloat('#,0.###', vtqtC);
  QRLabel7.Caption :=FormatFloat('#,0.###', vtqtE - vtqtC);

  if (vqtE + vqtC) <> 0.00 then
    DetailBand1.Height:= 16
  else
    DetailBand1.Height:= 0;

end;

end.
