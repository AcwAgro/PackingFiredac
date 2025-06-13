unit frmFechaPrestServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppDB, ppDBPipe, ppDBBDE, ppParameter, ppComm, ppRelatv, ppProd,
  ppModule, raCodMod, RzButton, RzEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, ppDesignLayer,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmFechaPrestServ = class(TFModelo)
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
    gbVariedade: TGroupBox;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    gbProdutor: TGroupBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    GroupBox8: TGroupBox;
    SB1: TSpeedButton;
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
    ppDados: TppBDEPipeline;
    ppOrigem: TppBDEPipeline;
    ppItem: TppBDEPipeline;
    cdsitemPRODDES: TStringField;
    ppRelFecha: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine3: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText44: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText45: TppDBText;
    ppLabel53: TppLabel;
    ppDBText46: TppDBText;
    ppLabel54: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppTitleBand4: TppTitleBand;
    frmPesquisaProd: TfrmPesquisa;
    frmPesquisaVar: TfrmPesquisa;
    cdsitemVLRCAIXA: TBCDField;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    raCodeModule2: TraCodeModule;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppParameterList1: TppParameterList;
    PopupMenu3: TPopupMenu;
    Lanamentoanaltico1: TMenuItem;
    dsDadosRel: TDataSource;
    dsItemRel: TDataSource;
    cdsitemvTamDes: TStringField;
    cbVarieClone: TCheckBox;
    cdsitemvClasCod: TIntegerField;
    cdsitemvClasDes: TStringField;
    gbRegistro: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit19: TDBEdit;
    sqlDadosLOTEORIGEM: TIntegerField;
    cdsDadosLOTEORIGEM: TIntegerField;
    sbEmail: TSpeedButton;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    cdsitemvVarieDes: TStringField;
    sbRecalcula: TSpeedButton;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine1: TppLine;
    GroupBox9: TGroupBox;
    sbComissao: TSpeedButton;
    rzComissao: TRzNumericEdit;
    DBEdit31: TcxDBDateEdit;
    DBEdit32: TcxDBDateEdit;
    DBEdit100: TcxDBDateEdit;
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
    dbDadosDBTableView1LOTEORIGEM: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsorigemREGLOG: TStringField;
    cdsorigemREG_ID: TIntegerField;
    cdsitemREGLOG: TStringField;
    cdsitemREG_ID: TIntegerField;
    sqlorigem: TFDQuery;
    sqlitem: TFDQuery;
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
    cdsDadosRel: TClientDataSet;
    cdsDadosRelREGISTRO: TIntegerField;
    cdsDadosRelNUMERO: TIntegerField;
    cdsDadosRelDATA: TDateTimeField;
    cdsDadosRelDTLOTEINI: TDateTimeField;
    cdsDadosRelDTLOTEFIM: TDateTimeField;
    cdsDadosRelDTPRECOINI: TDateTimeField;
    cdsDadosRelDTPRECOFIM: TDateTimeField;
    cdsDadosRelDTFINANINI: TDateTimeField;
    cdsDadosRelDTFINANFIM: TDateTimeField;
    cdsDadosRelPRODCOD: TIntegerField;
    cdsDadosRelPRODDES: TStringField;
    cdsDadosRelVARIECOD: TIntegerField;
    cdsDadosRelVARIEDES: TStringField;
    cdsDadosRelINDUSOPCAO: TStringField;
    cdsDadosRelINDUSQTDE: TFloatField;
    cdsDadosRelINDUSPER: TFloatField;
    cdsDadosRelINDUSMUL: TFloatField;
    cdsDadosRelINDUSTOL: TFloatField;
    cdsDadosRelSACOLOPCAO: TStringField;
    cdsDadosRelSACOLQTDE: TFloatField;
    cdsDadosRelSACOLPER: TFloatField;
    cdsDadosRelSACOLMUL: TFloatField;
    cdsDadosRelSACOLTOL: TFloatField;
    cdsDadosRelTOTALBINS: TFloatField;
    cdsDadosRelTOTALCX: TFloatField;
    cdsDadosRelTOTALKGBRU: TFloatField;
    cdsDadosRelTOTALKGLIQ: TFloatField;
    cdsDadosRelTOTALMEDIA: TFloatField;
    cdsDadosRelTOTALEMBAL: TFloatField;
    cdsDadosRelTOTALOPER: TFloatField;
    cdsDadosRelTOTALCOMIS: TFloatField;
    cdsDadosRelSUBTOTAL: TFloatField;
    cdsDadosRelPERFUNRURAL: TFloatField;
    cdsDadosRelTOTALFUNRURAL: TFloatField;
    cdsDadosRelTOTALMULTA: TFloatField;
    cdsDadosRelTOTALLIQUIDO: TFloatField;
    cdsDadosRelTOTALDEBITO: TFloatField;
    cdsDadosRelTOTALCREDITO: TFloatField;
    cdsDadosRelTOTALARECEBER: TFloatField;
    cdsDadosRelEMPRECOD: TIntegerField;
    cdsDadosRelACESOCOD: TIntegerField;
    cdsDadosRelLOTEORIGEM: TIntegerField;
    cdsDadosRelxxTotalLiquidoMedia: TFloatField;
    cdsItemRel: TClientDataSet;
    cdsItemRelREGISTRO: TIntegerField;
    cdsItemRelLANCIT: TIntegerField;
    cdsItemRelPRODCOD: TIntegerField;
    cdsItemRelUNID: TStringField;
    cdsItemRelPESO: TFloatField;
    cdsItemRelCALIBRE: TIntegerField;
    cdsItemRelQTDE: TFloatField;
    cdsItemRelQTDEKG: TFloatField;
    cdsItemRelVLRMEDIA: TFloatField;
    cdsItemRelVLRMEDIAKG: TFloatField;
    cdsItemRelVLRTOTAL: TFloatField;
    cdsItemRelVLRTOTALKG: TFloatField;
    cdsItemRelPREEMBAL: TFloatField;
    cdsItemRelVLREMBAL: TFloatField;
    cdsItemRelPREOPER: TFloatField;
    cdsItemRelVLROPER: TFloatField;
    cdsItemRelPERCOMIS: TFloatField;
    cdsItemRelVLRCOMIS: TFloatField;
    cdsItemRelPERMULTA: TFloatField;
    cdsItemRelVLRMULTA: TFloatField;
    cdsItemRelVLRLIQUIDO: TFloatField;
    cdsItemRelPRELIQUIDO: TFloatField;
    cdsItemRelPRODDES: TStringField;
    cdsItemRelVLRCAIXA: TFloatField;
    cdsItemRelvTamDes: TStringField;
    cdsItemRelvClasCod: TStringField;
    cdsItemRelvClasDes: TStringField;
    cdsItemRelvVarieDes: TStringField;
    TCadProduto: TFDQuery;
    TCadProdutoCODIGO: TIntegerField;
    TCadProdutoCALIBREDES: TStringField;
    TCadProdutoVARIEDES: TStringField;
    TCadProdutoCATEGCOD: TIntegerField;
    TCadProdutoCLACOD: TIntegerField;
    TCadProdutoCLADES: TStringField;
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
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure gbVariedadeExit(Sender: TObject);
    procedure gbProdutorExit(Sender: TObject);
    procedure CB1Exit(Sender: TObject);
    procedure ppRelFechaBeforePrint(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure Lanamentoanaltico1Click(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure ppTitleBand4BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure cdsitemCalcFields(DataSet: TDataSet);
    procedure cdsitemBeforePost(DataSet: TDataSet);
    procedure sbEmailClick(Sender: TObject);
    procedure sbRecalculaClick(Sender: TObject);
    procedure sbComissaoClick(Sender: TObject);
  private
    { Private declarations }
    vComissaoTotal, vFunRural: Boolean;
    procedure fMostraDetalhe;
    procedure fTotalizador(vFocus:Boolean = true);
    procedure pImprimirPdf(vPDF: String);
    function  pPreparaPdf: String;
  public
    { Public declarations }
    vNFC: Integer;
    vemail: Boolean;
  end;

var
  FfrmFechaPrestServ: TFfrmFechaPrestServ;

implementation

{$R *.dfm}
uses Menu, Data, Rotina, zEmail, Email;

procedure TFfrmFechaPrestServ.FormCreate(Sender: TObject);
begin
  inherited;

  pcItem.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  rbgAtivo.Visible := False;
  rbgAtivo.ItemIndex := 2;

  frmPesquisaVar.pInicia('ttVariedade', TForm(Sender),7,147,gbVariedade,true);
  frmPesquisaProd.pInicia('ttProdutorPres', TForm(Sender),7,147,gbProdutor,true);
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmFechaPrestServ.FormShow(Sender: TObject);
begin
  inherited;

  vComissaoTotal := (fBus(1,['Select valor From zGenerator Where Tabela = ''FECHA'' and Campo = ''COMISSAO'''],1) = 1);
  vFunRural := (fBus(1,['Select valor From zGenerator Where Tabela = ''FECHA'' and Campo = ''FUNRURAL'''],1) = 1);

  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;

end;

procedure TFfrmFechaPrestServ.CB1Exit(Sender: TObject);
begin
  inherited;
//  if (not sbSalvar.Visible) then Exit;
//  cdsDadosSacolOpcao.asString:= Copy(cb1.text,1,1);
end;

procedure TFfrmFechaPrestServ.cdsitemBeforePost(DataSet: TDataSet);
begin

  if cdsitemPRODCOD.asInteger = 0 then
  begin
    cdsitem.Cancel;
    abort;
  end;

  inherited;

  cdsItemqtdeKg.asFloat := frDeci(cdsItemqtde.asFloat * cdsItemPeso.asFloat,3);
  if (cdsItemPeso.asFloat > 0) and (cdsItemVlrCaixa.asFloat > 0) then
    cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrCaixa.asFloat / cdsItemPeso.asFloat,4);

  cdsItemVlrTotal.asFloat   := frDeci(cdsItemVlrCaixa.asFloat * cdsItemQtde.asFloat,2);

  if (cdsItemQtdeKG.asFloat > 0) then
    cdsItemVlrMediaKG.asFloat := frDeci(cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat,4);

  cdsItemVlrTotalKG.asFloat := frDeci(cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat,4);

  if (cdsItemVlrCaixa.asFloat <= 0) then
    cdsItemVlrCaixa.asFloat  := cdsItemVlrMedia.asFloat * cdsItemPeso.asFloat;

  cdsItemVlrEmbal.asFloat := cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat;
  cdsItemVlrOper.asFloat  := cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat;

  if vComissaoTotal then
    cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat)
  else
    cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat);

  cdsItemVlrComis.asFloat := frDeci((cdsItemVlrComis.asFloat * (cdsItemPerComis.asFloat / 100)),4);
  cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                             - cdsItemVlrEmbal.asFloat
                             - cdsItemVlrOper.asFloat
                             - cdsItemVlrComis.asFloat;

  if (cdsItemQtdeKG.asFloat > 0) then
    cdsItemPreLiquido.asFloat := frDeci(cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat,4)
  else
    cdsItemPreLiquido.asFloat := 0;

