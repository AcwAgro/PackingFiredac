unit frmRomanRastrear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, ShellApi, ppDB, ppDBPipe, ppDBBDE,
  ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppModule, raCodMod, ppReport,
  ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  ppDesignLayer, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmRomanRastrear = class(TFModelo)
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosHORINI: TStringField;
    sqlDadosHORFIM: TStringField;
    sqlDadosQTDEBIN: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosDATAFIN: TSQLTimeStampField;
    sqlDadosLOTE: TIntegerField;
    sqlDadosPESOPRO: TBCDField;
    sqlDadosPERCA: TBCDField;
    sqlDadosPEREC: TBCDField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosFECHA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosHORINI: TStringField;
    cdsDadosHORFIM: TStringField;
    cdsDadosQTDEBIN: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosDATAFIN: TSQLTimeStampField;
    cdsDadosLOTE: TIntegerField;
    cdsDadosPESOPRO: TBCDField;
    cdsDadosPERCA: TBCDField;
    cdsDadosPEREC: TBCDField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosFECHA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    dsRomanMer: TDataSource;
    cdsRomanMer: TClientDataSet;
    dspRomanMer: TDataSetProvider;
    dsRomanPro: TDataSource;
    cdsRomanPro: TClientDataSet;
    dspRomanPro: TDataSetProvider;
    cdsRomanProLANC: TIntegerField;
    cdsRomanProPRODCOD: TIntegerField;
    cdsRomanProPRODDES: TStringField;
    cdsRomanProQTDEBIN: TBCDField;
    cdsRomanProPESOBRU: TBCDField;
    cdsRomanProPESOLIQ: TBCDField;
    cdsRomanProLOTEENTRA: TIntegerField;
    cdsRomanProLANCIT: TIntegerField;
    cdsRomanProSAFRA: TStringField;
    cdsRomanMerLANC: TIntegerField;
    cdsRomanMerPRODCOD: TIntegerField;
    cdsRomanMerPRODDES: TStringField;
    cdsRomanMerUNIDADE: TStringField;
    cdsRomanMerQTDE: TBCDField;
    cdsRomanMerCODIAUX: TIntegerField;
    cdsRomanMerCALIBRE: TIntegerField;
    cdsRomanMerPESOLIQ: TBCDField;
    cdsRomanMerPESOREAL: TBCDField;
    cdsRomanMerLANCIT: TIntegerField;
    cdsRomanMerSAFRA: TStringField;
    GroupBox1: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    sqlDadosCODLOTECLASS: TStringField;
    cdsDadosCODLOTECLASS: TStringField;
    frmPesquisaVarie: TfrmPesquisa;
    sqlDadosprodnom: TStringField;
    cdsDadosprodnom: TStringField;
    sqlDadosOBS: TStringField;
    cdsDadosOBS: TStringField;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    DBRadioGroup4: TDBRadioGroup;
    dspRomanRas: TDataSetProvider;
    cdsRomanRas: TClientDataSet;
    dsRomanRas: TDataSource;
    cdsRomanRasLANCIT: TIntegerField;
    cdsRomanRasLANC: TIntegerField;
    cdsRomanRasNOTA: TIntegerField;
    cdsRomanRasLANCNOTA: TIntegerField;
    cdsRomanRasCLIENTE: TStringField;
    cdsRomanRasDATA: TSQLTimeStampField;
    cdsRomanRasEMPRECOD: TIntegerField;
    cdsRomanRasACESOCOD: TIntegerField;
    dspVendaItem: TDataSetProvider;
    cdsVendaItem: TClientDataSet;
    dsVendaItem: TDataSource;
    cdsVendaItemLANC: TIntegerField;
    cdsVendaItemQTDE: TBCDField;
    cdsVendaItemCODIGO: TIntegerField;
    cdsVendaItemDESCRICAO: TStringField;
    cdsVendaItemUNIDADE: TStringField;
    cdsVendaItemLANCIT: TIntegerField;
    sqlDadosFGENVIAWEB: TStringField;
    cdsDadosFGENVIAWEB: TStringField;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    cdsVendaItemCalibre: TStringField;
    cdsVendaItemCLIENTE: TIntegerField;
    Sb: TStatusBar;
    sbRelatorio: TSpeedButton;
    sbEmail: TSpeedButton;
    ppRelRastrear: TppReport;
    ppTitleBand4: TppTitleBand;
    ppLabel51: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel38: TppLabel;
    ppLine13: TppLine;
    ppLabel39: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel81: TppLabel;
    ppLine14: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText32: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    raCodeModule2: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppRoman: TppBDEPipeline;
    ppRomanPro: TppBDEPipeline;
    ppRomanMer: TppBDEPipeline;
    dspRomanEntra: TDataSetProvider;
    cdsRomanEntra: TClientDataSet;
    dsRomanEntra: TDataSource;
    cdsRomanEntradata: TSQLTimeStampField;
    cdsRomanEntraproddes: TStringField;
    cdsRomanEntraplacades: TStringField;
    cdsRomanEntrarecibo: TIntegerField;
    cdsRomanEntranota: TIntegerField;
    cdsRomanEntravariedes: TStringField;
    cdsRomanEntravarieqtd: TBCDField;
    cdsRomanEntravariepes: TBCDField;
    cdsRomanEntrabinsdes: TStringField;
    ppRomanEntra: TppBDEPipeline;
    ppLabel52: TppLabel;
    ppDBText45: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLine2: TppLine;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText6: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    dspRomanVenda: TDataSetProvider;
    cdsRomanVenda: TClientDataSet;
    dsRomanVenda: TDataSource;
    cdsRomanVendalanc: TIntegerField;
    cdsRomanVendanota: TIntegerField;
    cdsRomanVendadata: TSQLTimeStampField;
    cdsRomanVendacliente: TStringField;
    cdsRomanVendacodigo: TIntegerField;
    cdsRomanVendadescricao: TStringField;
    cdsRomanVendaqtde: TBCDField;
    ppSubReport4: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppRomanVenda: TppBDEPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine5: TppLine;
    ppLabel23: TppLabel;
    ppLabel19: TppLabel;
    ppLabel24: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    cdsRomanVendapsp: TIntegerField;
    ppLine6: TppLine;
    ppEmpresa: TppBDEPipeline;
    ppDBText21: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel25: TppLabel;
    cdsRomanMervRastrear: TStringField;
    ppDBText23: TppDBText;
    sbWebTodos: TSpeedButton;
    pbBarra: TProgressBar;
    IdFTP: TIdFTP;
    Panel1: TPanel;
    GroupBox9: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox10: TGroupBox;
    btnImporta: TSpeedButton;
    DBGrid4: TDBGrid;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox8: TGroupBox;
    DBGrid2: TDBGrid;
    dbDadosDBTableView1LOTE: TcxGridDBColumn;
    dbDadosDBTableView1FECHA: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1prodnom: TcxGridDBColumn;
    dbDadosDBTableView1FGENVIAWEB: TcxGridDBColumn;
    dbDadosDBTableView1DATAFIN: TcxGridDBColumn;
    dbDadosDBTableView1QTDEBIN: TcxGridDBColumn;
    dbDadosDBTableView1HORINI: TcxGridDBColumn;
    dbDadosDBTableView1HORFIM: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1PESOPRO: TcxGridDBColumn;
    dbDadosDBTableView1PERCA: TcxGridDBColumn;
    dbDadosDBTableView1PEREC: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn;
    dbDadosDBTableView1LOCALCOD: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    cdsRomanRasREGLOG: TStringField;
    cdsRomanRasREG_ID: TIntegerField;
    sqlRomanPro: TFDQuery;
    sqlRomanMer: TFDQuery;
    sqlRomanRas: TFDQuery;
    sqlVendaItem: TFDQuery;
    sqlRomanEntra: TFDQuery;
    sqlRomanVenda: TFDQuery;
    sqlRomanProLANCIT: TIntegerField;
    sqlRomanProLANC: TIntegerField;
    sqlRomanProPRODCOD: TIntegerField;
    sqlRomanProPRODDES: TStringField;
    sqlRomanProQTDEBIN: TBCDField;
    sqlRomanProPESOBRU: TBCDField;
    sqlRomanProPESOLIQ: TBCDField;
    sqlRomanProLOTEENTRA: TIntegerField;
    sqlRomanProSAFRA: TStringField;
    sqlRomanProREGLOG: TStringField;
    sqlRomanProREG_ID: TIntegerField;
    sqlRomanMerLANCIT: TIntegerField;
    sqlRomanMerLANC: TIntegerField;
    sqlRomanMerPRODCOD: TIntegerField;
    sqlRomanMerPRODDES: TStringField;
    sqlRomanMerUNIDADE: TStringField;
    sqlRomanMerQTDE: TBCDField;
    sqlRomanMerCODIAUX: TIntegerField;
    sqlRomanMerCALIBRE: TIntegerField;
    sqlRomanMerPESOLIQ: TBCDField;
    sqlRomanMerPESOREAL: TBCDField;
    sqlRomanMerSAFRA: TStringField;
    sqlRomanMerLANCMANUAL: TStringField;
    sqlRomanMerREGLOG: TStringField;
    sqlRomanMerREG_ID: TIntegerField;
    sqlRomanRasLANCIT: TIntegerField;
    sqlRomanRasLANC: TIntegerField;
    sqlRomanRasNOTA: TIntegerField;
    sqlRomanRasLANCNOTA: TIntegerField;
    sqlRomanRasCLIENTE: TStringField;
    sqlRomanRasDATA: TSQLTimeStampField;
    sqlRomanRasEMPRECOD: TIntegerField;
    sqlRomanRasACESOCOD: TIntegerField;
    sqlRomanRasREGLOG: TStringField;
    sqlRomanRasREG_ID: TIntegerField;
    sqlVendaItemLANCIT: TIntegerField;
    sqlVendaItemLANC: TIntegerField;
    sqlVendaItemDATA: TSQLTimeStampField;
    sqlVendaItemCLIENTE: TIntegerField;
    sqlVendaItemCODIGO: TIntegerField;
    sqlVendaItemDESCRICAO: TStringField;
    sqlVendaItemUNIDADE: TStringField;
    sqlVendaItemPESOLIQ: TBCDField;
    sqlVendaItemPESOBRU: TBCDField;
    sqlVendaItemQTDE: TBCDField;
    sqlVendaItemUNIT: TFMTBCDField;
    sqlVendaItemVALOR: TBCDField;
    sqlVendaItemGRUPOCOD: TIntegerField;
    sqlVendaItemPERDESC: TBCDField;
    sqlVendaItemVLRDESC: TBCDField;
    sqlVendaItemVENCTO: TSQLTimeStampField;
    sqlVendaItemRUNIT: TFMTBCDField;
    sqlVendaItemRVALOR: TBCDField;
    sqlVendaItemEMPRECOD: TIntegerField;
    sqlVendaItemACESOCOD: TIntegerField;
    sqlVendaItemESTOQUE: TStringField;
    sqlVendaItemNATURCOD: TBCDField;
    sqlVendaItemICMS_SIT: TStringField;
    sqlVendaItemICMS_PER: TBCDField;
    sqlVendaItemICMS_RED: TBCDField;
    sqlVendaItemICMS_BASE: TBCDField;
    sqlVendaItemICMS_VLR: TBCDField;
    sqlVendaItemIPI_SIT: TStringField;
    sqlVendaItemIPI_PER: TBCDField;
    sqlVendaItemIPI_BASE: TBCDField;
    sqlVendaItemIPI_VLR: TBCDField;
    sqlVendaItemPRUNIT: TFMTBCDField;
    sqlVendaItemPREMB: TBCDField;
    sqlVendaItemCODLOTECLASS: TStringField;
    sqlVendaItemNCM_COD: TStringField;
    sqlVendaItemNCM_PER: TBCDField;
    sqlVendaItemNCM_VLR: TBCDField;
    sqlVendaItemICMS_CREDPER: TBCDField;
    sqlVendaItemICMS_CREDVLR: TBCDField;
    sqlVendaItemEHSERVICO: TStringField;
    sqlVendaItemEHSERVPER: TBCDField;
    sqlVendaItemEHSERVVLR: TBCDField;
    sqlVendaItemRVLRMEDIO: TBCDField;
    sqlVendaItemPIS_SIT: TStringField;
    sqlVendaItemPIS_PER: TBCDField;
    sqlVendaItemPIS_BASE: TBCDField;
    sqlVendaItemPIS_VLR: TBCDField;
    sqlVendaItemCOFINS_SIT: TStringField;
    sqlVendaItemCOFINS_PER: TBCDField;
    sqlVendaItemCOFINS_BASE: TBCDField;
    sqlVendaItemCOFINS_VLR: TBCDField;
    sqlVendaItemIPI_CENQ: TStringField;
    sqlVendaItemPRODUTOCOD: TStringField;
    sqlVendaItemNCM_PERE: TBCDField;
    sqlVendaItemNCM_VLRE: TBCDField;
    sqlVendaItemNCM_PERM: TBCDField;
    sqlVendaItemNCM_VLRM: TBCDField;
    sqlVendaItemUTRIB: TStringField;
    sqlVendaItemQTRIB: TBCDField;
    sqlVendaItemVUNTRIB: TFMTBCDField;
    sqlVendaItemCBENEF: TStringField;
    sqlVendaItemREGLOG: TStringField;
    sqlVendaItemREG_ID: TIntegerField;
    sqlRomanEntraRECIBO: TIntegerField;
    sqlRomanEntraDATA: TSQLTimeStampField;
    sqlRomanEntraPRODDES: TStringField;
    sqlRomanEntraPLACADES: TStringField;
    sqlRomanEntraNOTA: TIntegerField;
    sqlRomanEntraVARIEDES: TStringField;
    sqlRomanEntraVARIEQTD: TBCDField;
    sqlRomanEntraVARIEPES: TBCDField;
    sqlRomanEntraBINSDES: TStringField;
    sqlRomanVendaLANC: TIntegerField;
    sqlRomanVendaNOTA: TIntegerField;
    sqlRomanVendaDATA: TSQLTimeStampField;
    sqlRomanVendaCLIENTE: TStringField;
    sqlRomanVendaPSP: TIntegerField;
    sqlRomanVendaCODIGO: TIntegerField;
    sqlRomanVendaDESCRICAO: TStringField;
    sqlRomanVendaQTDE: TBCDField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure cdsRomanRasBeforePost(DataSet: TDataSet);
    procedure Excluir1Click(Sender: TObject);
    procedure cdsVendaItemCalcFields(DataSet: TDataSet);
    procedure sbImprimirClick(Sender: TObject);
    procedure cdsRomanRasAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure sbRelatorioClick(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure cdsRomanMerCalcFields(DataSet: TDataSet);
    procedure sbWebTodosClick(Sender: TObject);
    procedure IdFTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdFTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
  private
    { Private declarations }
    function pCriaArquivo(vpasta, varquivo, varquivoAnt:String):Boolean;
    function pEnviaArquivoAnt(vde, vparaAnt, varquivo:String):Boolean;
    function pEnviaArquivoAtu(vde, vparaAtu, varquivo:String):Boolean;
    procedure pDeletaArquivo(vpasta, varquivo:String);
    procedure pAbreMapaRastreamento(vCodigo:Integer);
    function  pRetornaEmail:String;
    procedure pImprimirPdf(vPDF: String);
    procedure pRotinaEnviaWeb;

  public
    { Public declarations }
    AbortTransfer: Boolean;
    TransferrignData: Boolean;
    BytesToTransfer: LongWord;
    STime: TDateTime;
    xDirFtpAtu, xDirFtpAnt, xcpfcnpj, xanoant, xanoatu: String;
  end;

var
  FfrmRomanRastrear: TFfrmRomanRastrear;

implementation

{$R *.dfm}
uses Data, Menu, zModeloRel, Pesq, Rotina, zEmail, Email;

var
  AverageSpeed: Double = 0;

procedure TFfrmRomanRastrear.FormCreate(Sender: TObject);
begin
  inherited;
  xDirFtpAnt := '/sistemas/rastrear/';
  xDirFtpAtu := '/';

  IdFTP.Host     := 'ftp.acwebsystem.com.br';
  IdFTP.Password := 'Acweb#1974'; //'25e92bfHiK';
  IdFTP.Username := 'u986155160.acwagro'; //'websystem';
  IdFTP.Port     := 21;

  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  SB.Panels[2].Text := '';


  frmPesquisaVarie.pInicia('ttVariedade', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomanRastrear.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomanRastrear.cdsRomanMerCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsRomanMervRastrear.AsString := 'R'+Trim(cdsRomanMerLanc.AsString)
                                 + 'L'+Trim(cdsRomanMerProdCod.AsString);

end;

procedure TFfrmRomanRastrear.cdsRomanRasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not cdsRomanRas.Active then exit;

  cdsVendaItem.Close;
  sqlVendaItem.ParamByName('idLanc').asString := cdsRomanRasLANCNOTA.asString;
  sqlVendaItem.ParamByName('idGrupo').asString := cdsDadosVARIECOD.asString;
  cdsVendaItem.Open;

end;

procedure TFfrmRomanRastrear.cdsRomanRasBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanRasLanc.asInteger   = 0 then  cdsRomanRasLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsRomanRasLancit.asInteger = 0 then  cdsRomanRasLancit.asInteger:= frGenerator('ROMANRAS','LANCIT',1);
  if cdsRomanRasREG_ID.asInteger = 0 then  cdsRomanRasREG_ID.asInteger := frGeneratorFB('GEN_ROMANRAS_ID');
end;

procedure TFfrmRomanRastrear.cdsVendaItemCalcFields(DataSet: TDataSet);
var vcal: String;
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    vcal := cdsVendaItem.FieldByName('Codigo').asString;
    vcal := Copy(vcal, (length(vcal)-2),3);
    cdsVendaItemCalibre.Text := vcal;
  end;

end;

procedure TFfrmRomanRastrear.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  pAbreMapaRastreamento(cdsRomanMerPRODCOD.asInteger);
end;

procedure TFfrmRomanRastrear.DBGrid3ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsRomanRas.Edit;
  Case DBGrid3.SelectedIndex of
    0: begin
         if Copy(cdsRomanRas.FieldByName('Nota').Text,1,3)='999' then
         begin
           cdsRomanRas.Delete;
           DBEdit14.SetFocus;
           Abort;
         end;
         if Trim(cdsRomanRas.FieldByName('Nota').Text)='' then
           cdsRomanRas.Delete;

         if cdsRomanRas.FieldByName('Nota').asInteger <> 0 then
         begin
           if fTra(1,['Select Lanc, Data, Descricao From NFVenda Where dif = ''S'' and nota=0'+cdsRomanRas.FieldByName('Nota').Text],1) then
           begin
             cdsRomanRas.FieldByName('LancNota').Value  :=dm.qrSqlTra.Fields[0].Value;
             cdsRomanRas.FieldByName('Data').Value      :=dm.qrSqlTra.Fields[1].Value;
             cdsRomanRas.FieldByName('Cliente').Text    :=dm.qrSqlTra.Fields[2].Text;
           end else begin
             ShowMessage('Nota não encontrada!');
             Abort;
           end;
         end;
       end;
    1,2: begin
         cdsRomanRas.Post;
         cdsRomanRas.Next;
         if cdsRomanRas.Eof then cdsRomanRas.Append;
         DBGrid3.SelectedIndex := 0;
       end;
  end;

end;

procedure TFfrmRomanRastrear.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsRomanRas.Edit;
  DBGrid3.ReadOnly := False;
  DBGrid3.SelectedIndex:=0;

end;

procedure TFfrmRomanRastrear.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;

end;

procedure TFfrmRomanRastrear.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
    if DBGrid3.SelectedIndex <> 2 then
      DBGrid3.SelectedIndex := DBGrid3.SelectedIndex+1
    else
      DBGrid3.SelectedIndex:=0;
  end;

end;

procedure TFfrmRomanRastrear.DBGrid4DblClick(Sender: TObject);
begin
  inherited;
  pAbreMapaRastreamento(cdsVendaItemCODIGO.asInteger);
end;

procedure TFfrmRomanRastrear.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsRomanRas.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsRomanRas.Delete;

end;

procedure TFfrmRomanRastrear.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomanRastrear);
end;

procedure TFfrmRomanRastrear.sbIncluirClick(Sender: TObject);
var vlot,vlanc:Integer;
begin

  Case TComponent(Sender).Tag of
    12,14,18: Exit;
  End;


  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
    exit;

  inherited;

  Case TComponent(Sender).Tag of
     13: begin
          cdsDados.Edit;
          cdsRomanRas.Edit;
          DBGrid3.SetFocus;
        end;
     15: begin
          try
            if (cdsRomanRas.RecordCount > 0) then
            begin
              cdsRomanRas.First;
              while not cdsRomanRas.eof do
              begin
                if cdsRomanRas.FieldByName('Nota').asInteger = 0 then
                  cdsRomanRas.Delete
                else begin
                  cdsRomanRas.Edit;
                  cdsRomanRas.Post;
                end;
                cdsRomanRas.Next;
              end;
              cdsRomanRas.Post;
              cdsRomanRas.ApplyUpdates(-1);

            end;
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           pLiberar('Geral');
         end;
    91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmRomanRastrear.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;

  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select roman .*, '
                  +' Cast(SubString((SELECT LIST(romanpro.proddes, '', '') from romanpro where romanpro.lanc = ROMAN.LANC) from 1 for 50) as varchar(50)) AS PRODNOM'
                  +' from roman where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)
                  +' Order by data desc');
  cdsDados.Open;
