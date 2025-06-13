unit rlResumoEnt_Clas_Grupo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TqrResumoEnt_Clas_Grupo = class(TQuickRep)
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
    qrEmpr: TQuery;
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
    qrEntra: TQuery;
    qrRoman: TQuery;
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
  qrResumoEnt_Clas_Grupo: TqrResumoEnt_Clas_Grupo;
  vrec:Integer;
  vqtE,vqtC,vtqtE,vtqtC,vgqtE,vgqtC:Double;
  vvar_g, vdat_g, vloc_g:String;

implementation

{$R *.DFM}
uses Data,Menu;

procedure TqrResumoEnt_Clas_Grupo.QuickRepPreview(Sender: TObject);
begin
  vtqtE := 0;
  vtqtC := 0;
  vgqtE := 0;
  vgqtC := 0;
  fPreview(Sender);
end;

procedure TqrResumoEnt_Clas_Grupo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  vtqtE := 0;
  vtqtC := 0;
end;

procedure TqrResumoEnt_Clas_Grupo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrVarie.Close;
  qrVarie.Sql.Strings[2]:= 'Where '+vvar_g;
  qrVarie.Open;

  //total da entrada
  qrEntra.Close;
  qrEntra.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                          +'  and re.prodcod = '+qrProdu.Fields[0].asString
                          +'  and '+vdat_g+vloc_g;
  qrEntra.Open;
  vqtE := qrEntra.Fields[0].asFloat;

  //total da classificãção
  qrRoman.Close;
  qrRoman.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                          +'  and vv.prodcod = '+qrProdu.Fields[0].asString
                          +'  and '+vdat_g+vloc_g;
  qrRoman.Open;
  vqtC := qrRoman.Fields[0].asFloat;

  if (vqtE + vqtC) <> 0.00 then
    DetailBand1.Height :=40
  else
    DetailBand1.Height :=0;

  //Filtrar
  ChildBand2.Height:=0;
  QRSubDetail1.Height:= 0;
  vrec  := 0;
  vtqtE := 0;
  vtqtC := 0;
end;

procedure TqrResumoEnt_Clas_Grupo.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Abre cadastrado de fornecedor daquele grupo
  vqtE := 0;
  vqtC := 0;
  fSql(1,1,['Select codigo from cadforne'+
            ' where grupocod = '+qrProdu.Fields[0].asString+
            ' order by codigo'],1);
  while not dm.qrSql1.Eof do
  begin
    //total da entrada
    qrEntra.Close;
    qrEntra.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                            +'  and re.prodcod = '+dm.qrSql1.Fields[0].asString
                            +'  and vv.variecod ='+qrvarie.Fields[0].asString
                            +'  and '+vdat_g+vloc_g;
    qrEntra.Open;
    vqtE := vqtE + qrEntra.Fields[0].asFloat;

    //total da classificãção
    qrRoman.Close;
    qrRoman.Sql.Strings[2]:= 'Where (re.lanc = vv.lanc) '
                            +'  and vv.prodcod = '+dm.qrSql1.Fields[0].asString
                            +'  and re.variecod ='+qrvarie.Fields[0].asString
                            +'  and '+vdat_g+vloc_g;
    qrRoman.Open;
    vqtC := vqtC + qrRoman.Fields[0].asFloat;

    dm.qrSql1.Next;
  end;
  dm.qrSql1.Close;

  QRLabel1.Caption:=FormatFloat('#,0.###', vqtE);
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
