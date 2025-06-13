unit frmBaixaAdiant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, Grids, DBGrids,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, Menus, Mask, RzTabs, DBCtrls,
  RzDBNav, zModeloFixo, RzButton, RzPanel, zFrmPesquisa, RzEdit, ACBrBase,
  ACBrEnterTab, DateUtils, ppDB, ppParameter, ppModule, raCodMod, ppCtrls,
  ppBands, ppClass, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppDBBDE, ppVar, ppDesignLayer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmBaixaAdiant = class(TFModeloFixo)
    Panel1: TPanel;
    sbFiltrar: TSpeedButton;
    GroupBox2: TGroupBox;
    dtData: TDateTimePicker;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    lblTotalDeb: TLabel;
    GroupBox4: TGroupBox;
    lblJuro: TLabel;
    GroupBox7: TGroupBox;
    lblSaldo: TLabel;
    rbPeriodo: TGroupBox;
    Label2: TLabel;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    GroupBox1: TGroupBox;
    meMulta: TMaskEdit;
    meAcrescimo: TMaskEdit;
    GroupBox29: TGroupBox;
    frmPesquisaCad: TfrmPesquisa;
    ME1: TMaskEdit;
    ACBrEnterTab1: TACBrEnterTab;
    sqlDadosLANC: TIntegerField;
    sqlDadosBAIXA: TStringField;
    sqlDadosBANCOCOD: TIntegerField;
    sqlDadosBANCODES: TStringField;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosDTPAGO: TSQLTimeStampField;
    sqlDadosFAVORECIDO: TStringField;
    sqlDadosFORMAR: TStringField;
    sqlDadosFORMADES: TStringField;
    sqlDadosIMPRES: TStringField;
    sqlDadosPROVE: TStringField;
    sqlDadosRECIBO: TIntegerField;
    sqlDadosTIPO: TStringField;
    sqlDadosVALOR: TBCDField;
    sqlDadosVALORREAL: TBCDField;
    sqlDadosVENCTO: TSQLTimeStampField;
    sqlDadosHISCOD: TIntegerField;
    sqlDadosFAVORCOD: TIntegerField;
    sqlDadosREDUZ: TIntegerField;
    sqlDadosCONTA: TStringField;
    sqlDadosCONTADES: TStringField;
    sqlDadosLANCCOM: TIntegerField;
    sqlDadosLANCVEN: TIntegerField;
    sqlDadosBANCODOC: TStringField;
    sqlDadosCLIENCOD: TIntegerField;
    sqlDadosDTCONTAB: TSQLTimeStampField;
    sqlDadosDUPLICNOT: TStringField;
    sqlDadosDUPLISIM: TStringField;
    sqlDadosDUPLINOT: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosDEVOLUC: TStringField;
    sqlDadosJURO_POS: TSQLTimeStampField;
    sqlDadosJURO_CAR: TIntegerField;
    sqlDadosJURO_PER: TBCDField;
    sqlDadosJURO_VLR: TBCDField;
    sqlDadosJURO_TOTAL: TBCDField;
    cdsDadosLANC: TIntegerField;
    cdsDadosBAIXA: TStringField;
    cdsDadosBANCOCOD: TIntegerField;
    cdsDadosBANCODES: TStringField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosDTPAGO: TSQLTimeStampField;
    cdsDadosFAVORECIDO: TStringField;
    cdsDadosFORMAR: TStringField;
    cdsDadosFORMADES: TStringField;
    cdsDadosIMPRES: TStringField;
    cdsDadosPROVE: TStringField;
    cdsDadosRECIBO: TIntegerField;
    cdsDadosTIPO: TStringField;
    cdsDadosVALOR: TBCDField;
    cdsDadosVALORREAL: TBCDField;
    cdsDadosVENCTO: TSQLTimeStampField;
    cdsDadosHISCOD: TIntegerField;
    cdsDadosFAVORCOD: TIntegerField;
    cdsDadosREDUZ: TIntegerField;
    cdsDadosCONTA: TStringField;
    cdsDadosCONTADES: TStringField;
    cdsDadosLANCCOM: TIntegerField;
    cdsDadosLANCVEN: TIntegerField;
    cdsDadosBANCODOC: TStringField;
    cdsDadosCLIENCOD: TIntegerField;
    cdsDadosDTCONTAB: TSQLTimeStampField;
    cdsDadosDUPLICNOT: TStringField;
    cdsDadosDUPLISIM: TStringField;
    cdsDadosDUPLINOT: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosDEVOLUC: TStringField;
    cdsDadosJURO_POS: TSQLTimeStampField;
    cdsDadosJURO_CAR: TIntegerField;
    cdsDadosJURO_PER: TBCDField;
    cdsDadosJURO_VLR: TBCDField;
    cdsDadosJURO_TOTAL: TBCDField;
    SPB1: TSpeedButton;
    SPB2: TSpeedButton;
    PopupMenu3: TPopupMenu;
    Lanamentoanaltico1: TMenuItem;
    Lanamentosinttico1: TMenuItem;
    LanamentoanalticoNFC1: TMenuItem;
    ppDados: TppBDEPipeline;
    ppRelProdutor: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel37: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine12: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel2: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppRelResumo: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLine2: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppDBText23: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    sqlDadosJURO_DIA: TIntegerField;
    sqlDadosNFCNOT: TIntegerField;
    sqlDadosNFCINT: TStringField;
    sqlDadosNFCVLR: TBCDField;
    cdsDadosJURO_DIA: TIntegerField;
    cdsDadosNFCNOT: TIntegerField;
    cdsDadosNFCINT: TStringField;
    cdsDadosNFCVLR: TBCDField;
    sqlDadosSAFRA: TStringField;
    cdsDadosSAFRA: TStringField;
    GroupBox5: TGroupBox;
    cbSafra: TComboBox;
    sbsafra: TSpeedButton;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    PopupMenu1: TPopupMenu;
    Selecionatodos1: TMenuItem;
    Desmarcatodos1: TMenuItem;
    sqlDadosvValor: TBCDField;
    cdsDadosvValor: TBCDField;
    btnMarcar: TButton;
    N1: TMenuItem;
    PlanilhaControle1: TMenuItem;
    ppRelPlanilha: TppReport;
    ppParameterList3: TppParameterList;
    cdsDadoszCredito: TCurrencyField;
    cdsDadoszDebito: TCurrencyField;
    cdsDadoszSaldo: TCurrencyField;
    GroupBox6: TGroupBox;
    lbltotalCre: TLabel;
    ppTitleBand3: TppTitleBand;
    ppLabel21: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText28: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine4: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape17: TppShape;
    ppShape16: TppShape;
    ppShape15: TppShape;
    ppShape14: TppShape;
    ppShape13: TppShape;
    ppShape2: TppShape;
    ppShape12: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppDBText30: TppDBText;
    ppLabel22: TppLabel;
    ppLabel28: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel20: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppDBCalc8: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel39: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    raCodeModule2: TraCodeModule;
    sqlDadosVALORPAGO: TBCDField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosVALORPAGO: TBCDField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure meAcrescimoExit(Sender: TObject);
    procedure sbFiltrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtFinalExit(Sender: TObject);
    procedure meMultaExit(Sender: TObject);
    procedure GroupBox29Enter(Sender: TObject);
    procedure meMultaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SPB1Click(Sender: TObject);
    procedure dbDadosTitleClick(Column: TColumn);
    procedure SPB2Click(Sender: TObject);
    procedure Lanamentoanaltico1Click(Sender: TObject);
    procedure Lanamentosinttico1Click(Sender: TObject);
    procedure LanamentoanalticoNFC1Click(Sender: TObject);
    procedure dbDadosDblClick(Sender: TObject);
    procedure sbsafraClick(Sender: TObject);
    procedure Selecionatodos1Click(Sender: TObject);
    procedure btnMarcarClick(Sender: TObject);
    procedure PlanilhaControle1Click(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure pTotaliza;
  public
    { Public declarations }
  end;

var
  FfrmBaixaAdiant: TFfrmBaixaAdiant;

implementation

uses Data, Rotina, Menu, zModeloRel;

{$R *.dfm}

procedure TFfrmBaixaAdiant.FormCreate(Sender: TObject);
var
  vdialanc: Integer;
begin
  inherited;
  vdialanc := fBus(1,['Select valor From zGenerator Where Tabela = ''FILTRO'' and Campo = ''PERIODO'''],1);
  if (vdialanc = 0) then
  begin
    dtInicial.Date := StrToDate('01/01/' + xAno);
    dtFinal.Date   := StrToDate('31/12/' + xAno);
  end
  else begin
    dtInicial.Date := Date - vdialanc;
    dtFinal.Date   := Date + vdialanc;
  end;

  dtData.Date    := Date;
  pcItem.ActivePageIndex := 0;
  meMulta.Text := '0';
  meAcrescimo.Text := '0,00';
  frmPesquisaCad.pInicia('ttProdutor', TForm(Sender),2,2,GroupBox29,true);
end;

procedure TFfrmBaixaAdiant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmBaixaAdiant);
end;

