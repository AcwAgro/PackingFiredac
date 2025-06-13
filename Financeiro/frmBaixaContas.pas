unit frmBaixaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, Grids, DBGrids,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, Menus, Mask, RzTabs, DBCtrls,
  RzDBNav, zModeloFixo, RzButton, RzPanel, zFrmPesquisa, RzEdit, ACBrBase,
  ACBrEnterTab, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmBaixaContas = class(TFModeloFixo)
    Panel1: TPanel;
    sbFiltrar: TSpeedButton;
    rgFiltro: TRadioGroup;
    GroupBox2: TGroupBox;
    dtData: TDateTimePicker;
    cdsDadosLANC: TIntegerField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosFORMA: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosVENCTO: TSQLTimeStampField;
    cdsDadosVALOR: TBCDField;
    cdsDadosPARC: TIntegerField;
    cdsDadosJUROP: TBCDField;
    cdsDadosJURO: TBCDField;
    cdsDadosDESCP: TBCDField;
    cdsDadosVLRDESC: TBCDField;
    cdsDadosVALORPAGO: TBCDField;
    cdsDadosDATAPAGO: TSQLTimeStampField;
    cdsDadosPAGO: TStringField;
    cdsDadosGERAL: TStringField;
    cdsDadosCONTROLE: TStringField;
    cdsDadosATRAZO: TIntegerField;
    cdsDadosVLRACRES: TBCDField;
    cdsDadosVALORACRES: TBCDField;
    cdsDadosPARCELA: TIntegerField;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    lblTotal: TLabel;
    GroupBox4: TGroupBox;
    lblJuro: TLabel;
    GroupBox5: TGroupBox;
    lblDesconto: TLabel;
    GroupBox6: TGroupBox;
    lblBaixado: TLabel;
    GroupBox7: TGroupBox;
    lblSaldo: TLabel;
    rbPeriodo: TGroupBox;
    Label2: TLabel;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    tabBaixar: TRzTabSheet;
    TabAlterar: TRzTabSheet;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    RzPanel9: TRzPanel;
    GroupBox26: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox27: TGroupBox;
    RzPanel10: TRzPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    RzPanel3: TRzPanel;
    RzPanel1: TRzPanel;
    RzPanel5: TRzPanel;
    GroupBox15: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    DBEdit4: TDBEdit;
    RzPanel6: TRzPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    sqlDadosLANC: TIntegerField;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosFORMA: TStringField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosVENCTO: TSQLTimeStampField;
    sqlDadosVALOR: TBCDField;
    sqlDadosPARC: TIntegerField;
    sqlDadosJUROP: TBCDField;
    sqlDadosJURO: TBCDField;
    sqlDadosDESCP: TBCDField;
    sqlDadosVLRDESC: TBCDField;
    sqlDadosVALORPAGO: TBCDField;
    sqlDadosDATAPAGO: TSQLTimeStampField;
    sqlDadosPAGO: TStringField;
    sqlDadosGERAL: TStringField;
    sqlDadosCONTROLE: TStringField;
    sqlDadosATRAZO: TIntegerField;
    sqlDadosVLRACRES: TBCDField;
    sqlDadosVALORACRES: TBCDField;
    sqlDadosPARCELA: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosBOLCHE: TStringField;
    sqlDadosCONTACOD: TIntegerField;
    sqlDadosCONTADES: TStringField;
    sqlDadosBANCOCOD: TIntegerField;
    sqlDadosBANCODES: TStringField;
    sqlDadosDUPLIC: TIntegerField;
    sqlDadosVLRDESCON: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosVLRDEVOL: TBCDField;
    cdsDadosCONTACOD: TIntegerField;
    cdsDadosBANCOCOD: TIntegerField;
    cdsDadosBANCODES: TStringField;
    cdsDadosCONTADES: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosBOLCHE: TStringField;
    cdsDadosDUPLIC: TIntegerField;
    cdsDadosVLRDESCON: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosVLRDEVOL: TBCDField;
    GroupBox8: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    DBEdit11: TDBEdit;
    frmPesquisaBan: TfrmPesquisa;
    frmPesquisaCtc: TfrmPesquisa;
    pPesquisa: TRzPanel;
    Label1: TLabel;
    Label4: TLabel;
    sbTiraFiltro: TSpeedButton;
    rbPesquisa: TRzPanel;
    edPesquisa: TMaskEdit;
    SpeedButton6: TSpeedButton;
    sbItem6: TSpeedButton;
    TabFinan: TRzTabSheet;
    RzPanel11: TRzPanel;
    RzPanel12: TRzPanel;
    RzPanel13: TRzPanel;
    RzPanel14: TRzPanel;
    SpeedButton7: TSpeedButton;
    sbFinSalvar: TSpeedButton;
    dbgFinan: TDBGrid;
    dspFinan: TDataSetProvider;
    cdsFinan: TClientDataSet;
    dsFinan: TDataSource;
    cdsFinanLANC: TIntegerField;
    cdsFinanBAIXA: TStringField;
    cdsFinanBANCOCOD: TIntegerField;
    cdsFinanBANCODES: TStringField;
    cdsFinanREGISTRO: TIntegerField;
    cdsFinanDATA: TSQLTimeStampField;
    cdsFinanDTPAGO: TSQLTimeStampField;
    cdsFinanFAVORECIDO: TStringField;
    cdsFinanFORMAR: TStringField;
    cdsFinanFORMADES: TStringField;
    cdsFinanIMPRES: TStringField;
    cdsFinanPROVE: TStringField;
    cdsFinanRECIBO: TIntegerField;
    cdsFinanTIPO: TStringField;
    cdsFinanVALOR: TBCDField;
    cdsFinanVALORREAL: TBCDField;
    cdsFinanVENCTO: TSQLTimeStampField;
    cdsFinanHISCOD: TIntegerField;
    cdsFinanFAVORCOD: TIntegerField;
    cdsFinanREDUZ: TIntegerField;
    cdsFinanCONTA: TStringField;
    cdsFinanCONTADES: TStringField;
    cdsFinanLANCCOM: TIntegerField;
    cdsFinanLANCVEN: TIntegerField;
    cdsFinanBANCODOC: TStringField;
    cdsFinanCLIENCOD: TIntegerField;
    cdsFinanDTCONTAB: TSQLTimeStampField;
    cdsFinanDUPLICNOT: TStringField;
    cdsFinanDUPLISIM: TStringField;
    cdsFinanDUPLINOT: TIntegerField;
    cdsFinanEMPRECOD: TIntegerField;
    cdsFinanACESOCOD: TIntegerField;
    cdsFinanDEVOLUC: TStringField;
    cdsFinanxSel: TStringField;
    Panel3: TPanel;
    GroupBox12: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox14: TGroupBox;
    RzNE1: TRzNumericEdit;
    GroupBox24: TGroupBox;
    RzNE2: TRzNumericEdit;
    sqlDadosMULTA: TBCDField;
    sqlDadosMULTAP: TBCDField;
    cdsDadosMULTA: TBCDField;
    cdsDadosMULTAP: TBCDField;
    GroupBox19: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox20: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox25: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox28: TGroupBox;
    DBEdit16: TDBEdit;
    GroupBox1: TGroupBox;
    meMulta: TMaskEdit;
    meAcrescimo: TMaskEdit;
    cdsDadosMultaJuro: TBCDField;
    cdsFinanPlanoDes: TStringField;
    gbFunPer: TGroupBox;
    DBEdit17: TDBEdit;
    gbFunVlr: TGroupBox;
    DBEdit18: TDBEdit;
    sqlDadosFUNRURALVLR: TBCDField;
    sqlDadosFUNRURALPER: TBCDField;
    cdsDadosFUNRURALVLR: TBCDField;
    cdsDadosFUNRURALPER: TBCDField;
    GroupBox29: TGroupBox;
    frmPesquisaCad: TfrmPesquisa;
    ME1: TMaskEdit;
    ACBrEnterTab1: TACBrEnterTab;
    GroupBox9: TGroupBox;
    lblFunRural: TLabel;
    cdsFinanNFCNOT: TIntegerField;
    cdsFinanNFCINT: TStringField;
    cdsFinanNFCVLR: TBCDField;
    cdsFinanNFCRESTA: TCurrencyField;
    Label3: TLabel;
    DBEdit3: TcxDBDateEdit;
    DBEdit12: TcxDBDateEdit;
    cdsFinanREGLOG: TStringField;
    cdsFinanREG_ID: TIntegerField;
    sqlDadosOBS1: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosOBS1: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlFinan: TFDQuery;
    sqlFinanLANC: TIntegerField;
    sqlFinanBAIXA: TStringField;
    sqlFinanBANCOCOD: TIntegerField;
    sqlFinanBANCODES: TStringField;
    sqlFinanREGISTRO: TIntegerField;
    sqlFinanDATA: TSQLTimeStampField;
    sqlFinanDTPAGO: TSQLTimeStampField;
    sqlFinanFAVORECIDO: TStringField;
    sqlFinanFORMAR: TStringField;
    sqlFinanFORMADES: TStringField;
    sqlFinanIMPRES: TStringField;
    sqlFinanPROVE: TStringField;
    sqlFinanRECIBO: TIntegerField;
    sqlFinanTIPO: TStringField;
    sqlFinanVALOR: TBCDField;
    sqlFinanVALORREAL: TBCDField;
    sqlFinanVENCTO: TSQLTimeStampField;
    sqlFinanHISCOD: TIntegerField;
    sqlFinanFAVORCOD: TIntegerField;
    sqlFinanREDUZ: TIntegerField;
    sqlFinanCONTA: TStringField;
    sqlFinanCONTADES: TStringField;
    sqlFinanLANCCOM: TIntegerField;
    sqlFinanLANCVEN: TIntegerField;
    sqlFinanBANCODOC: TStringField;
    sqlFinanCLIENCOD: TIntegerField;
    sqlFinanDTCONTAB: TSQLTimeStampField;
    sqlFinanDUPLICNOT: TStringField;
    sqlFinanDUPLISIM: TStringField;
    sqlFinanDUPLINOT: TIntegerField;
    sqlFinanEMPRECOD: TIntegerField;
    sqlFinanACESOCOD: TIntegerField;
    sqlFinanDEVOLUC: TStringField;
    sqlFinanJURO_POS: TSQLTimeStampField;
    sqlFinanJURO_CAR: TIntegerField;
    sqlFinanJURO_PER: TBCDField;
    sqlFinanJURO_VLR: TBCDField;
    sqlFinanJURO_TOTAL: TBCDField;
    sqlFinanJURO_DIA: TIntegerField;
    sqlFinanNFCNOT: TIntegerField;
    sqlFinanNFCINT: TStringField;
    sqlFinanNFCVLR: TBCDField;
    sqlFinanSAFRA: TStringField;
    sqlFinanVALORPAGO: TBCDField;
    sqlFinanREGLOG: TStringField;
    sqlFinanREG_ID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure meAcrescimoExit(Sender: TObject);
    procedure sbFiltrarClick(Sender: TObject);
    procedure sbItem1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbItem2Click(Sender: TObject);
    procedure sbItem3Click(Sender: TObject);
    procedure sbItem4Click(Sender: TObject);
    procedure dtFinalExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure frmPesquisaCtcedtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure frmPesquisaBanedtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure dbDadosKeyPress(Sender: TObject; var Key: Char);
    procedure edPesquisaChange(Sender: TObject);
    procedure edPesquisaExit(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure sbTiraFiltroClick(Sender: TObject);
    procedure sbItem6Click(Sender: TObject);
    procedure dbgFinanDblClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure sbFinSalvarClick(Sender: TObject);
    procedure meMultaExit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure cdsFinanCalcFields(DataSet: TDataSet);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure GroupBox29Enter(Sender: TObject);
    procedure meMultaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure p_Pesquisa(vTipo:Boolean);
    procedure p_IndexaGrid;
  public
    { Public declarations }
  end;

var
  FfrmBaixaContas: TFfrmBaixaContas;

implementation

uses Data, Rotina, Menu, zModeloRel;

{$R *.dfm}

procedure TFfrmBaixaContas.FormCreate(Sender: TObject);
begin
  inherited;
  dtInicial.Date := Date - 120;
  dtFinal.Date   := Date + 120;
  dtData.Date    := Date;
  tabBaixar.TabVisible := False;
  TabAlterar.TabVisible := False;
  TabFinan.TabVisible := False;
  pcItem.ActivePageIndex := 0;
  meAcrescimo.Text := '0,00';
  frmPesquisaCTC.pInicia('ttPlano', TForm(Sender),7,7,GroupBox8,true);
  frmPesquisaBan.pInicia('ttBanco', TForm(Sender),7,7,GroupBox10,true);
  frmPesquisaCad.pInicia('ttFornecedor', TForm(Sender),2,2,GroupBox29,true);
end;

procedure TFfrmBaixaContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmBaixaContas);
end;

