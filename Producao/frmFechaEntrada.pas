unit frmFechaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppDB, ppDBPipe, ppDBBDE, ppParameter, ppComm, ppRelatv, ppProd,
  ppModule, raCodMod, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, ppDesignLayer,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmFechaEntrada = class(TFModelo)
    dsitem: TDataSource;
    cdsitem: TClientDataSet;
    dspitem: TDataSetProvider;
    dsorigem: TDataSource;
    cdsorigem: TClientDataSet;
    dsporigem: TDataSetProvider;
    PageControl1: TPageControl;
    tab_produto: TTabSheet;
    tab_Classi: TTabSheet;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit14: TDBEdit;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Tab_finan: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    GroupBox8: TGroupBox;
    SB1: TSpeedButton;
    SB3: TSpeedButton;
    dspfinan: TDataSetProvider;
    cdsfinan: TClientDataSet;
    dsfinan: TDataSource;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosDTLOTEINI: TSQLTimeStampField;
    sqlDadosDTLOTEFIM: TSQLTimeStampField;
    sqlDadosDTPRECOINI: TSQLTimeStampField;
    sqlDadosDTPRECOFIM: TSQLTimeStampField;
    sqlDadosDTFINANINI: TSQLTimeStampField;
    sqlDadosDTFINANFIM: TSQLTimeStampField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosINDUSOPCAO: TStringField;
    sqlDadosINDUSQTDE: TBCDField;
    sqlDadosINDUSPER: TBCDField;
    sqlDadosINDUSMUL: TBCDField;
    sqlDadosINDUSTOL: TBCDField;
    sqlDadosSACOLOPCAO: TStringField;
    sqlDadosSACOLQTDE: TBCDField;
    sqlDadosSACOLPER: TBCDField;
    sqlDadosSACOLMUL: TBCDField;
    sqlDadosSACOLTOL: TBCDField;
    sqlDadosTOTALBINS: TBCDField;
    sqlDadosTOTALCX: TBCDField;
    sqlDadosTOTALKGBRU: TBCDField;
    sqlDadosTOTALKGLIQ: TBCDField;
    sqlDadosTOTALMEDIA: TBCDField;
    sqlDadosTOTALEMBAL: TBCDField;
    sqlDadosTOTALOPER: TBCDField;
    sqlDadosTOTALCOMIS: TBCDField;
    sqlDadosSUBTOTAL: TBCDField;
    sqlDadosPERFUNRURAL: TBCDField;
    sqlDadosTOTALFUNRURAL: TBCDField;
    sqlDadosTOTALMULTA: TBCDField;
    sqlDadosTOTALLIQUIDO: TBCDField;
    sqlDadosTOTALDEBITO: TBCDField;
    sqlDadosTOTALCREDITO: TBCDField;
    sqlDadosTOTALARECEBER: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosDTLOTEINI: TSQLTimeStampField;
    cdsDadosDTLOTEFIM: TSQLTimeStampField;
    cdsDadosDTPRECOINI: TSQLTimeStampField;
    cdsDadosDTPRECOFIM: TSQLTimeStampField;
    cdsDadosDTFINANINI: TSQLTimeStampField;
    cdsDadosDTFINANFIM: TSQLTimeStampField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosINDUSOPCAO: TStringField;
    cdsDadosINDUSQTDE: TBCDField;
    cdsDadosINDUSPER: TBCDField;
    cdsDadosINDUSMUL: TBCDField;
    cdsDadosINDUSTOL: TBCDField;
    cdsDadosSACOLOPCAO: TStringField;
    cdsDadosSACOLQTDE: TBCDField;
    cdsDadosSACOLPER: TBCDField;
    cdsDadosSACOLMUL: TBCDField;
    cdsDadosSACOLTOL: TBCDField;
    cdsDadosTOTALBINS: TBCDField;
    cdsDadosTOTALCX: TBCDField;
    cdsDadosTOTALKGBRU: TBCDField;
    cdsDadosTOTALKGLIQ: TBCDField;
    cdsDadosTOTALMEDIA: TBCDField;
    cdsDadosTOTALEMBAL: TBCDField;
    cdsDadosTOTALOPER: TBCDField;
    cdsDadosTOTALCOMIS: TBCDField;
    cdsDadosSUBTOTAL: TBCDField;
    cdsDadosPERFUNRURAL: TBCDField;
    cdsDadosTOTALFUNRURAL: TBCDField;
    cdsDadosTOTALMULTA: TBCDField;
    cdsDadosTOTALLIQUIDO: TBCDField;
    cdsDadosTOTALDEBITO: TBCDField;
    cdsDadosTOTALCREDITO: TBCDField;
    cdsDadosTOTALARECEBER: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsorigemREGISTRO: TIntegerField;
    cdsorigemLANCIT: TIntegerField;
    cdsorigemLOTE: TIntegerField;
    cdsorigemDATA: TSQLTimeStampField;
    cdsorigemQTDE: TBCDField;
    cdsitemREGISTRO: TIntegerField;
    cdsitemLANCIT: TIntegerField;
    cdsitemPRODCOD: TIntegerField;
    cdsitemUNID: TStringField;
    cdsitemPESO: TBCDField;
    cdsitemCALIBRE: TIntegerField;
    cdsitemQTDE: TBCDField;
    cdsitemQTDEKG: TBCDField;
    cdsitemVLRMEDIA: TBCDField;
    cdsitemVLRMEDIAKG: TBCDField;
    cdsitemVLRTOTAL: TBCDField;
    cdsitemVLRTOTALKG: TBCDField;
    cdsitemPREEMBAL: TBCDField;
    cdsitemVLREMBAL: TBCDField;
    cdsitemPREOPER: TBCDField;
    cdsitemVLROPER: TBCDField;
    cdsitemPERCOMIS: TBCDField;
    cdsitemVLRCOMIS: TBCDField;
    cdsitemPERMULTA: TBCDField;
    cdsitemVLRMULTA: TBCDField;
    cdsitemVLRLIQUIDO: TBCDField;
    cdsitemPRELIQUIDO: TBCDField;
    cdsfinanREGISTRO: TIntegerField;
    cdsfinanLANCIT: TIntegerField;
    cdsfinanDATA: TSQLTimeStampField;
    cdsfinanDESCRICAO: TStringField;
    cdsfinanVLRDEBITO: TBCDField;
    cdsfinanVLRCREDITO: TBCDField;
    cdsfinanMANUAL: TStringField;
    DBGrid3: TDBGrid;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    Label21: TLabel;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    ppDados: TppBDEPipeline;
    ppOrigem: TppBDEPipeline;
    ppItem: TppBDEPipeline;
    ppFinan: TppBDEPipeline;
    cdsitemPRODDES: TStringField;
    ppRelFechaResumo: TppReport;
    cdsorigemDescricao: TStringField;
    PopupMenu3: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    frmPesquisaProd: TfrmPesquisa;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel28: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine2: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine3: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel34: TppLabel;
    ppDBText29: TppDBText;
    ppLabel35: TppLabel;
    ppDBText30: TppDBText;
    ppLabel36: TppLabel;
    ppDBText31: TppDBText;
    ppLabel41: TppLabel;
    ppDBText36: TppDBText;
    ppLabel42: TppLabel;
    ppDBText37: TppDBText;
    ppLabel43: TppLabel;
    ppDBText38: TppDBText;
    ppLabel44: TppLabel;
    ppDBText39: TppDBText;
    ppLabel45: TppLabel;
    ppDBText40: TppDBText;
    ppLine5: TppLine;
    ppLabel46: TppLabel;
    ppLine6: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine7: TppLine;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    DBEdit3: TcxDBDateEdit;
    DBEdit31: TcxDBDateEdit;
    DBEdit32: TcxDBDateEdit;
    DBEdit34: TcxDBDateEdit;
    DBEdit33: TcxDBDateEdit;
    dbDadosDBTableView1REGISTRO: TcxGridDBColumn;
    dbDadosDBTableView1NUMERO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1DTLOTEINI: TcxGridDBColumn;
    dbDadosDBTableView1DTLOTEFIM: TcxGridDBColumn;
    dbDadosDBTableView1DTPRECOINI: TcxGridDBColumn;
    dbDadosDBTableView1DTPRECOFIM: TcxGridDBColumn;
    dbDadosDBTableView1DTFINANINI: TcxGridDBColumn;
    dbDadosDBTableView1DTFINANFIM: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1INDUSOPCAO: TcxGridDBColumn;
    dbDadosDBTableView1INDUSQTDE: TcxGridDBColumn;
    dbDadosDBTableView1INDUSPER: TcxGridDBColumn;
    dbDadosDBTableView1INDUSMUL: TcxGridDBColumn;
    dbDadosDBTableView1INDUSTOL: TcxGridDBColumn;
    dbDadosDBTableView1SACOLOPCAO: TcxGridDBColumn;
    dbDadosDBTableView1SACOLQTDE: TcxGridDBColumn;
    dbDadosDBTableView1SACOLPER: TcxGridDBColumn;
    dbDadosDBTableView1SACOLMUL: TcxGridDBColumn;
    dbDadosDBTableView1SACOLTOL: TcxGridDBColumn;
    dbDadosDBTableView1TOTALBINS: TcxGridDBColumn;
    dbDadosDBTableView1TOTALCX: TcxGridDBColumn;
    dbDadosDBTableView1TOTALKGBRU: TcxGridDBColumn;
    dbDadosDBTableView1TOTALKGLIQ: TcxGridDBColumn;
    dbDadosDBTableView1TOTALMEDIA: TcxGridDBColumn;
    dbDadosDBTableView1TOTALEMBAL: TcxGridDBColumn;
    dbDadosDBTableView1TOTALOPER: TcxGridDBColumn;
    dbDadosDBTableView1TOTALCOMIS: TcxGridDBColumn;
    dbDadosDBTableView1SUBTOTAL: TcxGridDBColumn;
    dbDadosDBTableView1PERFUNRURAL: TcxGridDBColumn;
    dbDadosDBTableView1TOTALFUNRURAL: TcxGridDBColumn;
    dbDadosDBTableView1TOTALMULTA: TcxGridDBColumn;
    dbDadosDBTableView1TOTALLIQUIDO: TcxGridDBColumn;
    dbDadosDBTableView1TOTALDEBITO: TcxGridDBColumn;
    dbDadosDBTableView1TOTALCREDITO: TcxGridDBColumn;
    dbDadosDBTableView1TOTALARECEBER: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    sqlDadosLOTEORIGEM: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosLOTEORIGEM: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsorigemREGLOG: TStringField;
    cdsorigemREG_ID: TIntegerField;
    cdsitemVLRCAIXA: TBCDField;
    cdsitemREGLOG: TStringField;
    cdsitemREG_ID: TIntegerField;
    cdsfinanREGLOG: TStringField;
    cdsfinanREG_ID: TIntegerField;
    sqlorigem: TFDQuery;
    sqlitem: TFDQuery;
    sqlfinan: TFDQuery;
    sqlfinanLANCIT: TIntegerField;
    sqlfinanREGISTRO: TIntegerField;
    sqlfinanDATA: TSQLTimeStampField;
    sqlfinanDESCRICAO: TStringField;
    sqlfinanVLRDEBITO: TBCDField;
    sqlfinanVLRCREDITO: TBCDField;
    sqlfinanMANUAL: TStringField;
    sqlfinanREGLOG: TStringField;
    sqlfinanREG_ID: TIntegerField;
    sqlitemLANCIT: TIntegerField;
    sqlitemREGISTRO: TIntegerField;
    sqlitemPRODCOD: TIntegerField;
    sqlitemUNID: TStringField;
    sqlitemPESO: TBCDField;
    sqlitemCALIBRE: TIntegerField;
    sqlitemQTDE: TBCDField;
    sqlitemQTDEKG: TBCDField;
    sqlitemVLRMEDIA: TBCDField;
    sqlitemVLRMEDIAKG: TBCDField;
    sqlitemVLRTOTAL: TBCDField;
    sqlitemVLRTOTALKG: TBCDField;
    sqlitemPREEMBAL: TBCDField;
    sqlitemVLREMBAL: TBCDField;
    sqlitemPREOPER: TBCDField;
    sqlitemVLROPER: TBCDField;
    sqlitemPERCOMIS: TBCDField;
    sqlitemVLRCOMIS: TBCDField;
    sqlitemPERMULTA: TBCDField;
    sqlitemVLRMULTA: TBCDField;
    sqlitemVLRLIQUIDO: TBCDField;
    sqlitemPRELIQUIDO: TBCDField;
    sqlitemPRODDES: TStringField;
    sqlitemVLRCAIXA: TBCDField;
    sqlitemREGLOG: TStringField;
    sqlitemREG_ID: TIntegerField;
    sqlorigemLANCIT: TIntegerField;
    sqlorigemREGISTRO: TIntegerField;
    sqlorigemLOTE: TIntegerField;
    sqlorigemDATA: TSQLTimeStampField;
    sqlorigemQTDE: TBCDField;
    sqlorigemREGLOG: TStringField;
    sqlorigemREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure SB3Click(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure cdsorigemCalcFields(DataSet: TDataSet);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure GroupBox7Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
  private
    { Private declarations }
    procedure fMostraDetalhe;
    procedure fTotalizador;
    procedure fTotalBins;
    procedure fTotalFinan;
  public
    { Public declarations }
  end;

var
  FfrmFechaEntrada: TFfrmFechaEntrada;

implementation

{$R *.dfm}
uses Menu, Data, Rotina;

procedure TFfrmFechaEntrada.FormCreate(Sender: TObject);
begin
  inherited;
//  dtInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy',date));
//  dtFinal.Date   := StrToDate('31/12/'+FormatDateTime('yyyy',date));
  pcItem.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  frmPesquisaProd.pInicia('ttProdutor',TForm(Sender),7,147,GroupBox7,True);
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmFechaEntrada.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmFechaEntrada.cdsorigemCalcFields(DataSet: TDataSet);
begin
  inherited;
  case cdsOrigemLote.asInteger of
    1001: cdsOrigemDescricao.asString := 'EMPRÉSTIMO DE BINS';
    1002: cdsOrigemDescricao.asString := 'ENTRADA DE BINS';
    1003: cdsOrigemDescricao.asString := 'DEVOLUÇÃO';
    1004: cdsOrigemDescricao.asString := 'Total';
  end;
end;

procedure TFfrmFechaEntrada.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsDados.Edit;
  cdsDadosTotalFunRural.AsFloat := cdsDadosTotalMedia.asFloat * cdsDadosPerFunRural.AsFloat / 100;
  fTotalFinan;
end;

procedure TFfrmFechaEntrada.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  fTotalizador;
end;

procedure TFfrmFechaEntrada.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsItem.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsItemLancit.Text,1,2)='99' then begin
           cdsItem.Cancel;
           fTotalFinan;
           DBEdit11.SetFocus;
           Exit;
         end;
         cdsItemRegistro.asInteger := cdsDadosRegistro.AsInteger;
         if (cdsItemLancit.asInteger = 0) then
           cdsItemLancit.asInteger := frGenerator('FECHA_CLASSIF_ITEM','LANCIT',1);
       end;
    3: begin
         cdsItemVlrTotal.asFloat   := cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat;
         cdsItemVlrTotalKG.asFloat := cdsItemVlrTotal.asFloat;
       end;
  End;
  cdsItem.Post;
  if DBGrid1.SelectedIndex > 3 then
    fTotalizador;