procedure TFfrmBaixaAdiant.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pcItem.ActivePageIndex > 0 then exit;

  if key = VK_F7 then sbFiltrar.OnClick(sbFiltrar);
  if key = VK_F2 then SPB1.OnClick(SPB1);
  if key = VK_F8 then SPB2.OnClick(SPB2);
  inherited;
end;

procedure TFfrmBaixaAdiant.FormShow(Sender: TObject);
begin
  inherited;
  frmPesquisaCad.edtPesquisa.SetFocus;
end;

procedure TFfrmBaixaAdiant.GroupBox29Enter(Sender: TObject);
begin
  inherited;
  ME1.Text := '';
  cdsDados.Close;
end;

procedure TFfrmBaixaAdiant.Lanamentoanaltico1Click(Sender: TObject);
begin
  inherited;
  ppLabel4.Caption := 'Período: '+DateToStr(dtInicial.Date)+' à '+DateToStr(dtfinal.Date);
  ppRelProdutor.DeviceType := 'Screen';
  ppRelProdutor.Print;
  //sbFiltrar.onclick(sbFiltrar);
end;

procedure TFfrmBaixaAdiant.LanamentoanalticoNFC1Click(Sender: TObject);
var vdat: String;
begin
  inherited;
  vdat := '(Data>='+frInvD(dtInicial.Date)+' and Data<'+frInvD(dtFinal.Date+1)+')';
  if cbSafra.Text <> 'Todas' then
    vdat := vdat + ' and c.safra = '+QuotedStr(cbSafra.Text);
  cdsDados.Close;
  sqlDados.Close;
  sqlDados.SQL.Text := ''+
            'select c.*, (c.valorreal * -1) as vValor'+
            '  from cxbanco c, cadplano p '+
            ' where '  + vdat+
            '   and ((c.Reduz = p.Reduz) and (p.fgfechamento is null or p.fgfechamento = ''S''))'+
            '   and (c.FormaDes <> ' +QuotedStr('C')+ ')'+
            '   and (c.FavorCod > 0 and c.FavorCod < 1000)'+
            'order by c.Favorecido, c.Data, c.Lanc';
  cdsDados.Open;
  ppLabel14.Caption := 'Período: '+DateToStr(dtInicial.Date)+' à '+DateToStr(dtfinal.Date);
  if cbSafra.Text <> 'Todas' then
    ppLabel14.Caption := ppLabel14.Caption + ' - Safra: '+cbSafra.Text;
  ppRelResumo.DeviceType := 'Screen';
  ppRelResumo.Print;
  sbFiltrar.onclick(sbFiltrar);