procedure TFfrmBaixaContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pcItem.ActivePageIndex > 0 then exit;

  if key = VK_F7 then sbFiltrar.OnClick(sbFiltrar);
  if key = VK_F3 then sbItem1.OnClick(sbItem1);
  if key = VK_F4 then sbItem2.OnClick(sbItem2);
  if key = VK_F5 then sbItem3.OnClick(sbItem3);
  if key = VK_F6 then sbItem4.OnClick(sbItem4);
  if key = VK_F8 then sbItem5.OnClick(sbItem5);
  inherited;
end;

procedure TFfrmBaixaContas.FormShow(Sender: TObject);
begin
  inherited;
  frmPesquisaCad.edtPesquisa.SetFocus;
end;

procedure TFfrmBaixaContas.frmPesquisaBanedtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0)
  else
    frmPesquisaBan.edtPesquisaKeyPress(Sender, Key);

  inherited;
end;

procedure TFfrmBaixaContas.frmPesquisaCtcedtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0)
  else
    frmPesquisaCtc.edtPesquisaKeyPress(Sender, Key);
  inherited;
end;

procedure TFfrmBaixaContas.GroupBox29Enter(Sender: TObject);
begin
  inherited;
  ME1.Text := '';
  cdsDados.Close;
end;

procedure TFfrmBaixaContas.meAcrescimoExit(Sender: TObject);
begin
  inherited;
  try
    meAcrescimo.Text := FormatFloat('#,0.00',StrToFloat(meAcrescimo.Text));
  except
    ShowMessage('Erro no formato!');
    meAcrescimo.SetFocus;
  end;
