unit frmRelGraFinan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Spin, DB, DBTables,
  RzPanel, ppEndUsr, ppModule, raCodMod,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppChrt, ppChrtDP, ppCtrls, ppPrnabl, ppVar, ppParameter, ppStrtch,
  ppSubRpt, DBClient, Provider, ppDesignLayer;

type
  TFfrmRelGraFinan = class(TForm)
    TPesq: TTimer;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RB1: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP1: TSpeedButton;
    ED1: TMaskEdit;
    RB2: TRadioButton;
    GP4: TGroupBox;
    Label4: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    GP9: TGroupBox;
    gbb1: TRadioButton;
    gbb2: TRadioButton;
    qrResBanco: TQuery;
    dsResBanco: TDataSource;
    ppRelResBanco: TppReport;
    ppDesigner1: TppDesigner;
    ppEmpresa: TppBDEPipeline;
    dsEmpresa: TDataSource;
    ppPipeline: TppBDEPipeline;
    ppRelatorio: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    raCodeModule2: TraCodeModule;
    ppResBanco: TppBDEPipeline;
    DataSource1: TDataSource;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDPTeeChart1: TppDPTeeChart;
    raCodeModule1: TraCodeModule;
    GP5: TGroupBox;
    Label5: TLabel;
    ED5: TDateTimePicker;
    gbb3: TRadioButton;
    qrResBancoMensal: TQuery;
    dsResBancoMensal: TDataSource;
    ppResBancoMensal: TppBDEPipeline;
    ppRelResBancoMensal: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppDPTeeChart2: TppDPTeeChart;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    qrResBancoPlano: TQuery;
    dsResBancoPlano: TDataSource;
    ppResBancoPlano: TppBDEPipeline;
    ppRelBancoPlano: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDPTeeChart3: TppDPTeeChart;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppFooterBand4: TppFooterBand;
    ppParameterList3: TppParameterList;
    qrResBancoPlanoTotal: TQuery;
    dsResBancoPlanoTotal: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    qrResBancoPlanobancocod: TIntegerField;
    qrResBancoPlanoBancoDes: TStringField;
    qrResBancoPlanogruporeduz: TIntegerField;
    qrResBancoPlanoGrupoDes: TStringField;
    qrResBancoPlanovalor: TFloatField;
    ppResBancoPlanoTotal: TppDBPipeline;
    qrResBancoPlanoTotalPlanoDes: TStringField;
    qrResBancoPlanoTotalvalor: TFloatField;
    ppDBText6: TppDBText;
    qrResBancoPlanoTotalreduz: TIntegerField;
    cdsResBancoPlanoTotal: TClientDataSet;
    dspResBancoPlanoTotal: TDataSetProvider;
    cdsResBancoPlanoTotalreduz: TIntegerField;
    cdsResBancoPlanoTotalPlanoDes: TStringField;
    cdsResBancoPlanoTotalvalor: TFloatField;
    cdsResBancoPlanoTotalzSeq: TIntegerField;
    cdsResBancoMensal: TClientDataSet;
    dspResBancoMensal: TDataSetProvider;
    cdsResBancoMensalmid: TIntegerField;
    cdsResBancoMensalmes: TStringField;
    cdsResBancoMensalvalor: TFloatField;
    cdsResBancoMensalzseq: TIntegerField;
    dspResBanco: TDataSetProvider;
    cdsResBanco: TClientDataSet;
    cdsResBancobancocod: TIntegerField;
    cdsResBancodescricao: TStringField;
    cdsResBancovalor: TFloatField;
    cdsResBancozseq: TIntegerField;
    qrResBancoPlanoMensal: TQuery;
    dspResBancoPlanoMensal: TDataSetProvider;
    cdsResBancoPlanoMensal: TClientDataSet;
    dsResBancoPlanoMensal: TDataSource;
    cdsResBancoPlanoMensalmid: TIntegerField;
    cdsResBancoPlanoMensalmes: TStringField;
    cdsResBancoPlanoMensalvalor: TFloatField;
    ppResBancoPlanoMensal: TppBDEPipeline;
    ppRelResBancoPlanoMensal: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDPTeeChart4: TppDPTeeChart;
    ppLine3: TppLine;
    ppFooterBand5: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText8: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText9: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppParameterList4: TppParameterList;
    cdsResBancoPlanoMensalzseq: TIntegerField;
    RadioButton1: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    rzpUtilitario: TRzPanel;
    sb6: TSpeedButton;
    sb7: TSpeedButton;
    RzPanel4: TRzPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure gbb1Click(Sender: TObject);
    procedure gbb1Exit(Sender: TObject);
    procedure ppDPTeeChart2Print(Sender: TObject);
    procedure ppDPTeeChart3Print(Sender: TObject);
    procedure cdsResBancoPlanoTotalCalcFields(DataSet: TDataSet);
    procedure cdsResBancoMensalCalcFields(DataSet: TDataSet);
    procedure cdsResBancoCalcFields(DataSet: TDataSet);
    procedure ppDPTeeChart4Print(Sender: TObject);
    procedure cdsResBancoPlanoMensalCalcFields(DataSet: TDataSet);
    procedure ED5Change(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     vDat, vCod, vAno:String;
     vseq: Integer;

    { Private declarations }

  public
    { Public declarations }
  end;

var
  FfrmRelGraFinan: TFfrmRelGraFinan;

implementation

uses Menu, Data, Rotina, Pesq, rlGrafVenda;

{$R *.DFM}

procedure TFfrmRelGraFinan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelGraFinan);
end;