end;

procedure TFfrmRomanRastrear.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsRomanRas.Append;
  dbGrid3.SetFocus;
end;

procedure TFfrmRomanRastrear.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin

    cdsRomanPro.close;
    sqlRomanPro.SQL.Clear;
    sqlRomanPro.SQL.Add('select * from romanpro');
    sqlRomanPro.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlRomanPro.SQL.Add('order by lanc');
    cdsRomanPro.Open;

    cdsRomanMer.close;
    sqlRomanMer.SQL.Clear;
    sqlRomanMer.SQL.Add('select * from romanmer');
    sqlRomanMer.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    cdsRomanMer.Open;

    cdsRomanRas.close;
    sqlRomanRas.SQL.Clear;
    sqlRomanRas.SQL.Add('select * from romanras');
    sqlRomanRas.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    cdsRomanRas.Open;

    frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
  end;
end;

procedure TFfrmRomanRastrear.sbImprimirClick(Sender: TObject);
var vqrcode,vqrcodeAnt,xanomes: String;
    vresult: Boolean;
begin
  if cdsDados.RecordCount > 0 then
    if not frPerg('Deseja Enviar informações para WEB ?') then
      Exit;

  //Criando processo de envio para WEB Rastreamento.

  try

    if IdFTP.Connected then
    begin
      try
        if TransferrignData then IdFTP.Abort;
        IdFTP.Quit;
      finally
        IdFTP.Disconnect;
      end
    end;

    fBar(0,cdsdados.RecordCount+1,'Rastreamento WEB');
    fBar(1,1,'');

    pRotinaEnviaWeb;

  finally
    fBar(2,0,'');

    Application.ProcessMessages;
    IdFTP.Disconnect;
    frPerg('Processo de envio finalizado!','OK');

  end;