end;

procedure TFfrmBaixaContas.meMultaEnter(Sender: TObject);
begin
  inherited;
  sbFiltrar.onclick(sbFiltrar);
end;

procedure TFfrmBaixaContas.meMultaExit(Sender: TObject);
begin
  inherited;
  try
    meMulta.Text := FormatFloat('#,0.00',StrToFloat(meMulta.Text));
  except
    ShowMessage('Erro no formato!');
    meMulta.SetFocus;
  end;
end;

procedure TFfrmBaixaContas.p_IndexaGrid;
var vcln, vc: Integer;
begin
  if cdsDados.Eof then exit;
  if pcItem.ActivePageIndex > 0 then exit;

  vcln := 0;
  if dbDados.SelectedIndex >= 0 then
    vcln := dbDados.SelectedIndex;

  try
    vCampo := dbDados.Columns[vcln].FieldName;
    vCampoTemp := vCampo;
    Try
      if (dsDados.DataSet As TClientDataSet).IndexName <> '' then
      begin
        (dsDados.DataSet As TClientDataSet).IndexName := '';
        (dsDados.DataSet As TClientDataSet).DeleteIndex('iIndice');
      end;
    Except
    end;
    try
      if vindex <> dbDados.Columns[vcln].FieldName then
      begin
        vindex := dbDados.Columns[vcln].FieldName;
        vindex_order_asc := false;
        for vc := 0 to dbDados.Columns.Count - 1 do
        begin
          if vindex = dbDados.Columns[vc].FieldName then
          begin
            vcampo := dbDados.Columns[vc].FieldName;
            dbDados.SelectedIndex := vc;
            vcln := vc;
          end;
        end;
      end;

      if vindex_order_asc then
      begin
        (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vcampo,[ixDescending], '','',0);
        pStatusHistorico.Caption := 'Ordenado por ->' + dbDados.Columns[vcln].Title.Caption +' Decrescente ';
        if (not pPesquisa.Visible) then  vindex_order_asc := False;
      end
      else begin
        (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vCampo,[],'','',0);
        pStatusHistorico.Caption := 'Ordenado por ->' + dbDados.Columns[vcln].Title.Caption +' Crescente ';
        if (not pPesquisa.Visible) then  vindex_order_asc := True;
      end;
    except
    end;

    (dsDados.DataSet As TClientDataSet).IndexName := 'iIndice';
    (dsDados.DataSet As TClientDataSet).First;

    rbPesquisa.Caption    := 'Pesquisa por ->' + dbDados.Columns[vcln].Title.Caption;
    if dbDados.Columns[vcln].Field.DataType in [ftDate, ftDateTime] then
      edPesquisa.EditMask := '!99/99/9999;1; '

    else if dbDados.Columns[vcln].Field.DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency] then
      edPesquisa.EditMask := '!99999999;1; '

    else edPesquisa.EditMask := '';

    if pPesquisa.Visible then  edPesquisa.SetFocus;
  finally
    Screen.Cursor := crDefault;
    cdsDados.First;
  end;
end;

procedure TFfrmBaixaContas.p_Pesquisa(vTipo: Boolean);
begin
  try
    pcItem.ActivePageIndex := 0;
    pPesquisa.Visible := vTipo;
    if vTipo then
    begin
      p_IndexaGrid;
      if (Trim(vCampo)='') then
      begin
        vCampo := dbDados.Columns[0].FieldName;
        rbPesquisa.Caption    := 'Pesquisa por ->' + dbDados.Columns[0].Title.Caption;
      end;

      if cdsDados.FieldByName(vcampo).DataType in [ftDate, ftDateTime] then
        edPesquisa.EditMask := '!99/99/9999;1; '
      else if cdsDados.FieldByName(vcampo).DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency] then
        edPesquisa.EditMask := '99999999;1; '
      else edPesquisa.EditMask := '';
      if pPesquisa.Visible then
        edPesquisa.SetFocus;
    end;
  except
  end;
end;

procedure TFfrmBaixaContas.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDadosMultaJuro.AsFloat := cdsDadosMulta.AsFloat + cdsDadosJuro.AsFloat;
end;

procedure TFfrmBaixaContas.cdsFinanCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsFinanPlanoDes.asString := cdsFinanConta.asString + '-' + cdsFinanContaDes.asString;
  cdsFinanNFCRESTA.asFloat := cdsFinanVALOR.asFloat - cdsFinanNFCVLR.asFloat;
end;

procedure TFfrmBaixaContas.dbDadosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key in ['0'..'9', 'A'..'Z', 'a'..'z']) then
  begin
    p_Pesquisa(True);
    edPesquisa.Text := key;
    edPesquisa.SetFocus;
    edPesquisa.SelStart := 1;
  end;