end;

procedure TFfrmFechaPrestServ.cdsitemCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsitemvTamDes.AsString <> '') and (cdsitemvTamDes.AsString <> '0') then
    exit;
  if pcItem.ActivePageIndex = 0 then
    exit;

  if TCadProduto.Locate('codigo', cdsItemProdCod.asInteger, []) then
  begin
    cdsitemvTamDes.AsString := TCadProdutoCALIBREDES.AsString;
    cdsitemvClasCod.AsString  := TCadProdutoCLACOD.AsString;
    cdsitemvClasDes.AsString  := TCadProdutoCLADES.AsString;
    cdsitemvVarieDes.AsString := TCadProdutoVARIEDES.AsString;
  end;

end;

procedure TFfrmFechaPrestServ.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then
  begin
    if DBGrid1.SelectedIndex > 11 then
      cdsItem.Next;
    Exit;
  end;
  cdsItem.Edit;
  Case DBGrid1.SelectedIndex of
    3: begin
         cdsItemqtdeKg.asFloat := frDeci(cdsItemqtde.asFloat * cdsItemPeso.asFloat,3);
       end;
    5: begin
         if (cdsItemPeso.asFloat > 0) and (cdsItemVlrCaixa.asFloat > 0) then
           cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrCaixa.asFloat / cdsItemPeso.asFloat,4);
       end;
    6: begin
         cdsItemVlrTotal.asFloat   := frDeci(cdsItemVlrCaixa.asFloat * cdsItemQtde.asFloat,2);
         if (cdsItemQtdeKG.asFloat > 0) then
           cdsItemVlrMediaKG.asFloat := frDeci(cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat,4);
         cdsItemVlrTotalKG.asFloat := frDeci(cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat,4);

         if (cdsItemVlrCaixa.asFloat <= 0) then
           cdsItemVlrCaixa.asFloat  := cdsItemVlrMedia.asFloat * cdsItemPeso.asFloat;
         cdsItemVlrEmbal.asFloat := cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat;
         cdsItemVlrOper.asFloat  := cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat;
       end;
  End;

  cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                             - cdsItemVlrEmbal.asFloat
                             - cdsItemVlrOper.asFloat
                             - cdsItemVlrComis.asFloat;
  if (cdsItemQtdeKG.asFloat > 0) then
    cdsItemPreLiquido.asFloat := frDeci(cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat,2)
  else
    cdsItemPreLiquido.asFloat := 0;

  cdsItem.Post;
  if (DBGrid1.SelectedIndex > 5) then
    fTotalizador;