procedure TFfrmRelGraFinan.FormCreate(Sender: TObject);
begin

  Width := 650;
  ED5.Date  := Date;
  ED4.Date  := StrToDate('01/01/'+FormatDateTime('yyyy', Date));
  ED44.Date := frUltimoDia(Date);

end;

procedure TFfrmRelGraFinan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelGraFinan.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelGraFinan.gbb1Click(Sender: TObject);
begin
  ED1.SetFocus;
end;

procedure TFfrmRelGraFinan.gbb1Exit(Sender: TObject);
begin
  GP5.Visible := (gbb1.Checked or gbb3.Checked);
  GP4.Visible := not GP5.Visible;
end;

//Pesquisa
procedure TFfrmRelGraFinan.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     0: fPqBanco;
     1: fPqBanco;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelGraFinan.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if xpqpesq = 0 then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
  end;
end;

procedure TFfrmRelGraFinan.SB6Click(Sender: TObject);
begin
  vDat:= '(cxb.Vencto >='+frInvD(ED4.Date)+' and cxb.Vencto <= '+frInvD(ED44.Date)+')';
  if (StrToIntDef(Trim(ed1.Text),0) <> 0) then
    vCod := ' and cxb.BancoCod = 0'+Trim(ed1.Text)
  else
    vCod := '1=1';

  //Bancos
  if (RB1.Checked) then
  begin
    cdsResBanco.Close;
    qrResBanco.Close;
    qrResBanco.Sql.Clear;
    qrResBanco.Sql.Add('select cxb.bancocod, cb.descricao, sum(ccur(cxb.valorreal)) as valor');
    qrResBanco.Sql.Add('  from cxbanco cxb');
    qrResBanco.Sql.Add(' inner join cadbanco cb on cb.codigo = cxb.bancocod');
    qrResBanco.Sql.Add(' where '+vcod);
    if gbb1.Checked then
    begin
      ppLabel1.Text := 'Gráfico conta financeira vencto. posição '+DateToStr(ED5.Date);
      qrResBanco.Sql.Add('   and cxb.Vencto < '+frInvD(ED5.Date+1));
    end
    else if gbb2.Checked then
    begin
      ppLabel1.Text := 'Gráfico conta financeira vencto. no período '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date);
      qrResBanco.Sql.Add('   and '+vdat);
    end
    else if gbb3.Checked then
    begin
      ppLabel2.Text := 'Gráfico conta financeira vencto. no ano '+Copy(DateToStr(ED5.Date),7,4);
      qrResBanco.Sql.Add('   and Year(cxb.Vencto) = '+Copy(DateToStr(ED5.Date),7,4));
    end;
    qrResBanco.Sql.Add(' group by cxb.bancocod, cb.descricao');
    qrResBanco.Sql.Add(' Order by cxb.bancocod');
    qrResBanco.Filtered := False;
    qrResBanco.Filter := 'valor <> 0';
    qrResBanco.Filtered := True;
    cdsResBanco.Open;

    if gbb3.Checked then
    begin
      cdsResBancoMensal.Close;
      qrResBancoMensal.Close;
      qrResBancoMensal.ParamByName('pAno').asString := Copy(DateToStr(ED5.Date),7,4);
      qrResBancoMensal.ParamByName('pCodigo').asString := '-1';
      cdsResBancoMensal.Open;
      ppRelResBancoMensal.DeviceType:='Screen';
      ppRelResBancoMensal.Print;
    end
    else begin
      ppRelResBanco.DeviceType:='Screen';
      ppRelResBanco.Print;
    end;

  end;

  //Bancos - Plano de contas
  if (RB2.Checked) then
  begin
    qrResBancoPlano.Close;
    qrResBancoPlano.Sql.Clear;
    qrResBancoPlano.Sql.Add('select cxb.bancocod, cb.descricao as BancoDes, cp.gruporeduz, gr.descricao as GrupoDes, iif(sum(ccur(cxb.valorreal)) < 0, sum(ccur(cxb.valorreal)) *-1, sum(ccur(cxb.valorreal))) as valor');
    qrResBancoPlano.Sql.Add('from cxbanco cxb, cadbanco cb, cadplano cp, cadplano gr');
    qrResBancoPlano.Sql.Add('where cb.codigo = cxb.bancocod');
    qrResBancoPlano.Sql.Add('  and cp.reduz  = cxb.reduz');
    qrResBancoPlano.Sql.Add('  and gr.reduz = cp.gruporeduz');
    if (vCod <> '1=1') then
      qrResBancoPlano.Sql.Add(vcod);

    if gbb1.Checked then
    begin
      ppLabel3.Text := 'Gráfico Cta.F./Plano vencto posição '+DateToStr(ED5.Date);
      qrResBancoPlano.Sql.Add('   and cxb.Vencto < '+frInvD(ED5.Date+1));
    end
    else if gbb2.Checked then
    begin
      ppLabel3.Text := 'Gráfico Cta.F./Plano vencto no período '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date);
      qrResBancoPlano.Sql.Add('   and '+vdat);
    end
    else if gbb3.Checked then
    begin
      ppLabel4.Text := 'Gráfico Cta.F./Plano vencto no ano '+Copy(DateToStr(ED5.Date),7,4);
      qrResBanco.Sql.Add('   and Year(cxb.Vencto) = '+Copy(DateToStr(ED5.Date),7,4));
    end;
    qrResBancoPlano.Sql.Add('group by cxb.bancocod, cb.descricao, cp.gruporeduz, gr.descricao');
    qrResBancoPlano.Sql.Add('Order by cxb.bancocod, cp.gruporeduz');
    qrResBancoPlano.Filtered := False;
    qrResBancoPlano.Filter := 'valor <> 0';
    qrResBancoPlano.Filtered := True;
    qrResBancoPlano.Open;

    if gbb1.Checked or gbb2.Checked then
    begin
      ppRelBancoPlano.DeviceType:='Screen';
      ppRelBancoPlano.Print;
    end
    else begin
      ppRelResBancoPlanoMensal.DeviceType:='Screen';
      ppRelResBancoPlanoMensal.Print;
    end;

  end;