end;

procedure TFfrmBaixaContas.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  DBEdit8.OnExit(DBEdit8);
end;

procedure TFfrmBaixaContas.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then exit;

  try
    if cdsDadosDescp.asFloat > 0 then
      cdsDadosVlrDesc.asFloat := cdsDadosValor.asFloat * cdsDadosDescp.asFloat /100
    else begin
      cdsDadosDescp.asFloat := 0;
      cdsDadosVlrDesc.asFloat := 0;
    end;
    DBEdit8.OnExit(DBEdit8);
  except
  end;

end;

procedure TFfrmBaixaContas.DBEdit17Exit(Sender: TObject);
begin
  if cdsDados.State = dsBrowse then exit;
  try
    if (cdsDadosFunruralPer.asFloat > 0) then
      cdsDadosFunruralVlr.asFloat  := cdsDadosValor.asFloat * cdsDadosFunruralPer.asFloat /100
    else begin
      cdsDadosFunruralVlr.asFloat := 0;
      cdsDadosFunruralPer.asFloat  := 0;
    end;
    DBEdit18.OnExit(DBEdit18);
  except
  end;

end;

procedure TFfrmBaixaContas.DBEdit18Exit(Sender: TObject);
begin
  inherited;
  DBEdit8.OnExit(DBEdit8);
end;

procedure TFfrmBaixaContas.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then exit;
  try
    cdsDadosAtrazo.asVariant := (cdsDadosDataPago.AsDateTime - cdsDadosVencto.AsDateTime);
    if cdsDadosAtrazo.asInteger < 1 then  cdsDadosAtrazo.asInteger := 0;
  except
  end;

end;

procedure TFfrmBaixaContas.DBEdit5Exit(Sender: TObject);
begin
  if cdsDados.State = dsBrowse then exit;
  try
    if (cdsDadosMultap.asFloat > 0) and (cdsDadosAtrazo.asInteger > 0) then
      cdsDadosMulta.asFloat := cdsDadosValor.asFloat * cdsDadosMultap.asFloat /100
    else begin
      cdsDadosMultap.asFloat := 0;
      cdsDadosMulta.asFloat := 0;
    end;
    DBEdit8.OnExit(DBEdit8);
  except
  end;

end;

procedure TFfrmBaixaContas.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  DBEdit8.OnExit(DBEdit8);
end;

procedure TFfrmBaixaContas.DBEdit7Exit(Sender: TObject);
var vvlrjuro: Double;
begin
  if cdsDados.State = dsBrowse then exit;
  try
    if (cdsDadosJurop.asFloat > 0) and (cdsDadosAtrazo.asInteger > 0) then
    begin
      vvlrjuro := frJuCp(cdsDadosJurop.asFloat, cdsDadosAtrazo.asInteger, 0, cdsDadosValor.asFloat);
      cdsDadosJuro.asFloat  := vvlrjuro;
    end
    else begin
      cdsDadosJurop.asFloat := 0;
      cdsDadosJuro.asFloat  := 0;
    end;
    DBEdit8.OnExit(DBEdit8);
  except
  end;

end;

procedure TFfrmBaixaContas.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then exit;
  try
    cdsDadosValorAcres.asFloat := cdsDadosValor.asFloat + cdsDadosMulta.asFloat + cdsDadosJuro.asFloat;
    cdsDadosValorPago.asFloat  := cdsDadosValorAcres.asFloat - cdsDadosVlrDesc.asFloat - cdsDadosFunruralvlr.asFloat;
  except
  end;

end;

procedure TFfrmBaixaContas.dbgFinanDblClick(Sender: TObject);
var vid:Integer;
begin
  cdsFinan.Edit;
  if cdsFinan.FieldByName('xsel').Text='*' then
    cdsFinan.FieldByName('xsel').Text:=''
  else cdsFinan.FieldByName('xsel').Text:='*';
  cdsFinan.Post;

//Somantoria
  RzNE2.Value := 0;
  vid := cdsFinanLanc.AsInteger;
  cdsFinan.DisableControls;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    if cdsFinan.FieldByName('xsel').Text='*' then
      RzNE2.Value := RzNE2.Value + cdsFinanNFCRESTA.AsFloat;
    cdsFinan.Next;
  end;
  cdsFinan.EnableControls;
  cdsFinan.Locate('LANC', vid, []);
end;

procedure TFfrmBaixaContas.dtFinalExit(Sender: TObject);
begin
  inherited;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaContas.edPesquisaChange(Sender: TObject);
var vTexto:String;
begin
  if cdsDados.FieldByName(vCampo).DataType in [ftString] then
  begin
    (dsDados.DataSet As TClientDataSet).Filtered := False;
    (dsDados.DataSet As TClientDataSet).Filter   := 'UPPER(' + vCampo + ') LIKE ' + QuotedStr('%' + Trim(UpperCase(edPesquisa.Text)) + '%');
    (dsDados.DataSet As TClientDataSet).Filtered := True;
  end
  else begin
    Try
      vTexto := Trim(edPesquisa.Text);
      if (vTexto = '')     or
         (vTexto = '0')    or
         (vTexto = '/  /') then
        exit;

      if (Copy(vTexto,3,1) + Copy(vTexto,6,1) = '//') then
        if (Length(Trim(Copy(vTexto,1,2))) <> 2) or
           (Length(Trim(Copy(vTexto,4,2))) <> 2) or
           (Length(Trim(Copy(vTexto,7,2))) <> 2) then
          exit;

      if (edPesquisa.EditMask <> '!99/99/9999;1; ') and
         (Copy(vTexto,3,1) + Copy(vTexto,6,1) <> '//') then
        (dsDados.DataSet As TClientDataSet).FindNearest([vTexto])
    except
    end;
  end;
end;

procedure TFfrmBaixaContas.edPesquisaExit(Sender: TObject);
begin
  inherited;
  p_Pesquisa(False);
end;