end;

procedure TFfrmFechaPrestServ.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsItem.Edit;
  DBGrid1.SelectedIndex:=3;
end;

procedure TFfrmFechaPrestServ.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if (sbSalvar.Visible) then
    fTotalizador(false);
end;

procedure TFfrmFechaPrestServ.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if key =#13 then begin
     if DBGrid1.SelectedIndex<>6 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=3;
  end;

end;

procedure TFfrmFechaPrestServ.Excluir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsItem.delete;
end;

procedure TFfrmFechaPrestServ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmFechaPrestServ);
end;

procedure TFfrmFechaPrestServ.sbImprimirClick(Sender: TObject);
begin
  inherited;
  vemail := False;
  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFfrmFechaPrestServ.sbIncluirClick(Sender: TObject);
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
           frmPesquisaVar.pLimpaCampo;
           frmPesquisaProd.pLimpaCampo;
           cdsDados.Append;
           cdsDadosRegistro.AsInteger := frGenerator('FECHA_CLASSIF','REGISTRO',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('FECHA_CLASSIF');
           cdsDadosNumero.AsInteger   := 0;
           cdsDadosIndusOpcao.asString:= 'C';
           cdsDadosSacolOpcao.asString:= '1';
           cdsDadosTOTALCX.asFloat    := 0;
           cdsDadosTOTALKGBRU.asFloat := 0;
           cdsDadosTOTALEMBAL.asFloat := 0;
           cdsDadosTOTALOPER.asFloat  := 0;
           cdsDadosTOTALCOMIS.asFloat := 0;
           cdsDadosTOTALMEDIA.asFloat := 0;
           cdsDadosSUBTOTAL.asFloat   := 0;
           cdsDadosTOTALMULTA.asFloat := 0;
           cdsDadosTotalFunRural.AsFloat := 0;
           cdsDadosLoteOrigem.asInteger := 0;
           cdsDadosData.AsDateTime       := Date;
           cdsDadosDTLoteIni.AsDateTime  := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTLoteFim.AsDateTime  := Date;
           cdsDadosDTFinanIni.AsDateTime := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTFinanFim.AsDateTime := Date;
           cdsDadosDTPrecoIni.AsDateTime := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTPrecoFim.AsDateTime := Date;
           fMostraDetalhe;

           frmPesquisaProd.edtPesquisa.SetFocus;

         end;
     13: begin

          cdsDados.Edit;
          DBEdit100.SetFocus;

        end;
     14: begin
           fSql(1,2,['Delete From FECHA_CLASSIF_ITEM   Where Registro=0'+cdsDadosRegistro.asString],1);
           fSql(1,2,['Delete From FECHA_CLASSIF_ORIG   Where Registro=0'+cdsDadosRegistro.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             if cdsDadosNumero.AsInteger = 0 then
               cdsDadosNumero.AsInteger   := cdsDadosRegistro.AsInteger;// frGenerator('FECHA_CLASSIF','NUMERO',1);
             cdsDadosVarieCod.AsInteger := frmPesquisaVar.vpCodPrincipal;
             cdsDadosProdCod.AsInteger  := frmPesquisaProd.vpCodPrincipal;
             cdsDadosVarieDes.AsString  := frmPesquisaVar.vpDescricao;
             cdsDadosProdDes.AsString   := frmPesquisaProd.vpDescricao;
             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             //Não pode ficar em branco
             if cdsItem.RecordCount < 2 then
             begin
               if cdsItem.RecordCount = 0 then
                 cdsItem.Append
               else
                 cdsItem.Edit;
               cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
               cdsItemLancit.asInteger  := StrToInt(cdsDadosRegistro.AsString+'9991');;
               cdsItemREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ITEM');
               cdsItem.Post;
             end;

             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsItem.ApplyUpdates(-1);
             cdsOrigem.ApplyUpdates(-1);
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

procedure TFfrmFechaPrestServ.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  //abre cadastrode produto
  TCadProduto.Close;
  TCadProduto.Open;

  cdsDados.Filter := '';
  cdsDados.Filtered := False;

  cdsDados.Close;
  cdsOrigem.Close;
  cdsItem.Close;

  sqlDados.SQL.Clear;
  sqlDados.SQL.Add('select fecha_classif.* from fecha_classif');
  sqlDados.SQL.Add('inner join cadforne on cadforne.codigo = fecha_classif.prodcod');
  sqlDados.SQL.Add('where fecha_classif.indusopcao = ''C''');
  sqlDados.SQL.Add('  and '+frWhereD('fecha_classif.Data',dtInicial.Date,dtFinal.Date));

  //Vamos filtrar conforme o grupo de produtor
  sqlDados.SQL.Add('  and cadforne.cooper = ''P''');

  sqlDados.SQL.Add('order by fecha_classif.numero');

  cdsDados.Open;
  cdsOrigem.Open;
  cdsItem.Open;
  cdsDados.First;
  fMostraDetalhe;

end;

procedure TFfrmFechaPrestServ.sbRecalculaClick(Sender: TObject);
begin
  inherited;
  if not frPerg('Aplicar recalcular valores no filtro?') then
    exit;

  cdsDados.First;
  while not cdsDados.Eof do
  begin
    //Editar
    sbEditar.OnClick(sbEditar);
    cbVarieClone.Checked := True;
    //recalcular
    SB1.OnClick(SB1);
    Application.ProcessMessages;
    //Salvar
    sbSalvar.OnClick(sbSalvar);

    cdsDados.Next;
  end;
  cdsDados.First;


end;

procedure TFfrmFechaPrestServ.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    if cdsDados.IsEmpty then exit;
    frmPesquisaVar.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaProd.pRetornaDados(cdsDadosProdCod.AsString);
//    cb1.ItemIndex  := StrToIntDef(cdsDadossacolOpcao.asString,1) -1;
    fMostraDetalhe;
  end;
end;

procedure TFfrmFechaPrestServ.ppRelFechaBeforePrint(Sender: TObject);
begin
  inherited;
//  ppSubReport4.Visible := (vNFC = 181);
//  ppSubReport3.Visible := ((cdsDadosTotalDebito.AsFloat + cdsDadosTotalCredito.AsFloat) > 0);
end;

function TFfrmFechaPrestServ.pPreparaPdf: String;
var vpdf: String;
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
  vpdf := xDirSi + 'Listagem' +xBDConexao+ '\PDF\' + 'Acerto_Fechamento Produtor' + '_' + frPree(cdsDadosRegistro.asInteger,4,'0',0) + '_' + FormatDateTime('ddmm', Date) + '.pdf';
  result := vpdf;
end;

procedure TFfrmFechaPrestServ.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
{  ppSubReport1.Visible := not (vNFC > 200);
  if ppSubReport1.Visible then
    ppSubReport1.Visible := ((cdsDadosTotalDebito.AsFloat + cdsDadosTotalCredito.AsFloat) > 0);
  ppLabel2.Visible  := not (vNFC > 200);
  ppDBText1.Visible := not (vNFC > 200);
  ppDBText2.Visible := (vNFC < 400);
  ppLabel20.Visible := (vNFC >= 400);}
end;

procedure TFfrmFechaPrestServ.ppTitleBand4BeforePrint(Sender: TObject);
begin
  inherited;
{  if (vNFC >= 200) then
  begin
    ppSubReport3.Visible := False;
    ppSubReport4.Visible := False;
  end;
}  ppLabel52.Visible  := not (vNFC >= 200);
  ppDBText45.Visible := not (vNFC >= 200);
  ppDBText46.Visible := (vNFC < 400);
//  ppLabel34.Visible := (vNFC >= 400);
end;

procedure TFfrmFechaPrestServ.SB1Click(Sender: TObject);
var vdat, vdatmed, vcon, vproduto, vvarie: String;
    vlanc, vlancx, vlancCat, vlancVar: Integer;
    vtrue: Boolean;
    vSomaOrigem: Double;
begin
  inherited;

  vvarie := Trim(cdsDadosVarieCod.asString);
  if (StrToIntDef(cdsDadosProdCod.asString,0)= 0) then
  begin
    ShowMessage('Informar produtor!');
    frmPesquisaProd.edtPesquisa.SetFocus;
    Exit;
  end;
  if (StrToIntDef(vvarie,0)= 0) then
  begin
    ShowMessage('Informar variedade!');
    frmPesquisaVar.edtPesquisa.SetFocus;
    Exit;
  end;

  cdsorigem.First;
  while not cdsorigem.Eof do
    cdsorigem.Delete;
  cdsitem.First;
  while not cdsitem.Eof do
    cdsitem.Delete;

  vdat := '(ro.Data>='+frInvD(cdsDadosDTLOTEINI.asDateTime)+' and ro.Data<'+frInvD(cdsDadosDTLOTEFIM.asDateTime+1)+')';
  if cbVarieClone.Checked then
    fSql(1,5,['select ro.data, ro.lote, pr.qtdebin, ro.lanc, pr.pesobru',
              '  from roman ro, romanpro pr',
              ' where (ro.lanc = pr.lanc)',
              '   and '  + vdat,
              '   and (ro.variecod >= 0'+Copy(vvarie,1,length(vvarie)-1)+'0'+
              '   and  ro.variecod <= 0'+Copy(vvarie,1,length(vvarie)-1)+ '9)',
              '   and (pr.prodcod = 0' +cdsDadosProdCod.asString+ ')',
              'order by ro.lote'], 7)
  else
    fSql(1,5,['select ro.data, ro.lote, pr.qtdebin, ro.lanc, pr.pesobru',
              '  from roman ro, romanpro pr',
              ' where (ro.lanc = pr.lanc)',
              '   and '  + vdat,
              '   and (ro.variecod = 0'+cdsDadosVarieCod.asString+ ')',
              '   and (pr.prodcod = 0' +cdsDadosProdCod.asString+ ')',
              'order by ro.lote'], 7);
  vlancx := StrToInt(cdsDadosRegistro.AsString+'0000');
  fBar(0,dm.qrSql5.RecordCount,'Aguarde importando entrada fruta...');
  dm.qrSql5.First;

  if (cdsDados.State <> dsBrowse) then
    cdsDadosLoteOrigem.asInteger := dm.qrSql5.FieldByName('Lote').asInteger;

  vSomaOrigem := 0;
  while not dm.qrSql5.Eof do
  begin
    fBar(1,1,'');
    vlancx := vlancx +1;
    cdsOrigem.Append;
    cdsOrigemREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ORIG');
    cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
    cdsOrigemLancit.asInteger := vlancx;
    cdsOrigemData.asDateTime  := dm.qrSql5.FieldByName('Data').asDateTime;
    cdsOrigemLote.asInteger := dm.qrSql5.FieldByName('Lote').asInteger;
    cdsOrigemQtde.asFloat   := dm.qrSql5.FieldByName('Qtdebin').asFloat;
    vSomaOrigem := vSomaOrigem + (dm.qrSql5.FieldByName('Qtdebin').asFloat * dm.qrSql5.FieldByName('Pesobru').asFloat);
//    vlote := dm.qrSql5.FieldByName('Lanc').asInteger;
    cdsOrigem.Post;
    dm.qrSql5.Next;
  end;

  if cdsDadosTOTALBINS.asFloat <> 0 then
    cdsdadosINDUSQTDE.AsFloat := frDeci(vSomaOrigem / cdsDadosTOTALBINS.asFloat, 2)
  else
    cdsdadosINDUSQTDE.AsFloat := 0;

  vdat := '(Data>='+frInvD(cdsDadosDTLOTEINI.asDateTime)+' and Data<'+frInvD(cdsDadosDTLOTEINI.asDateTime+1)+')';
  vdatMed := '(Data>='+frInvD(cdsDadosDTLOTEFIM.asDateTime)+' and Data<'+frInvD(cdsDadosDTLOTEFIM.asDateTime+1)+')';

  //Custo por data -> dtpClaFim.Date
  fSql(1,3,['select Max(lanc) from cadcategcus where data < '+frInvD(cdsDadosDTLOTEFIM.asDateTime+1)],1);
  vlancCat := dm.qrSql3.Fields[0].AsInteger;
  fSql(1,3,['select Max(lanc) from cadvariecus where data < '+frInvD(cdsDadosDTLOTEFIM.asDateTime+1)],1);
  vlancVar := dm.qrSql3.Fields[0].AsInteger;
  dm.qrSql3.Close;

  //Item
  if cbVarieClone.Checked then
  begin
    vCon := Copy(vvarie, 1, length(vvarie)-1);
    vCon := 'Codigo>='+frPree(vCon, length(vvarie)+5, '0', 1)+' and Codigo<='+frPree(vCon,length(vvarie)+5,'9',1);
//    fRecalPreco(vcon,vdatmed,'S');
    fSql(1,1,['select SubString(co.prodcod from 3 for 5) as prodcod, co.calibre, sum(co.qtdeent) as qtde, sum(co.pesoreal) as peso, avg(co.preco) as preco',
              '  from classif pp, classifm co',
              ' where (pp.lanc = co.lanc) and (co.prodcod > 0)',
              '   and '  + vdat,
              '   and (pp.variecod >= 0'+Copy(vvarie, 1, length(vvarie)-1)+'0 '+
              '    and pp.variecod <= 0'+Copy(vvarie, 1, length(vvarie)-1)+ '9)',
              '   and (pp.codigo = 0' +cdsDadosProdCod.asString+ ')',
              ' group by SubString(co.prodcod from 3 for 5), co.calibre',
              ' order by SubString(co.prodcod from 3 for 5), co.calibre'], 8);
  end
  else begin
    vCon := Trim(cdsDadosVarieCod.asString);
    vCon := 'Codigo>='+frPree(vCon, length(vvarie)+5, '0', 1)+' and Codigo<='+frPree(vCon,length(vvarie)+5,'9',1);
//    vCon := 'Codigo>='+frPree(vCon,7,'0',1)+' and Codigo<='+frPree(vCon,7,'9',1);

//    fRecalPreco(vcon,vdatmed,'S');
    fSql(1,1,['select co.prodcod, co.calibre, sum(co.qtdeent) as qtde, sum(co.pesoreal) as peso, avg(co.preco) as preco',
              '  from classif pp, classifm co',
              ' where (pp.lanc = co.lanc) and (co.prodcod > 0)',
              '   and '  + vdat,
              '   and (pp.variecod = 0'+vvarie+ ')',
              '   and (pp.codigo = 0' +cdsDadosProdCod.asString+ ')',
              ' group by co.prodcod, co.calibre',
              ' order by SubString(co.prodcod from 3 for 5), co.calibre'], 8);
  end;
  vlanc := StrToInt(cdsDadosRegistro.AsString+'0000');
  fBar(0,dm.qrSql1.RecordCount,'Aguarde importando itens...');
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin
    fBar(1,1,'');
    //Verifica se pode incluir industria
    vtrue := true;
{    if (Copy(cb1.Text,1,1) = '2') then
    begin
      if (StrToIntDef(fbus(1,['Select count(*) from CadCateg where variecod = 5 and codigo = '+copy(dm.qrSql1.FieldByName('ProdCod').asString,3,2)],1),0) > 0 )then
        vtrue := false;
    end;
}

    if vtrue then
    begin
      vproduto := dm.qrSql1.FieldByName('ProdCod').asstring;
      if cbVarieClone.Checked then
        vproduto := cdsDadosVarieCod.asString + vproduto;

      if not cdsItem.Locate('ProdCod', strtoint(vproduto), []) then
      begin
        vlanc := vlanc +1;
        cdsItem.Append;
        cdsItemREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ITEM');
        cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
        cdsItemLancit.asInteger  := vlanc;
        cdsItemProdCod.asInteger := strtoint(vproduto);
        cdsItemCalibre.asInteger := dm.qrSql1.FieldByName('Calibre').asInteger;

        //Custo no produto
        fSql(1,3,['select unidade, categdes, pesoliq, custofg, custoope, custoemb, custoluc from cadprodu where codigo = 0' +cdsItemProdCod.asString],1);
        if not dm.qrSql3.Eof then
        begin
          cdsItemUnid.asString  := dm.qrSql3.FieldByName('Unidade').asString;
          cdsItemPeso.asFloat   := dm.qrSql3.FieldByName('pesoliq').asFloat;
          cdsItemProdDes.asString  := dm.qrSql3.FieldByName('Categdes').asString;
        end;
      end
      else
        cdsItem.Edit;

      cdsItemQtde.asFloat      := cdsItemQtde.asFloat + frDeci(dm.qrSql1.FieldByName('Qtde').asFloat,0);
      cdsItemQtdeKG.asFloat    := cdsItemQtde.asFloat * cdsItemPeso.asFloat;
{      if cdsItemPeso.asFloat > 0  then
      begin
        //Obtem preco da média de venda
        if dm.qrSql1.FieldByName('Preco').asFloat > 0 then
        begin
          cdsItemVlrMedia.asFloat  := frDeci(dm.qrSql1.FieldByName('Preco').asFloat / cdsItemPeso.asFloat,4);
          cdsItemVlrCaixa.asFloat  := frDeci(dm.qrSql1.FieldByName('Preco').asFloat,4);
        end;
      end
      else begin
}
        cdsItemVlrMedia.asFloat  := 0;
        cdsItemVlrCaixa.asFloat  := 0;
//      end;

      cdsItemVlrTotal.asFloat  := frDeci(cdsItemQtde.asFloat * cdsItemVlrCaixa.asFloat,2);
      cdsItemPreEmbal.asFloat  := 0;
      cdsItemPreOper.asFloat  := 0;
      cdsItemPerComis.asFloat := 0;

      if (cdsItemQtdeKG.asFloat > 0) then
      begin

        //Custo no produto
        cdsItemPreOper.asFloat  := 0;
        cdsItemPerComis.asFloat := 0;
        cdsItemPreEmbal.asFloat := 0;

        cdsItemVlrOper.asFloat  := cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat;
        cdsItemVlrEmbal.asFloat := cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat;

//        if (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat) > 0 then
        if vComissaoTotal then
          cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat)
        else
          cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat);
//        else
//          cdsItemVlrComis.asFloat := 0;

        cdsItemVlrComis.asFloat := frDeci(cdsItemVlrComis.asFloat * (cdsItemPerComis.asFloat / 100),2);

        cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                                   - cdsItemVlrEmbal.asFloat
                                   - cdsItemVlrOper.asFloat
                                   - cdsItemVlrComis.asFloat;

        if (cdsItemQtdeKG.asFloat > 0) then
          cdsItemPreLiquido.asFloat := cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat
        else
          cdsItemPreLiquido.asFloat := 0;

//        cdsItemVlrLiquido.asFloat := frDeci(cdsItemPreLiquido.asFloat * cdsItemQtdeKG.asFloat,2);
      end;

      cdsItem.Post;
    end;
    dm.qrSql1.Next;
  end;
  cdsOrigem.First;
  fTotalizador;

  fBar(2,1,'');
  cdsItem.First;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFfrmFechaPrestServ.fMostraDetalhe;
begin
  //Produtos
  cdsitem.close;
  sqlitem.SQL.Clear;
  sqlitem.SQL.Add('select * from fecha_classif_item');
  sqlitem.SQL.Add('where registro = 0'+cdsDadosRegistro.asString);
  sqlitem.SQL.Add('order by lancit');
  cdsitem.Open;
  //Origem
  cdsorigem.close;
  sqlorigem.SQL.Clear;
  sqlorigem.SQL.Add('select * from fecha_classif_orig');
  sqlorigem.SQL.Add('where registro = 0'+cdsDadosRegistro.asString);
  sqlorigem.SQL.Add('order by lancit');
  cdsorigem.Open;

end;

procedure TFfrmFechaPrestServ.fTotalizador(vFocus:Boolean = true);
var vreg: Integer;
    vcx, vkg, vemb, voper, vcom, vmed, vliq, vbins, vkgsaco, vcxsaco: Double;
begin
  vreg := cdsItemLancit.asInteger;
  cdsitem.DisableControls;
  vcx  := 0;
  vkg  := 0;
  vemb := 0;
  voper:= 0;
  vcom := 0;
  vmed := 0;
  vliq := 0;
  vbins:= 0;
  vkgsaco:=0;
  vcxsaco:=0;
  cdsitem.First;
  while not cdsitem.Eof do
  begin
    //Recalcula
    cdsitem.Edit;
{    if (Copy(cb1.Text,1,1) <> '1') then
    begin
      if (StrToIntDef(fbus(1,['Select count(*) from CadCateg where variecod = 5 and codigo = '+copy(cdsItemProdCod.asString,3,2)],1),0) > 0 )then
      begin
        cdsItemVlrMedia.asFloat   := 0;
        cdsItemVlrMediakg.asFloat := 0;
        cdsItemPreEmbal.asFloat   := 0;
        cdsItemPreOper.asFloat    := 0;
        cdsItemPerComis.asFloat   := 0;
      end
      else begin
        vcx  := vcx   + cdsItemQtde.asFloat;
        vkg  := vkg   + cdsItemQtdeKG.asFloat;
      end;
    end
    else begin
      vcx  := vcx   + cdsItemQtde.asFloat;
      vkg  := vkg   + cdsItemQtdeKG.asFloat;
    end;}

    if cdsItemProdCod.asInteger <> 9980000 then
    begin
      vcx  := vcx   + cdsItemQtde.asFloat;
      vkg  := vkg   + cdsItemQtdeKG.asFloat;
    end;

    if (Pos('SACOL', UpperCase(cdsItemProdDes.asString)) > 0) then
    begin
      vkgsaco := vkgsaco + cdsItemQtdeKG.asFloat;
      vcxsaco := vcxsaco + cdsItemQtde.asFloat;
    end;

    cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrMedia.asFloat,2);
    cdsItemVlrTotal.asFloat   := frDeci((cdsItemVlrCaixa.asFloat * cdsItemQtde.asFloat),2);
    if (cdsItemQtdeKG.asFloat > 0) then
       cdsItemVlrMediaKG.asFloat := frDeci((cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat),3);

    cdsItemVlrTotalKG.asFloat := frDeci((cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat),3);
    cdsItemVlrEmbal.asFloat := frDeci((cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat),3);
    cdsItemVlrOper.asFloat  := frDeci((cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat),3);