end;

procedure TFfrmRelGraFinan.ppDPTeeChart2Print(Sender: TObject);
begin

  qrResBancoMensal.Close;
  qrResBancoMensal.ParamByName('pAno').asString := Copy(DateToStr(ED44.Date),7,4);
  qrResBancoMensal.ParamByName('pCodigo').asString := cdsResBanco.FieldByName('BancoCod').asString;
  qrResBancoMensal.Open;

end;

procedure TFfrmRelGraFinan.ppDPTeeChart3Print(Sender: TObject);
begin

  vseq := 0;

  cdsResBancoPlanoTotal.Close;
  qrResBancoPlanoTotal.Close;
  qrResBancoPlanoTotal.Sql.Clear;
  if gbb1.Checked then
    qrResBancoPlanoTotal.Sql.Add('select top 15 ')
  else
    qrResBancoPlanoTotal.Sql.Add('select top 30 ');

  qrResBancoPlanoTotal.Sql.Add('  cp.reduz, cp.descricao as PlanoDes, iif(sum(ccur(cxb.valorreal)) < 0, sum(ccur(cxb.valorreal)) *-1, sum(ccur(cxb.valorreal))) as valor');
  qrResBancoPlanoTotal.Sql.Add('from cxbanco cxb, cadplano cp');
  qrResBancoPlanoTotal.Sql.Add('where cxb.reduz = cp.reduz');
  qrResBancoPlanoTotal.Sql.Add('  and cxb.bancocod  = 0'+qrResBancoPlano.FieldByName('BancoCod').asString);
  qrResBancoPlanoTotal.Sql.Add('  and cp.gruporeduz = 0'+qrResBancoPlano.FieldByName('gruporeduz').asString);

  if gbb1.Checked then
    qrResBancoPlanoTotal.Sql.Add('   and cxb.Vencto < '+frInvD(ED5.Date+1))
  else if gbb2.Checked then
    qrResBancoPlanoTotal.Sql.Add('   and '+vdat)
  else if gbb3.Checked then
    qrResBancoPlanoTotal.Sql.Add('   and Year(cxb.Vencto) = '+Copy(DateToStr(ED5.Date),7,4));

  qrResBancoPlanoTotal.Sql.Add('group by cp.reduz, cp.descricao');
  qrResBancoPlanoTotal.Sql.Add('Order by cp.reduz');
  //qrResBancoPlanoTotal.Open;
  cdsResBancoPlanoTotal.Filtered := False;
  cdsResBancoPlanoTotal.Filter := 'valor <> 0';
  cdsResBancoPlanoTotal.Filtered := True;
  cdsResBancoPlanoTotal.Open;