procedure TFfrmBaixaContas.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if cdsDados.FieldByName(vCampo).DataType in [ftDate, ftDateTime] then
    begin
      try
        edPesquisa.Text := DateToStr(StrToDate(edPesquisa.Text));
        (dsDados.DataSet As TClientDataSet).Filtered := False;
        (dsDados.DataSet As TClientDataSet).Filter := vCampo + '=' + QuotedStr(edPesquisa.Text);
        (dsDados.DataSet As TClientDataSet).Filtered := True;
      except
        ShowMessage('Informe uma data válida!');
        Abort;
      end;
    end;
    dbDados.SetFocus;
  end;
  if key = #27 then
  begin
    p_Pesquisa(False);
    (dsDados.DataSet As TClientDataSet).Filtered := False;
    dbDados.SetFocus;
  end;
end;

procedure TFfrmBaixaContas.sbFiltrarClick(Sender: TObject);
var vpermulta, vperjuro, vvlrjuro, vvlrmulta: Double;
    vTotal, vJuro, vDesc, vBaixa, vFunrural: Double;
    vi: Integer;
begin
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
  inherited;

  try
    vTotal := 0;
    vJuro  := 0;
    vDesc  := 0;
    vBaixa := 0;
    vFunrural := 0;
    try
    //Cadastro
      vpermulta := StrToFloat('0'+Trim(meMulta.Text));
      vperjuro  := StrToFloat('0'+Trim(meAcrescimo.Text));
    //Filtros
      (dsDados.DataSet As TClientDataSet).IndexName := '';
      cdsDados.Close;
      sqlDados.sql.Clear;
      sqlDados.sql.Add('Select * From FIBaiPag');
      sqlDados.sql.Add('Where Codigo = 0' + Trim(ME1.Text));
      Case rgFiltro.ItemIndex of
        1: sqlDados.sql.Add('  and Pago = ' + QuotedStr('N'));
        2: sqlDados.sql.Add('  and Pago = ' + QuotedStr('S'));
        3: sqlDados.sql.Add('  and Pago = ' + QuotedStr('N') + ' and Vencto <  ' + frInvD(dtData.Date));
        4: sqlDados.sql.Add('  and Pago = ' + QuotedStr('N') + ' and Vencto >= ' + frInvD(dtData.Date));
      end;
      if rgFiltro.ItemIndex = 2 then
      begin
        sqlDados.sql.Add('  and DataPago Between ' + frInvD(dtInicial.Date) + ' and ' + frInvD(dtFinal.Date));
        sqlDados.sql.Add(' Order By DataPago Desc, Controle');
      end
      else begin
        sqlDados.sql.Add('  and Vencto Between ' + frInvD(dtInicial.Date) + ' and ' + frInvD(dtFinal.Date));
        sqlDados.sql.Add(' Order By Vencto Desc, Controle');
      end;
      cdsDados.Open;
      PStatusResgistro.Caption := 'Registro: ' + IntToStr(cdsDados.RecordCount);
      cdsDados.First;
      cdsDados.DisableControls;
    //Repassa valor e totaliza
  //    fBar(0,cdsDados.RecordCount,'Aguarde...');
      while not cdsDados.Eof do
      begin
  //      fBar(1,1,'');
        if cdsDadosPago.asString = 'N' then
        begin
          cdsDados.Edit;
          cdsDadosMultap.asFloat := 0;
          cdsDadosMulta.asFloat  := 0;
          cdsDadosJurop.asFloat := 0;
          cdsDadosJuro.asFloat  := 0;
          cdsDadosValorAcres.asFloat := 0;

          cdsDadosAtrazo.asVariant := (dtData.Date - cdsDadosVencto.AsDateTime);
          if cdsDadosAtrazo.asInteger < 1 then cdsDadosAtrazo.asInteger := 0
          else begin
            if ((vpermulta + vperjuro) > 0) then
            begin
              vvlrmulta := (cdsDadosValor.asFloat * vpermulta /100);
              cdsDadosMultap.asFloat := vpermulta;
              cdsDadosMulta.asFloat  := vvlrmulta;
              vvlrjuro := frJuCp(vperjuro,cdsDadosAtrazo.asInteger,0,cdsDadosValor.asFloat);
              cdsDadosJurop.asFloat := vperjuro;
              cdsDadosJuro.asFloat  := vvlrjuro;
              cdsDadosValorAcres.asFloat := vvlrmulta + vvlrjuro + cdsDadosValor.asFloat;
            end;
          end;
          cdsDados.Post;
          cdsDados.ApplyUpdates(-1);
          vvlrmulta := 0;

        end;
        if (cdsDadosVlrDescon.asFloat > 0) then
          vTotal := vtotal + (cdsDadosValorPago.asFloat - (cdsDadosJuro.asFloat + cdsDadosMulta.asFloat) + cdsDadosvlrDesc.asFloat)
        else
          vTotal := vtotal + cdsDadosValor.asFloat;

        vJuro  := vJuro  + (cdsDadosMulta.asFloat + cdsDadosJuro.asFloat);
        vDesc  := vDesc  + cdsDadosVlrDesc.asFloat;
        vBaixa := vBaixa + cdsDadosValorPago.asFloat;
        vFunRural := vFunRural + cdsDadosFunRuralVlr.asFloat;
        cdsDados.Next;
      end;
    except on E:Exception do
      begin
        ME1.Text := '';
        frmPesquisaCad.edtPesquisa.SetFocus;
        frPerg(PChar('Falha! '+ E.Message), 'OK');
        Exit;
      end;
    end;
  finally
    cdsDados.EnableControls;
    lblTotal.Caption   := FormatFloat('#,0.00', vTotal);
    lblJuro.Caption    := FormatFloat('#,0.00', vJuro);
    lblDesconto.Caption:= FormatFloat('#,0.00', vDesc);
    lblBaixado.Caption := FormatFloat('#,0.00', vBaixa);
    lblFunRural.Caption := FormatFloat('#,0.00', vFunrural);
    lblSaldo.Caption   := FormatFloat('#,0.00', (vTotal + vJuro) - (vDesc + vBaixa + vFunrural));
  end;
end;