end;

procedure TFfrmFechaEntrada.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsItem.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmFechaEntrada.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmFechaEntrada.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>4 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmFechaEntrada.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if cdsOrigem.State = dsInsert then cdsOrigem.Cancel;  
end;

procedure TFfrmFechaEntrada.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid2.ReadOnly := cdsDados.State = dsBrowse;
  cdsOrigem.Edit;
  DBGrid2.SelectedIndex:=1;
end;

procedure TFfrmFechaEntrada.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmFechaEntrada.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
    if DBGrid2.SelectedIndex<>1 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
    else begin
      DBGrid2.SelectedIndex:=0;
      fTotalBins;
    end;
  end;
end;

procedure TFfrmFechaEntrada.DBGrid3ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsFinan.Edit;
  Case DBGrid3.SelectedIndex of
    0: begin
         if Copy(cdsFinanLancit.Text,1,2)='99' then begin
           cdsFinan.Cancel;
           fTotalFinan;
           DBEdit11.SetFocus;
           Exit;
         end;
         cdsFinanRegistro.asInteger := cdsDadosRegistro.AsInteger;
         if (cdsFinanLancit.asInteger = 0) then
           cdsFinanLancit.asInteger := frGenerator('FECHA_CLASSIF_FINAN','LANCIT',1);

         if (Trim(cdsFinanManual.asString) = '') then
           cdsFinanManual.asString := 'S';
       end;
    3: begin
         cdsFinan.Post;
         fTotalFinan;
         cdsFinan.Next;
         if cdsFinan.Eof then cdsFinan.Append;
         DBGrid3.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmFechaEntrada.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid3.ReadOnly := cdsDados.State = dsBrowse;
  cdsFinan.Edit;
  DBGrid3.SelectedIndex:=0;