end;

procedure TFfrmRelGraFinan.ppDPTeeChart4Print(Sender: TObject);
begin

  vseq := 0;

  cdsResBancoPlanoMensal.Close;
  qrResBancoPlanoMensal.Close;
  qrResBancoPlanoMensal.ParamByName('pAno').asString    := Copy(DateToStr(ED44.Date),7,4);
  qrResBancoPlanoMensal.ParamByName('pCodigo').asString := qrResBancoPlano.FieldByName('BancoCod').asString;
  qrResBancoPlanoMensal.ParamByName('pReduz').asString  := qrResBancoPlano.FieldByName('gruporeduz').asString;
  cdsResBancoPlanoMensal.Open;

end;

procedure TFfrmRelGraFinan.cdsResBancoCalcFields(DataSet: TDataSet);
begin

  inc(vseq);
  cdsResBancozseq.asInteger := vseq;

end;

procedure TFfrmRelGraFinan.cdsResBancoMensalCalcFields(DataSet: TDataSet);
begin

  inc(vseq);
  cdsResBancoMensalzseq.asInteger := vseq;

end;

procedure TFfrmRelGraFinan.cdsResBancoPlanoMensalCalcFields(DataSet: TDataSet);
begin

  inc(vseq);
  cdsResBancoPlanoMensalzseq.asInteger := vseq;
  if cdsResBancoPlanoMensalvalor.asFloat < 0 then
    cdsResBancoPlanoMensalvalor.asFloat := cdsResBancoPlanoMensalvalor.asFloat * -1;  

end;

procedure TFfrmRelGraFinan.cdsResBancoPlanoTotalCalcFields(DataSet: TDataSet);
begin

  inc(vseq);
  cdsResBancoPlanoTotalzseq.asInteger := vseq;

end;

procedure TFfrmRelGraFinan.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelGraFinan.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelGraFinan.ED5Change(Sender: TObject);
begin
  if not(ed5.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

end.