procedure TFfrmBaixaContas.sbItem1Click(Sender: TObject);
begin
  inherited;
  if (not cdsDados.Active) or (cdsDados.RecordCount = 0) then exit;

  if cdsDadosPago.AsString = 'S' then
  begin
    ShowMessage('Título já baixado!');
    exit;
  end;

  frmPesquisaCTC.pLimpaCampo;
  frmPesquisaBAN.pLimpaCampo;

  cdsDados.Edit;
  gbFunPer.Visible := False;
  gbFunVlr.Visible := False;
  if StrToIntDef(Trim(me1.Text),0) < 1000 then
  begin
    gbFunPer.Visible := True;
    gbFunVlr.Visible := True;
    fSql(1,1,['Select funruralper From CadForne Where Codigo = 0'+Trim(ME1.Text)],1);
    cdsDadosFunruralPer.asFloat := dm.qrSql1.Fields[0].asFloat;
  end;
  cdsDadosDataPago.AsDateTime := Date;
  cdsDadosMultap.asFloat  := StrToFloat('0'+Trim(meMulta.Text));
  cdsDadosJurop.asFloat := StrToFloat('0'+Trim(meAcrescimo.Text));

  //Traz o plano de contas
  //Deve buscar o Plano de contas do cadastro empresa
  fSql(1,1,['Select CTC From CadForne Where codigo = 0'+Trim(ME1.Text)],1);
  if dm.qrSql1.Fields[0].asInteger > 0 then
    frmPesquisaCtc.pRetornaDados(dm.qrSql1.Fields[0].AsString)
  else begin
    //Se não tiver cadastrado traz o lanc
    fSql(1,1,['Select First 1 Reduz From CXBanco Where LancCom = 0'+cdsDadosLanc.AsString+' Order by Valor, Lanc'],1);
    if dm.qrSql1.Fields[0].asInteger > 0 then
      frmPesquisaCtc.pRetornaDados(dm.qrSql1.Fields[0].AsString)
    else begin
      //Se não tiver cadastrado traz o último
      fSql(1,1,['Select First 1 Reduz From CXBanco Where FavorCod = 0'+Trim(ME1.Text)+' Order by Lanc Desc'],1);
      if dm.qrSql1.Fields[0].asInteger > 0 then
        frmPesquisaCtc.pRetornaDados(dm.qrSql1.Fields[0].AsString)
    end;
  end;

  TabBaixar.TabVisible := True;
  pcItem.ActivePageIndex := 1;
  DBEdit3.SetFocus;
end;

procedure TFfrmBaixaContas.sbItem2Click(Sender: TObject);
begin
  inherited;
  if (not cdsDados.Active) or (cdsDados.RecordCount = 0) then exit;

  if cdsDadosPago.AsString = 'S' then
  begin
    ShowMessage('Título já baixado!');
    exit;
  end;

  if not fVerficaDataValida(13, cdsDadosData.AsDateTime) then
    exit;

  cdsDados.Edit;
  TabAlterar.TabVisible := True;
  pcItem.ActivePageIndex := 2;
  DBEdit10.SetFocus;
end;

procedure TFfrmBaixaContas.sbItem3Click(Sender: TObject);
begin
  inherited;
  if (not cdsDados.Active) or (cdsDados.RecordCount = 0) then exit;

  if not fVerficaDataValida(13, cdsDadosData.AsDateTime) then
    exit;

  if frExcl then
  begin
    if frPerg('Tem certeza?') then
    begin
      fSql(1,1,['Delete From FIBaiPag Where Geral = '+QuotedStr(Trim(cdsDadosGeral.asString))],1);
      //fSql(1,1,['Delete From FIBaiPag Where REG_ID = '+Trim(cdsDadosREG_ID.asString)],1);
      sbFiltrar.OnClick(sbFiltrar);
    end;
  end;
end;

procedure TFfrmBaixaContas.sbItem4Click(Sender: TObject);
begin
  inherited;
  if (not cdsDados.Active) or (cdsDados.RecordCount = 0) then exit;

  if cdsDadosPago.AsString = 'N' then
  begin
    ShowMessage('Título não baixado!');
    exit;
  end;

  if not fVerficaDataValida(13, cdsDadosData.AsDateTime) then
    exit;

  if frPerg('Deseja Realmente Estornar')then
  begin
    if frPerg('Tem certeza?') then
    begin
      fSql(1,1,['Update CXBanco Set ',
                '  Baixa =  '    +QuotedStr('N')+
                ', DTPago = NULL'+
                ', ValorPago = 0',
                ' Where LancCom = 0'+IntToStr(cdsDadosLanc.asInteger)],3);

      cdsDados.Edit;
      cdsDadosPago.asString     := 'N';
      cdsDadosValorPago.asFloat := 0;
      cdsDadosVlrDesc.asFloat   := 0;
      cdsDadosVlrDescon.asFloat := 0;
      cdsDadosJuro.asFloat      := 0;
      cdsDadosDescp.asFloat     := 0;
      cdsDadosJurop.asFloat     := 0;
      cdsDadosDataPago.Text     := '';
      cdsDadosValorPago.asFloat := 0;
      cdsDados.Post;
      cdsDados.ApplyUpdates(-1);
      sbFiltrar.OnClick(sbFiltrar);
    end;
  end;
end;

procedure TFfrmBaixaContas.sbTiraFiltroClick(Sender: TObject);
begin
  inherited;
  p_Pesquisa(False);
 (dsDados.DataSet As TClientDataSet).Filtered := False;
 (dsDados.DataSet As TClientDataSet).Filter   := '';
 cdsDados.Filter   := '';
 cdsDados.Filtered := False;
 dbDados.SetFocus;
 cdsDados.First;
end;

procedure TFfrmBaixaContas.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  cdsDados.Cancel;
  TabBaixar.TabVisible := False;
  pcItem.ActivePageIndex := 0;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaContas.SpeedButton3Click(Sender: TObject);
var vvalor, vvlreal: Double;
    vreg, vfor, vent, vcontatipo, vconta: String;
    vparcela: Integer;