end;

function TFfrmRomanRastrear.pCriaArquivo(vpasta, varquivo, varquivoAnt:String):Boolean;
var varq: TextFile;
    vWebOrigem,vWebDestino: String;
    vcod_produtor, vi, vprodutoCod: Integer;
begin

  result := False;
  //verifica se existe o arquivo mapa.html no diretorio, caso exista deleta o mesmo
  if FileExists(vpasta+varquivo) then
    DeleteFile(vpasta+varquivo);

  if (Trim(varquivoAnt) <> '') then
  begin
    if FileExists(vpasta+varquivoAnt) then
      DeleteFile(vpasta+varquivoAnt);
  end;

  try
    try
      for vi := 1 to 2 do
      begin
        if vi = 2 then
          varquivo := varquivoAnt;

        if (Trim(varquivo) <> '') then
        begin

          AssignFile(varq, vpasta+varquivo);
          Rewrite(varq);

      //*** Cabeçalho
          Writeln(varq, frAcenWeb('<html xmlns=''http://www.w3.org/1999/xhtml''>'));
          Writeln(varq, frAcenWeb('<head>'));
          Writeln(varq, frAcenWeb('	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />'));

          if vi = 2 then
            Writeln(varq, frAcenWeb('	<link rel="stylesheet" media="screen" type="text/css" href="../../style.css"  />'))
          else
            Writeln(varq, frAcenWeb('	<link rel="stylesheet" media="screen" type="text/css" href="../style.css"  />'));

          Writeln(varq, frAcenWeb('	<title>ACWAgro - ACWAgro softwares para cooperativas e produtores rurais</title>'));

          Writeln(varq, frAcenWeb('	 <script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyBXT5DWBL5MjxLMZP6c27EV2JR5OJXIYRU&callback=initMap"></script>'));
          Writeln(varq, frAcenWeb('	 <script type="text/javascript" language="javascript">'));
          Writeln(varq, frAcenWeb('	 </script>'));

          Writeln(varq, frAcenWeb('  <div id="holder">'));
          Writeln(varq, frAcenWeb('    <div id="header">'));
          Writeln(varq, frAcenWeb('	    	<div id="menu_img_left"><p> <br /> </p>'));
          Writeln(varq, frAcenWeb('		  	  <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('		    </div>'));
          Writeln(varq, frAcenWeb('    </div>'));
          Writeln(varq, frAcenWeb('    <div class="clear"></div>'));
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('	    	<a href="http://www.acwagro.com.br" target="_blank">Visite o site www.acwagro.com.br</a>'));
          Writeln(varq, frAcenWeb('	   </div>'));
          Writeln(varq, frAcenWeb('    <div class="left">'));
          Writeln(varq, frAcenWeb('      <div class="content">'));
          Writeln(varq, frAcenWeb('	       <h1>Rastreamento produto da origem ao destino</h1>'));
          Writeln(varq, frAcenWeb('	     </div>'));

      //*** Empresa Distribuidor
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('	      <h2>Informações do Distribuidor</h2>'));
          Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Nome: '+dm.TEmpresa.FieldByName('Descricao').asString
                                                                     +' - '+dm.TEmpresa.FieldByName('CPF').asString
                                                                     +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Endereço: '+dm.TEmpresa.FieldByName('Endereco').asString
                                                                         +' '+dm.TEmpresa.FieldByName('Bairro').asString
                                                                         +' '+dm.TEmpresa.FieldByName('CidadeDes').asString
                                                                         +'/'+dm.TEmpresa.FieldByName('Estado').asString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('	 	  	<a><div id="linha"> Coordenada geográfica: '+dm.TEmpresa.FieldByName('WebLocal').asString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('	      <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('	   </div>'));

          if (Trim(dm.TEmpresa.FieldByName('WebLocal').asString) <> '') then
            vWebOrigem := dm.TEmpresa.FieldByName('WebLocal').asString
          else
            vWebOrigem := frMapaRetLocalExt('',
                               dm.TEmpresa.FieldByName('Endereco').asString,
                               dm.TEmpresa.FieldByName('Bairro').asString,
                               dm.TEmpresa.FieldByName('CidadeDes').asString,
                               dm.TEmpresa.FieldByName('Estado').asString);

      //*** Produtor
          cdsRomanPro.First;
          vcod_produtor := 0;
          while not cdsRomanPro.Eof do
          begin

            if (vcod_produtor <> cdsRomanProPRODCOD.asInteger) then
            begin
              vcod_produtor := cdsRomanProPRODCOD.asInteger;

              fSql(1,1,['Select descricao, endereco, bairro, cidadedes, estado, cpf, weblocal from cadforne where codigo = 0'+cdsRomanProPRODCOD.asString],1);
              Writeln(varq, frAcenWeb('    <div class="content">'));
              Writeln(varq, frAcenWeb('	     <h2>Informações da Origem</h2>'));
              Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Nome: '+dm.qrSql1.FieldByName('Descricao').asString
                                                                         +' - '+dm.qrSql1.FieldByName('CPF').asString
                                                                         +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Endereço: '+dm.qrSql1.FieldByName('Endereco').asString
                                                                             +', '+dm.qrSql1.FieldByName('Bairro').asString
                                                                             +' - '+dm.qrSql1.FieldByName('CidadeDes').asString
                                                                             +'/'+dm.qrSql1.FieldByName('Estado').asString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('	 	  	<a><div id="linha"> Coordenada geográfica: '+dm.qrSql1.FieldByName('WebLocal').asString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('	       <a href="#"> </a><br />'));

              if (Trim(dm.qrSql1.FieldByName('WebLocal').asString) <> '') then
                vWebDestino := dm.qrSql1.FieldByName('WebLocal').asString
              else
                vWebDestino := frMapaRetLocalExt('',
                                   dm.qrSql1.FieldByName('Endereco').asString,
                                   dm.qrSql1.FieldByName('Bairro').asString,
                                   dm.qrSql1.FieldByName('CidadeDes').asString,
                                   dm.qrSql1.FieldByName('Estado').asString);
            end;

            cdsRomanPro.Next;
          end;
          cdsRomanPro.First;

          //Produto
          fSql(1,1,['Select variedes, unidade, ncm, pesoliq from cadprodu where codigo = 0'+cdsRomanMerPRODCOD.asString],1);
          Writeln(varq, frAcenWeb('	     <h2>Informações sobre o Produto</h2>'));
          Writeln(varq, frAcenWeb('		   	 <a><div id="linha"> Descrição do produto: '+cdsRomanMerPRODDES.asString
                                                                                      +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Família/Cultivar: '+dm.qrSql1.FieldByName('VARIEDES').AsString
                                                                                  +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> NCM: '+dm.qrSql1.FieldByName('NCM').AsString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Quantidade do produto: '+FormatFloat('0',cdsRomanMerQTDE.asFloat)
                                                                                      +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Unidade: '+dm.qrSql1.FieldByName('UNIDADE').AsString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Peso Líquido: '+FormatFloat('0.###',dm.qrSql1.FieldByName('PESOLIQ').asFloat)+' kg'
                                                                                      +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Identificação do lote: '+cdsDadosLOTE.asString
                                                                                       +' '+cdsDadosCODLOTECLASS.asString
                                                                                       +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Data de recebimento: '+DateToStr(cdsDadosDATA.asDateTime)
                                                                                     +'</a><br /></div>'));
          Writeln(varq, frAcenWeb('	       <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('	   </div>'));

      //*** Mapa Distribuidor - Produtor
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('      <div style="padding:10px">'));
          Writeln(varq, frAcenWeb('            <iframe id="map" width="100%" height="50%"'));
          Writeln(varq, frAcenWeb('			          frameborder="0" scrolling="no"'));
          Writeln(varq, frAcenWeb('				       	marginheight="0"'));
          Writeln(varq, frAcenWeb('					      marginwidth="0"'));
          Writeln(varq, frAcenWeb('			          src="https://maps.google.com/maps?saddr='+vWebDestino+'&daddr='+vWebOrigem+'&amp;output=embed">'));
          Writeln(varq, frAcenWeb('			       </iframe>'));
          Writeln(varq, frAcenWeb('      </div>'));
          Writeln(varq, frAcenWeb('	     <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('	   </div>'));


      //*** Cliente
          cdsRomanRas.First;
          while not cdsRomanRas.Eof do
          begin

            //Pesquisa no cliente se tem o produto - caso não encontre vai verificar se não é clonegem - Coopema
            vprodutoCod := cdsRomanMerPRODCOD.asInteger;
            if not cdsVendaItem.Locate('CODIGO', vprodutoCod, []) then
            begin

              vprodutoCod := StrToIntDef(fBus(1,['Select distinct Duplicacod from cadvarie '+
                                                 ' where codigo = 0'+Copy(cdsRomanMerPRODCOD.AsString,1,2)],1),0);
              vprodutoCod := StrToInt(IntToStr(vprodutoCod) + Copy(cdsRomanMerPRODCOD.AsString,3,5));

            end;

            //Busca o produto
            if cdsVendaItem.Locate('CODIGO', vprodutoCod, []) then
            begin

              fSql(1,1,['Select descricao, endereco, bairro, cidadedes, estado, cpf, weblocal from cadclien where codigo = 0'+cdsVendaItemCLIENTE.asString],1);
              Writeln(varq, frAcenWeb('    <div class="content">'));
              Writeln(varq, frAcenWeb('	     <h2>Informações do Destino</h2>'));
              Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Nome: '+dm.qrSql1.FieldByName('Descricao').asString
                                                                         +' - '+dm.qrSql1.FieldByName('CPF').asString
                                                                         +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Endereço: '+dm.qrSql1.FieldByName('Endereco').asString
                                                                             +', '+dm.qrSql1.FieldByName('Bairro').asString
                                                                             +' - '+dm.qrSql1.FieldByName('CidadeDes').asString
                                                                             +'/'+dm.qrSql1.FieldByName('Estado').asString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('	 	  	<a><div id="linha"> Coordenada geográfica: '+dm.qrSql1.FieldByName('WebLocal').asString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('	       <a href="#"> </a><br />'));

              if (Trim(dm.qrSql1.FieldByName('WebLocal').asString) <> '') then
                vWebDestino := dm.qrSql1.FieldByName('WebLocal').asString
              else
                vWebDestino := frMapaRetLocalExt('',
                               dm.qrSql1.FieldByName('Endereco').asString,
                               dm.qrSql1.FieldByName('Bairro').asString,
                               dm.qrSql1.FieldByName('CidadeDes').asString,
                               dm.qrSql1.FieldByName('Estado').asString);

              //Produto
              fSql(1,1,['Select variedes, unidade, ncm, pesoliq from cadprodu where codigo = 0'+cdsVendaItemCODIGO.asString],1);
              Writeln(varq, frAcenWeb('	     <h2>Informações sobre o Produto</h2>'));
              Writeln(varq, frAcenWeb('		   	 <a><div id="linha"> Descrição do produto: '+cdsVendaItemDESCRICAO.asString
                                                                                          +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> Família/Cultivar: '+dm.qrSql1.FieldByName('VARIEDES').AsString
                                                                                      +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> NCM: '+dm.qrSql1.FieldByName('NCM').AsString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> Quantidade do produto: '+FormatFloat('0',cdsVendaItemQTDE.asFloat)
                                                                                          +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> Unidade: '+dm.qrSql1.FieldByName('UNIDADE').AsString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> Peso Líquido: '+FormatFloat('0.###',dm.qrSql1.FieldByName('PESOLIQ').asFloat)+' kg'
                                                                                          +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> Identificação do lote: '+cdsDadosLOTE.asString
                                                                                           +' '+cdsDadosCODLOTECLASS.asString
                                                                                           +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> Data de recebimento: '+DateToStr(cdsRomanRasDATA.asDateTime)
                                                                                         +'</a><br /></div>'));
              Writeln(varq, frAcenWeb('			   <a><div id="linha"> NFe/Saída Nr.: '+cdsRomanRasNOTA.asString
                                                                                         +'</a><br /></div>'));
              Writeln(varq, frAcenWeb('	       <a href="#"> </a><br />'));
              Writeln(varq, frAcenWeb('	   </div>'));

              //*Mapa Distribuidor - Cliente
              Writeln(varq, frAcenWeb('    <div class="content">'));
              Writeln(varq, frAcenWeb('      <div style="padding:10px">'));
              Writeln(varq, frAcenWeb('            <iframe id="map" width="100%" height="50%"'));
              Writeln(varq, frAcenWeb('			          frameborder="0" scrolling="no"'));
              Writeln(varq, frAcenWeb('				       	marginheight="0"'));
              Writeln(varq, frAcenWeb('					      marginwidth="0"'));
              Writeln(varq, frAcenWeb('			          src="https://maps.google.com/maps?saddr='+vWebOrigem+'&daddr='+vWebDestino+'&amp;output=embed">'));
              Writeln(varq, frAcenWeb('			       </iframe>'));
              Writeln(varq, frAcenWeb('      </div>'));
              Writeln(varq, frAcenWeb('	     <a href="#"> </a><br />'));
              Writeln(varq, frAcenWeb('	   </div>'));

            end;

            cdsRomanRas.Next;

          end;
          cdsRomanRas.First;

      //*** Rodapé
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('     <h3>Whatsapp (41) 9.9255-7216 </h3>'));
          Writeln(varq, frAcenWeb('     <h3>ACW Desenvolvimento de Software Agronegócios Ltda  Curitiba - Paraná - Brasil </h3>'));
          Writeln(varq, frAcenWeb('     <h3>&copy; 2018 AcwAgronegócios - Todos os direitos reservados. </h3>'));
          Writeln(varq, frAcenWeb('     <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('    </div>'));
          Writeln(varq, frAcenWeb('  </div>'));
          Writeln(varq, frAcenWeb(' </div>'));
          Writeln(varq, frAcenWeb(' </head>'));
          Writeln(varq, frAcenWeb('</html>'));
        end;
      end;

      result := True;

    except

      Result := False;

    end;
  finally
    //salva o arquivo Mapa.html no diretorio da Aplicação.
    CloseFile(varq);
  end;

end;

function TFfrmRomanRastrear.pEnviaArquivoAtu(vde, vparaAtu, varquivo:String):Boolean;
var varqori, varqdes: String;
begin

  result := False;

  if FileExists(vde+varquivo) then
  begin
    try

      IdFTP.ChangeDir(xDirFtpAtu+vparaAtu);
      varqori := vde+varquivo;
      varqdes := xDirFtpAtu+vparaAtu+'/'+varquivo;

      BytesToTransfer := IdFTP.Size(varqori);
      IdFTP.Put(varqori, varqdes);

      result := True;

    except
      try
        //Tem pasta Ano
        IdFTP.ChangeDir(xDirFtpAtu+xAnoAtu);
        Sleep(500);
        //Cria pasta CNPJ
        IdFTP.MakeDir(xDirFtpAtu+vparaAtu);
        Sleep(500);
      except
        //Não tem pasta Cnpj -> Cria e anomoe também
        try
          //Cria Ano
          IdFTP.MakeDir(xDirFtpAtu+xAnoAtu);
          Sleep(500);
          //Cria CNPJ
          IdFTP.MakeDir(xDirFtpAtu+vparaAtu);
          Sleep(500);
        except
        end;
      end;
    end;
  end;
end;

function TFfrmRomanRastrear.pEnviaArquivoAnt(vde, vparaAnt, varquivo:String):Boolean;
var varqori, varqdes: String;
begin

  result := False;

  if FileExists(vde+varquivo) then
  begin

    if IdFTP.Connected then
    begin
      try
        if TransferrignData then IdFTP.Abort;
        IdFTP.Quit;
      finally
      end
    end
    else begin
      try
        IdFTP.Connect;
        if IdFTP.Connected then
        begin
          try

            IdFTP.ChangeDir(xDirFtpAnt+vparaAnt);
            varqori := vde+varquivo;
            varqdes := xDirFtpAnt+vparaAnt+'/'+varquivo;

            BytesToTransfer := IdFTP.Size(varqori);
            IdFTP.Put(varqori, varqdes);

            result := True;

          except
            try
              //Tem pasta cnpj
              IdFTP.ChangeDir(xDirFtpAnt+xcpfcnpj);
              Sleep(500);
              //Cria pasta AnosMes
              IdFTP.MakeDir(xDirFtpAnt+vparaAnt);
              Sleep(500);
            except
              //Não tem pasta Cnpj -> Cria e anomoe também
              try
                //Cria Empresa
                IdFTP.MakeDir(xDirFtpAnt+xcpfcnpj);
                Sleep(500);
                //Cria anomes
                IdFTP.MakeDir(xDirFtpAnt+vparaAnt);
                Sleep(500);
              except
              end;
            end;
          end;
        end
      finally

        if not result then
        begin

          //Vai tentar de novo
          try
            IdFTP.ChangeDir(xDirFtpAnt+vparaAnt);
            varqori := vde+varquivo;
            varqdes := xDirFtpAnt+vparaAnt+'/'+varquivo;

            BytesToTransfer := IdFTP.Size(varqori);
            IdFTP.Put(varqori, varqdes);

            result := True;

          except
            MessageBox(0, 'Não foi possível salvar, verifique sua conexão com a internet.', 'Aviso', MB_ICONWARNING or MB_OK);
          end;
        end;

        Application.ProcessMessages;
        IdFTP.Disconnect;
      end;
    end;
  end;
end;

procedure TFfrmRomanRastrear.pDeletaArquivo(vpasta, varquivo:String);
begin

  DeleteFile(vpasta+varquivo);

end;

procedure TFfrmRomanRastrear.IdFTPStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  inherited;
  SB.Panels[2].Text := aStatusText;

end;

procedure TFfrmRomanRastrear.IdFTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
Var
  S: String;
  TotalTime: TDateTime;
  H, M, Sec, MS: Word;
  DLTime: Double;
begin
  inherited;
  TotalTime :=  Now - STime;
  DecodeTime(TotalTime, H, M, Sec, MS);
  Sec := Sec + M * 60 + H * 3600;
  DLTime := Sec + MS / 1000;
  if DLTime > 0 then
    AverageSpeed := (AWorkCount / 1024) / DLTime;

  if AverageSpeed > 0 then begin
    Sec := Trunc(((pbBarra.Max - AWorkCount) / 1024) / AverageSpeed);

    S := Format('%2d:%2d:%2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);
    S := 'Tempo restante: ' + S;
  end
  else S := '';
  SB.Panels[0].Text := s;

  S := FormatFloat('0.00 KB/s', AverageSpeed);
  case AWorkMode of
    wmRead: SB.Panels[1].Text := S;
    wmWrite: SB.Panels[1].Text := S;
  end;

  if AbortTransfer then IdFTP.Abort;

  pbBarra.Position := AWorkCount;
  AbortTransfer := false;
  Application.ProcessMessages;

end;

procedure TFfrmRomanRastrear.IdFTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  TransferrignData := true;
  AbortTransfer := false;
  STime := Now;
  if AWorkCountMax > 0 then pbBarra.Max := AWorkCountMax
  else pbBarra.Max := BytesToTransfer;
  AverageSpeed := 0

end;

procedure TFfrmRomanRastrear.IdFTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  inherited;
  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  BytesToTransfer := 0;
  TransferrignData := false;
  pbBarra.Position := 0;
  AverageSpeed := 0;
  pbBarra.Visible := False;

end;

procedure TFfrmRomanRastrear.pAbreMapaRastreamento(vCodigo: Integer);
var vqrcode, varquivo, xanomes: String;
begin
  //Criando processo de envio para WEB Rastreamento.

  xcpfcnpj := frSoNumero(dm.TEmpresa.FieldByName('cpf').asString);
  if trim(xcpfcnpj) = '' then
    xcpfcnpj := 'registro';

  xanomes := DateToStr(cdsDados.FieldByName('Data').Value);

  //qrCod antigo
  if (Date < StrToDate('01/03/2020')) then
  begin

    xanomes := Copy(xanomes, 7, 4) + Copy(xanomes, 4, 2);

    // - Lote
    vqrcode := 'lt'+frPree(cdsDadosLanc.asString,9,'0',0);
    // - Codigo produto
    vqrcode := vqrcode + 'pr'+frPree(IntToStr(vcodigo),9,'0',0)+'.html';

    varquivo := 'https://www.acwebsystem.com.br/sistemas/rastrear/'+ xcpfcnpj +'/'+ xanomes +'/'+ vqrCode;

  end
  else begin
    //Atual

    xanomes := Copy(xanomes, 7, 4);

    // - Lote
    vqrcode := 'R'+cdsDadosLanc.asString;
    // - Codigo produto
    vqrcode := vqrcode + 'P'+IntToStr(vcodigo)+'.html';

    varquivo := 'https://www.acwebsystem.com.br/'+ xanomes +'/'+ xcpfcnpj +'/'+vqrCode;

  end;

  ShellExecute(Handle, 'open', pchar(varquivo), '', '', 1);
end;

procedure TFfrmRomanRastrear.btnImportaClick(Sender: TObject);
var vlote, vpes: String;
begin
  inherited;
  if frPerg('Importar as venda desse lote ?') then

  vpes := '';
  cdsRomanRas.First;
  while not cdsRomanRas.Eof do
  begin
    vpes := vpes + cdsromanRasLancNota.AsString+ ';';
    cdsRomanRas.Next;
  end;

  if cdsDadosCODLOTECLASS.AsString <> '' then
    vlote := trim(cdsDadosCODLOTECLASS.AsString)
  else
    vlote := trim(cdsDadosLOTE.AsString);

  if vlote = '' then
    exit;  

  //Procura na nota fiscal
  fSql(1,1,['Select distinct nfvenda.lanc, nfvenda.nota, nfvenda.data, nfvenda.descricao',
            '  from nfvenda, nfvendco',
            ' where nfvenda.lanc = nfvendco.lanc',
            '   and nfvendco.codloteclass = '+QuotedStr(vlote),
            ' order by nfvenda.lanc, nfvenda.nota'],5);
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin

    //Verifica se já foi inserido
    if pos((dm.qrSql1.FieldByName('Lanc').asString)+';', vpes) = 0 then
    begin
      cdsRomanRas.Append;
      cdsRomanRas.FieldByName('LancNota').Value  :=dm.qrSql1.Fields[0].Value;
      cdsRomanRas.FieldByName('Nota').Value      :=dm.qrSql1.Fields[1].Value;
      cdsRomanRas.FieldByName('Data').Value      :=dm.qrSql1.Fields[2].Value;
      cdsRomanRas.FieldByName('Cliente').Text    :=dm.qrSql1.Fields[3].Text;
      cdsRomanRas.Post;
    end;

    dm.qrSql1.Next;
  end;

  cdsRomanRas.First;

  cdsVendaItem.Close;
  sqlVendaItem.ParamByName('idLanc').asString := cdsRomanRasLANCNOTA.asString;
  sqlVendaItem.ParamByName('idGrupo').asString := cdsDadosVARIECOD.asString;
  cdsVendaItem.Open;

end;

procedure TFfrmRomanRastrear.sbRelatorioClick(Sender: TObject);
var vsql: String;
    vid: Integer;
begin

  vid := cdsDadosLanc.AsInteger;
  pcItem.ActivePageIndex := 1;

  inherited;

  cdsDados.Filtered := False;
  cdsDados.Filter   := 'Lanc = 0'+ IntTostr(vid);
  cdsDados.Filtered := True;

  frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);

    //Obtem os lotes de entrada da fruta
  vsql := '(-1';
  cdsRomanPro.first;
  while not cdsRomanPro.Eof do
  begin
    vsql := vsql +', '+ cdsRomanProLOTEENTRA.AsString;
    cdsRomanPro.Next;
  end;
  vsql := vsql +')';
  cdsRomanPro.First;

  cdsRomanEntra.Close;
  sqlRomanEntra.Close;
  sqlRomanEntra.SQL.Strings[3] := 'where recibo in '+vsql;
  cdsRomanEntra.Open;

  cdsRomanVenda.Close;
  sqlRomanVenda.ParamByName('idLanc').asString  := '0'+cdsRomanRasLANC.asString;
  sqlRomanVenda.ParamByName('idGrupo').asString := '0'+cdsDadosVARIECOD.asString;
  cdsRomanVenda.Open;

  //ppLabel4.Caption  := 'Período '+DateToStr(dtpClaIni.Date) +' à '+ DateToStr(dtpClafim.Date);
  //ppLabel54.Caption := ppLabel4.Caption;
  //ppLabel83.Caption := ppLabel4.Caption;

  if (TComponent(Sender).Tag = 200) then
  begin
    ppRelRastrear.TextFileName      := pRetornaEmail;
    ppRelRastrear.DeviceType        := 'PDF';
    ppRelRastrear.AllowPrintToFile  := true;
    ppRelRastrear.ShowPrintDialog   := false;
  end
  else
    ppRelRastrear.DeviceType := 'Screen';

  ppRelRastrear.Print;

  if (TComponent(Sender).Tag = 200) then
    pImprimirPdf(pRetornaEmail);

  cdsDados.Filtered := False;
  cdsDados.Filter   := '';
  if not cdsDados.Locate('Lanc', vid, []) then
    cdsDados.First;

end;

procedure TFfrmRomanRastrear.sbWebTodosClick(Sender: TObject);
begin
  if cdsDados.RecordCount > 0 then
    if not frPerg('Enviar TODOS da lista para WEB ?') then
      Exit;

  //Criando processo de envio para WEB Rastreamento.

  try

    if IdFTP.Connected then
    begin
      try
        if TransferrignData then IdFTP.Abort;
        IdFTP.Quit;
      finally
        IdFTP.Disconnect;
      end
    end;


    cdsdados.First;
    fBar(0,cdsdados.RecordCount+1,'Rastreamento WEB');

    while not cdsDados.Eof do
    begin
      fBar(1,1,'');

      pRotinaEnviaWeb;

      cdsDados.Next;
    end;

  finally
    fBar(2,0,'');
    Application.ProcessMessages;
    IdFTP.Disconnect;
    cdsDados.First;
    PStatusHistorico.Caption := '';

    frPerg('Processo de envio finalizado!','OK');
  end;

end;

function TFfrmRomanRastrear.pRetornaEmail:String;
var varquivo, vpdf: String;
begin
  //Verifica se existe diretorio
  vpdf := xDirSi + 'Listagem' +xBDConexao+ '\PDF\';
  if not DirectoryExists(vpdf) then
  begin
    CreateDir(vpdf);
    Sleep(1000);
    if not DirectoryExists(vpdf) then
    begin
      ForceDirectories(vpdf);
    end;
  end;

  Result := xDirSi + 'Listagem' +xBDConexao+ '\PDF\' + UpperCase(Caption) + '_' + frPree(cdsDadosLanc.asInteger,4,'0',0) + '_' + FormatDateTime('ddmm', Date) + '.pdf';

end;

procedure TFfrmRomanRastrear.pRotinaEnviaWeb;
var vqrcode,vqrcodeAnt,xanomes: String;
    vresult: Boolean;
begin

  try
    if not IdFTP.Connected then
      IdFTP.Connect;

    if IdFTP.Connected then
    begin

      Try
        xcpfcnpj := frSoNumero(dm.TEmpresa.FieldByName('cpf').asString);
        if trim(xcpfcnpj) = '' then
          xcpfcnpj := 'registro';

        xanomes := DateToStr(cdsDados.FieldByName('Data').Value);
        xanoant := Copy(xanomes, 7, 4) + Copy(xanomes, 4, 2);
        xanoatu := Copy(xanomes, 7, 4);

        PStatusHistorico.Caption := 'Registro: '+cdsDadosLanc.asString;
        vresult := True;
        cdsRomanMer.DisableControls;
        cdsRomanMer.First;
        if cdsRomanMer.IsEmpty then
          vresult := False;

        fBar(3,cdsRomanMer.RecordCount+1,'');
        while not cdsRomanMer.Eof do
        begin
          fBar(4,1,'');
          // - Lote
          vqrcodeAnt := '';
          vqrcode := 'R'+cdsDadosLanc.asString;
          // - Codigo produto
          vqrcode := vqrcode + 'P'+cdsRomanMerPRODCOD.asString+'.html';

          if (Date < StrToDate('01/03/2020')) then
          begin
            // - Lote
            vqrcodeAnt := 'lt'+frPree(cdsDadosLanc.asString,9,'0',0);
            // - Codigo produto
            vqrcodeAnt := vqrcodeAnt + 'pr'+frPree(cdsRomanMerPRODCOD.asString,9,'0',0)+'.html';
          end;

          if pCriaArquivo(xdirsi+'rastrear'+xBDConexao+'\', vqrCode, vqrcodeAnt) then
          begin
            Sleep(100);

            //Pasta Antiga - Antes de Março novas pastas
            if (Date < StrToDate('01/03/2020')) then
              pEnviaArquivoAnt(xdirsi+'rastrear'+xBDConexao+'\', xcpfcnpj+'/'+xanoant, vqrcodeAnt);

            //Normal
            if pEnviaArquivoAtu(xdirsi+'rastrear'+xBDConexao+'\', xanoatu+'/'+xcpfcnpj, vqrCode) then
            begin
              Sleep(100);
              pDeletaArquivo(xdirsi+'rastrear'+xBDConexao+'\', vqrCode);
            end
            else begin
              cdsRomanMer.Last;
              vresult := False;
            end;
          end
          else begin
            cdsRomanMer.Last;
            vresult := False;
          end;

          cdsRomanMer.Next;

        end;

        cdsRomanMer.EnableControls;
        cdsRomanMer.First;

        cdsDados.Edit;
        if vresult then
        begin
          if (cdsRomanRas.RecordCount > 0) then
            fSql(1,1,['UPDATE ROMAN SET FGENVIAWEB = ''C'' Where LANC='+cdsDadosLanc.Text],1)
          else
            fSql(1,1,['UPDATE ROMAN SET FGENVIAWEB = ''P'' Where LANC='+cdsDadosLanc.Text],1);
        end
        else
          fSql(1,1,['UPDATE ROMAN SET FGENVIAWEB = ''N'' Where LANC='+cdsDadosLanc.Text],1);
      except
        fSql(1,1,['UPDATE ROMAN SET FGENVIAWEB = ''N'' Where LANC='+cdsDadosLanc.Text],1)
      end;
    end;
  finally
    IdFTP.Disconnect;
  end;

end;

procedure TFfrmRomanRastrear.pImprimirPdf(vPDF: String);
var vemail, sXML, spdf: string;
    vseq, vtam: Integer;
    Email: TEmail;
    mmAssunto, mmTexto, varqold, varqnew, vcod: String;
    cc: TStrings;
    Outlook: OleVariant;
    vMailItem: variant;
    vtrue: Boolean;
begin

  if FileExists(vpdf) then
  begin

    try
      if not Assigned(frmEmail) then
        frmEmail := TfrmEmail.create(self);

      frmEmail.edm1.Text := '';
      frmEmail.edm2.Text := '';

      frmEmail.edAssunto.Text := Caption;
      frmEmail.edTexto.Text   := frmEmail.edAssunto.Text + ', arquivo PDF salvo em anexo';

      frmEmail.ShowModal;
    finally
       vemail := frmEmail.vRetEmail;
       mmAssunto := frmEmail.edAssunto.Text;
       mmTexto   := frmEmail.edTexto.Text;
      FreeAndNil(frmEmail)
    end;
    if vemail = 'Close' then
      Exit;

    vemail := LowerCase(vemail);
    if Pos('@', vemail) = 0 then
    begin
      Application.MessageBox('Email inválido!','Aviso',mb_ok+MB_ICONINFORMATION);
      exit;
    end;

    //corpo da email
    vseq := 0;
    Screen.Cursor := crHourGlass;

    //Enviar o email
    Screen.Cursor := crDefault;
    try
      mmTexto := mmTexto +''+#13#10;
      mmTexto := mmTexto +''+#13#10;
      mmTexto := mmTexto +'Emitida por: ' + Trim(dm.TEmpresa.FieldByName('Descricao').asString);
      mmTexto := mmTexto +' no dia: ' + DateToStr(Date)+#13#10;
      mmTexto := mmTexto +''+#13#10;
      mmTexto := mmTexto +'Qualquer dúvida e/ou divergência, favor entrar em contato com a empresa acima.';
      if EnviaMail(110,
                   vemail,
                   mmAssunto,
                   mmTexto,
                   '',
                   vpdf
                   ) then
        Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION)
      else begin
         application.messagebox('Houve falha no envio deste email...','Atenção',mb_ok+MB_ICONERROR)
      end;
    except
      Application.MessageBox(PChar('Erro ao enviar Email da NF. '),'Aviso',mb_ok+MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      VarClear(Outlook);
    end;
  end;
end;

end.

