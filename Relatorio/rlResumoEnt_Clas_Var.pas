unit rlResumoEnt_Clas_Var;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResumoEnt_Clas_Var = class(TQuickRep)
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
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    qrVarie: TQuery;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrResumoEnt_Clas_Var: TqrResumoEnt_Clas_Var;
  vrec:Integer;
  vqtE,vqtC,vtqtE,vtqtC,vgqtE,vgqtC:Double;
  vpro_cv, vdat_cv, vloc_cv:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResumoEnt_Clas_Var.QuickRepPreview(Sender: TObject);
begin
  vtqtE := 0;
  vtqtC := 0;
  vgqtE := 0;
  vgqtC := 0;
  fPreview(Sender);
end;

procedure TqrResumoEnt_Clas_Var.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtqtE := 0;
  vtqtC := 0;
end;

procedure TqrResumoEnt_Clas_Var.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVarie.Close;
  qrVarie.Sql.Clear;
  qrVarie.Sql.Add('SELECT CODIGO, descricao, SUM(vqtE) as vEntra, SUM(vqtC) as vClass, SUM(vqtE - vqtC) as vTotal');
  qrVarie.Sql.Add(' FROM (');
  qrVarie.Sql.Add('    SELECT DISTINCT CADF.CODIGO, CADF.descricao, SUM(MOVV.varieqtd) as vqtE, 0 as vqtC');
  qrVarie.Sql.Add('      FROM CADFORNE CADF');
  qrVarie.Sql.Add('     INNER JOIN ENTREVAR MOVV ON MOVV.VARIECOD = 0'+qrProdu.Fields[0].asString);
  qrVarie.Sql.Add('     INNER JOIN ENTRE MOVE ON MOVE.LANC = MOVV.LANC AND MOVE.PRODCOD = CADF.CODIGO AND '+vdat_cv+vloc_cv);
  qrVarie.Sql.Add('     WHERE '+vpro_cv);
  qrVarie.Sql.Add('     GROUP BY CADF.CODIGO, CADF.descricao');
  qrVarie.Sql.Add('    UNION');
  qrVarie.Sql.Add('    SELECT DISTINCT CADF.CODIGO, CADF.descricao, 0 as vqtE, SUM(MOVP.qtdebin) as vqtC');
  qrVarie.Sql.Add('      FROM CADFORNE CADF');
  qrVarie.Sql.Add('     INNER JOIN ROMAN MOVR ON MOVR.VARIECOD = 0'+qrProdu.Fields[0].asString +' AND '+vdat_cv+vloc_cv);
  qrVarie.Sql.Add('     INNER JOIN ROMANPRO MOVP ON MOVP.LANC = MOVR.LANC AND MOVP.PRODCOD = CADF.CODIGO');
  qrVarie.Sql.Add('     WHERE '+vpro_cv);
  qrVarie.Sql.Add('     GROUP BY CADF.CODIGO, CADF.descricao');
  qrVarie.Sql.Add('    )');
  qrVarie.Sql.Add('GROUP BY CODIGO, descricao');
  qrVarie.Open;

  //total da entrada
{  qrEntra.Close;
  qrEntra.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                          +'  and vv.variecod ='+qrProdu.Fields[0].asString
                          +'  and '+vdat_cv;
  qrEntra.Open;
  vqtE := qrEntra.Fields[0].asFloat;

  //total da classificãção
  qrRoman.Close;
  qrRoman.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                          +'  and re.variecod ='+qrProdu.Fields[0].asString
                          +'  and '+vdat_cv;
  qrRoman.Open;
  vqtC := qrRoman.Fields[0].asFloat;
  if (vqtE + vqtC) <> 0.00 then
    DetailBand1.Height :=40
  else
    DetailBand1.Height :=0;
}
  //Filtrar
  ChildBand2.Height:=0;
  QRSubDetail1.Height:= 0;
  vrec  := 0;
  vtqtE := 0;
  vtqtC := 0;

end;

procedure TqrResumoEnt_Clas_Var.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //total da entrada
  vqtE := qrVarie.Fields[2].asFloat;
  QRLabel1.Caption:=FormatFloat('#,0.###', vqtE);

  //total da classificãção
  vqtC := qrVarie.Fields[3].asFloat;
  QRLabel4.Caption:=FormatFloat('#,0.###', vqtC);

  QRLabel3.Caption:=FormatFloat('#,0.###', vqtE - vqtC);

//Totalizar

  vtqtE:=vtqtE+vqtE;
  vtqtC:=vtqtC+vqtC;
  QRLabel22.Caption:=FormatFloat('#,0.###', vtqtE);
  QRLabel23.Caption:=FormatFloat('#,0.###', vtqtC);
  QRLabel6.Caption :=FormatFloat('#,0.###', vtqtE - vtqtC);

  vgqtE:=vgqtE+vqtE;
  vgqtC:=vgqtC+vqtC;
  QRLabel20.Caption:=FormatFloat('#,0.###', vgqtE);
  QRLabel21.Caption:=FormatFloat('#,0.###', vgqtC);
  QRLabel7.Caption :=FormatFloat('#,0.###', vgqtE - vgqtC);

  if (vqtE + vqtC) <> 0.00 then
    QRSubDetail1.Height:= 16
  else
    QRSubDetail1.Height:= 0;

  vrec:=vrec+1;
  if vrec>=qrVarie.RecordCount then
  begin
    if (DetailBand1.Height <> 0) then
      ChildBand2.Height:=20;
  end;
end;

end.