begin
  inherited;
  try
    if cdsDadosValorPago.asFloat = 0 then
    begin
      ShowMessage('Valor pago tem que ser maior que Zero!');
      Abort;
    end;
    if frSalv then
    begin
      cdsDados.Edit;
      cdsDadosBancoCod.asInteger := frmPesquisaBan.vpCodPrincipal;
      cdsDadosBancoDes.asString  := frmPesquisaBan.vpDescricao;
      vconta := Copy(frmPesquisaCtc.vpCampo_1,1,18);
      cdsDadosContaCod.asInteger := frmPesquisaCtc.vpCodPrincipal;
      cdsDadosContaDes.asString  := frmPesquisaCtc.vpDescricao;
      cdsDadosValorAcres.asFloat := cdsDadosValor.asFloat + cdsDadosJuro.asFloat - cdsDadosVlrDesc.asFloat - cdsDadosFunruralvlr.asFloat;
      vvalor := cdsDadosValorAcres.asFloat - cdsDadosValorPago.asFloat - cdsDadosVlrDesc.asFloat;
      if vvalor <= 0 then
        cdsDadosPago.asString := 'S'
      else begin
        cdsDadosVlrDescon.asFloat := vvalor; //Campo para salvar valor parcial
        cdsDadosPago.asString   := 'S';
        vparcela := 100+cdsDadosParc.asInteger;

        fSql(1,3,['INSERT INTO FIBAIPAG (',
                ' Lanc, Registro, Controle, Codigo, Data, Vencto, Forma, Valor,'+
                ' Parc, Geral, VlrDesc, Juro, Descp, Jurop, ValorAcres, '+
                ' multa, multap, Pago, Emprecod)',
                'VALUES (',
                cdsDadosLanc.asString                    +',0,'+
                QuotedStr(cdsDadosControle.asString)     +','+
                cdsDadosCodigo.asString                  +','+
                frInvD(cdsDadosData.AsDateTime)               +','+
                frInvD(cdsDadosVencto.AsDateTime)             +','+
                QuotedStr(cdsDadosForma.asString)        +','+
                frInvV(vvalor)                           +','+
                IntToStr(vparcela)     +','+
                QuotedStr(frPree(cdsDadosLanc.asInteger,8,'0',1) +
                        IntToStr(100+cdsDadosParc.asInteger)) +','+
                '0, 0, 0, 0, 0, 0, 0,' +QuotedStr('N')+','+
                IntToStr(xEmp)+')'],4);
      end;
      //conta Financeira
      if (cdsDadosBancoCod.asInteger > 0) then
      begin //Financeiro
        vReg := IntToStr(frGenerator('GERAL','LANC',1));
        vfor := 'C';
        vent := 'E';
        vvlreal := cdsDadosValorPago.asFloat;
        vcontatipo := 'Parc. '+cdsDadosParc.asString;
        if cdsDadosJuro.asFloat > 0 then
          vcontatipo := vcontatipo + ' Vlr.Juro: '+FormatFloat('#,0.00', cdsDadosJuro.asFloat);
        if (cdsDadosVlrDesc.asFloat > 0) then
          vcontatipo := vcontatipo + ' Vlr.Desconto: '+FormatFloat('#,0.00', cdsDadosVlrDesc.asFloat);
        if (cdsDadosRegistro.asInteger > 0) then
          vcontatipo := vcontatipo + ' Doc.: '+cdsDadosRegistro.AsString;

        vfor := 'F';
        vent := 'S';
        vvlreal := cdsDadosValorPago.asFloat * -1;
        fSql(1,1,['Insert Into CXBanco ',
                ' (Lanc, LancCom, FormaDes, Formar, Tipo, Data, DTPago, Vencto, Valor, DupliSim, '+
                '  FavorCod, BancoCod, BancoDoc, Reduz, Impres, Baixa, Favorecido, Prove, '+
                '  dtContab, Conta, valorreal, valorpago, EmpreCod)',
                'Values',
                ' ('+ vReg                          +','+
                      cdsDadosLanc.Text             +','+
                      QuotedStr(vfor)               +','+
                      QuotedStr(vent)               +','+
                      QuotedStr('N')                +','+
                      frInvD(cdsDadosDataPago.AsDateTime)    +','+
                      frInvD(cdsDadosDataPago.AsDateTime)    +','+
                      frInvD(cdsDadosDataPago.AsDateTime)    +','+
                      frInvV(cdsDadosValorPago.asFloat) +','+
                      QuotedStr('N')                +','+
                      cdsDadosCodigo.Text           +','+
                      cdsDadosBancoCod.Text         +','+
                      QuotedStr(cdsDadosControle.Text) +','+
                      cdsDadosContaCod.Text         +','+
                      QuotedStr('N')                +','+
                      QuotedStr('S')                +','+
                      QuotedStr(frmPesquisaCad.vpDescricao) +','+
                      QuotedStr(vcontatipo) +','+
                      frInvD(cdsDadosDataPago.AsDateTime)    +','+
                      QuotedStr(vconta) +','+
                      frInvV(vvlreal) +','+
                      frInvV(cdsDadosValorPago.asFloat) +','+
                      IntToStr(xEmp)+')'],4);
      end;
      cdsDados.Post;
      cdsDados.ApplyUpdates(0);
    end;
  except
    on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
  end;
  TabBaixar.TabVisible := False;
  pcItem.ActivePageIndex := 0;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaContas.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  cdsDados.Cancel;
  TabAlterar.TabVisible := False;
  pcItem.ActivePageIndex := 0;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaContas.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  //ALTERANDO
  try
    cdsDados.Edit;
    cdsDados.Post;
    cdsDados.ApplyUpdates(0);
  except
    frPerg('Não foi possível baixar, erro!','OK');
  end;
  TabAlterar.TabVisible := False;
  pcItem.ActivePageIndex := 0;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaContas.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  TabFinan.TabVisible := False;
  pcItem.ActivePageIndex := 0;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmBaixaContas.sbItem6Click(Sender: TObject);