end;

procedure TFfrmFechaEntrada.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmFechaEntrada.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid3.SelectedIndex<>3 then DBGrid3.SelectedIndex:=DBGrid3.SelectedIndex+1
     else DBGrid3.SelectedIndex:=0;
  end;
end;

procedure TFfrmFechaEntrada.Excluir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsItem.delete;
end;

procedure TFfrmFechaEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmFechaEntrada);
end;

procedure TFfrmFechaEntrada.sbImprimirClick(Sender: TObject);
begin
  pcItem.ActivePageIndex := 1;
  //Analitico
  fMostraDetalhe;

  ppRelFechaResumo.DeviceType := 'Screen';
  ppRelFechaResumo.Print;

  pcItem.ActivePageIndex := 0;

end;

procedure TFfrmFechaEntrada.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime, 300) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaProd.pLimpaCampo;
           cdsDados.Append;
           cdsDadosRegistro.AsInteger := frGenerator('FECHA_CLASSIF','REGISTRO',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_FECHA_CLASSIF_ID');
           cdsDadosNumero.AsInteger   := 0;
           frmPesquisaProd.edtPesquisa.SetFocus;
           cdsDadosIndusOpcao.asString:= 'E';
           cdsDadosTOTALCX.asFloat    := 0;
           cdsDadosTOTALKGBRU.asFloat := 0;
           cdsDadosTOTALEMBAL.asFloat := 0;
           cdsDadosTOTALOPER.asFloat  := 0;
           cdsDadosTOTALCOMIS.asFloat := 0;
           cdsDadosTOTALMEDIA.asFloat := 0;
           cdsDadosSUBTOTAL.asFloat   := 0;
           cdsDadosTOTALMULTA.asFloat := 0;
           cdsDadosTotalFunRural.AsFloat := 0;
           cdsDadosData.AsDateTime           := Date;
           cdsDadosDTLoteIni.AsDateTime      := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTLoteFim.AsDateTime      := Date;
           cdsDadosDTFinanIni.AsDateTime     := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTFinanFim.AsDateTime     := Date;
           cdsDadosDTPrecoIni.AsDateTime     := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTPrecoFim.AsDateTime     := Date;
           fMostraDetalhe;
         end;
     13: begin
          cdsDados.Edit;
          DBEDIT3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From FECHA_CLASSIF_ITEM   Where Registro=0'+cdsDadosRegistro.asString],1);
           fSql(1,2,['Delete From FECHA_CLASSIF_ORIG   Where Registro=0'+cdsDadosRegistro.asString],1);
           fSql(1,2,['Delete From FECHA_CLASSIF_FINAN  Where Registro=0'+cdsDadosRegistro.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;

         end;
     15: begin
          try
            if cdsDadosNumero.AsInteger = 0 then cdsDadosNumero.AsInteger := frGenerator('FECHA_CLASSIF','NUMERO',1);
            cdsDadosProdCod.AsInteger  := frmPesquisaProd.vpCodPrincipal;
            cdsDadosProdDes.AsString   := frmPesquisaProd.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            //Não pode ficar em branco
            if cdsItem.RecordCount = 0 then
            begin
              cdsItem.Append;
              cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
              cdsItemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ITEM_ID');
              cdsItemLancit.asInteger  := 1;
              cdsItem.Post;
            end;
            //Não pode ficar em branco
            if cdsfinan.RecordCount = 0 then
            begin
              cdsfinan.Append;
              cdsfinanRegistro.asInteger:= cdsDadosRegistro.AsInteger;
              cdsfinanLancit.asInteger  := StrToInt(cdsDadosRegistro.AsString+'9991');
              cdsfinanREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_FINAN_ID');
              cdsfinan.Post;
            end;

            //Não pode ficar em branco
            if cdsOrigem.RecordCount = 0 then
            begin
              cdsOrigem.Append;
              cdsOrigemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ORIG_ID');
              cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
              cdsOrigemLancit.asInteger := StrToInt(cdsDadosRegistro.AsString+'9992');
              cdsOrigem.Post;
            end;

             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsItem.ApplyUpdates(-1);
             cdsOrigem.ApplyUpdates(-1);
             cdsFinan.ApplyUpdates(-1);
           except
             on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
           end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Edit;
             cdsDados.Cancel;
           except
           end;
           pLiberar('Geral');
         end;
    91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmFechaEntrada.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  cdsOrigem.Close;
  cdsItem.Close;
  cdsFinan.Close;

  sqlDados.SQL.Clear;
  sqlDados.SQL.Add('select * from fecha_classif');
  sqlDados.SQL.Add('where indusopcao = ''E''');
  sqlDados.SQL.Add('  and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  sqlDados.SQL.Add('order by numero');

  cdsDados.Open;
  cdsOrigem.Open;
  cdsItem.Open;
  cdsFinan.Open;
  cdsDados.Last;
  fMostraDetalhe;
end;

procedure TFfrmFechaEntrada.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    if cdsDados.IsEmpty then exit;
    frmPesquisaProd.pRetornaDados(cdsDadosProdCod.AsString);
    fMostraDetalhe;
  end;
end;

procedure TFfrmFechaEntrada.SB1Click(Sender: TObject);
var vdat,vcon: String; vlanc: Integer; vsoma: Double;
begin
  inherited;
  if (StrToIntDef(cdsDadosProdCod.asString,0)= 0) then
  begin
    ShowMessage('Obrigatótio informar produtor!');
    frmPesquisaProd.edtPesquisa.SetFocus;
    Exit;
  end;

  cdsorigem.First;
  while not cdsorigem.Eof do
    cdsorigem.Delete;
  cdsitem.First;
  while not cdsitem.Eof do
    cdsitem.Delete;

  vlanc := StrToInt(cdsDadosRegistro.AsString+'000');
  fBar(0,4,'Aguarde importando extrato de bins...');
  vdat := '(Data>='+frInvD(cdsDadosDTLOTEINI.AsDateTime)+' and Data<'+frInvD(cdsDadosDTLOTEFIM.AsDateTime+1)+')';
  fBar(1,1,'');
  //Emprestimo
  cdsOrigem.Append;
  cdsOrigemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ORIG_ID');
  cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
  cdsOrigemLancit.asInteger := vlanc +1;
  cdsOrigemData.AsDateTime     := cdsDadosData.AsDateTime;
  cdsOrigemLote.asInteger := 1001;
  fSql(1,1,['select Sum(binsqtd) as vqtd',
            '  from entre',
            ' where '  + vdat,
            '   and (prodcod = 0' +cdsDadosProdCod.asString+ ')'], 4);
  cdsOrigemQtde.asFloat   := dm.qrSql1.FieldByName('vqtd').asFloat;
  vsoma := cdsOrigemQtde.asFloat;
  cdsOrigemDescricao.asString := 'EMPRÉSTIMO DE BINS';
  cdsOrigem.Post;
  fBar(1,1,'');
  //Entrada
  cdsOrigem.Append;
  cdsOrigemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ORIG_ID');
  cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
  cdsOrigemLancit.asInteger := vlanc +2;
  cdsOrigemData.AsDateTime  := cdsDadosData.AsDateTime;
  cdsOrigemLote.asInteger := 1002;
  fSql(1,1,['select Sum(pr.varieqtd) as vqtd',
            '  from entre ro, entrevar pr',
            ' where (ro.lanc = pr.lanc)',
            '   and '  + vdat,
            '   and (ro.prodcod = 0' +cdsDadosProdCod.asString+ ')'], 5);
  cdsOrigemQtde.asFloat   := dm.qrSql1.FieldByName('vqtd').asFloat;
  vsoma := vsoma - cdsOrigemQtde.asFloat;
  cdsOrigemDescricao.asString := 'ENTRADA DE BINS';
  cdsOrigem.Post;
  fBar(1,1,'');
  //Devolução
  cdsOrigem.Append;
  cdsOrigemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ORIG_ID');
  cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
  cdsOrigemLancit.asInteger := vlanc +3;
  cdsOrigemData.AsDateTime  := cdsDadosData.AsDateTime;
  cdsOrigemLote.asInteger := 1003;
  fSql(1,1,['select Sum(binsqtd) as vqtd',
            '  from entre',
            ' where '  + vdat,
            '   and (prodcod = 0' +cdsDadosProdCod.asString+ ')'], 4);
  cdsOrigemQtde.asFloat   := dm.qrSql1.FieldByName('vqtd').asFloat;
  vsoma := vsoma - cdsOrigemQtde.asFloat;
  cdsOrigemDescricao.asString := 'DEVOLUÇÃO';
  cdsOrigem.Post;
  //Total
  cdsOrigem.Append;
  cdsOrigemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ORIG_ID');
  cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
  cdsOrigemLancit.asInteger := vlanc +4;
  cdsOrigemData.AsDateTime  := cdsDadosData.AsDateTime;
  cdsOrigemLote.asInteger := 1004;
  cdsOrigemQtde.asFloat   := vsoma;
  cdsOrigemDescricao.asString := 'Total';
  cdsOrigem.Post;
  cdsOrigem.First;

  //Item
  vdat := '(ro.Data>='+frInvD(cdsDadosDTLOTEINI.AsDateTime)+' and ro.Data<'+frInvD(cdsDadosDTLOTEFIM.AsDateTime+1)+')';
  fSql(1,1,['select pr.variecod, pr.variedes, sum(pr.varieqtd) as qtdbin, sum(pr.variepes) as qtdkg',
            '  from entre ro, entrevar pr',
            ' where (ro.lanc = pr.lanc)',
            '   and '  + vdat,
            '   and (ro.prodcod = 0' +cdsDadosProdCod.asString+ ')',
            'group by pr.variecod, pr.variedes',
            'order by pr.variecod'], 7);
  fBar(0,dm.qrSql1.RecordCount,'Aguarde importando variedades...');
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin
    fBar(1,1,'');
    cdsItem.Append;
    cdsItemREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_ITEM_ID');
    cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
    cdsItemLancit.asInteger  := frGenerator('FECHA_CLASSIF_ITEM','LANCIT',1);
    cdsItemProdCod.asInteger := dm.qrSql1.FieldByName('VarieCod').asInteger;
    cdsItemProdDes.asString  := dm.qrSql1.FieldByName('VarieDes').asString;
    cdsItemQtde.asFloat      := frDeci(dm.qrSql1.FieldByName('Qtdbin').asFloat,0);
    cdsItemQtdeKG.asFloat    := frDeci(dm.qrSql1.FieldByName('Qtdkg').asFloat,0);
    cdsItemVlrMedia.asFloat  := 0;
    cdsItemVlrTotal.asFloat  := 0;
    cdsItemPreEmbal.asFloat  := 0;
    cdsItemPreOper.asFloat   := 0;
    cdsItemPerComis.asFloat  := 0;
    cdsItemVlrLiquido.asFloat := 0;
    cdsItem.Post;
    dm.qrSql1.Next;
  end;
  fTotalizador;
  fBar(2,1,'');
  cdsItem.First;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFfrmFechaEntrada.SB3Click(Sender: TObject);
var vdat,vtes: String;
begin
  inherited;
  if (StrToIntDef(cdsDadosProdCod.asString,0)= 0) then
  begin
    ShowMessage('Obrigatótio informar produtor!');
    frmPesquisaProd.edtPesquisa.SetFocus;
    Exit;
  end;

  cdsfinan.First;
  while not cdsfinan.Eof do
  begin
    if cdsfinanManual.asString = 'N' then cdsfinan.Delete
    else cdsfinan.Next;
  end;

  vdat := '(Data>='+frInvD(cdsDadosDTFINANINI.AsDateTime)+' and Data<'+frInvD(cdsDadosDTFINANFIM.AsDateTime+1)+')';
  fSql(1,1,['select Lanc, Data, ValorReal, c.Reduz, Prove, BancoCod, BancoDoc',
            '  from cxbanco c, cadplano p ',
            ' where '  + vdat,
            '   and ((c.Reduz = p.Reduz) and (p.fgfechamento is null or p.fgfechamento = ''S''))',
            '   and (FormaDes <> ' +QuotedStr('C')+ ')',
            '   and (FavorCod = 0' +cdsDadosProdCod.asString+ ')',
            'order by Data, Lanc'], 7);
  fBar(0,dm.qrSql1.RecordCount,'Aguarde importando financeiro...');
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin
    fBar(1,1,'');
    cdsFinan.Append;
    cdsFinanREG_ID.AsInteger  := frGeneratorFB('GEN_FECHA_CLASSIF_FINAN_ID');
    cdsFinanRegistro.asInteger := cdsDadosRegistro.AsInteger;
//    cdsFinanLancit.asInteger   := dm.qrSql1.FieldByName('Lanc').asInteger; //frGenerator('FECHA_CLASSIF_FINAN','LANCIT',1);
    cdsFinanLancit.asInteger   := frGenerator('FECHA_CLASSIF_FINAN','LANCIT',1);
    cdsFinanData.AsDateTime    := dm.qrSql1.FieldByName('Data').AsDateTime;
    if (dm.qrSql1.FieldByName('ValorReal').asFloat >= 0) then
      cdsFinanVlrCredito.asFloat  := dm.qrSql1.FieldByName('ValorReal').asFloat
    else
      cdsFinanVlrDebito.asFloat   := dm.qrSql1.FieldByName('ValorReal').asFloat * -1;

    vtes := '';
    if (dm.qrSql1.FieldByName('BancoCod').asInteger > 0) then
    begin
      fSql(1,5,['select descricao from cadBanco where Codigo = 0' +dm.qrSql1.FieldByName('BancoCod').asString], 1);
      vtes := vtes + ' '+Trim(dm.qrSql5.Fields[0].asString);
    end;

    if (dm.qrSql1.FieldByName('Reduz').asInteger > 0) then
    begin
      fSql(1,5,['select descricao from cadPlano where Reduz = 0' +dm.qrSql1.FieldByName('Reduz').asString], 1);
      vtes := vtes + ' '+Trim(dm.qrSql5.Fields[0].asString);
    end;

    if (Trim(dm.qrSql1.FieldByName('Prove').asString) <> '') then
    begin
      if pos(dm.qrSql1.FieldByName('Prove').asString, vtes) = 0  then
      vtes := vtes + ' '+Trim(dm.qrSql1.FieldByName('Prove').asString);
    end;

    if (Trim(dm.qrSql1.FieldByName('BancoDoc').asString) <> '') then
    begin
      if pos(dm.qrSql1.FieldByName('BancoDoc').asString, vtes) = 0 then
        vtes := vtes + ' Doc.'+Trim(dm.qrSql1.FieldByName('BancoDoc').asString);
    end;

    cdsFinanDescricao.asString := Copy(vtes,1,120);

    cdsFinanManual.asString := 'N';
    cdsFinan.Post;
    dm.qrSql1.Next;
  end;
  fTotalFinan;
  fBar(2,1,'');
  cdsFinan.First;
  PageControl1.ActivePageIndex := 2;
end;

procedure TFfrmFechaEntrada.fMostraDetalhe;
begin
  //Produtos
  cdsitem.close;
  sqlitem.SQL.Clear;
  sqlitem.SQL.Add('select * from fecha_classif_item');
  sqlitem.SQL.Add('where registro = 0'+cdsDadosRegistro.asString);
  sqlitem.SQL.Add('order by lancit');
  cdsitem.Open;
  //Financeiro
  cdsfinan.close;
  sqlfinan.SQL.Clear;
  sqlfinan.SQL.Add('select * from fecha_classif_finan');
  sqlfinan.SQL.Add('where registro = 0'+cdsDadosRegistro.asString);
  sqlfinan.SQL.Add('order by lancit');
  cdsfinan.Open;
  //Origem
  cdsorigem.close;
  sqlorigem.SQL.Clear;
  sqlorigem.SQL.Add('select * from fecha_classif_orig');
  sqlorigem.SQL.Add('where registro = 0'+cdsDadosRegistro.asString);
  sqlorigem.SQL.Add('order by lancit');
  cdsorigem.Open;
end;

procedure TFfrmFechaEntrada.fTotalFinan;
var vreg: Integer;
    vdeb, vcre: Double;
begin
  vreg := cdsFinanLancit.asInteger;
  cdsFinan.DisableControls;
  vdeb := 0;
  vcre := 0;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    if ((cdsFinanVlrDebito.asFloat + cdsFinanVlrCredito.asFloat) = 0) then cdsFinan.Delete
    else begin
      vdeb := vdeb  + cdsFinanVlrDebito.asFloat;
      vcre := vcre  + cdsFinanVlrCredito.asFloat;
      cdsFinan.Next;
    end;
  end;
  cdsFinan.EnableControls;
  cdsDados.Edit;
  cdsDadosTOTALDEBITO.asFloat   := vdeb;
  cdsDadosTOTALCREDITO.asFloat  := vcre;
  cdsDadosTOTALARECEBER.asFloat := cdsDadosSUBTOTAL.asFloat -
                                  cdsDadosTotalFunRural.AsFloat -
                                  vdeb + vcre;
  cdsFinan.Locate('Lancit', vreg, []);
  cdsFinan.Next;
end;

procedure TFfrmFechaEntrada.fTotalBins;
var vreg: Integer; vsoma: Double;
begin
  vreg := cdsOrigemLancit.asInteger;
  cdsOrigem.DisableControls;
  cdsOrigem.First;
  vsoma := cdsOrigemQtde.asFloat;
  cdsOrigem.Next;
  vsoma := vsoma - cdsOrigemQtde.asFloat;
  cdsOrigem.Next;
  vsoma := vsoma - cdsOrigemQtde.asFloat;
  cdsOrigem.Next;
  cdsOrigem.Edit;
  cdsOrigemQtde.asFloat := vsoma;
  cdsOrigem.Post;
  cdsOrigem.EnableControls;
  cdsOrigem.Locate('Lancit', vreg, []);
  cdsOrigem.Next;
end;

procedure TFfrmFechaEntrada.fTotalizador;
var vreg: Integer;
    vcx, vkg, vmed: Double;
begin
  vreg := cdsItemLancit.asInteger;
  cdsitem.DisableControls;
  vcx  := 0;
  vkg  := 0;
  vmed := 0;
  cdsitem.First;
  while not cdsitem.Eof do
  begin
    //Recalcula
    cdsitem.Edit;
    cdsItemVlrTotal.asFloat   := cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat;
    cdsItemVlrTotalKG.asFloat := cdsItemVlrTotal.asFloat;
    cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat;
    if (cdsItemQtdeKG.asFloat > 0) then
      cdsItemPreLiquido.asFloat := cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat
    else
      cdsItemPreLiquido.asFloat := 0;
    cdsitem.Post;

    vcx  := vcx   + cdsItemQtde.asFloat;
    vkg  := vkg   + cdsItemQtdeKG.asFloat;
    vmed := vmed  + cdsItemVlrTotal.asFloat;
    cdsitem.Next;
  end;
  cdsitem.EnableControls;
  cdsDados.Edit;
  cdsDadosTOTALCX.asFloat    := vcx;
  cdsDadosTOTALKGBRU.asFloat := vkg;
  cdsDadosTOTALMEDIA.asFloat := vmed;
  cdsDadosSUBTOTAL.asFloat   := vmed - cdsDadosTOTALMULTA.asFloat;
  cdsDadosTotalFunRural.AsFloat := cdsDadosTotalMedia.asFloat * cdsDadosPerFunRural.AsFloat / 100;

  //Total Financeiro
  fTotalFinan;
  if PageControl1.ActivePageIndex = 0 then
  begin
    DBGrid1.SetFocus;
    DBGrid1.SelectedIndex := 0;
  end;
  cdsItem.Locate('Lancit', vreg, []);
  cdsitem.Next;
end;

procedure TFfrmFechaEntrada.GroupBox7Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (cdsDados.State = dsBrowse) then Exit;
  if frmPesquisaProd.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosProdCod.AsInteger  := frmPesquisaProd.vpCodPrincipal;
    DBEDIT3.SetFocus;
  end;
end;

procedure TFfrmFechaEntrada.Inserir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsItem.Append;
  DBGrid1.SelectedIndex := 0;
end;

procedure TFfrmFechaEntrada.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsFinan.Append;
end;

procedure TFfrmFechaEntrada.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsFinan.delete;
end;

procedure TFfrmFechaEntrada.MenuItem3Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsOrigem.Cancel;
end;

procedure TFfrmFechaEntrada.MenuItem4Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsOrigem.Cancel;
end;

end.