end;

procedure TFfrmBaixaAdiant.Lanamentosinttico1Click(Sender: TObject);
var vdat: String;
begin
  inherited;
  vdat := '(Data>='+frInvD(dtInicial.Date)+' and Data<'+frInvD(dtFinal.Date+1)+')';
  if cbSafra.Text <> 'Todas' then
    vdat := vdat + ' and c.safra = '+QuotedStr(cbSafra.Text);
  cdsDados.Close;
  sqlDados.Close;
  sqlDados.SQL.Text := ''+
            'select c.*, (c.valorreal * -1) as vValor'+
            '  from cxbanco c, cadplano p '+
            ' where '  + vdat+
            '   and ((c.Reduz = p.Reduz) and (p.fgfechamento is null or p.fgfechamento = ''S''))'+
            '   and (c.FormaDes <> ' +QuotedStr('C')+ ')'+
            '   and (c.FavorCod > 0 and c.FavorCod < 1000)'+
            'order by c.Favorecido, c.Data, c.Lanc';
  cdsDados.Open;
  ppLabel4.Caption := 'Período: '+DateToStr(dtInicial.Date)+' à '+DateToStr(dtfinal.Date);
  ppRelProdutor.DeviceType := 'Screen';
  ppRelProdutor.Print;
  sbFiltrar.onclick(sbFiltrar);
end;

procedure TFfrmBaixaAdiant.meAcrescimoExit(Sender: TObject);
begin
  inherited;
  try
    meAcrescimo.Text := FormatFloat('#,0.00',StrToFloat(meAcrescimo.Text));
  except
    ShowMessage('Erro no formato!');
    meAcrescimo.SetFocus;
  end;
end;

procedure TFfrmBaixaAdiant.meMultaEnter(Sender: TObject);
begin
  inherited;
  sbFiltrar.onclick(sbFiltrar);