//    if (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat) > 0 then

    if vComissaoTotal then
      cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat)
    else
      cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat);
//    else
//      cdsItemVlrComis.asFloat := 0;
    cdsItemVlrComis.asFloat := frDeci((cdsItemVlrComis.asFloat * (cdsItemPerComis.asFloat / 100)),2);
    cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                               - cdsItemVlrEmbal.asFloat
                               - cdsItemVlrOper.asFloat
                               - cdsItemVlrComis.asFloat;
    if (cdsItemQtdeKG.asFloat > 0) then
      cdsItemPreLiquido.asFloat := frDeci((cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat),2)
    else
      cdsItemPreLiquido.asFloat := 0;

//    cdsItemVlrLiquido.asFloat := frDeci(cdsItemPreLiquido.asFloat * cdsItemQtdeKG.asFloat,2);

    cdsitem.Post;

    vemb := vemb  + cdsItemVlrEmbal.asFloat;
    voper:= voper + cdsItemVlrOper.asFloat;
    vcom := vcom  + cdsItemVlrComis.asFloat;
    vmed := vmed  + cdsItemVlrTotal.asFloat;
    vliq := vliq  + cdsItemVlrLiquido.asFloat;
    cdsitem.Next;

  end;

  cdsitem.EnableControls;
  cdsDados.Edit;
  cdsDadosTOTALCX.asFloat      := vcx;
  cdsDadosTOTALKGBRU.asFloat   := vkg;
  cdsDadosTOTALEMBAL.asFloat   := vemb;
  cdsDadosTOTALOPER.asFloat    := voper;
  cdsDadosTOTALCOMIS.asFloat   := vcom;
  cdsDadosTOTALMEDIA.asFloat   := vmed;
  cdsDadosTOTALKGLIQ.asFloat   := vcx - vcxsaco;
  cdsDadosTOTALLIQUIDO.asFloat := cdsDadosTOTALKGBRU.asFloat - vkgsaco;
  cdsDadosSUBTOTAL.asFloat     := vmed - vemb - voper - vcom - cdsDadosTOTALMULTA.asFloat;

  if vFunRural then
    cdsDadosTotalFunRural.AsFloat := frDeci(cdsDadosTotalMedia.asFloat * cdsDadosPerFunRural.AsFloat / 100,2)
  else
    cdsDadosTotalFunRural.AsFloat := frDeci(cdsDadosSubTotal.asFloat * cdsDadosPerFunRural.AsFloat / 100,2);

  //Total dos bins
  cdsorigem.First;
  while not cdsorigem.Eof do
  begin
    vbins := vbins + cdsorigemQTDE.asFloat;
    cdsorigem.Next;
  end;
  cdsorigem.First;
  cdsDadosTOTALBINS.asFloat := vbins;

  cdsItem.Locate('Lancit', vreg, []);
  cdsitem.Next;