begin
  inherited;

  cdsFinan.Close;
  sqlFinan.Sql.Clear;
  sqlFinan.SQL.Add('select * from cxbanco c, cadplano p ');
  sqlFinan.SQL.Add('where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  sqlFinan.SQL.Add(' and ((c.Reduz = p.Reduz) and (p.fgrelfinan is null or p.fgrelfinan = ''S''))');
  sqlFinan.SQL.Add(' and formades <> '+QuotedStr('C'));
  sqlFinan.SQL.Add(' and favorcod = 0'+Trim(ME1.text));
  if cdsDadosPago.AsString = 'S' then
    sqlFinan.SQL.Add(' and nfcnot = 0'+cdsDadosLanc.AsString)
  else
    sqlFinan.SQL.Add(' and (nfcnot = 0 or nfcnot is null or (nfcvlr < valor))');
  cdsFinan.Open;

  if cdsFinan.IsEmpty then
  begin
    if cdsDadosPago.AsString = 'S' then
      ShowMessage('Não há lançamento associado!')
    else
      ShowMessage('Não encontrado lançamento para associar!');
    cdsFinan.Close;
    exit;
  end;
  RzNE1.Value := 0;
  RzNE2.Value := 0;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    RzNE1.Value := RzNE1.Value + cdsFinanNFCRESTA.AsFloat;
    cdsFinan.Next;
  end;
  cdsFinan.First;

  TabFinan.TabVisible := True;
  pcItem.ActivePageIndex := 3;
  sbFinSalvar.Enabled := True;
  RzPanel14.Visible := cdsDadosPago.AsString <> 'S';
  if (not cdsDados.Active) or (cdsDados.RecordCount = 0) then
    sbFinSalvar.Enabled := False;

end;

procedure TFfrmBaixaContas.sbFinSalvarClick(Sender: TObject);
var vvlr, vvalor, vnfcbaixa, vnfcvlr, vnfcpago: Double;
    vparcela: Integer;
    vtxt,vnfcint: String;
begin
  inherited;
  vvlr := 0;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    if cdsFinanxSel.AsString = '*' then
      vvlr := vvlr + (cdsFinanValor.AsFloat - cdsFinanNFCVlr.AsFloat);
    cdsFinan.Next;
  end;
  cdsFinan.First;
//  if ((vvlr = 0) or (vvlr > cdsDadosValor.AsFloat)) then
//    ShowMessage('Valor selecionado maior que o valor total!');

  if frPerg('Deseja associar a N.F.C.')then
  begin
    cdsDados.Edit;
    //Se valor do adiantamento < valor nf deve gerar parcial
    if (cdsDadosValor.asFloat >= vvlr) then
      cdsDadosValorPago.asFloat  := vvlr
    else
      cdsDadosValorPago.asFloat  := cdsDadosValor.asFloat;

    cdsDadosValorAcres.asFloat := cdsDadosValor.asFloat + cdsDadosJuro.asFloat - cdsDadosVlrDesc.asFloat - cdsDadosFunruralvlr.asFloat;
    vvalor := cdsDadosValorAcres.asFloat - cdsDadosValorPago.asFloat - cdsDadosVlrDesc.asFloat;
    if vvalor <= 0 then
    begin
      cdsDadosPago.asString := 'S';
      fSql(1,3,['UPDATE FIBAIPAG SET PAGO = ''S'', '+
                ' datapago = '+frInvD(Date)+','+
                ' valorpago = '+frInvV(cdsDadosValor.asFloat)+','+
                ' valoracres = '+frInvV(cdsDadosValorAcres.asFloat)+
                ' WHERE GERAL = '+QuotedStr(cdsDadosGeral.asString)],1)
    end
    else begin
      //Campo para salvar valor parcial
      cdsDadosVlrDescon.asFloat := vvalor;
      cdsDadosDataPago.AsDateTime := Date;
      cdsDadosPago.asString   := 'S';
      fSql(1,3,['UPDATE FIBAIPAG SET PAGO = ''S'', '+
                ' datapago = '+frInvD(Date)+','+
                ' valorpago = '+frInvV(cdsDadosValorPago.asFloat)+','+
                ' valoracres = '+frInvV(cdsDadosValorPago.asFloat)+','+
                ' vlrdesc = '+frInvV(cdsDadosVlrDescon.asFloat)+
                ' WHERE GERAL = '+QuotedStr(cdsDadosGeral.asString)],1);

      vparcela := 100+cdsDadosParc.asInteger;

      fSql(1,3,['INSERT INTO FIBAIPAG (',
              ' Lanc, Registro, Controle, Codigo, Data, Vencto, Forma, Valor,'+
              ' Parc, Geral, VlrDesc, Juro, Descp, Jurop, ValorAcres, Pago, Emprecod)',
              'VALUES (',
              cdsDadosLanc.asString                    +',0,'+
              QuotedStr(cdsDadosControle.asString)     +','+
              cdsDadosCodigo.asString                  +','+
              frInvD(cdsDadosData.AsDateTime)               +','+
              frInvD(cdsDadosVencto.AsDateTime)             +','+
              QuotedStr(cdsDadosForma.asString)        +','+
              frInvV(vvalor)                           +','+
              IntToStr(vparcela)     +','+
              QuotedStr(frPree(cdsDadosLanc.asInteger,8,'0',1) +
                      IntToStr(100+cdsDadosParc.asInteger)) +','+
              '0, 0, 0, 0, 0,' +QuotedStr('N')+','+
              IntToStr(xEmp)+')'],4);
    end;
    //Financeiro
    vnfcpago := cdsDadosValorPago.asFloat;
    cdsFinan.First;
    while not cdsFinan.Eof do
    begin
      if (cdsFinanxSel.AsString = '*') then
      begin
        if (vnfcpago > 0) then
        begin
          vtxt := ' ';
          if (Trim(cdsDadosControle.asString) <> '') then
            vtxt := Trim(cdsFinanProve.AsString)+' Baixa N.F.C.'+cdsDadosControle.asString;
          vnfcint := Trim(cdsFinanNFCINT.AsString)+cdsDadosLanc.asString+';';

          vnfcvlr := cdsFinanVALOR.asFloat - cdsFinanNFCVLR.asFloat;
          //Valor maior que o financeiro - baixa financeiro
          if (vnfcpago > vnfcvlr) then
          begin
            vnfcbaixa := cdsFinanVALOR.asFloat;
            //Desconta o valor para o proximo
            vnfcpago := vnfcpago - vnfcvlr;
          end
          else begin
            vnfcbaixa := cdsFinanNFCVLR.asFloat + vnfcpago;
            //Zera o valor para o proximo
            vnfcpago := 0;
          end;

          if (cdsFinanBaixa.asString = 'S') then
            fSql(1,3,['UPDATE CXBANCO SET NFCNOT = '+cdsDadosLanc.asString+','+
                      ' nfcint = '+QuotedStr(vnfcint)+','+
                      ' nfcvlr = '+frInvV(vnfcbaixa)+','+
                      ' prove = '+QuotedStr(vtxt),
                      ' WHERE LANC = 0'+cdsFinanLanc.asString],2)
          else
            fSql(1,3,['UPDATE CXBANCO SET Baixa = ''S'', '+
                      ' dtpago = '+frInvD(Date)+','+
                      ' nfcnot = '+cdsDadosLanc.asString+','+
                      ' nfcint = '+QuotedStr(vnfcint)+','+
                      ' nfcvlr = '+frInvV(vnfcbaixa)+','+
                      ' prove = '+QuotedStr(vtxt),
                      ' WHERE LANC = 0'+cdsFinanLanc.asString],2);
        end;
      end;
      cdsFinan.Next;
    end;
    cdsFinan.Close;
    TabFinan.TabVisible := False;
    pcItem.ActivePageIndex := 0;
    sbFiltrar.OnClick(sbFiltrar);
  end;
end;

end.