end;

procedure TFfrmBaixaAdiant.meMultaExit(Sender: TObject);
begin
  inherited;
  try
    meMulta.Text := FormatFloat('0',StrToFloat(meMulta.Text));
  except
    ShowMessage('Erro no formato!');
    meMulta.SetFocus;
  end;
end;

procedure TFfrmBaixaAdiant.PlanilhaControle1Click(Sender: TObject);
begin
  inherited;
  if cdsDados.IsEmpty then exit;

  ppRelPlanilha.DeviceType := 'Screen';
  ppRelPlanilha.Print;

end;

procedure TFfrmBaixaAdiant.btnMarcarClick(Sender: TObject);
begin
  inherited;
  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;
    if btnMarcar.Caption = 'Marcar todos' then
      cdsDadosDUPLICNOT.AsString := '*'
    else
      cdsDadosDUPLICNOT.AsString := '';
    cdsDados.Post;

    cdsDados.Next;
  end;
  cdsDados.First;

  if btnMarcar.Caption = 'Marcar todos' then
    btnMarcar.Caption := 'Desmarcar todos'
  else
    btnMarcar.Caption := 'Marcar todos';
    
end;

procedure TFfrmBaixaAdiant.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsDadosJURO_TOTAL.AsFloat >= 0 then
    cdsDadoszDebito.AsFloat := cdsDadosJURO_TOTAL.AsFloat
  else
    cdsDadoszCredito.AsFloat := cdsDadosJURO_TOTAL.AsFloat * -1;
  cdsDadoszSaldo.AsFloat := cdsDadoszCredito.AsFloat - cdsDadoszDebito.AsFloat;  
end;

procedure TFfrmBaixaAdiant.dbDadosDblClick(Sender: TObject);
begin
  inherited;
  if cdsDados.IsEmpty then exit;

  cdsDados.Edit;
  if (Trim(cdsDadosDUPLICNOT.AsString) = '') then
    cdsDadosDUPLICNOT.AsString := '*'
  else
    cdsDadosDUPLICNOT.AsString := '';
  cdsDados.Post;
end;

procedure TFfrmBaixaAdiant.dbDadosTitleClick(Column: TColumn);
begin
//  inherited;
end;

procedure TFfrmBaixaAdiant.dtFinalExit(Sender: TObject);
begin
  inherited;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaAdiant.sbFiltrarClick(Sender: TObject);
var vi: Integer; vdat: String;
begin
  cdsDados.Close;
  ME1.Text := '';
  if (Length(frmPesquisaCad.edtPesquisa.Text) < 3) then
  begin
    ME1.Text := frSoNumero(frmPesquisaCad.edtPesquisa.Text);
    frmPesquisaCad.pRetornaDados(ME1.Text);
  end
  else begin
    vi := pos('-', frmPesquisaCad.edtPesquisa.Text);
    ME1.Text := Trim(Copy(frmPesquisaCad.edtPesquisa.Text, 1, vi-1));
  end;
  if (StrToIntDef(ME1.Text,0)= 0) then
  begin