end;

procedure TFfrmFechaPrestServ.gbVariedadeExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (cdsDados.State = dsBrowse) then Exit;
  if frmPesquisaVar.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosVarieCod.AsInteger := frmPesquisaVar.vpCodPrincipal;
    if (cdsDadosIndusQtde.asFloat = 0) then
      cdsDadosIndusQtde.asFloat := StrToFloatDef(frmPesquisaVar.vpCampo_1,0);
  end;
end;

procedure TFfrmFechaPrestServ.gbProdutorExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (cdsDados.State = dsBrowse) then Exit;
  if frmPesquisaProd.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosProdCod.AsInteger  := frmPesquisaProd.vpCodPrincipal;
    frmPesquisaVar.edtPesquisa.SetFocus;
  end;
end;

procedure TFfrmFechaPrestServ.Inserir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsItem.Cancel;
end;

procedure TFfrmFechaPrestServ.Lanamentoanaltico1Click(Sender: TObject);
var vpdf: String;
begin

  vpdf := pPreparaPDF;

  pcItem.ActivePageIndex := 1;
  inherited;
  //Analitico
  dsDadosRel.DataSet := cdsDados;
  dsItemRel.DataSet  := cdsItem;
  fMostraDetalhe;

  ppLabel54.Caption  := 'Período '+DateToStr(cdsDadosDTLOTEINI.asDateTime) +' à '+ DateToStr(cdsDadosDTLOTEFIM.asDateTime);
  vNFC := TComponent(Sender).Tag;

  ppLabel51.Caption := 'Prestação de serviço'; // - Variedade: '+uppercase(cdsDadosVarieDes.AsString);
  if vemail then
  begin
    ppRelFecha.TextFileName := vpdf;
    ppRelFecha.DeviceType:='PDF';
    ppRelFecha.AllowPrintToFile  := true;
    ppRelFecha.ShowPrintDialog   := false;
  end
  else
    ppRelFecha.DeviceType := 'Screen';
  ppRelFecha.Print;

  //PDF
  if vemail then
    pImprimirPdf(vpdf);

  pcItem.ActivePageIndex := 0;

end;

procedure TFfrmFechaPrestServ.sbComissaoClick(Sender: TObject);
begin
  inherited;

  DBGrid1.SetFocus;

  cdsitem.First;
  while not cdsitem.Eof do
  begin
    //Recalcula
    cdsitem.Edit;
    cdsItemVlrMedia.asFloat   := 0;
    cdsItemVlrCaixa.asFloat   := rzComissao.Value;
    cdsitem.Post;
    cdsitem.Next;
  end;

  fTotalizador;

  cdsitem.First;
  
end;

procedure TFfrmFechaPrestServ.sbEmailClick(Sender: TObject);
begin
  inherited;
  vemail := True;
  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFfrmFechaPrestServ.pImprimirPdf(vPDF: String);
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

      vemail := fBus(1,['Select email from cadforne where codigo = 0'+cdsDadosProdCod.AsString],1);

      frmEmail.edm1.Text := vemail;
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