//    ShowMessage('Obrigatótio informar produtor!');
    frmPesquisaCad.edtPesquisa.SetFocus;
    Exit;
  end;
  vdat := '(c.Data>='+frInvD(dtInicial.Date)+' and c.Data<'+frInvD(dtFinal.Date+1)+')';
  if cbSafra.Text <> 'Todas' then
    vdat := vdat + ' and c.safra = '+QuotedStr(cbSafra.Text);

  fSql(1,1,['update cxbanco set duplicnot = '''' where (favorcod = 0' +ME1.Text+ ')'],1);

  sqlDados.Close;
  sqlDados.SQL.Text := ''+
            'select c.*, (c.valorreal * -1) as vValor'+
            '  from cxbanco c, cadplano p '+
            ' where '  + vdat+
            '   and ((c.Reduz = p.Reduz) and (p.fgfechamento is null or p.fgfechamento = ''S''))'+
            '   and (c.FormaDes <> ' +QuotedStr('C')+ ')'+
            '   and (c.FavorCod = 0' +ME1.Text+ ')'+
            'order by Data, Lanc';
  cdsDados.Open;
  pTotaliza;
end;

procedure TFfrmBaixaAdiant.sbsafraClick(Sender: TObject);
var vtxt: String; vano: Integer;
begin
  inherited;
  if not cdsDados.active then exit;

  vtxt := frImpu(0,'Informe ano/safra?','');
  vtxt := Trim(vtxt);
  vano := StrToIntDef(vtxt,0);

  if vano = 0 then
    frPerg('Safra inválida!', 'OK')
  else begin
    if frPerg(pchar('Deseja alterar selecionado?'+#13#10+'para safra: '+vtxt)) then
    begin

      try
        cdsDados.First;
        while not cdsDados.Eof do
        begin
          if (Trim(cdsDadosDUPLICNOT.AsString) = '*') then
          begin
            cdsDados.Edit;
            cdsDadosSafra.asString := IntToStr(vano);
            cdsDados.Post;
          end;
          cdsDados.Next;
        end;
        cdsDados.ApplyUpdates(0);
        cdsDados.First;
      except
        cdsDados.First;
      end;

    end;

  end;

end;

procedure TFfrmBaixaAdiant.pTotaliza;
var vTotalDeb, vTotalCre, vJuro, vtotal: Double;
    vi: Integer;
    vdat,vtes: String;
begin
  vTotalDeb := 0;
  vTotalCre := 0;
  vJuro  := 0;
  cdsDados.First;
  while not cdsDados.eof do
  begin
    vtotaldeb := vtotaldeb + cdsDadoszDebito.asFloat;
    vtotalcre := vtotalcre + cdsDadoszCredito.asFloat;
    vjuro  := vjuro  + cdsDadosJURO_VLR.asFloat;
    cdsDados.Next;
  end;
  cdsDados.First;
  lblTotalDeb.Caption   := FormatFloat('#,0.00', vTotalDeb);
  lblTotalCre.Caption   := FormatFloat('#,0.00', vTotalCre);
  lblJuro.Caption    := FormatFloat('#,0.00', vJuro);

  vtotal := (vTotalDeb - vTotalCre);
  if vtotal >=0 then
  begin
    GroupBox7.Caption  := ' Saldo devedor ';
    lblSaldo.Caption   := FormatFloat('#,0.00', vtotal);
  end
  else begin
    GroupBox7.Caption  := ' Saldo em haver ';
    lblSaldo.Caption   := FormatFloat('#,0.00', vtotal*-1);
  end;
end;


procedure TFfrmBaixaAdiant.SPB1Click(Sender: TObject);
var vper, vvlrjuro: Double;
    vcar, vdias: Integer;
begin
  inherited;
  if not cdsDados.active then exit;
  try
    try
      //Cadastro
      vcar := StrToIntDef(Trim(meMulta.Text),0);
      vper := StrToFloatDef(Trim(meAcrescimo.Text),0);
      //Filtros
      cdsDados.First;
      while not cdsDados.Eof do
      begin
        vdias := DaysBetween(cdsDadosData.asDateTime, dtData.Date);
        cdsDados.Edit;
        vvlrjuro := 0;
        if (Trim(cdsDadosDUPLICNOT.AsString) = '*') then
        begin
          if (vcar = 0) and (vper = 0) then
          begin
            cdsDadosJuro_Pos.Clear;
            cdsDadosJuro_Dia.asInteger := 0;
          end
          else begin
            cdsDadosJuro_Pos.asDateTime := dtData.Date;
            cdsDadosJuro_Dia.asInteger  := vdias;
          end;
          cdsDadosJuro_Car.asFloat   := vcar;
          cdsDadosJuro_Per.asFloat   := vper;
          vvlrjuro := frJuCp(vper, vdias, vcar, cdsDadosvValor.asFloat);
          cdsDadosJuro_Vlr.asFloat   := frDeci(vvlrjuro,2);
        end;

        cdsDadosJuro_Total.asFloat := frDeci(cdsDadosvValor.asFloat,2) + frDeci(cdsDadosJuro_Vlr.asFloat,2);
        cdsDados.Post;
        cdsDados.Next;
      end;

      cdsDados.ApplyUpdates(0);
    except
    end;
  finally
    pTotaliza;
  end;
end;

procedure TFfrmBaixaAdiant.SPB2Click(Sender: TObject);
begin
  inherited;
  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFfrmBaixaAdiant.Selecionatodos1Click(Sender: TObject);
begin
  inherited;
  if not cdsDados.active then exit;
  try
    cdsDados.First;
    while not cdsDados.Eof do
    begin
      cdsDados.Edit;
      if (TComponent(Sender).Tag = 10) then
        cdsDadosDUPLICNOT.asString := '*'
      else
        cdsDadosDUPLICNOT.asString := '';
      cdsDados.Post;

      cdsDados.Next;
    end;

    cdsDados.ApplyUpdates(0);
    cdsDados.First;
  except
    cdsDados.First;
  end;

end;

end.
