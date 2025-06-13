unit frmNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, Menus, Math,
  zFrmPesquisa, RzEdit, frxClass, frxDBSet, frxExportXLS, frxExportPDF, frxDesgn,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, frxExportBaseDialog, System.ImageList, Vcl.ImgList,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ACBrBase, ACBrEnterTab,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmNotaFiscal = class(TFModelo)
    dsFinan: TDataSource;
    cdsFinan: TClientDataSet;
    dspFinan: TDataSetProvider;
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    dspDetalhe: TDataSetProvider;
    PageControl1: TPageControl;
    tabCentro: TTabSheet;
    tabfinanceiro: TTabSheet;
    GroupBox2: TGroupBox;
    gbNota: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox13: TGroupBox;
    dbePSP: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit14: TDBEdit;
    DBGrid1: TDBGrid;
    sqlDadosLANC: TIntegerField;
    sqlDadosDIF: TStringField;
    sqlDadosNOTA: TIntegerField;
    sqlDadosSERIE: TStringField;
    sqlDadosVENDECOD: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosENTREGA: TSQLTimeStampField;
    sqlDadosNATURCOD: TBCDField;
    sqlDadosDADOSCOD: TIntegerField;
    sqlDadosTRTIPO: TStringField;
    sqlDadosTRCOD: TIntegerField;
    sqlDadosTRDES: TStringField;
    sqlDadosVLRDESC: TBCDField;
    sqlDadosVLRBASE: TBCDField;
    sqlDadosVLRICMS: TBCDField;
    sqlDadosVLRFRETE: TBCDField;
    sqlDadosVLRPRODUTO: TBCDField;
    sqlDadosVLRIPI: TBCDField;
    sqlDadosVLRNOTA: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosQTDESP: TStringField;
    sqlDadosPSP: TIntegerField;
    sqlDadosFRETECOD: TIntegerField;
    sqlDadosFRETEDES: TStringField;
    sqlDadosTRPLACA: TStringField;
    sqlDadosTRCIDADE: TStringField;
    sqlDadosTRESTADO: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosVLRSEGURO: TBCDField;
    sqlDadosVLRICMSFRE: TBCDField;
    sqlDadosOBS1: TStringField;
    sqlDadosFORPAG: TIntegerField;
    sqlDadosSEGTIP: TStringField;
    sqlDadosOBS2: TStringField;
    sqlDadosOBS3: TStringField;
    sqlDadosOBS4: TStringField;
    sqlDadosOBS5: TStringField;
    sqlDadosOBS6: TStringField;
    sqlDadosRECEITA: TIntegerField;
    sqlDadosDIFCOD: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosFORMA: TStringField;
    sqlDadosVLRFUNRURAL: TBCDField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosESTOQUE: TStringField;
    sqlDadosNSUNUM: TIntegerField;
    sqlDadosNSUDAT: TSQLTimeStampField;
    sqlDadosNSUHOR: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDIF: TStringField;
    cdsDadosNOTA: TIntegerField;
    cdsDadosSERIE: TStringField;
    cdsDadosVENDECOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosENTREGA: TSQLTimeStampField;
    cdsDadosNATURCOD: TBCDField;
    cdsDadosDADOSCOD: TIntegerField;
    cdsDadosTRTIPO: TStringField;
    cdsDadosTRCOD: TIntegerField;
    cdsDadosTRDES: TStringField;
    cdsDadosVLRDESC: TBCDField;
    cdsDadosVLRBASE: TBCDField;
    cdsDadosVLRICMS: TBCDField;
    cdsDadosVLRFRETE: TBCDField;
    cdsDadosVLRPRODUTO: TBCDField;
    cdsDadosVLRIPI: TBCDField;
    cdsDadosVLRNOTA: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosQTDESP: TStringField;
    cdsDadosPSP: TIntegerField;
    cdsDadosFRETECOD: TIntegerField;
    cdsDadosFRETEDES: TStringField;
    cdsDadosTRPLACA: TStringField;
    cdsDadosTRCIDADE: TStringField;
    cdsDadosTRESTADO: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosVLRSEGURO: TBCDField;
    cdsDadosVLRICMSFRE: TBCDField;
    cdsDadosOBS1: TStringField;
    cdsDadosFORPAG: TIntegerField;
    cdsDadosSEGTIP: TStringField;
    cdsDadosOBS2: TStringField;
    cdsDadosOBS3: TStringField;
    cdsDadosOBS4: TStringField;
    cdsDadosOBS5: TStringField;
    cdsDadosOBS6: TStringField;
    cdsDadosRECEITA: TIntegerField;
    cdsDadosDIFCOD: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosFORMA: TStringField;
    cdsDadosVLRFUNRURAL: TBCDField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosESTOQUE: TStringField;
    cdsDadosNSUNUM: TIntegerField;
    cdsDadosNSUDAT: TSQLTimeStampField;
    cdsDadosNSUHOR: TStringField;
    dsCadNota: TDataSource;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheDATA: TSQLTimeStampField;
    cdsDetalheCLIENTE: TIntegerField;
    cdsDetalheCODIGO: TIntegerField;
    cdsDetalheUNIDADE: TStringField;
    cdsDetalhePESOLIQ: TBCDField;
    cdsDetalhePESOBRU: TBCDField;
    cdsDetalheQTDE: TBCDField;
    cdsDetalheVALOR: TBCDField;
    cdsDetalheGRUPOCOD: TIntegerField;
    cdsDetalhePERDESC: TBCDField;
    cdsDetalheVLRDESC: TBCDField;
    cdsDetalheVENCTO: TSQLTimeStampField;
    cdsDetalheRVALOR: TBCDField;
    cdsDetalheEMPRECOD: TIntegerField;
    cdsDetalheACESOCOD: TIntegerField;
    cdsDetalheESTOQUE: TStringField;
    cdsFinanLANCIT: TIntegerField;
    cdsFinanLANC: TIntegerField;
    cdsFinanPARC: TIntegerField;
    cdsFinanVENCTO: TSQLTimeStampField;
    cdsFinanVALOR: TBCDField;
    cdsFinanPERC: TBCDField;
    cdsFinanVLR: TBCDField;
    cdsFinanCAR: TIntegerField;
    cdsFinanTIPO: TStringField;
    cdsFinanBANCOD: TIntegerField;
    cdsFinanBANDOC: TStringField;
    cdsFinanBANEMI: TStringField;
    cdsFinanEMPRECOD: TIntegerField;
    cdsFinanACESOCOD: TIntegerField;
    sqlDadosPRODNOTA: TIntegerField;
    cdsDadosPRODNOTA: TIntegerField;
    cdsFinanBANDES: TStringField;
    cdsDetalheNATURCOD: TBCDField;
    cdsDetalheICMS_PER: TBCDField;
    cdsDetalheICMS_RED: TBCDField;
    cdsDetalheICMS_BASE: TBCDField;
    cdsDetalheICMS_VLR: TBCDField;
    cdsDetalheIPI_SIT: TStringField;
    cdsDetalheIPI_PER: TBCDField;
    cdsDetalheIPI_BASE: TBCDField;
    cdsDetalheIPI_VLR: TBCDField;
    sqlDadosNFE_MODELO: TStringField;
    sqlDadosNFE_STATUS: TStringField;
    sqlDadosNFE_CHAVE: TStringField;
    sqlDadosNFE_RECIBO: TStringField;
    sqlDadosNFE_PROTOC: TStringField;
    sqlDadosNFE_CANCEL: TStringField;
    sqlDadosNFE_XML: TStringField;
    cdsDadosNFE_MODELO: TStringField;
    cdsDadosNFE_STATUS: TStringField;
    cdsDadosNFE_CHAVE: TStringField;
    cdsDadosNFE_RECIBO: TStringField;
    cdsDadosNFE_PROTOC: TStringField;
    cdsDadosNFE_CANCEL: TStringField;
    cdsDadosNFE_XML: TStringField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    GroupBox19: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox11: TGroupBox;
    pnlCfop: TPanel;
    DBLCBox: TDBLookupComboBox;
    PopupMenu4: TPopupMenu;
    NotaFiscal1: TMenuItem;
    RomaneiodeVenda1: TMenuItem;
    Promissria1: TMenuItem;
    cdsDetalheCODLOTECLASS: TStringField;
    sqlDadosCLI_FUNPER: TBCDField;
    sqlDadosCLI_COMISPER: TBCDField;
    sqlDadosCLI_ADIANTCX: TBCDField;
    cdsDadosCLI_FUNPER: TBCDField;
    cdsDadosCLI_COMISPER: TBCDField;
    cdsDadosCLI_ADIANTCX: TBCDField;
    frmPesquisaRazao: TfrmPesquisa;
    cdsDetalheNCM_PER: TBCDField;
    cdsDetalheNCM_VLR: TBCDField;
    sqlDadosTRIBNCM_PER: TBCDField;
    sqlDadosTRIBNCM_VLR: TBCDField;
    cdsDadosTRIBNCM_PER: TBCDField;
    cdsDadosTRIBNCM_VLR: TBCDField;
    cdsDetalheNCM_COD: TStringField;
    pnlabafinan: TPanel;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox23: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label10: TLabel;
    GroupBox24: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox25: TGroupBox;
    Label16: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label18: TLabel;
    DBEdit29: TDBEdit;
    Label17: TLabel;
    Label20: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label21: TLabel;
    Label23: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit35: TDBEdit;
    Label26: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit38: TDBEdit;
    GroupBox26: TGroupBox;
    Label22: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit32: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    GroupBox27: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit41: TDBEdit;
    DBEdit43: TDBEdit;
    GroupBox28: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit42: TDBEdit;
    DBEdit44: TDBEdit;
    dspImport: TDataSetProvider;
    cdsImport: TClientDataSet;
    dsImport: TDataSource;
    cdsImportLANC: TIntegerField;
    cdsImportLANCIT: TIntegerField;
    cdsImportDI_NR: TStringField;
    cdsImportDI_DT: TSQLTimeStampField;
    cdsImportLOC_DES: TStringField;
    cdsImportLOC_UF: TStringField;
    cdsImportLOC_DT: TSQLTimeStampField;
    cdsImportTRA_VLR: TBCDField;
    cdsImportTRA_CNPJ: TStringField;
    cdsImportTRA_UF: TStringField;
    cdsImportADC_NR: TIntegerField;
    cdsImportADC_SEQ: TIntegerField;
    cdsImportADC_COD: TStringField;
    cdsImportIMP_ICM_VLR: TBCDField;
    cdsImportIMP_ICM_PER: TBCDField;
    cdsImportIMP_OUT_ADV: TBCDField;
    cdsImportIMP_OUT_IOF: TBCDField;
    cdsImportIMP_IPI_VLR: TBCDField;
    cdsImportIMP_IPI_PER: TBCDField;
    cdsImportIMP_IPI_COD: TIntegerField;
    cdsImportIMP_II_VLR: TBCDField;
    cdsImportIMP_II_PER: TBCDField;
    cdsImportIMP_II_COD: TIntegerField;
    cdsImportIMP_PIS_VLR: TBCDField;
    cdsImportIMP_PIS_PER: TBCDField;
    cdsImportIMP_PIS_COD: TIntegerField;
    cdsImportIMP_COF_VLR: TBCDField;
    cdsImportIMP_COF_PER: TBCDField;
    cdsImportIMP_COF_COD: TIntegerField;
    cdsImportTRA_VIA: TStringField;
    cdsImportTRA_TIP: TStringField;
    cdsDetalheICMS_CREDPER: TBCDField;
    cdsDetalheICMS_CREDVLR: TBCDField;
    sqlDadosVLRCRED: TBCDField;
    cdsDadosVLRCRED: TBCDField;
    sqlDadosVLRSERV: TBCDField;
    sqlDadosPERSERV: TBCDField;
    cdsDadosVLRSERV: TBCDField;
    cdsDadosPERSERV: TBCDField;
    cdsDetalheEHSERVICO: TStringField;
    cdsDetalheEHSERVPER: TBCDField;
    cdsDetalheEHSERVVLR: TBCDField;
    cdsDetalheICMS_SIT: TStringField;
    pnlImporta: TPanel;
    cdsDetalheRVLRMEDIO: TBCDField;
    TabReferenciada: TTabSheet;
    pnlReferenciada: TPanel;
    gbNFeRef: TGroupBox;
    Panel1: TPanel;
    rzNfe: TRzNumericEdit;
    dspReferenciada: TDataSetProvider;
    cdsReferenciada: TClientDataSet;
    dsReferenciada: TDataSource;
    cdsReferenciadaLANC: TIntegerField;
    cdsReferenciadaLANCIT: TIntegerField;
    cdsReferenciadaCAMPO1: TStringField;
    btnInserir: TBitBtn;
    DBGrid3: TDBGrid;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    BitBtn2: TBitBtn;
    cdsReferenciadaNOTA: TIntegerField;
    sqlDadosPIS_VLR: TBCDField;
    sqlDadosCOFINS_VLR: TBCDField;
    cdsDadosPIS_VLR: TBCDField;
    cdsDadosCOFINS_VLR: TBCDField;
    cdsDetalhePIS_SIT: TStringField;
    cdsDetalhePIS_PER: TBCDField;
    cdsDetalhePIS_BASE: TBCDField;
    cdsDetalhePIS_VLR: TBCDField;
    cdsDetalheCOFINS_SIT: TStringField;
    cdsDetalheCOFINS_PER: TBCDField;
    cdsDetalheCOFINS_BASE: TBCDField;
    cdsDetalheCOFINS_VLR: TBCDField;
    cdsDetalheIPI_CENQ: TStringField;
    sqlDadosCOMISSAOCOD: TIntegerField;
    sqlDadosCOMISSAOVLR: TBCDField;
    TabOutros: TTabSheet;
    DBRGFrete: TDBRadioGroup;
    GroupBox9: TGroupBox;
    frmPesquisaMot: TfrmPesquisa;
    cdsDadosCOMISSAOCOD: TIntegerField;
    cdsDadosCOMISSAOVLR: TBCDField;
    sqlDadosCOMISSAOVALOR: TBCDField;
    cdsDadosCOMISSAOVALOR: TBCDField;
    dsCadastro: TDataSource;
    EspelhoNota1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    sbNotaFiscal: TSpeedButton;
    dsTrans: TDataSource;
    cdsDetalheDESCRICAO: TStringField;
    cdsDetalhePRODUTOCOD: TStringField;
    sqlDadosOBS7: TStringField;
    sqlDadosOBS8: TStringField;
    sqlDadosOBS9: TStringField;
    sqlDadosOBS10: TStringField;
    sqlDadosOBS11: TStringField;
    sqlDadosOBS12: TStringField;
    cdsDadosOBS7: TStringField;
    cdsDadosOBS8: TStringField;
    cdsDadosOBS9: TStringField;
    cdsDadosOBS10: TStringField;
    cdsDadosOBS11: TStringField;
    cdsDadosOBS12: TStringField;
    cdsDadosvNatOper: TStringField;
    cdsDadosvFretePor: TStringField;
    N1: TMenuItem;
    Configurar1: TMenuItem;
    frxDesigner1: TfrxDesigner;
    sqlDadosOBS13: TStringField;
    cdsDadosOBS13: TStringField;
    cdsDetalheNCM_PERE: TBCDField;
    cdsDetalheNCM_VLRE: TBCDField;
    cdsDetalheNCM_PERM: TBCDField;
    cdsDetalheNCM_VLRM: TBCDField;
    sqlDadosTRIBNCM_PERE: TBCDField;
    sqlDadosTRIBNCM_VLRE: TBCDField;
    cdsDadosTRIBNCM_PERE: TBCDField;
    cdsDadosTRIBNCM_VLRE: TBCDField;
    cdsReferenciadaNFP_MMAA: TStringField;
    cdsReferenciadaNFP_MODELO: TIntegerField;
    cdsReferenciadaNFP_SERIE: TIntegerField;
    cdsDetalheUTRIB: TStringField;
    cdsDetalheQTRIB: TBCDField;
    cdsDetalheCBENEF: TStringField;
    sqlDadosPRD_FUNRURAL: TBCDField;
    cdsDadosPRD_FUNRURAL: TBCDField;
    frxTransp: TfrxDBDataset;
    frxCadastro: TfrxDBDataset;
    frxFinan: TfrxDBDataset;
    frxDetalhe: TfrxDBDataset;
    frxDados: TfrxDBDataset;
    frxEmpresa: TfrxDBDataset;
    frxReportNota: TfrxReport;
    Panel3: TPanel;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit21: TDBEdit;
    DBComboBox1: TDBComboBox;
    GroupBox20: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit23: TDBEdit;
    GroupBox18: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit16: TDBEdit;
    pnlComissao: TPanel;
    gbCliente: TGroupBox;
    GroupBox12: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit10: TDBEdit;
    gbComissao: TGroupBox;
    GroupBox29: TGroupBox;
    DBEdit45: TDBEdit;
    GroupBox31: TGroupBox;
    DBEdit46: TDBEdit;
    dbgComissao: TDBRadioGroup;
    GroupBox30: TGroupBox;
    frmPesquisaVendedor: TfrmPesquisa;
    Panel5: TPanel;
    pnlfinan: TPanel;
    Label19: TLabel;
    GroupBox10: TGroupBox;
    sbDadosAdic: TSpeedButton;
    memDados: TMemo;
    gbFisco: TGroupBox;
    DBMemo1: TDBMemo;
    pnlProdutor: TPanel;
    gbProdutor: TGroupBox;
    frmPesquisaPro: TfrmPesquisa;
    gbProdutorNF: TGroupBox;
    DBEdit5: TDBEdit;
    gbProdutorFun: TGroupBox;
    DBEdit7: TDBEdit;
    sqlDadosDIFDES: TStringField;
    cdsDadosDIFDES: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1NFE_STATUS: TcxGridDBColumn;
    dbDadosDBTableView1DIFCOD: TcxGridDBColumn;
    dbDadosDBTableView1DIF: TcxGridDBColumn;
    dbDadosDBTableView1NOTA: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1SERIE: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1VLRPRODUTO: TcxGridDBColumn;
    dbDadosDBTableView1VLRNOTA: TcxGridDBColumn;
    dbDadosDBTableView1VENDECOD: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1ENTREGA: TcxGridDBColumn;
    dbDadosDBTableView1NATURCOD: TcxGridDBColumn;
    dbDadosDBTableView1DADOSCOD: TcxGridDBColumn;
    dbDadosDBTableView1TRTIPO: TcxGridDBColumn;
    dbDadosDBTableView1TRCOD: TcxGridDBColumn;
    dbDadosDBTableView1TRDES: TcxGridDBColumn;
    dbDadosDBTableView1VLRDESC: TcxGridDBColumn;
    dbDadosDBTableView1VLRBASE: TcxGridDBColumn;
    dbDadosDBTableView1DIFDES: TcxGridDBColumn;
    dbDadosDBTableView1VLRICMS: TcxGridDBColumn;
    dbDadosDBTableView1VLRFRETE: TcxGridDBColumn;
    dbDadosDBTableView1VLRIPI: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1QTDESP: TcxGridDBColumn;
    dbDadosDBTableView1PSP: TcxGridDBColumn;
    dbDadosDBTableView1FRETECOD: TcxGridDBColumn;
    dbDadosDBTableView1FRETEDES: TcxGridDBColumn;
    dbDadosDBTableView1TRPLACA: TcxGridDBColumn;
    dbDadosDBTableView1TRCIDADE: TcxGridDBColumn;
    dbDadosDBTableView1TRESTADO: TcxGridDBColumn;
    dbDadosDBTableView1ESTADO: TcxGridDBColumn;
    dbDadosDBTableView1VLRSEGURO: TcxGridDBColumn;
    dbDadosDBTableView1VLRICMSFRE: TcxGridDBColumn;
    dbDadosDBTableView1OBS1: TcxGridDBColumn;
    dbDadosDBTableView1FORPAG: TcxGridDBColumn;
    dbDadosDBTableView1SEGTIP: TcxGridDBColumn;
    dbDadosDBTableView1OBS2: TcxGridDBColumn;
    dbDadosDBTableView1OBS3: TcxGridDBColumn;
    dbDadosDBTableView1OBS4: TcxGridDBColumn;
    dbDadosDBTableView1OBS5: TcxGridDBColumn;
    dbDadosDBTableView1OBS6: TcxGridDBColumn;
    dbDadosDBTableView1RECEITA: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1FORMA: TcxGridDBColumn;
    dbDadosDBTableView1VLRFUNRURAL: TcxGridDBColumn;
    dbDadosDBTableView1PRODNOTA: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1ESTOQUE: TcxGridDBColumn;
    dbDadosDBTableView1NSUNUM: TcxGridDBColumn;
    dbDadosDBTableView1NSUDAT: TcxGridDBColumn;
    dbDadosDBTableView1NSUHOR: TcxGridDBColumn;
    dbDadosDBTableView1NFE_MODELO: TcxGridDBColumn;
    dbDadosDBTableView1NFE_CHAVE: TcxGridDBColumn;
    dbDadosDBTableView1NFE_RECIBO: TcxGridDBColumn;
    dbDadosDBTableView1NFE_PROTOC: TcxGridDBColumn;
    dbDadosDBTableView1NFE_CANCEL: TcxGridDBColumn;
    dbDadosDBTableView1NFE_XML: TcxGridDBColumn;
    dbDadosDBTableView1CLI_FUNPER: TcxGridDBColumn;
    dbDadosDBTableView1CLI_COMISPER: TcxGridDBColumn;
    dbDadosDBTableView1CLI_ADIANTCX: TcxGridDBColumn;
    dbDadosDBTableView1TRIBNCM_PER: TcxGridDBColumn;
    dbDadosDBTableView1TRIBNCM_VLR: TcxGridDBColumn;
    dbDadosDBTableView1VLRCRED: TcxGridDBColumn;
    dbDadosDBTableView1VLRSERV: TcxGridDBColumn;
    dbDadosDBTableView1PERSERV: TcxGridDBColumn;
    dbDadosDBTableView1PIS_VLR: TcxGridDBColumn;
    dbDadosDBTableView1COFINS_VLR: TcxGridDBColumn;
    dbDadosDBTableView1COMISSAOCOD: TcxGridDBColumn;
    dbDadosDBTableView1COMISSAOVLR: TcxGridDBColumn;
    dbDadosDBTableView1COMISSAOVALOR: TcxGridDBColumn;
    dbDadosDBTableView1OBS7: TcxGridDBColumn;
    dbDadosDBTableView1OBS8: TcxGridDBColumn;
    dbDadosDBTableView1OBS9: TcxGridDBColumn;
    dbDadosDBTableView1OBS10: TcxGridDBColumn;
    dbDadosDBTableView1OBS11: TcxGridDBColumn;
    dbDadosDBTableView1OBS12: TcxGridDBColumn;
    dbDadosDBTableView1vNatOper: TcxGridDBColumn;
    dbDadosDBTableView1vFretePor: TcxGridDBColumn;
    dbDadosDBTableView1OBS13: TcxGridDBColumn;
    dbDadosDBTableView1TRIBNCM_PERE: TcxGridDBColumn;
    dbDadosDBTableView1TRIBNCM_VLRE: TcxGridDBColumn;
    dbDadosDBTableView1PRD_FUNRURAL: TcxGridDBColumn;
    btnDescNota: TButton;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    cdsFinanREGLOG: TStringField;
    cdsFinanREG_ID: TIntegerField;
    cdsImportREGLOG: TStringField;
    cdsImportREG_ID: TIntegerField;
    cdsReferenciadaNFP_AAMM: TStringField;
    cdsReferenciadaREGLOG: TStringField;
    cdsReferenciadaREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlFinan: TFDQuery;
    sqlImport: TFDQuery;
    sqlReferenciada: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheDATA: TSQLTimeStampField;
    sqlDetalheCLIENTE: TIntegerField;
    sqlDetalheCODIGO: TIntegerField;
    sqlDetalheDESCRICAO: TStringField;
    sqlDetalheUNIDADE: TStringField;
    sqlDetalhePESOLIQ: TBCDField;
    sqlDetalhePESOBRU: TBCDField;
    sqlDetalheQTDE: TBCDField;
    sqlDetalheUNIT: TFMTBCDField;
    sqlDetalheVALOR: TBCDField;
    sqlDetalheGRUPOCOD: TIntegerField;
    sqlDetalhePERDESC: TBCDField;
    sqlDetalheVLRDESC: TBCDField;
    sqlDetalheVENCTO: TSQLTimeStampField;
    sqlDetalheRUNIT: TFMTBCDField;
    sqlDetalheRVALOR: TBCDField;
    sqlDetalheEMPRECOD: TIntegerField;
    sqlDetalheACESOCOD: TIntegerField;
    sqlDetalheESTOQUE: TStringField;
    sqlDetalheNATURCOD: TBCDField;
    sqlDetalheICMS_SIT: TStringField;
    sqlDetalheICMS_PER: TBCDField;
    sqlDetalheICMS_RED: TBCDField;
    sqlDetalheICMS_BASE: TBCDField;
    sqlDetalheICMS_VLR: TBCDField;
    sqlDetalheIPI_SIT: TStringField;
    sqlDetalheIPI_PER: TBCDField;
    sqlDetalheIPI_BASE: TBCDField;
    sqlDetalheIPI_VLR: TBCDField;
    sqlDetalheCODLOTECLASS: TStringField;
    sqlDetalheNCM_COD: TStringField;
    sqlDetalheNCM_PER: TBCDField;
    sqlDetalheNCM_VLR: TBCDField;
    sqlDetalheICMS_CREDPER: TBCDField;
    sqlDetalheICMS_CREDVLR: TBCDField;
    sqlDetalheEHSERVICO: TStringField;
    sqlDetalheEHSERVPER: TBCDField;
    sqlDetalheEHSERVVLR: TBCDField;
    sqlDetalheRVLRMEDIO: TBCDField;
    sqlDetalhePIS_SIT: TStringField;
    sqlDetalhePIS_PER: TBCDField;
    sqlDetalhePIS_BASE: TBCDField;
    sqlDetalhePIS_VLR: TBCDField;
    sqlDetalheCOFINS_SIT: TStringField;
    sqlDetalheCOFINS_PER: TBCDField;
    sqlDetalheCOFINS_BASE: TBCDField;
    sqlDetalheCOFINS_VLR: TBCDField;
    sqlDetalheIPI_CENQ: TStringField;
    sqlDetalhePRODUTOCOD: TStringField;
    sqlDetalheNCM_PERE: TBCDField;
    sqlDetalheNCM_VLRE: TBCDField;
    sqlDetalheNCM_PERM: TBCDField;
    sqlDetalheNCM_VLRM: TBCDField;
    sqlDetalheUTRIB: TStringField;
    sqlDetalheQTRIB: TBCDField;
    sqlDetalheVUNTRIB: TFMTBCDField;
    sqlDetalheCBENEF: TStringField;
    sqlDetalheREGLOG: TStringField;
    sqlDetalheREG_ID: TIntegerField;
    sqlFinanLANCIT: TIntegerField;
    sqlFinanLANC: TIntegerField;
    sqlFinanPARC: TIntegerField;
    sqlFinanVENCTO: TSQLTimeStampField;
    sqlFinanVALOR: TBCDField;
    sqlFinanPERC: TBCDField;
    sqlFinanVLR: TBCDField;
    sqlFinanCAR: TIntegerField;
    sqlFinanTIPO: TStringField;
    sqlFinanBANCOD: TIntegerField;
    sqlFinanBANDOC: TStringField;
    sqlFinanBANEMI: TStringField;
    sqlFinanEMPRECOD: TIntegerField;
    sqlFinanACESOCOD: TIntegerField;
    sqlFinanBANDES: TStringField;
    sqlFinanREGLOG: TStringField;
    sqlFinanREG_ID: TIntegerField;
    sqlImportLANCIT: TIntegerField;
    sqlImportLANC: TIntegerField;
    sqlImportDI_NR: TStringField;
    sqlImportDI_DT: TSQLTimeStampField;
    sqlImportLOC_DES: TStringField;
    sqlImportLOC_UF: TStringField;
    sqlImportLOC_DT: TSQLTimeStampField;
    sqlImportTRA_VIA: TStringField;
    sqlImportTRA_VLR: TBCDField;
    sqlImportTRA_TIP: TStringField;
    sqlImportTRA_CNPJ: TStringField;
    sqlImportTRA_UF: TStringField;
    sqlImportADC_NR: TIntegerField;
    sqlImportADC_SEQ: TIntegerField;
    sqlImportADC_COD: TStringField;
    sqlImportIMP_ICM_VLR: TBCDField;
    sqlImportIMP_ICM_PER: TBCDField;
    sqlImportIMP_OUT_ADV: TBCDField;
    sqlImportIMP_OUT_IOF: TBCDField;
    sqlImportIMP_IPI_VLR: TBCDField;
    sqlImportIMP_IPI_PER: TBCDField;
    sqlImportIMP_IPI_COD: TIntegerField;
    sqlImportIMP_II_VLR: TBCDField;
    sqlImportIMP_II_PER: TBCDField;
    sqlImportIMP_II_COD: TIntegerField;
    sqlImportIMP_PIS_VLR: TBCDField;
    sqlImportIMP_PIS_PER: TBCDField;
    sqlImportIMP_PIS_COD: TIntegerField;
    sqlImportIMP_COF_VLR: TBCDField;
    sqlImportIMP_COF_PER: TBCDField;
    sqlImportIMP_COF_COD: TIntegerField;
    sqlImportREGLOG: TStringField;
    sqlImportREG_ID: TIntegerField;
    sqlReferenciadaLANCIT: TIntegerField;
    sqlReferenciadaLANC: TIntegerField;
    sqlReferenciadaCAMPO1: TStringField;
    sqlReferenciadaNOTA: TIntegerField;
    sqlReferenciadaNFP_MMAA: TStringField;
    sqlReferenciadaNFP_AAMM: TStringField;
    sqlReferenciadaNFP_MODELO: TIntegerField;
    sqlReferenciadaNFP_SERIE: TIntegerField;
    sqlReferenciadaREGLOG: TStringField;
    sqlReferenciadaREG_ID: TIntegerField;
    TCadNota: TFDQuery;
    cdsCadastro: TFDQuery;
    qrTrans: TFDQuery;
    TCadNotaCODIGO: TIntegerField;
    TCadNotaDESCRICAO: TStringField;
    TCadNotaTIPO: TStringField;
    TCadNotaNATURDEN: TBCDField;
    TCadNotaNATURFOR: TBCDField;
    TCadNotaICMSTIPO: TStringField;
    TCadNotaICMSDEN: TBCDField;
    TCadNotaICMSFOR: TBCDField;
    TCadNotaESTOQUE: TStringField;
    TCadNotaFINANCEIRO: TStringField;
    TCadNotaFUNRURAL: TStringField;
    TCadNotaFUNVALOR: TBCDField;
    TCadNotaITEM: TStringField;
    TCadNotaRAZAO: TStringField;
    TCadNotaEMPRECOD: TIntegerField;
    TCadNotaACESOCOD: TIntegerField;
    TCadNotaALIQIPI: TBCDField;
    TCadNotaALIQFUN: TBCDField;
    TCadNotaSERIE: TStringField;
    TCadNotaMODELO: TStringField;
    TCadNotaIMPORTACAO: TStringField;
    TCadNotaICMS_ORI: TStringField;
    TCadNotaICMS_SIT: TStringField;
    TCadNotaFINNFE: TStringField;
    TCadNotaCFOPDESC: TStringField;
    TCadNotaREL_VENDA: TStringField;
    TCadNotaCOMISSAO: TStringField;
    TCadNotaDADOSADIC: TStringField;
    TCadNotaIEPRODUTOR: TStringField;
    TCadNotaFGIMPOSTO: TStringField;
    TCadNotaFGTRANS: TStringField;
    TCadNotaFGTRANSPL: TStringField;
    TCadNotaFGREFER: TStringField;
    TCadNotaICMS_CREDPER: TBCDField;
    TCadNotaFGFISCO: TStringField;
    TCadNotaATIVO: TStringField;
    TCadNotaGERAROMENT: TStringField;
    TCadNotaREGLOG: TStringField;
    TCadNotaREG_ID: TIntegerField;
    cdsDetalheUNIT: TFMTBCDField;
    cdsDetalheRUNIT: TFMTBCDField;
    cdsDetalheVUNTRIB: TFMTBCDField;
    sqlDetalhePRUNIT: TFMTBCDField;
    sqlDetalhePREMB: TBCDField;
    cdsDetalhePRUNIT: TFMTBCDField;
    cdsDetalhePREMB: TBCDField;
    sqlDadosVOL_QTDE: TIntegerField;
    sqlDadosVOL_ESPECIE: TStringField;
    sqlDadosVOL_MARCA: TStringField;
    sqlDadosVOL_NUMERACAO: TStringField;
    cdsDadosVOL_QTDE: TIntegerField;
    cdsDadosVOL_ESPECIE: TStringField;
    cdsDadosVOL_MARCA: TStringField;
    cdsDadosVOL_NUMERACAO: TStringField;
    GroupBox3: TGroupBox;
    GroupBox32: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox33: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox34: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox35: TGroupBox;
    DBEdit47: TDBEdit;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memDadosExit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure DBLCBoxExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBRGFreteExit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
    procedure cdsFinanBeforePost(DataSet: TDataSet);
    procedure gbProdutorExit(Sender: TObject);
    procedure GroupBox9Exit(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure memRefEnter(Sender: TObject);
    procedure memRefExit(Sender: TObject);
    procedure dbePSPExit(Sender: TObject);
    procedure DBEdit38Exit(Sender: TObject);
    procedure cdsImportBeforePost(DataSet: TDataSet);
    procedure cdsDetalheAfterScroll(DataSet: TDataSet);
    procedure memDadosEnter(Sender: TObject);
    procedure memDadosKeyPress(Sender: TObject; var Key: Char);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure pnlTelaDblClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GroupBox30Exit(Sender: TObject);
    procedure DBEdit45Exit(Sender: TObject);
    procedure dbgComissaoExit(Sender: TObject);
    procedure DBEdit46Exit(Sender: TObject);
    procedure sbDadosAdicClick(Sender: TObject);
    procedure EspelhoNota1Click(Sender: TObject);
    procedure cdsReferenciadaBeforePost(DataSet: TDataSet);
    procedure sbNotaFiscalClick(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure rzNfeExit(Sender: TObject);
    procedure btnDescNotaClick(Sender: TObject);
    procedure PStatusResgistroDblClick(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cdsDadosBeforeClose(DataSet: TDataSet);
    procedure dbePSPEnter(Sender: TObject);
    procedure TabOutrosShow(Sender: TObject);
  private
    { Private declarations }
    vcadclass, vcodlote, vUFEMP, vUFCLI: String;
    varDescLote: Boolean;
    vVlrUnitZerado: Integer;

    procedure pBuscaPSP;
    procedure pTipodeCFOP;
    procedure pTipodeImposto;
    procedure pCalculaImposto;
    procedure pCalculaTotal;
    procedure pCalculaFinan;
    procedure pArrumaParc;
    function  pSSalvar(vTipo:Boolean):Boolean;
    procedure pIniciaPesquisa;
    procedure pCalculaComissao;
    procedure pGeraRomaneioEntrada;
    procedure pBuscaPesquisa;
    procedure fMostraDetalhe;

  public
    { Public declarations }
    vveioPSP, vimportouPSP: Boolean;
    vCli_Desconta_Parcela: Boolean;

    procedure pAbrirTela(vatLanc: String);

  end;

var
  FfrmNotaFiscal: TFfrmNotaFiscal;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlNotaProdutor, rlPSPVenda,  rlPermisao,
     frmGerenciadorNFE;

procedure TFfrmNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;

  pcItem.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  frmPesquisaMot.pInicia('ttMotorista', TForm(Sender),127,147,GroupBox9,true);
  frmPesquisaPro.pInicia('ttProdutor', TForm(Sender),127,147,GBProdutor,true);
  frmPesquisaVendedor.pInicia('ttVendedor', TForm(Sender), (pnlComissao.Top + 50), 147,GroupBox30,true);
  pnlImporta.Visible := False;
  DBGrid1.Height := 300;
  vveioPSP := False;

  DBComboBox1.Items.Clear;
  DBComboBox1.Items.Add('0 -Nenhum');
  DBComboBox1.Items.Add('1 -Truck');
  DBComboBox1.Items.Add('2 -Carreta');

  DBComboBox2.Items.Clear;
  DBComboBox2.Items.Add(' 0-Nenhum');
  DBComboBox2.Items.Add(' 1-Marítima');
  DBComboBox2.Items.Add(' 2-Fluvial');
  DBComboBox2.Items.Add(' 3-Lacustre');
  DBComboBox2.Items.Add(' 4-Aérea');
  DBComboBox2.Items.Add(' 5-Postal');
  DBComboBox2.Items.Add(' 6-Ferroviária');
  DBComboBox2.Items.Add(' 7-Rodoviária');
  DBComboBox2.Items.Add(' 8-Conduto/Rede transmissão');
  DBComboBox2.Items.Add(' 9-Meios próprios');
  DBComboBox2.Items.Add('10-Entrada/Saída ficta.');
  DBComboBox2.Items.Add('11-Courier');
  DBComboBox2.Items.Add('12-Handcarry');

  DBComboBox3.Items.Clear;
  DBComboBox3.Items.Add('0-Nenhum');
  DBComboBox3.Items.Add('1-Importação por conta própria');
  DBComboBox3.Items.Add('2-Importação por conta e ordem');
  DBComboBox3.Items.Add('3-Importação por encomenda');

  btnDescNota.Visible := False;
  if Copy(uppercase(xAcess),1,5) = 'ACWEB' then
    btnDescNota.Visible := True;

  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmNotaFiscal.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmNotaFiscal.gbProdutorExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaPro.dbgLista.Visible then exit;

  if DBEdit5.CanFocus then
    DBEdit5.SetFocus;
end;


procedure TFfrmNotaFiscal.GroupBox30Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaVendedor.dbgLista.Visible then exit;

  //Busca dados - Vendedor
  fSql(1,1,['Select ComissaoCod, ComissaoVlr From CadForne Where codigo = 0'+IntToStr(frmPesquisaVendedor.vpCodPrincipal)],1);
  cdsDadosComissaoCod.asInteger := dm.qrSql1.FieldByName('ComissaoCod').asInteger;
  cdsDadosComissaoVlr.asFloat   := dm.qrSql1.FieldByName('ComissaoVlr').asFloat;

  pCalculaComissao;

  if dbgComissao.CanFocus then
   dbgComissao.SetFocus;

end;

procedure TFfrmNotaFiscal.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaRazao.dbgLista.Visible then exit;

  if (Trim(frmPesquisaRazao.edtPesquisa.Text) = '') then
  begin
    frPerg('Informe nome/razão válidos!', 'OK');
    frmPesquisaRazao.edtPesquisa.SetFocus;
    Exit;
  end;

  //busca Prazo
  vCli_Desconta_Parcela := False;
  if TCadNotaRazao.Text = 'C' then
  begin
    fSql(1,1,['Select FORMA, FUNPER, COMISPER, ADIANTCX, NFDESCPARC From CadClien Where codigo = 0'+IntToStr(frmPesquisaRazao.vpCodPrincipal)],1);
    if (Trim(cdsDadosForma.asString) = '') then
      cdsDadosForma.asString := dm.qrSql1.FieldByName('Forma').asString;
    cdsDadosCli_Funper.asFloat   := dm.qrSql1.FieldByName('Funper').asFloat;
    cdsDadosCli_Comisper.asFloat := dm.qrSql1.FieldByName('Comisper').asFloat;
    cdsDadosCli_Adiantcx.asFloat := dm.qrSql1.FieldByName('Adiantcx').asFloat;
    vCli_Desconta_Parcela        := (dm.qrSql1.FieldByName('NFDescParc').asString = 'S');

    gbCliente.Visible := False;
    //gbCliente.Top := 5000;
    if ((cdsDadosCli_Funper.asFloat + cdsDadosCli_Comisper.asFloat + cdsDadosCli_Adiantcx.asFloat) > 0) then
    begin
      gbCliente.Visible := True;
      //gbCliente.Top := 270;
    end;
  end;
  if TCadNotaRazao.Text = 'P' then
  begin
    fSql(1,1,['Select FUNRURALPER From CadForne Where codigo = 0'+IntToStr(frmPesquisaRazao.vpCodPrincipal)],1);
    if (dm.qrSql1.FieldByName('FUNRURALPER').AsFloat > 0) then
      cdsDadosPRD_FUNRURAL.asFloat   := dm.qrSql1.FieldByName('FUNRURALPER').asFloat
    else
      cdsDadosPRD_FUNRURAL.asFloat := 0;
  end;

  cdsDadosCodigo.AsInteger := frmPesquisaRazao.vpCodPrincipal;
  cdsDadosEstado.Text := upperCase(frmPesquisaRazao.vpCampo_1);
  pTipodeCFOP;

  if DBEdit18.CanFocus then
    DBEdit18.SetFocus;
end;

procedure TFfrmNotaFiscal.GroupBox9Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaMot.dbgLista.Visible then exit;

  if gbProdutor.Visible then
    frmPesquisaPro.edtPesquisa.SetFocus
  else begin
    if pnlProdutor.Visible then
      DBEdit5.SetFocus
    else
     memDados.SetFocus;
  end;
end;

procedure TFfrmNotaFiscal.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmNotaFiscal.btnDescNotaClick(Sender: TObject);
begin
  inherited;
  if  PageControl1.ActivePageIndex = 0 then
  begin
    if (Trim(cdsDadosDIFDES.AsString) = '') then
    begin
      if TCadNota.Active then
      begin
        TCadNota.First;
        while not TCadNota.Eof do
        begin
          fSql(1,1,['UPDATE NFVENDA SET DIFDES = '+QuotedStr(TCadNotaDESCRICAO.AsString)+ ' Where DIFCOD = 0'+TCadNotaCODIGO.Text],1);
          TCadNota.Next;
        end;
        TCadNota.First;
      end;
    end;
  end;

end;

procedure TFfrmNotaFiscal.btnInserirClick(Sender: TObject);
begin
  inherited;

  if (rzNfe.Text = '0') then
  begin
    if TabOutros.TabVisible then
    begin
      pageControl1.ActivePage := TabOutros;
      frmPesquisaMot.edtPesquisa.SetFocus;
      Exit;
    end;
  end;

  if cdsDados.State in [dsInsert, dsEdit] then
  begin
    if cdsDadosPRODNOTA.AsString = '' then
      cdsDadosPRODNOTA.AsString := rzNfe.Text;
  end;

  fSql(1,1,['Select nota, nfe_chave From nfvenda Where nfe_modelo = ''55'' and nota = 0'+trim(rzNFe.Text)+' and codigo = 0'+cdsDadosCodigo.asString],1);
  if (dm.qrSql1.RecordCount > 0) then
  begin
    cdsReferenciada.Append;
    cdsReferenciadaLanc.Value       := cdsDadosLanc.Value;
    cdsReferenciadaLancit.asInteger := frGenerator('NFVENDREF','LANCIT',1);
    cdsReferenciadaNota.asInteger   := dm.qrSql1.FieldByName('nota').AsInteger;
    cdsReferenciadaCampo1.asString  := dm.qrSql1.FieldByName('nfe_chave').AsString;
    cdsReferenciada.Post;
  end
  else begin
//    ShowMessage('Nota não foi encontrada para esse nome/razão!');
    cdsReferenciada.Append;
    cdsReferenciadaLanc.Value       := cdsDadosLanc.Value;
    cdsReferenciadaLancit.asInteger := frGenerator('NFVENDREF','LANCIT',1);
    cdsReferenciadaNota.asInteger   := StrToIntDef(rzNFe.Text,0);
    cdsReferenciadaCampo1.asString  := '';
    cdsReferenciada.Post;
    rzNFe.Text := '';
    rzNFe.SetFocus;
  end;
end;

procedure TFfrmNotaFiscal.BitBtn2Click(Sender: TObject);
var vlanc, vcodigo, vi: Integer;
    vtext: String;
begin
  inherited;
  if cdsReferenciada.RecordCount > 0 then
  begin
    cdsDetalhe.First;
    while not cdsDetalhe.Eof do
      cdsDetalhe.Delete;

    cdsReferenciada.First;
    while not cdsReferenciada.Eof do
    begin
      vlanc := fBus(1,['Select Lanc From nfvenda Where nfe_modelo = ''55'' and nota = 0'+trim(cdsReferenciadaNota.asString)],1);
      if (vlanc > 0) then
      begin
        fSql(1,1,['Select * From nfvendco Where lanc = 0'+IntToStr(vlanc)],1);
        dm.qrSql1.First;
        while not dm.qrSql1.eof do
        begin
          vcodigo := dm.qrSql1.FieldByName('codigo').asInteger;
          if not cdsDetalhe.Locate('codigo', vcodigo, []) then
          begin
            cdsDetalhe.Append;
            for vi := 0 to dm.qrSql1.Fields.Count - 1 do
            begin
              vtext := dm.qrSql1.Fields[vi].FieldName;
              cdsDetalhe.FieldByName(vtext).Value := dm.qrSql1.FieldByName(vtext).Value;
            end;
            cdsDetalheLanc.Value    := cdsDadosLanc.Value;
            cdsDetalheData.Value    := cdsDadosData.Value;
            cdsDetalheCliente.Value := cdsDadosCodigo.Value;
            cdsDetalheLancit.Value  := frGenerator('NFVENDCO','LANCIT',1);
          end
          else begin
            cdsDetalhe.Edit;
            cdsDetalheQtde.AsFloat     := cdsDetalheQtde.AsFloat  + dm.qrSql1.FieldByName('Qtde').AsFloat;
            cdsDetalheValor.asFloat    := cdsDetalheValor.asFloat + dm.qrSql1.FieldByName('Valor').AsFloat;
            cdsDetalheVlrDesc.AsFloat  := cdsDetalheVlrDesc.AsFloat + dm.qrSql1.FieldByName('VlrDesc').AsFloat;
          end;
          if (cdsDetalheQtde.asFloat <> 0) then
            cdsDetalheRUnit.asFloat := cdsDetalheValor.asFloat / cdsDetalheQtde.asFloat;
          cdsDetalheUnit.AsFloat       := cdsDetalhePRUnit.AsFloat;
          pTipodeImposto;

          cdsDetalhe.Post;

          dm.qrSql1.Next;
        end;
        dm.qrSql1.Close;
      end;
      cdsReferenciada.Next;
    end;
    cdsReferenciada.First;
    pCalculaImposto;
    PageControl1.ActivePageIndex := 0;

    if DBEdit15.CanFocus then
      DBEdit15.SetFocus;
  end;
end;

procedure TFfrmNotaFiscal.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFfrmNotaFiscal.cdsDadosBeforeClose(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFfrmNotaFiscal.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  //Mostra o tipo de nota
  if  PageControl1.ActivePageIndex = 0 then
  begin
    if (Trim(TCadNotaCFOPDESC.AsString) <> '')  then
      cdsDadosvNatOper.AsString  := Trim(Copy(cdsDadosNaturCod.Text + ' - ' + Trim(TCadNotaCFOPDESC.AsString),1,50))
    else
      cdsDadosvNatOper.AsString  := Trim(Copy(pnlCfop.Caption,1,50));

    case StrToIntDef(cdsDadosTRTipo.AsString,9) of
      0: cdsDadosvFretePor.AsString := '2-Terceiros';
      1: cdsDadosvFretePor.AsString := '0-Emitente (CIF)';
      2: cdsDadosvFretePor.AsString := '1-Destinatário (FOB)';
      3: cdsDadosvFretePor.AsString := '3-Transporte Próprio - Remetente';
      4: cdsDadosvFretePor.AsString := '4-Transporte Próprio - Destinatário';
    else
      cdsDadosvFretePor.AsString := '9-Sem Frete';
    end;
  end;
end;

procedure TFfrmNotaFiscal.DBComboBox1Exit(Sender: TObject);
var vper,vtru,vcar:Real;
begin
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if vkey=13 then
  begin
    vkey:=0;
    cdsDadosVlrSeguro.AsFloat:=0;
    if Copy(cdsDadosSegTip.Text,1,1)<>'0' then
    begin
      pCalculaTotal;
      if fTra(1,['Select * From CadEstad Where UF='+QuotedStr(cdsDadosEstado.Text)],1) then
      begin
        vper := dm.qrSqlTra.FieldByName('SEGURO').asFloat;
        vtru := dm.qrSqlTra.FieldByName('SEGTRU').asFloat;
        vcar := dm.qrSqlTra.FieldByName('SEGCAR').asFloat;
        cdsDadosVlrSeguro.AsFloat := vper * cdsDadosVlrProduto.AsFloat/100;

        if Copy(cdsDadosSegTip.Text,1,1)='1' then
        begin
          if cdsDadosVlrSeguro.AsFloat < vtru then
            cdsDadosVlrSeguro.AsFloat := vtru;
        end
        else if Copy(cdsDadosSegTip.Text,1,1)='2' then
        begin
          if cdsDadosVlrSeguro.AsFloat < vcar then
            cdsDadosVlrSeguro.AsFloat:=vcar;
        end;
        pCalculaTotal;
      end;
    end;
  end;
end;

procedure TFfrmNotaFiscal.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if TabReferenciada.TabVisible then
  begin
    pageControl1.ActivePage := TabReferenciada;
    rzNFe.SetFocus;
  end
  else begin
    if TabOutros.TabVisible then
    begin
      pageControl1.ActivePage := TabOutros;
      frmPesquisaMot.edtPesquisa.SetFocus;
    end;
  end;
end;

procedure TFfrmNotaFiscal.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  pCalculaFinan;
  if tabfinanceiro.TabVisible then
  begin
    PageControl1.ActivePageIndex := 1;
    DBGrid2.SetFocus;
  end
  else begin
     if TabReferenciada.TabVisible then
     begin
       pageControl1.ActivePage := TabReferenciada;
       rzNFe.SetFocus;
     end
     else begin
       if TabOutros.TabVisible then
       begin
         pageControl1.ActivePage := TabOutros;
         frmPesquisaMot.edtPesquisa.SetFocus;
       end;
     end;
  end;
end;

procedure TFfrmNotaFiscal.DBEdit18Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (vkey <> 13) then exit;
  PageControl1.ActivePageIndex := 0;

  if DBEdit1.CanFocus then
    DBGrid1.SetFocus;
end;

procedure TFfrmNotaFiscal.DBEdit22Exit(Sender: TObject);
var vper,vvlricms,vvlrbase:Real; vtab:String; vfin,vpar:Integer; vtrue:Boolean;
begin

  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  //Importação
  GroupBox18.Enabled := (TCadNota.FieldByName('IMPORTACAO').asString = 'S');

  if vkey=13 then
  begin
    vkey:=0;
    if fTra(1,['Select * From CadEstad Where UF='+QuotedStr(cdsDadosEstado.Text)],1) then
    begin
      if cdsDadosVlrSeguro.AsFloat > 0 then
      begin
        pCalculaImposto;
        cdsDadosVlrBase.asFloat := cdsDadosVlrBase.asFloat + cdsDadosVlrSeguro.AsFloat;
        vper := dm.qrSqlTra.FieldByName('IcmsFre').asFloat;
        cdsDadosVlrIcms.asFloat := cdsDadosVlrIcms.asFloat + (cdsDadosVlrSeguro.AsFloat * vper /100);
      end;
      if cdsDadosVlrFrete.AsFloat > 0 then
        cdsDadosVlrIcmsFre.AsFloat := ((cdsDadosVlrFrete.AsFloat * 0.80) * vper / 100);
    end;
    pCalculaTotal;
  end;
end;

procedure TFfrmNotaFiscal.DBEdit38Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (vkey = 13) then
    if DBEdit15.CanFocus then
      DBEdit15.SetFocus;

end;

procedure TFfrmNotaFiscal.DBEdit45Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  pCalculaComissao;

end;

procedure TFfrmNotaFiscal.DBEdit46Exit(Sender: TObject);
begin
  inherited;

  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if TabReferenciada.TabVisible then
  begin
    pageControl1.ActivePage := TabReferenciada;
    rzNFe.SetFocus;
  end
  else begin
    if TabOutros.TabVisible then
    begin
      pageControl1.ActivePage := TabOutros;
      frmPesquisaMot.edtPesquisa.SetFocus;
    end;
  end;

end;

procedure TFfrmNotaFiscal.dbePSPEnter(Sender: TObject);
begin
  inherited;
  vimportouPSP := False;
end;

procedure TFfrmNotaFiscal.dbePSPExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if cdsDadosPSP.asInteger > 0 then
  begin
    pBuscaPSP;
    if pnlImporta.Visible then
      DBEdit11.SetFocus
    else
     DBEdit15.SetFocus;
  end;
end;

procedure TFfrmNotaFiscal.DBEdit5Exit(Sender: TObject);
begin
  inherited;
//  if (vkey = 13) then
//  begin
    gbProdutorFun.Hint := '';
    if (not sbSalvar.Visible) then Exit;
    if TCadNotaALIQFUN.asFloat > 0 then
    begin
      cdsDadosVlrFunRural.asFloat := cdsDadosVlrNota.asFloat * TCadNotaALIQFUN.asFloat / 100;
      gbProdutorFun.Hint := 'F.R.N.% '+FormatFloat('0.00', TCadNotaALIQFUN.asFloat);
    end;
    if cdsDadosPRD_FUNRURAL.asFloat > 0 then
    begin
      cdsDadosVlrFunRural.asFloat := cdsDadosVlrNota.asFloat * cdsDadosPRD_FUNRURAL.asFloat / 100;
      gbProdutorFun.Hint := 'F.R.P.% '+FormatFloat('0.00', cdsDadosPRD_FUNRURAL.asFloat);
    end;
    if cdsDadosCLI_Funper.asFloat > 0 then
    begin
      cdsDadosVlrFunRural.asFloat := cdsDadosVlrNota.asFloat * cdsDadosCLI_Funper.asFloat / 100;
      gbProdutorFun.Hint := 'F.R.C.% '+FormatFloat('0.00', cdsDadosCLI_Funper.asFloat);
    end;


//  end;
end;

procedure TFfrmNotaFiscal.DBEdit7Exit(Sender: TObject);
begin
  inherited;
//  if (vkey <> 13) then exit;

  if memDados.Canfocus then
    memDados.SetFocus;
end;

procedure TFfrmNotaFiscal.DBEdit8Exit(Sender: TObject);
begin
  inherited;
//  if (vkey = 13) then
//  begin
    if (not sbSalvar.Visible) then Exit;
    if TCadNotaALIQFUN.asFloat > 0 then
      cdsDadosVlrFunRural.asFloat := cdsDadosVlrNota.asFloat * TCadNotaALIQFUN.asFloat / 100;
    if cdsDadosPRD_FUNRURAL.asFloat > 0 then
      cdsDadosVlrFunRural.asFloat := cdsDadosVlrNota.asFloat * cdsDadosPRD_FUNRURAL.asFloat / 100;
    if cdsDadosCLI_Funper.asFloat > 0 then
      cdsDadosVlrFunRural.asFloat := cdsDadosVlrNota.asFloat * cdsDadosCLI_Funper.asFloat / 100;
//  end;
end;

procedure TFfrmNotaFiscal.dbgComissaoExit(Sender: TObject);
begin
  inherited;

  pCalculaComissao;

end;

procedure TFfrmNotaFiscal.DBGrid1ColExit(Sender: TObject);
var vok, vtab2, vstr:String;
begin
  if (not sbSalvar.Visible) then Exit;
  cdsDetalhe.Edit;
  cdsDetalheEmpreCod.asInteger := xEmp;
  cdsDetalheAcesoCod.asInteger := xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if (Copy(cdsDetalheCodigo.Text,1,3)='999') then
         begin
            cdsDetalhe.Delete;
            pCalculaImposto;
            pCalculaTotal;

            if pnlImporta.Visible then
              DBEdit11.SetFocus
            else DBEdit15.SetFocus;
            Abort;
         end;
         if TCadNotaItem.Text='P' then vtab2 := 'CadProdu'
         else vtab2 := 'CadMerca';

         if fTra(1,['Select * From '+vtab2+' Where Ativo = ''S'' and Codigo=0'+cdsDetalheCodigo.Text],1) then
         begin
            cdsDetalheData.Value    := cdsDadosData.Value;
            cdsDetalheCliente.Value := frmPesquisaRazao.vpCodPrincipal;
            cdsDetalheCodigo.Value   := dm.qrSqlTra.FieldByName('Codigo').Value;
            cdsDetalheDescricao.Text := dm.qrSqlTra.FieldByName('Descricao').Text;
            cdsDetalheUnidade.Text   := dm.qrSqlTra.FieldByName('Unidade').Text;
            cdsDetalhePesoLiq.AsFloat:= dm.qrSqlTra.FieldByName('PesoLiq').AsFloat;
            cdsDetalhePesoBru.AsFloat:= dm.qrSqlTra.FieldByName('PesoBru').AsFloat;
            if cdsDetalhePRUnit.AsFloat = 0 then
              cdsDetalhePRUnit.AsFloat := dm.qrSqlTra.FieldByName('Venda1').AsFloat;
            if cdsDetalheUnit.AsFloat = 0 then
              cdsDetalheUnit.AsFloat := dm.qrSqlTra.FieldByName('Venda1').AsFloat;

            if vtab2='CadMerca' then
            begin
               cdsDetalheGrupoCod.asInteger := dm.qrSqlTra.FieldByName('GrupoCod').asInteger;
               if (Trim(dm.qrSqlTra.FieldByName('ForneCod').asString) <> '') then
                 cdsDetalheProdutoCod.AsString := dm.qrSqlTra.FieldByName('ForneCod').asString;
            end
            else begin
              cdsDetalheGrupoCod.asInteger := dm.qrSqlTra.FieldByName('VarieCod').asInteger;
              cdsDetalheProdutoCod.AsString := cdsDetalheCodigo.AsString;

              if cdsDetalhePREmb.AsFloat = 0 then
                cdsDetalhePREmb.AsFloat := dm.qrSqlTra.FieldByName('Venda2').AsFloat;

              if Trim(cdsDetalheCodLoteClass.asString) = '' then
              begin
                //vai buscas na categoria
                vstr := fBus(1, ['Select codclass From CadCateg Where Codigo=0'+dm.qrSqlTra.FieldByName('CategCod').AsString],1);
                if (vstr <> '')  then
                  cdsDetalheCodLoteClass.asString := vstr
                else
                  cdsDetalheCodLoteClass.asString := vcodlote;
                vstr := '';
              end;
            end;

            //*** NCM
            if TCadNotaITEM.Text = 'P' then // Produto
              cdsDetalheNCM_COD.asString := dm.qrSqlTra.FieldByName('NCM').asString
            else
              cdsDetalheNCM_COD.asString :=  dm.qrSqlTra.FieldByName('BARRA').asString;

            if (Trim(cdsDetalheNCM_COD.asString) <> '') then
            begin
              vstr := fBus(1, ['Select nacional From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
              cdsDetalheNCM_PER.asFloat := StrToFloatDef(vstr, 0);
              vstr := fBus(1, ['Select estadual From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
              cdsDetalheNCM_PERE.asFloat := StrToFloatDef(vstr, 0);
            end;

            //Se não tiver cadastrado deve pegar do padrão '000'
            if ((cdsDetalheNCM_PER.asFloat = 0) and (cdsDetalheNCM_PER.asFloat = 0)) then
            begin
              vstr := fBus(1, ['Select nacional From cadncm where NCM = ' + QuotedStr('000')], 1);
              cdsDetalheNCM_PER.asFloat := StrToFloatDef(vstr, 0);
              vstr := fBus(1, ['Select estadual From cadncm where NCM = ' + QuotedStr('000')], 1);
              cdsDetalheNCM_PERE.asFloat := StrToFloatDef(vstr, 0);
            end;

            //*** NCM - FIM

            DBGrid1.SelectedIndex := 3;
         end else begin
            if TCadNotaItem.Text='P' then fpqProduto
            else fpqMercadoria;
            cdsDetalhe.Edit;
            cdsDetalheCodigo.asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex:=0;
            Abort;
         end;
       end;
    5: begin
         if cdsDetalhePRUnit.AsFloat > 0 then
           cdsDetalheUnit.AsFloat  := cdsDetalhePRUnit.AsFloat - cdsDetalhePREmb.AsFloat;
       end;
    7: begin
         if cdsDetalhePerDesc.AsFloat > 0 then
         begin
           cdsDetalheVlrDesc.AsFloat := (cdsDetalhePerDesc.AsFloat * cdsDetalheUnit.AsFloat / 100);
           cdsDetalheRUnit.AsFloat   := cdsDetalheUnit.AsFloat - cdsDetalheVlrDesc.AsFloat;
           cdsDetalheRValor.AsFloat  := cdsDetalheQtde.AsFloat * cdsDetalheRUnit.AsFloat;
           cdsDetalheValor.AsFloat   := cdsDetalheRValor.AsFloat;
         end;
           pTipodeImposto;
       end;
  6,8: begin
         if cdsDetalheUnit.AsFloat > 0 then
         begin
           cdsDetalheRUnit.AsFloat  := cdsDetalheUnit.AsFloat - cdsDetalheVlrDesc.AsFloat;
           cdsDetalheRValor.AsFloat := cdsDetalheQtde.AsFloat * cdsDetalheRUnit.AsFloat;
           cdsDetalheValor.AsFloat  := cdsDetalheRValor.AsFloat;
           cdsDetalheNCM_VLR.AsFloat := cdsDetalheRValor.AsFloat * cdsDetalheNCM_PER.AsFloat /100;
           cdsDetalheNCM_VLRE.asFloat := cdsDetalheRVALOR.asFloat * cdsDetalheNCM_PERE.asFloat / 100;
         end;
           pTipodeImposto;
       end;
  10,16,17: begin
         vok := 'F';
         if (DBGrid1.SelectedIndex = 10) then
         begin
           if (TCadNotaFINNFE.asString = 'N') then
             vok := 'T';
         end;
         if (DBGrid1.SelectedIndex = 15) then
         begin
           if ((TCadNotaFINNFE.asString = 'N') and (TCadNotaItem.Text = 'P' )) then
             vok := 'T';
         end;
         if (DBGrid1.SelectedIndex >= 16) then
           vok := 'T';
         if vok = 'T' then
         begin
           cdsDetalheCodLoteClass.Text := UpperCase(cdsDetalheCodLoteClass.Text);
           if (Trim(cdsDetalheCodLoteClass.asString) <> '') then
           begin
             if varDescLote then
               cdsDetalheDescricao.Text:= cdsDetalheDescricao.Text + ' lote:'+Trim(cdsDetalheCodLoteClass.asString);
           end;
           pCalculaImposto;
           cdsDetalhe.Next;
           if cdsDetalhe.Eof then cdsDetalhe.Append;
           DBGrid1.SelectedIndex := 0;
         end;
       end;
  end;
end;

procedure TFfrmNotaFiscal.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsDetalhe.IndexFieldNames := '';
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmNotaFiscal.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.IndexFieldNames := 'LANC;CODIGO;LANCIT';

  if (cdsDetalheCodigo.asinteger = 0) or (Trim(cdsDetalheDescricao.asstring) = '') then
    exit;

  if (sbSalvar.Visible) then
    pCalculaImposto;

//  if (vVlrUnitZerado > 0) then
//    ShowMessage('Existe '+IntToStr(vVlrUnitZerado)+' itens com valor zerado.');

end;

procedure TFfrmNotaFiscal.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>16 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmNotaFiscal.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsFinan.Edit;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(cdsFinanParc.Text,1,3)='999' then begin
           cdsFinan.Delete; pArrumaParc;
           if gbComissao.visible then
             frmPesquisaVendedor.edtPesquisa.SetFocus
           else begin
             if TabReferenciada.TabVisible then
             begin
               pageControl1.ActivePage := TabReferenciada;
               rzNFe.SetFocus;
             end
             else begin
               if TabOutros.TabVisible then
               begin
                 pageControl1.ActivePage := TabOutros;
                 frmPesquisaMot.edtPesquisa.SetFocus;
               end;
             end;
           end;
           Exit;
         end;
       end;
    3: begin
         if fTra(3,['Select Descricao From CadBanco Where Codigo=0'+cdsFinanBanCod.Text],1) then
         begin
           cdsFinanBanDes.Text:= dm.qrSqlTra.Fields[0].Text;
           DBGrid2.SelectedIndex:=5;
         end else begin
            fPqBanco;
            cdsFinan.Edit;
            cdsFinanBanCod.asString := xpqResul;
            DBGrid2.SetFocus;
            DBGrid2.SelectedIndex:=3;
            Abort;
         end;
       end;
    6: begin
         cdsFinan.Post;
         pArrumaParc;

         if vkey = 13 then
           cdsFinan.Next;

         if cdsFinan.Eof then cdsFinan.Append;
         DBGrid2.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmNotaFiscal.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  dbGrid2.ReadOnly := (not sbSalvar.Visible);
  cdsFinan.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFfrmNotaFiscal.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  if sbSalvar.Visible then pArrumaParc;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmNotaFiscal.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  vkey := 0;
  if key =#13 then
  begin
    vkey := 13;
     if DBGrid2.SelectedIndex<>6 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmNotaFiscal.DBGrid3ColExit(Sender: TObject);
begin
  if (not sbSalvar.Visible) then Exit;

  cdsReferenciada.Edit;
  Case DBGrid3.SelectedIndex of
    0: begin
         if Copy(cdsReferenciadaNOTA.Text,1,3)='999' then
         begin
           cdsReferenciada.Delete;
           if TabOutros.TabVisible then
           begin
             pageControl1.ActivePage := TabOutros;
             frmPesquisaMot.edtPesquisa.SetFocus;
           end;
         end;
       end;
    1: begin
         if Copy(cdsReferenciadaCAMPO1.Text,1,3)='999' then
         begin
           cdsReferenciada.Delete;
           if TabOutros.TabVisible then
           begin
             pageControl1.ActivePage := TabOutros;
             frmPesquisaMot.edtPesquisa.SetFocus;
           end;
         end;
       end;
    4: begin
         cdsReferenciada.Post;
         cdsReferenciada.Next;
         if cdsReferenciada.Eof then cdsReferenciada.Append;
         DBGrid3.SelectedIndex := 0;
       end;
  End;
end;

procedure TFfrmNotaFiscal.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmNotaFiscal.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmNotaFiscal.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid3.SelectedIndex<>4 then DBGrid3.SelectedIndex:=DBGrid3.SelectedIndex+1
     else DBGrid3.SelectedIndex:=0;
  end;

end;

procedure TFfrmNotaFiscal.DBLCBoxExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

//  TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);
  pArrumaParc;

  if cdsDados.State = dsInsert then
  begin
    cdsDadosEstoque.Text   := TCadNotaEstoque.Text;
    cdsDadosserie.Text     := TCadNotaserie.Text;
    cdsDadosnfe_modelo.Text:= TCadNotamodelo.Text;
    cdsDadosnfe_status.asString := 'NN';
    cdsDadosDIFDES.AsString := TCadNotaDESCRICAO.AsString;
  end
  else begin
    if (cdsDadosnfe_status.asString <> 'OK') then
    begin
      cdsDadosEstoque.Text   := TCadNotaEstoque.Text;
      cdsDadosserie.Text     := TCadNotaserie.Text;
      cdsDadosnfe_modelo.Text:= TCadNotamodelo.Text;
      cdsDadosDIFDES.AsString := TCadNotaDESCRICAO.AsString;
    end;
  end;

  //Importação
  if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
  begin
    dbGrid1.Height := 130;
    pnlImporta.Visible  := True;
  end
  else begin
    dbGrid1.Height := 300;
    pnlImporta.Visible  := False;
  end;

  //NFe - referenciada
  gbNFeRef.Visible := frehDevolucao(frSubs(cdsDadosNaturCod.Text,',',''));
  if (TCadNotaFINNFE.asString = 'C') or
     (TCadNotaFINNFE.asString = 'D') or
     (TCadNota.FieldByName('FGREFER').asString = 'S') then
    gbNFeRef.Visible := True;
  TabReferenciada.TabVisible := gbNFeRef.Visible;

  gbComissao.Visible := (TCadNota.FieldByName('COMISSAO').asString = 'S');
  tabfinanceiro.TabVisible := (TCadNota.FieldByName('FINANCEIRO').asString = 'S');
  gbFisco.Visible := (TCadNota.FieldByName('FGFISCO').asString = 'S');

  pIniciaPesquisa;

  //Se a serie for = 99 - pode deixar colocar numero da nota fiscal
  if cdsDados.State = dsInsert then
  begin
    if (cdsDadosserie.Text = '99') and (cdsDadosnfe_modelo.Text <> '55') then
    begin
      gbNota.Enabled := True;
      Application.ProcessMessages;
      DBEdit1.SetFocus;
    end
    else
    begin
      if (cdsDadosnfe_modelo.Text = '55') then
      begin
        gbNota.Enabled := False;
        if cdsDadosNOTA.AsInteger <> 0 then
          cdsDadosNOTA.AsInteger := 0;

        DBEPSP.SetFocus;
      end;
    end;
  end
  else
    DBEPSP.SetFocus;

  if cdsDados.State = dsEdit then
  begin
    frmPesquisaRazao.pRetornaDados(cdsDadosCodigo.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosTRCod.AsString);
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaVendedor.pRetornaDados(cdsDadosVendeCod.AsString);
    cdsDadosDIFDES.AsString := TCadNotaDESCRICAO.AsString;
  end;
  //Se tem desinatario informa
  if (cdsDadosCodigo.AsInteger > 0) then
  begin
    frmPesquisaRazao.pRetornaDados(cdsDadosCodigo.AsString);
    GroupBox4.OnExit(GroupBox4);
  end;

  //Se tiver produto informado deve refazer os itens
  try
    try
      cdsDetalhe.DisableControls;
      cdsDetalhe.First;
      while not cdsDetalhe.Eof do
      begin
        cdsDetalhe.Edit;
        cdsDetalheNATURCOD.asFloat := cdsDadosNATURCOD.asFloat;
        cdsDetalhe.Post;
        cdsDetalhe.Next;
      end;
    except

    end;
  finally
    cdsDetalhe.First;
    cdsDetalhe.EnableControls;
  end;

  vimportouPSP := False;

end;

procedure TFfrmNotaFiscal.DBMemo1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;

end;

procedure TFfrmNotaFiscal.DBMemo1Exit(Sender: TObject);
begin
  inherited;
  keyPreview := True;

end;

procedure TFfrmNotaFiscal.cdsDetalheAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
    begin
      cdsImport.Close;
      sqlImport.Sql.Text := 'Lanc = 0'+cdsDadosLanc.asString+' and Lancit = 0'+cdsDetalheLancit.asString;
      cdsImport.Open;
    end;
  end;
end;

procedure TFfrmNotaFiscal.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDetalheLanc.asInteger   = 0 then cdsDetalheLanc.asInteger   := cdsDadosLanc.Value;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger := frGenerator('NFVENDCO','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.AsInteger := frGeneratorFB('GEN_NFVENDCO_ID');

  //Quando altera só a quantidade não está recalculando
  if cdsDetalhePRUnit.AsFloat > 0 then
    cdsDetalheUnit.AsFloat  := cdsDetalhePRUnit.AsFloat - cdsDetalhePREmb.AsFloat;
  if cdsDetalhePerDesc.AsFloat > 0 then

  begin
    cdsDetalheVlrDesc.AsFloat := (cdsDetalhePerDesc.AsFloat * cdsDetalheUnit.AsFloat / 100);
    cdsDetalheRUnit.AsFloat   := cdsDetalheUnit.AsFloat - cdsDetalheVlrDesc.AsFloat;
    cdsDetalheRValor.AsFloat  := cdsDetalheQtde.AsFloat * cdsDetalheRUnit.AsFloat;
    cdsDetalheValor.AsFloat   := cdsDetalheRValor.AsFloat;
  end;
  if cdsDetalheUnit.AsFloat > 0 then
  begin
    cdsDetalheRUnit.AsFloat  := cdsDetalheUnit.AsFloat - cdsDetalheVlrDesc.AsFloat;
    cdsDetalheRValor.AsFloat := cdsDetalheQtde.AsFloat * cdsDetalheRUnit.AsFloat;
    cdsDetalheValor.AsFloat  := cdsDetalheRValor.AsFloat;
    cdsDetalheNCM_VLR.AsFloat := cdsDetalheRValor.AsFloat * cdsDetalheNCM_PER.AsFloat /100;
    cdsDetalheNCM_VLRE.asFloat := cdsDetalheRVALOR.asFloat * cdsDetalheNCM_PERE.asFloat / 100;
  end;

  pTipodeImposto;

end;

procedure TFfrmNotaFiscal.cdsFinanBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFinanLanc.asInteger = 0   then cdsFinanLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsFinanLancit.asInteger = 0 then cdsFinanLancit.asInteger:= frGenerator('FIPAVE','LANCIT',1);
  if cdsFinanREG_ID.asInteger = 0 then cdsFinanREG_ID.AsInteger := frGeneratorFB('GEN_FIPAVE_ID');
end;

procedure TFfrmNotaFiscal.cdsImportBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsImportLanc.asInteger = 0   then cdsImportLanc.Value   := cdsDetalheLanc.Value;
  if cdsImportLancit.asInteger = 0 then cdsImportLancit.Value := cdsDetalheLancit.Value;
  if cdsImportREG_ID.asInteger = 0 then cdsImportREG_ID.AsInteger := frGeneratorFB('GEN_NFVENDIMP_ID');
end;

procedure TFfrmNotaFiscal.cdsReferenciadaBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cdsReferenciadaLanc.asInteger = 0   then cdsReferenciadaLanc.Value   := cdsDetalheLanc.Value;
  if cdsReferenciadaLancit.asInteger = 0 then cdsReferenciadaLancit.Value := frGenerator('NFVENDREF','LANCIT',1);
  if cdsReferenciadaREG_ID.asInteger = 0 then cdsReferenciadaREG_ID.AsInteger := frGeneratorFB('GEN_NFVENDREF_ID');

end;

procedure TFfrmNotaFiscal.DBRGFreteExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (vkey <> 13) then exit;

  frmPesquisaMot.edtPesquisa.SetFocus;

end;

procedure TFfrmNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmNotaFiscal);
end;


procedure TFfrmNotaFiscal.sbImprimirClick(Sender: TObject);
begin
  inherited;
  PopupMenu4.Popup(FfrmNotaFiscal.Left + RZPanel1.Left, FfrmNotaFiscal.Top + sbProximo.Top + 200 );
end;

procedure TFfrmNotaFiscal.sbIncluirClick(Sender: TObject);
var vdifcod: Integer;
begin
  //NFE - Depois de enviada não pode ser alterada e nem excluida
  if (TComponent(Sender).Tag=13) or (TComponent(Sender).Tag=14) then
  begin
    if cdsDadosDifCod.asInteger = -1 then
    begin
      ShowMessage('Essa nota foi cancelada!'+#13+
                  'vc não pode fazer nenhum tipo de alteração.');
      Exit;
    end;

    if (cdsDadosnfe_modelo.asString = '55') AND (Copy(xAcess,1,11) <> 'ACWebSystem') then
    begin
      if (cdsDadosnfe_status.asString = 'EV') or
         (cdsDadosnfe_status.asString = 'OK') or
         (cdsDadosnfe_status.asString = 'CA') or
         (cdsDadosnfe_status.asString = 'RE') or
         (cdsDadosnfe_status.asString = 'DN') then
      begin
        //fSql(1,1,['Select prog1 From zacesso Where codigo ='+IntToStr(xAcesso)],1);
       // if dm.qrSql1.Fields[0].asString <> 'S' then
        //begin
          ShowMessage('Essa nota já foi recebida pela receita!'+#13+
                      'Não pode ser mais alterada e nem excluida.');
          exit;
      end
      else begin
        if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
          exit;
      end;
      //end;
    end
    else begin
      if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
        exit;
    end;
  end;

  //Ao gravar deve verificar se tem financeiro ou não
  if (TComponent(Sender).Tag=15) then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;

     if TCadNotaFinanceiro.Text = 'S' then
     begin
       if cdsFinan.IsEmpty then
       begin
         ShowMessage('É obrigatório informar o financeiro!');
         PageControl1.ActivePageIndex := 1;
         DBGrid2.SetFocus;
         exit;
       end;
     end;

     if (vVlrUnitZerado > 0) then
     begin
       ShowMessage('Existe '+IntToStr(vVlrUnitZerado)+' produto(s) com valor zerado, deve ser ajustado.');
       PageControl1.ActivePageIndex := 0;
       DBGrid1.SetFocus;
       exit;
     end;

  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaRazao.pLimpaCampo;
           frmPesquisaMot.pLimpaCampo;
           frmPesquisaPro.pLimpaCampo;
           frmPesquisaVendedor.pLimpaCampo;
           if (cdsDadosDifCod.asInteger > 0) then
             vdifcod := cdsDadosDifCod.asInteger
           else
             vdifcod := 1;

           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('GERAL','LANC',1);
           cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_NFVENDA_ID');
           cdsDadosData.asDateTime:= date;
           cdsDadosEntrega.asDateTime  := date;
           cdsDadosDifCod.Value   := vdifcod;
           cdsDadosnfe_status.asString := 'NN';
           cdsDadosSerie.Text     := '1';
           cdsDadosTrTipo.Text    := '2';
           cdsDadosTrCod.Value    := 1;
           cdsDadosDadosCod.Value := 1;
           cdsDadosSegTip.Text    := '0 -Nenhum';
           cdsDadosReceita.Value  := 0;
           cdsDadosVlrSeguro.asFloat:= 0;
           cdsDadosVlrFrete.asFloat := 0;
           cdsDadosVlrDesc.asFloat  := 0;
           cdsDadosProdNota.asInteger := 0;
           cdsDadosVlrFunRural.asFloat := 0;
           vimportouPSP := False;
           memDados.Lines.Clear;
           vcodlote := '';
           pnlImporta.Enabled := True;
           gbNota.Enabled := False;

           pBuscaPesquisa;

           DBLCBox.SetFocus;
         end;
     13: begin
           cdsDados.Edit;
           vimportouPSP := False;
           vcodlote := '';
           pnlImporta.Enabled := True;
           gbNota.Enabled := True;
           DBLCBox.SetFocus;
        end;
     14: begin

           fSql(1,2,['Delete From NFVENDCO  Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From FIPAVE    Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From NFVENDIMP Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From NFVENDREF Where Lanc=0'+cdsDadosLanc.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;

         end;
     15: begin
           try
             cdsDadosCodigo.AsInteger   := frmPesquisaRazao.vpCodPrincipal;
             cdsDadosDescricao.AsString := frmPesquisaRazao.vpDescricao;
             if (Trim(frmPesquisaMot.edtPesquisa.Text) <> '') then
             begin
               cdsDadosTRCod.AsInteger := frmPesquisaMot.vpCodPrincipal;
               cdsDadosTRDes.AsString  := frmPesquisaMot.vpDescricao;
             end;

             if (Trim(frmPesquisaPro.edtPesquisa.Text) <> '') then
             begin
               cdsDadosProdCod.AsInteger := frmPesquisaPro.vpCodPrincipal;
               cdsDadosProdDes.AsString  := frmPesquisaPro.vpDescricao;
             end;

             if (Trim(frmPesquisaVendedor.edtPesquisa.Text) <> '') then
               cdsDadosVendeCod.AsInteger := frmPesquisaVendedor.vpCodPrincipal;

             if cdsDadosComissaoCod.asInteger = 0 then
               cdsDadosComissaoVlr.asFloat   := 0;

             cdsDadosDif.asString := TCadNotaTipo.AsString;

             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;

             if (not pSSalvar(True)) then
             begin
               PageControl1.ActivePageIndex := 0;
               sbEditar.OnClick(sbEditar);
               DBEPSP.SetFocus;
               Exit;
             end;

             if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
             begin
               if cdsImport.State in [dsInsert, dsEdit] then
                 cdsImport.Post;
               if cdsImport.Active then
                 cdsImport.ApplyUpdates(-1);
             end;
             pnlImporta.Enabled := False;

             pGeraRomaneioEntrada;

             cdsDados.Edit;
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsDetalhe.ApplyUpdates(-1);
             cdsFinan.ApplyUpdates(-1);

             if cdsReferenciada.Active then
               cdsReferenciada.ApplyUpdates(-1);

             sbPeriodo.onClick(sbPeriodo);

           except
             on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
           end;
           pLiberar('Geral');
         end;
     16: begin
           try
             pnlImporta.Enabled := False;
             cdsDados.Cancel;
           except
           end;
           pLiberar('Geral');
         end;
     91,92: pBuscaPesquisa;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmNotaFiscal.pnlTelaDblClick(Sender: TObject);
begin
  inherited;
  if Copy(uppercase(xAcess),1,5) = 'ACWEB' then
  begin
    if cdsDadosDifCod.asInteger = -1 then
    begin
      if (cdsDadosnfe_modelo.asString = '55') then
        fSql(1,1,['UPDATE NFVENDA SET NFE_STATUS = '+QuotedStr('CA')+ ' Where LANC = 0'+cdsDadosLANC.Text],1);
    end;
  end;
end;

procedure TFfrmNotaFiscal.sbPeriodoClick(Sender: TObject);
begin
  inherited;

  varDescLote := (fBus(1,['Select valor From zGenerator Where Tabela = ''ESVENDA'' and Campo = ''DESC_LOTE'''],1) = 1);

  TCadNota.Open;
  dm.TEmpresa.Close;
  dm.TEmpresa.Open;

  cdsDados.Close;
  cdsDados.IndexName := '';
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from nfvenda where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  sqlDados.SQL.Add(' order by Data desc, Nota desc');
  cdsDados.Open;

  TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);

  pIniciaPesquisa;

end;

procedure TFfrmNotaFiscal.TabOutrosShow(Sender: TObject);
var vProdMarca, vProdUnid, vProdEsp: String;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  //Volume
  if cdsDadosVOL_QTDE.Value = 0 then
    cdsDadosVOL_QTDE.Value := StrToIntDef(cdsDadosQtdEsp.Text,0);

{ //Deixar em branco - por enquanto 05/03/2025
  if Trim(cdsDadosVOL_MARCA.AsString) = '' then
  begin

    vProdMarca := '';

    if (cdsDetalheCODIGO.AsInteger > 0) then
    begin
      if (TCadNotaItem.Text = 'P') then
        vProdMarca := fBus(1,['Select Marca from cadprodu where codigo = 0'+cdsDetalheCODIGO.asString],1)
      else
        vProdMarca := fBus(1,['Select Marca from cadmerca where codigo = 0'+cdsDetalheCODIGO.asString],1);
    end;
    if (Trim(vProdMarca) <> '') then
      cdsDadosVOL_MARCA.AsString := Trim(Copy(vProdMarca,1,20));

  end;
}
  if Trim(cdsDadosVOL_ESPECIE.AsString) = '' then
  begin

    vProdEsp := '';
    vProdUnid:= '';

    if (cdsDetalheCODIGO.AsInteger > 0) then
    begin
      if (TCadNotaItem.Text = 'P') then
        vProdUnid := fBus(1,['Select Unidade from cadprodu where codigo = 0'+cdsDetalheCODIGO.asString],1)
      else
        vProdUnid := fBus(1,['Select Unidade from cadmerca where codigo = 0'+cdsDetalheCODIGO.asString],1);
    end;

    vProdUnid := UpperCase(vProdUnid);

    if vProdUnid = 'BI' then
      vProdEsp := 'BIN'
    else if vProdUnid = 'B' then
      vProdEsp := 'BIN'
    else if vProdUnid = 'CX' then
      vProdEsp := 'CAIXA'
    else if vProdUnid = 'LT' then
      vProdEsp := 'LITRO'
    else if vProdUnid = 'KG' then
      vProdEsp := 'QUILO'
    else if vProdUnid = 'TN' then
      vProdEsp := 'TONELADA'
    else if vProdUnid = 'T' then
      vProdEsp := 'TONELADA'
    else if vProdUnid = 'PL' then
      vProdEsp := 'PALET'
    else if vProdUnid = 'UN' then
      vProdEsp := 'UNIDADE'
    else if vProdUnid = 'SC' then
      vProdEsp := 'SACO'
    else
      vProdEsp := 'DIVERSOS';

    cdsDadosVOL_ESPECIE.AsString := Trim(Copy(vProdEsp,1,20));

  end;




end;

procedure TFfrmNotaFiscal.fMostraDetalhe;
begin

  cdsDetalhe.close;
  sqlDetalhe.SQL.Clear;
  sqlDetalhe.SQL.Add('select * from nfvendco');
  sqlDetalhe.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
  sqlDetalhe.SQL.Add('order by lanc');
  cdsDetalhe.Open;

  cdsFinan.close;
  sqlFinan.SQL.Clear;
  sqlFinan.SQL.Add('select * from fipave');
  sqlFinan.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
  cdsFinan.Open;

  cdsReferenciada.close;
  sqlReferenciada.SQL.Clear;
  sqlReferenciada.SQL.Add('select * from nfvendref');
  sqlReferenciada.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
  cdsReferenciada.Open;

  if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
  begin
    cdsImport.Close;
    cdsImport.Filter := 'Lanc = 0'+cdsDadosLanc.asString+' and Lancit = 0'+cdsDetalheLancit.asString;
    cdsImport.Filtered := True;
    cdsImport.Open;
  end;

end;

procedure TFfrmNotaFiscal.pIniciaPesquisa;
begin
  if TCadNotaRazao.Text = 'C' then frmPesquisaRazao.pInicia('ttCliente', FfrmNotaFiscal,7,147,GroupBox4,true);
  if TCadNotaRazao.Text = 'F' then frmPesquisaRazao.pInicia('ttFornecedor', FfrmNotaFiscal,7,147,GroupBox4,true);
  if TCadNotaRazao.Text = 'P' then frmPesquisaRazao.pInicia('ttProdutor', FfrmNotaFiscal,7,147,GroupBox4,true);
end;

procedure TFfrmNotaFiscal.memDadosEnter(Sender: TObject);
var vRural, vnotas, vtrans: String;
    vTrib1, vTrib2, vTrib3: Double;
begin
  inherited;

  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  keyPreview := False;

  //Somente se tiver em branco
  if (memDados.Lines.Count = 0) then
  begin
    vkey:=0;

    if fTra(3,['Select DadosAdic, FGImposto, FGTrans, FGTranspl, FGRefer From CadNota Where Codigo=0'+cdsDadosDifCod.Text],1) then
    begin
      if Trim(dm.qrSqlTra.FieldByName('DadosAdic').Text) <> '' then
        memDados.Lines.Add(dm.qrSqlTra.FieldByName('DadosAdic').Text);

      if Trim(dm.qrSqlTra.FieldByName('FGImposto').AsString) = 'S' then
      begin
        if (cdsDadosVLRNOTA.asFloat > 0) and
           ((cdsDadosTRIBNCM_VLR.asFloat > 0) or (cdsDadosTRIBNCM_VLRE.asFloat > 0))
        then
        begin
          //vTrib1 := cdsDadosTRIBNCM_VLR.asFloat + cdsDadosVLRICMS.asFloat + cdsDadosVLRIPI.asFloat;
          vTrib1 := cdsDadosTRIBNCM_VLR.asFloat / cdsDadosVLRNOTA.asFloat * 100;
          vTrib2 := cdsDadosTRIBNCM_VLRE.asFloat / cdsDadosVLRNOTA.asFloat * 100;
          if (Trim(cdsDetalheNCM_COD.asString) <> '') then
            fSql(1,3,['Select Chave, Versao, Fonte From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1)
          else
            fSql(1,3,['Select Chave, Versao, Fonte From cadncm where NCM = ' + QuotedStr('000')], 1); //Padrão

          memDados.Lines.Add(' Valor aprox. Tributos: '+
                  ' - Nacional R$ ' + FormatFloat('#,0.00', cdsDadosTRIBNCM_VLR.asFloat) + ' (' + FormatFloat('#,0.00',vTrib1) + '%)'+
                  ' - Estadual R$ ' + FormatFloat('#,0.00', cdsDadosTRIBNCM_VLRE.asFloat) + ' (' + FormatFloat('#,0.00',vTrib2) + '%)'+
                  ' Chave: '+dm.qrSql3.Fields[0].asString +
                  ' Versao: '+dm.qrSql3.Fields[1].asString +
                  ' Fonte: '+dm.qrSql3.Fields[2].asString
                  );
        end;
      end;
      //Transporte
      vtrans := '';
      if Trim(dm.qrSqlTra.FieldByName('FGTrans').AsString) = 'S' then
        if (frmPesquisaMot.edtPesquisa.Text <> '') then
          if (frmPesquisaMot.vpCampo_2 <> '') then
            vtrans := vtrans + ' Transportado por: '+frmPesquisaMot.vpDescricao;

      if Trim(dm.qrSqlTra.FieldByName('FGTranspl').AsString) = 'S' then
        if (frmPesquisaMot.vpCampo_2 <> '') then
          vtrans := vtrans + ' - Placa: '+frmPesquisaMot.vpCampo_2;

      if trim(vtrans) <> '' then
        memDados.Lines.Add(Trim(vtrans));

    end;
    //Se for empresa no simples e tiver icms de credito
    if dm.TEmpresa.FieldByName('icms_credito').AsString = 'S' then
    begin
      if (TCadNotaICMS_CREDPER.asFloat > 0) then
      begin
        if (cdsDadosVlrCred.AsFloat > 0) then
          memDados.Lines.Add(' Permite o aproveitamento do credito de ICMS no valor de R$ '+FormatFloat('#,0.00',cdsDadosVlrCred.AsFloat)+
             ' correspondente à alíquota de '+FormatFloat('#,0.00',TCadNotaICMS_CREDPER.asFloat)+'% nos termos do art.23 da LC 123/2006 (Resolucoes CGSN no 10/2007 e 53/2008).');
      end;
    end;

    vRural := '';
    if (cdsDadosVlrFunRural.asFloat > 0) then
      vRural := ' FUN RURAL '+FormatFloat('0.00', TCadNotaALIQFUN.asFloat)+'% Vlr.R$ '+FormatFloat('0.00', cdsDadosVlrFunRural.asFloat);
    if (cdsDadosPRD_FUNRURAL.asFloat > 0) then
      vRural := ' FUN RURAL '+FormatFloat('0.00', cdsDadosPRD_FUNRURAL.asFloat)+'% Vlr.R$ '+FormatFloat('0.00', cdsDadosVlrFunRural.asFloat);
    if (cdsDadosCli_Funper.asFloat > 0) then
      vRural := ' FUN RURAL '+FormatFloat('0.00', cdsDadosCli_Funper.asFloat)+'% Vlr.R$ '+FormatFloat('0.00', cdsDadosVlrFunRural.asFloat);
    if (cdsDadosProdNota.asInteger > 0) then
      vRural := vRural + ' NFP ' + frPree(cdsDadosProdNota.AsString,8,'0',0);
    if trim(vcadclass+vrural) <> '' then
      memDados.Lines.Add(vcadclass+vrural);

    //importação
    if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
    begin
      memDados.Lines.Add(' Nº DI: '+cdsImportDI_NR.AsString+
                         ' DE: '+DateToStr(cdsImportDI_DT.asDateTime)+
                         ' DRF: '+Trim(cdsImportLoc_Des.asString)+
                         ' VALOR DO II: '+FormatFloat('#,0.00',cdsImportIMP_II_VLR.asFloat * cdsImportIMP_II_PER.asFloat / 100)+
                         ' VALOR DO PIS: '+FormatFloat('#,0.00',cdsImportIMP_PIS_VLR.asFloat * cdsImportIMP_PIS_PER.asFloat / 100)+
                         ' VALOR DO COFINS: '+FormatFloat('#,0.00',cdsImportIMP_COF_VLR.asFloat * cdsImportIMP_COF_PER.asFloat / 100));
    end;

    //Nota fiscal referenciada
    if Trim(dm.qrSqlTra.FieldByName('FGRefer').AsString) = 'S' then
    begin
      if (cdsReferenciada.RecordCount > 0) then
      begin
        vnotas := '';
        cdsReferenciada.First;
        while not cdsReferenciada.Eof do
        begin
          vnotas := vnotas + cdsReferenciadaNota.AsString + '/';
          cdsReferenciada.Next;
        end;
        if (trim(vnotas) <> '') then
          memDados.Lines.Add(' NFE.REFERENCIADA: '+Copy(vNotas, 1, length(vNotas)-1)+' ');
      end;

      //Se for Devolução verificar se é IPI - inserir  a mensagem
      if (TCadNotaFINNFE.asString = 'D') then
      begin

        if (cdsDadosVLRIPI.AsFloat > 0) then
          memDados.Lines.Add(' Valor do IPI devolvido (R$ '+FormatFloat('#,0.00', cdsDadosVLRIPI.AsFloat)+') ');

      end;
    end;

    //Endereço de entrega - Cliente
    if TCadNotaRazao.Text = 'C' then
    begin
      if fTra(1,['Select * From CadEndereco Where Tipo = ''C'' and Lanc=0'+cdsDadosCodigo.asString],1) then
      begin
        if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
        begin
          vtrans := '';
          if (Trim(dm.qrSqlTra.FieldByName('DESCRICAO').asString) <> '') then
            vtrans := vtrans + Trim(dm.qrSqlTra.FieldByName('DESCRICAO').asString);

          if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
            vtrans := vtrans + ' - '+ Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString));

          vtrans := vtrans + ' - '+ Trim(dm.qrSqlTra.FieldByName('Endereco').asString)+' '+
                                    Trim(dm.qrSqlTra.FieldByName('Numero').asString)+' '+
                                    Trim(dm.qrSqlTra.FieldByName('Bairro').asString);

          if (Trim(dm.qrSqlTra.FieldByName('CidadeDes').asString) <> '') then
            vtrans := vtrans + ' '+dm.qrSqlTra.FieldByName('CidadeDes').asString +' '+
                                   dm.qrSqlTra.FieldByName('Estado').asString;

          if (Trim(vtrans) <> '') then
            memDados.Lines.Add(' Local de entrega: '+vtrans);
          
        end;
      end;
    end;

    dm.qrSqlTra.Close;

  end;

end;

procedure TFfrmNotaFiscal.sbDadosAdicClick(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  DBRGFrete.SetFocus;
  memDados.Lines.Clear;
  memDados.OnEnter(memDados);
  memDados.SetFocus;

end;

procedure TFfrmNotaFiscal.memDadosExit(Sender: TObject);
begin
  inherited;
  keyPreview := True;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit18.SetFocus;
end;

procedure TFfrmNotaFiscal.memDadosKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key = #13 then
  begin
    key  := #0;
    vKey := 13;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFfrmNotaFiscal.memRefEnter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
end;

procedure TFfrmNotaFiscal.memRefExit(Sender: TObject);
begin
  inherited;
  keyPreview := True;
end;

procedure TFfrmNotaFiscal.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if cdsReferenciada.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsReferenciada.Delete;
end;

procedure TFfrmNotaFiscal.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if cdsFinan.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsFinan.Delete;
end;

procedure TFfrmNotaFiscal.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    pBuscaPesquisa
end;

procedure TFfrmNotaFiscal.pAbrirTela(vatLanc: String);
begin

  TCadNota.Open;
  dm.TEmpresa.Close;
  dm.TEmpresa.Open;

  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from nfvenda where lanc = 0'+vatLanc);
  cdsDados.Open;

  fMostraDetalhe;

  TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);

  pIniciaPesquisa;

  PageControl1.ActivePageIndex := 1;

end;

procedure TFfrmNotaFiscal.pArrumaParc;
var vint, vpar: Integer; vvlr: Double;
begin
//  if (not sbSalvar.Visible) then Exit;
  //Produtor
  TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);
  gbProdutorNF.Visible   := False;
  gbProdutorFun.Visible  := False;
  gbProdutor.Visible     := False;
  pnlProdutor.Visible    := False;
  frmPesquisaPro.Visible := False;

//  gbProdutorNF.Top   := 5000;
//  gbProdutorFun.Top  := 5000;
//  gbProdutor.Top     := 5000;

  if TCadNotaModelo.Text <> '55' then
  begin
    gbProdutorNF.Visible   := True;
    gbProdutorFun.Visible  := True;
    gbProdutor.Visible     := True;
    pnlProdutor.Visible    := True;
    frmPesquisaPro.Visible := True;
//    gbProdutorNF.Top   := 44;
//    gbProdutorFun.Top  := 44;
//    gbProdutor.Top     := 44;
  end;
  if (TCadNota.FieldByName('RAZAO').asString = 'P') then
  begin
    if (TCadNotaALIQFUN.asFloat <> 0) or (cdsDadosPRD_FUNRURAL.asFloat <> 0) then
    begin
      gbProdutorNF.Visible  := True;
      gbProdutorFun.Visible := True;
      pnlProdutor.Visible    := True;
//      gbProdutorNF.Top   := 44;
//      gbProdutorFun.Top  := 44;
    end;
  end;
  //Importação
  if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
  begin
//    dbGrid1.Height := 130;
    pnlImporta.Visible := True;
    GroupBox18.Enabled := True;
  end
  else begin
//    dbGrid1.Height := 300;
    pnlImporta.Visible := False;
    GroupBox18.Enabled := False;
  end;

  //cliente
  gbCliente.Visible := False;
//  gbCliente.Top := 5000;
  if ((cdsDadosCli_Funper.asFloat + cdsDadosCli_Comisper.asFloat + cdsDadosCli_Adiantcx.asFloat) > 0) then
  begin
    gbCliente.Visible := True;
//    gbCliente.Top := 270;
  end
  else begin
    if TCadNotaRazao.Text = 'C' then
    begin
      fSql(1,1,['Select FUNPER, COMISPER, ADIANTCX From CadClien Where codigo = 0'+IntToStr(frmPesquisaRazao.vpCodPrincipal)],1);
      if ((dm.qrSql1.Fields[0].asFloat + dm.qrSql1.Fields[1].asFloat + dm.qrSql1.Fields[2].asFloat) > 0) then
      begin
        gbCliente.Visible := True;
//        gbCliente.Top := 270;
      end;
    end;
  end;

  vint := cdsFinanLancit.AsInteger;
  vpar := 0;
  vvlr := 0;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    Inc(vpar);
    if cdsDados.State <> dsBrowse then
    begin
      cdsFinan.Edit;
      cdsFinanParc.AsInteger := vpar;
      cdsFinan.Post;
    end;
    vvlr := vvlr + cdsFinanValor.asFloat;
    cdsFinan.Next;
  end;
  cdsFinan.Locate('Lancit', vint, []);
  pnlfinan.Caption := FormatFloat('#,0.00', vvlr);

end;

procedure TFfrmNotaFiscal.pBuscaPesquisa;
begin
  if pcItem.ActivePageIndex = 1 then
  begin
    TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);

    memDados.Text := cdsDadosObs2.Text + cdsDadosObs3.Text + cdsDadosObs4.Text + cdsDadosObs5.Text+
                     cdsDadosObs6.Text + cdsDadosObs7.Text + cdsDadosObs8.Text + cdsDadosObs9.Text+
                     cdsDadosObs10.Text + cdsDadosObs11.Text;
    //cdsDadosObs12.Text -> Informação do cancelamento
    //cdsDadosObs13.Text -> Informação do fisco

    if (Trim(TCadNotaCFOPDESC.AsString) <> '')  then
      pnlCfop.Caption := cdsDadosNaturCod.Text + ' - ' + Trim(TCadNotaCFOPDESC.AsString)
    else
      pnlCfop.Caption := cdsDadosNaturCod.Text + ' - ' + fBus(1,['Select Descricao From CadNatur Where Codigo = 0'+ frSubs(cdsDadosNaturCod.Text,',','.')],1);

    frmPesquisaMot.pRetornaDados(cdsDadosTRCod.AsString);
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);

    fMostraDetalhe;

    TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);

    //NFe - referenciada
    gbNFeRef.Visible := frehDevolucao(frSubs(cdsDadosNaturCod.Text,',',''));
    if (TCadNotaFINNFE.asString = 'C') or
       (TCadNotaFINNFE.asString = 'D') or
       (TCadNota.FieldByName('FGREFER').asString = 'S') then
      gbNFeRef.Visible := True;
    TabReferenciada.TabVisible := gbNFeRef.Visible;

    gbComissao.Visible := (TCadNota.FieldByName('COMISSAO').asString = 'S');
    tabfinanceiro.TabVisible := (TCadNota.FieldByName('FINANCEIRO').asString = 'S');
    gbFisco.Visible := (TCadNota.FieldByName('FGFISCO').asString = 'S');

    pIniciaPesquisa;

    frmPesquisaRazao.pRetornaDados(cdsDadosCodigo.AsString);
    frmPesquisaVendedor.pRetornaDados(cdsDadosVendeCod.AsString);

    PageControl1.ActivePageIndex := 0;
    pArrumaParc;
  end;
end;

procedure TFfrmNotaFiscal.pBuscaPSP;
var vval:Real; vtab,vtab2,vstr:String;
    vImporta: Boolean;
    vSepararLoteVendas: Boolean;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;
  if vimportouPSP then Exit;

  vimportouPSP := False;
  if vkey=13 then
  begin
    try

      vkey:=0;
      vval:=0;
      cdsDadosDif.Text     := TCadNotaItem.Text;
      cdsDadosEstoque.Text := TCadNotaEstoque.Text;
      if cdsDadosDif.Text='P' then
      begin
        vtab:='es';
        vtab2:='CadProdu';
      end
      else begin
        vtab:='ar';
        vtab2:='CadMerca';
      end;

      if not fTra(1,['Select * From '+vtab+'Venda Where Registro=0'+cdsDadosPSP.Text],1) then
      begin
        ShowMessage('Romaneio não encontrado...');
        //DBEPSP.SetFocus;
        Abort;
      end;

      //se não veio do psps faz pergunta
      vImporta := False;
      if vveioPSP then
        vImporta := True
      else begin
        if frPerg('Importa dados?') then
          vImporta := True;
      end;

      if vimporta then
      begin

        if (fBus(1,['Select valor From zGenerator Where Tabela = ''ESVENDA'' and Campo = ''DESC_LOTE'''],1) = 1) then
          vSepararLoteVendas := True
        else
          vSepararLoteVendas := False;

        //Nota
        if Trim(dm.qrSqlTra.FieldByName('Forma').Text) <> '' then
          cdsDadosForma.Text := Trim(dm.qrSqlTra.FieldByName('Forma').Text);

        cdsDadosCodigo.Value   := dm.qrSqlTra.FieldByName('Codigo').Value;
        cdsDadosDescricao.Text := dm.qrSqlTra.FieldByName('Descricao').Text;
        if vtab<>'ar' then
        begin
          cdsDadosTRCod.Value := dm.qrSqlTra.FieldByName('TRCod').Value;
          cdsDadosTRDes.Text  := dm.qrSqlTra.FieldByName('TRDes').Text;
        end;

        pTipodeCFOP;

        //Produtos
        cdsDetalhe.DisableControls;

        cdsDetalhe.First;
        while not cdsDetalhe.Eof do cdsDetalhe.Delete;

        //Inserir - Separa por lote
        if (vSepararLoteVendas) then
          fSql(1,1,['Select Codigo, Descricao, unidade, PerDesc, LoteRoman, Sum(qtde) as vqtde, sum(valor) as vvalor, sum(VlrDesc) as vvlrdesc',
                    ' From '+vtab+'VendCo',
                    ' Where Lanc =0'+dm.qrSqlTra.FieldByName('Lanc').Text,
                    ' Group by Codigo, Descricao, unidade, PerDesc, LoteRoman'],4)
        else
          fSql(1,1,['Select Codigo, Descricao, unidade, PerDesc, Sum(qtde) as vqtde, sum(valor) as vvalor, sum(VlrDesc) as vvlrdesc',
                    ' From '+vtab+'VendCo',
                    ' Where Lanc =0'+dm.qrSqlTra.FieldByName('Lanc').Text,
                    ' Group by Codigo, Descricao, unidade, PerDesc'],4);

        while not dm.qrSql1.Eof do
        begin
          cdsDetalhe.Append;
          cdsDetalheLanc.Value    := cdsDadosLanc.Value;
          cdsDetalheData.Value    := cdsDadosData.Value;
          cdsDetalheCliente.Value := cdsDadosCodigo.Value;
          cdsDetalheLancit.Value  := frGenerator('NFVENDCO','LANCIT',1);
          cdsDetalheCodigo.Value  := dm.qrSql1.FieldByName('Codigo').Value;
          cdsDetalheDescricao.Text:= dm.qrSql1.FieldByName('Descricao').Text;
          cdsDetalheUnidade.Text  := dm.qrSql1.FieldByName('Unidade').Text;
          if fTra(1,['Select * From '+vtab2+' Where Codigo=0'+dm.qrSql1.FieldByName('Codigo').Text],1) then
          begin
             if vtab = 'ar' then cdsDetalheGrupoCod.asInteger := dm.qrSqlTra.FieldByName('GrupoCod').asInteger
             else cdsDetalheGrupoCod.asInteger := dm.qrSqlTra.FieldByName('VarieCod').asInteger;
             cdsDetalhePesoLiq.AsFloat := dm.qrSqlTra.FieldByName('PesoLiq').AsFloat;
             cdsDetalhePesoBru.AsFloat := dm.qrSqlTra.FieldByName('PesoBru').AsFloat;

            if (vtab2 = 'CadMerca') then
            begin
              if (Trim(dm.qrSqlTra.FieldByName('ForneCod').asString) <> '') then
                cdsDetalheProdutoCod.AsString := dm.qrSqlTra.FieldByName('ForneCod').asString;
            end
            else begin

              cdsDetalheProdutoCod.AsString := cdsDetalheCodigo.asString;
              if Trim(cdsDetalheCodLoteClass.asString) = '' then
              begin
                //vai buscas na categoria o lote da cidasc
                vstr := fBus(1, ['Select codclass From CadCateg Where Codigo=0'+dm.qrSqlTra.FieldByName('CategCod').AsString],1);
                if (vstr <> '')  then
                  cdsDetalheCodLoteClass.asString := vstr
                else
                  cdsDetalheCodLoteClass.asString := vcodlote;
                vstr := '';
              end;
            end;

          end;

          cdsDetalheQtde.AsFloat       := dm.qrSql1.FieldByName('vQtde').AsFloat;
          cdsDetalheValor.AsFloat      := dm.qrSql1.FieldByName('vValor').AsFloat;

          if (cdsDetalheQtde.asFloat <> 0) then
            cdsDetalhePRUnit.AsFloat     := cdsDetalheValor.AsFloat / cdsDetalheQtde.asFloat
          else
            cdsDetalhePRUnit.AsFloat     := 0;

          cdsDetalheUnit.AsFloat       := cdsDetalhePRUnit.AsFloat;
          cdsDetalhePerDesc.AsFloat    := dm.qrSql1.FieldByName('PerDesc').AsFloat;
          cdsDetalheVlrDesc.AsFloat    := dm.qrSql1.FieldByName('vVlrDesc').AsFloat;

          cdsDetalheRUnit.AsFloat   := cdsDetalheUnit.AsFloat - cdsDetalheVlrDesc.AsFloat;
          cdsDetalheRValor.AsFloat  := cdsDetalheQtde.AsFloat * cdsDetalheRUnit.AsFloat;

          cdsDetalheEmpreCod.asInteger := xEmp;
          cdsDetalheAcesoCod.asInteger := xAcesso;

          //*** NCM
          if TCadNotaItem.Text = 'P' then //Produto
          begin
            cdsDetalheNCM_COD.asString := dm.qrSqlTra.FieldByName('NCM').AsString;
            if (Trim(cdsDetalheNCM_COD.asString) <> '') then
            begin
              vstr := fBus(1, ['Select nacional From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
              cdsDetalheNCM_PER.asFloat := StrToFloatDef(vstr, 0);
              vstr := fBus(1, ['Select estadual From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
              cdsDetalheNCM_PERE.asFloat := StrToFloatDef(vstr, 0);
            end;
          end
          else begin
            cdsDetalheNCM_COD.asString := dm.qrSqlTra.FieldByName('BARRA').AsString;
            if (Trim(cdsDetalheNCM_COD.asString) <> '') then
            begin
              vstr := fBus(1, ['Select nacional From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
              cdsDetalheNCM_PER.asFloat := StrToFloatDef(vstr, 0);
              vstr := fBus(1, ['Select estadual From cadncm where NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
              cdsDetalheNCM_PERE.asFloat := StrToFloatDef(vstr, 0);
            end;
          end;
          cdsDetalheNCM_VLR.AsFloat := cdsDetalheRValor.AsFloat * cdsDetalheNCM_PER.AsFloat /100;
          cdsDetalheNCM_VLRE.asFloat := cdsDetalheRVALOR.asFloat * cdsDetalheNCM_PERE.asFloat / 100;

          pTipodeImposto;

          if vSepararLoteVendas then
          begin
            cdsDetalheCodLoteClass.asString := dm.qrSql1.FieldByName('LoteRoman').Text;
            if (Trim(cdsDetalheCodLoteClass.asString) <> '') then
              cdsDetalheDescricao.Text:= cdsDetalheDescricao.Text + ' lote:'+Trim(cdsDetalheCodLoteClass.asString);
          end;

          cdsDetalhe.Post;
          dm.qrSql1.Next;
        end;
        dm.qrSql1.Close;
      end;

      cdsDetalhe.EnableControls;

      if (Trim(TCadNotaCFOPDESC.AsString) <> '')  then
        pnlCfop.Caption := cdsDadosNaturCod.Text + ' - ' + Trim(TCadNotaCFOPDESC.AsString)
      else
        pnlCfop.Caption := cdsDadosNaturCod.Text + ' - ' + fBus(1,['Select Descricao From CadNatur Where Codigo = 0'+ frSubs(cdsDadosNaturCod.Text,',','.')],1);
      frmPesquisaRazao.pRetornaDados(cdsDadosCodigo.AsString);
      frmPesquisaMot.pRetornaDados(cdsDadosTRCod.AsString);

      //NFe - referenciada
      gbNFeRef.Visible := frehDevolucao(frSubs(cdsDadosNaturCod.Text,',',''));
      if (TCadNotaFINNFE.asString = 'C') or (TCadNotaFINNFE.asString = 'D') then
        gbNFeRef.Visible := True;
      TabReferenciada.TabVisible := gbNFeRef.Visible;
      //NFe - referenciada

      //Atualiza dados do cliente/Fornecedor
      vCli_Desconta_Parcela := False;
      if TCadNotaRazao.Text = 'C' then
      begin
        fSql(1,1,['Select FORMA, FUNPER, COMISPER, ADIANTCX, NFDESCPARC From CadClien Where codigo = 0'+IntToStr(frmPesquisaRazao.vpCodPrincipal)],1);
        if (Trim(cdsDadosForma.asString) = '') then
          cdsDadosForma.asString := dm.qrSql1.FieldByName('Forma').asString;
        cdsDadosCli_Funper.asFloat   := dm.qrSql1.FieldByName('Funper').asFloat;
        cdsDadosCli_Comisper.asFloat := dm.qrSql1.FieldByName('Comisper').asFloat;
        cdsDadosCli_Adiantcx.asFloat := dm.qrSql1.FieldByName('Adiantcx').asFloat;
        vCli_Desconta_Parcela        := (dm.qrSql1.FieldByName('NFDescParc').asString = 'S');

        gbCliente.Visible := False;
        //gbCliente.Top := 5000;
        if ((cdsDadosCli_Funper.asFloat + cdsDadosCli_Comisper.asFloat + cdsDadosCli_Adiantcx.asFloat) > 0) then
        begin
          gbCliente.Visible := True;
          //gbCliente.Top := 270;
        end;
      end;
      if TCadNotaRazao.Text = 'P' then
      begin
        fSql(1,1,['Select FUNRURALPER From CadForne Where codigo = 0'+IntToStr(frmPesquisaRazao.vpCodPrincipal)],1);
        if (dm.qrSql1.FieldByName('FUNRURALPER').AsFloat > 0) then
          cdsDadosPRD_FUNRURAL.asFloat   := dm.qrSql1.FieldByName('FUNRURALPER').asFloat
        else
          cdsDadosPRD_FUNRURAL.asFloat := 0;
      end;

      cdsDadosCodigo.AsInteger := frmPesquisaRazao.vpCodPrincipal;
      cdsDadosEstado.Text := upperCase(frmPesquisaRazao.vpCampo_1);
      pTipodeCFOP;

      //Calcula imposto e totais...
      pCalculaImposto;
      pCalculaTotal;

    finally

      cdsDetalhe.EnableControls;
      vimportouPSP := True;

    end;

  end;
end;

procedure TFfrmNotaFiscal.pTipodeCFOP;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;
  vufemp := fBus(1,['Select Estado From Empresa Where Codigo = 0'+IntToStr(xEmp)],1);
  if TCadNotaRazao.Text = 'C' then
    vufcli := fBus(1,['Select Estado From CadClien Where Codigo = 0'+cdsDadosCodigo.asString],1)
  else
    vufcli := fBus(1,['Select Estado From CadForne Where Codigo = 0'+cdsDadosCodigo.asString],1);
  if UpperCase(vufEmp) = UpperCase(vufcli) then
    cdsDadosNATURCOD.asFloat  := TCadNotaNATURDEN.asFloat
  else
    cdsDadosNATURCOD.asFloat  := TCadNotaNATURFOR.asFloat;

  if (Trim(TCadNotaCFOPDESC.AsString) <> '')  then
    pnlCfop.Caption := cdsDadosNaturCod.Text + ' - ' + Trim(TCadNotaCFOPDESC.AsString)
  else
    pnlCfop.Caption := cdsDadosNaturCod.Text + ' - ' + fBus(1,['Select Descricao From CadNatur Where Codigo = 0'+ frSubs(cdsDadosNaturCod.Text,',','.')],1);

  //NFe - referenciada
  gbNFeRef.Visible := frehDevolucao(frSubs(cdsDadosNaturCod.Text,',',''));
  if (TCadNotaFINNFE.asString = 'C') or
     (TCadNotaFINNFE.asString = 'D') or
     (TCadNota.FieldByName('FGREFER').asString = 'S') then
    gbNFeRef.Visible := True;
  TabReferenciada.TabVisible := gbNFeRef.Visible;
  //NFe - referenciada

end;

procedure TFfrmNotaFiscal.pTipodeImposto;
var vori, vsit, vser, vtabela: String;
    vcredper, vcredvlr: Double;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;

  if cdsDetalhe.State in [dsInsert, dsEdit] then
    cdsDetalheNATURCOD.asFloat := cdsDadosNATURCOD.asFloat;

  //Sit.Trib.Padrão é da nota
  vori := IntToStr(StrToIntDef(TCadNotaIcms_ori.Text,0));
  vsit := IntToStr(StrToIntDef(TCadNotaIcms_sit.Text,102));
  vser := 'N';
  vcredper := 0;

  if cdsDadosNFE_Modelo.asString = '55' then
  begin
    //busca no produto
    if TCadNotaItem.Text='P' then vtabela := 'CadProdu'
    else vtabela := 'CadMerca';
    if fTra(1,['Select * From '+vtabela+' Where Codigo=0'+cdsDetalheCodigo.Text],1) then
    begin
      if dm.qrSqlTra.FieldByName('Icms_Ori').Text <> '' then
        vori := IntToStr(StrToIntDef(dm.qrSqlTra.FieldByName('Icms_Ori').Text,0));
      if dm.qrSqlTra.FieldByName('Icms_Sit').Text <> '' then
        vsit := IntToStr(StrToIntDef(dm.qrSqlTra.FieldByName('Icms_sit').Text,102));
      if vtabela = 'CadMerca' then
      begin
        if dm.qrSqlTra.FieldByName('EhServico').Text <> '' then
          vser := dm.qrSqlTra.FieldByName('EhServico').Text;
      end;
      cdsDetalheIPI_SIT.asString := dm.qrSqlTra.FieldByName('Ipi_sit').asString;
      cdsDetalheIPI_PER.asFloat  := dm.qrSqlTra.FieldByName('Ipi_per').asFloat;
      cdsDetalheIPI_CENQ.asString := dm.qrSqlTra.FieldByName('Ipi_cenq').asString;
      cdsDetalhePIS_SIT.asString := dm.qrSqlTra.FieldByName('Pis_sit').asString;
      cdsDetalhePIS_PER.asFloat  := dm.qrSqlTra.FieldByName('Pis_per').asFloat;
      cdsDetalheCOFINS_SIT.asString := dm.qrSqlTra.FieldByName('Cofins_sit').asString;
      cdsDetalheCOFINS_PER.asFloat  := dm.qrSqlTra.FieldByName('Cofins_per').asFloat;
    end;
    //Produto
    if vser <> 'S' then
    begin
      //empresa normal
      if dm.TEmpresa.FieldByName('simples').AsString <> 'S' then
      begin
        vsit := IntToStr(StrToIntDef(TCadNotaIcms_sit.Text,40));
        if TCadNotaICMSTIPO.Text = 'Calculado' then
        begin
          if cdsDetalheICMS_SIT.asString = '' then
            cdsDetalheICMS_SIT.asString := vori+'00';
          if vufEmp = vufcli then
            cdsDetalheICMS_PER.asFloat  := TCadNotaICMSDEN.asFloat
          else
            cdsDetalheICMS_PER.asFloat  := TCadNotaICMSFOR.asFloat;
        end;
        if TCadNotaICMSTIPO.Text = 'Isento' then
        begin
          cdsDetalheICMS_SIT.asString := vori+'40';
          cdsDetalheICMS_PER.asFloat  := 0;
        end;
        if TCadNotaICMSTIPO.Text = 'Suspensão' then
        begin
          cdsDetalheICMS_SIT.asString := vori+'50';
          cdsDetalheICMS_PER.asFloat  := 0;
        end;
        if TCadNotaICMSTIPO.Text = 'Diferido' then
        begin
          cdsDetalheICMS_SIT.asString := vori+'51';
          cdsDetalheICMS_PER.asFloat  := 0;
        end;
        if TCadNotaICMSTIPO.Text = 'Substituido' then
        begin
          cdsDetalheICMS_SIT.asString := vori+'60';
          cdsDetalheICMS_PER.asFloat  := 0;
        end;
        if TCadNotaICMSTIPO.Text = 'Redução' then
        begin
          cdsDetalheICMS_SIT.asString := vori+'20';
          cdsDetalheICMS_PER.asFloat  := 0;
        end;
        if TCadNotaICMSTIPO.Text = 'Outros' then
        begin
          cdsDetalheICMS_SIT.asString := vori+'90';
          cdsDetalheICMS_PER.asFloat  := 0;
        end;
      end
      else begin
        //simples nacional
        if vufEmp = vufcli then
          cdsDetalheICMS_PER.asFloat  := TCadNotaICMSDEN.asFloat
        else
          cdsDetalheICMS_PER.asFloat  := TCadNotaICMSFOR.asFloat;

        if dm.TEmpresa.FieldByName('Icms_credito').AsString = 'S' then
          vcredper := TCadNotaICMS_CREDPER.asFloat;//dm.TEmpresa.FieldByName('Icms_credper').asFloat;

        if cdsDetalheICMS_SIT.asString = '' then
          cdsDetalheICMS_SIT.asString := vori+vsit;
        if (vsit = '101') or (vsit = '201') or (vsit = '900') then
          cdsDetalheICMS_CREDPER.AsFloat := vcredper
        else
          cdsDetalheICMS_PER.asFloat  := 0;
      end;

      //Busca cbnef conforme CST e NCM
      if dm.TEmpresa.FieldByName('simples').AsString <> 'S' then
        vsit := Copy(cdsDetalheICMS_SIT.asString,2,2)
      else
        vsit := Copy(cdsDetalheICMS_SIT.asString,1,3);

      if (Trim(cdsDetalheNCM_COD.asString) <> '') and (Trim(vsit) <> '') then
      begin
        vsit := fBus(1, ['Select cbenef From cadcbenef where CST = ' +QuotedStr(vsit)
                         + ' and NCM = ' + QuotedStr(cdsDetalheNCM_COD.asString)], 1);
        if (Trim(vsit) = '') then
          cdsDetalheCBENEF.asString := ''
        else
          cdsDetalheCBENEF.asString := Trim(vsit);
      end;


    end;
    //Serviço
    if vser = 'S' then
    begin
      cdsDetalheEHSERVICO.AsString := 'S';
      if dm.TEmpresa.FieldByName('simples').AsString <> 'S' then
        cdsDetalheICMS_SIT.asString := vori+'40'
      else
        cdsDetalheICMS_SIT.asString := vori+'102';
      if (dm.TEmpresa.FieldByName('ServicoPer').AsFloat > 0) then
        cdsDetalheEHSERVPER.AsFloat := dm.TEmpresa.FieldByName('ServicoPer').AsFloat;
    end;
  end;
end;

procedure TFfrmNotaFiscal.rzNfeExit(Sender: TObject);
begin
  inherited;

  if (rzNfe.Text = '999') then
  begin
    if TabOutros.TabVisible then
    begin
      pageControl1.ActivePage := TabOutros;
      frmPesquisaMot.edtPesquisa.SetFocus;
    end;
  end;

end;

procedure TFfrmNotaFiscal.pCalculaFinan;
var vfor: String; vi, vp, vt:Integer;
    vvlrnota, vvlrfin, vFunRural, vComissao: Double;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;

  vfor := Trim(cdsDadosForma.asString);
  if vfor = '' then vfor := '000';

  cdsFinan.First;
  while not cdsFinan.Eof do cdsFinan.Delete;

  if TCadNotaFinanceiro.Text <> 'S' then exit;

  vvlrnota := cdsDadosVlrNota.asFloat;

  //Se tiver Tiver marcado para descontar da parcela funrural e financeiro
  //Daí desconta depois no financeiro
  //if (cdsDadosnfe_modelo.Text <> '55') then
  //begin
  if (vCli_Desconta_Parcela) then
  begin

    vFunRural := (vvlrnota * cdsDadosCli_Funper.asFloat /100);
    vComissao := (vvlrnota * cdsDadosCli_Comisper.asFloat /100);
    vvlrnota  := vvlrnota - vFunRural - vComissao;

  end;
  //end;

  vi := -3;
  vp := 0;
  vt := 0;
  while not (vt > 0) do
  begin
    vi := vi + 4;
    inc(vp);
    if (Trim(Copy(vfor, vi, 3)) <> '') then
    begin
      cdsFinan.Append;
      cdsFinanLanc.Value   := cdsDadosLanc.Value;
      cdsFinanLancit.Value := frGenerator('FIPAVE','LANCIT',1);
      cdsFinanParc.Value   := vp;
      cdsFinanVencto.asDateTime := cdsDadosData.asDateTime +  StrToInt(Trim(Copy(vfor,vi,3)));
      cdsFinanValor.Value  := vvlrnota;
      cdsFinanVlr.Value    := 0;
      cdsFinanBanCod.Value := 0;
      cdsFinanEmpreCod.asInteger := xEmp;
      cdsFinanAcesoCod.asInteger := xAce;
      cdsFinan.Post;
    end;
    if vp > 10 then vt := 1
  end;
  cdsFinan.First;
  if cdsFinan.RecordCount > 1 then
  begin
    while not cdsFinan.Eof do
    begin
      cdsFinan.Edit;
      cdsFinanValor.asFloat := frDeci(vvlrnota / cdsFinan.RecordCount,2);
      cdsFinanVlr.Value     := cdsFinanValor.asFloat;
      vvlrfin := vvlrfin + cdsFinanValor.asFloat;
      cdsFinan.Post;
      cdsFinan.Next;
    end;
    cdsFinan.First;

    //Se tiver diferença de centavos joga na primeira parcela
    if frDeci(vvlrfin,2) <> frDeci(cdsDadosVlrNota.asFloat,2) then
    begin
      cdsFinan.Edit;
      cdsFinanValor.asFloat :=  cdsFinanValor.asFloat + (frDeci(vvlrnota,2) - frDeci(vvlrfin,2));
      cdsFinan.post;
      pArrumaParc;
    end;
  end;
end;

procedure TFfrmNotaFiscal.pCalculaImposto;
var vreg, vi: Integer;
    vpesoliq, vpesobru, vred, vqtd, vvlr, vdes, vbase, vicms, vipi, vncm, vncme, vcre, vser, vsii, vpis,vcof: Double;
    vclass:Array[0..1000] of String;
    vEstoqueKG: Boolean;
begin

  try
    try
      if (not sbSalvar.Visible) then Exit;
      if cdsDados.State = dsBrowse then Exit;


      vEstoqueKG := (fBus(1,['Select valor From zGenerator Where Tabela = ''ESTOQUE'' and Campo = ''MOSTRA KG'''],1) = 1);

      vreg := cdsDetalheLancit.asInteger;
      for vi := 0 to 1000 do
        vclass[vi] := '';

      vvlr := 0;
      vdes := 0;
      vqtd := 0;
      vbase := 0;
      vicms := 0;
      vipi  := 0;
      vpesoliq := 0;
      vpesobru := 0;
      vncm := 0;
      vncme:= 0;
      vcre := 0;
      vser := 0;
      vsii := 0;
      vpis := 0;
      vcof := 0;
      vVlrUnitZerado := 0;

      cdsDetalhe.DisableControls;

      cdsDetalhe.First;
      while not cdsDetalhe.Eof do
      begin
        cdsDetalhe.Edit;

        if (TCadNotaFINNFE.asString <> 'C') then //Complementar é manual
        begin
          cdsDetalheICMS_BASE.asFloat:= 0;
          cdsDetalheICMS_VLR.asFloat := 0;
          cdsDetalheICMS_CREDVLR.asFloat := 0;
          cdsDetalhePIS_BASE.asFloat := 0;
          cdsDetalhePIS_VLR.asFloat  := 0;
          cdsDetalheCOFINS_BASE.asFloat := 0;
          cdsDetalheCOFINS_VLR.asFloat  := 0;
        end;

       if (cdsDetalheNATURCOD.asFloat <> cdsDadosNATURCOD.asFloat) and
          (cdsDadosNFE_Modelo.asString = '55') then
         pTipodeImposto;

        //Saida - Normal - Rel_Vendas -> Não deve deixar valor zerado vCfop 5, 6, 7
        if (cdsDetalheUnit.AsFloat <= 0) or ((cdsDetalheVlrDesc.AsFloat + cdsDetalheValor.AsFloat) <= 0) then
        begin
          if (Copy(Trim(frSoNumero(cdsDetalheNATURCOD.AsString)),1,1) = '5') or
             (Copy(Trim(frSoNumero(cdsDetalheNATURCOD.AsString)),1,1) = '6') or
             (Copy(Trim(frSoNumero(cdsDetalheNATURCOD.AsString)),1,1) = '7') then
          begin
            //Se não for Brinde
            if (frSoNumero(cdsDetalheNATURCOD.AsString) <> '5910') and
               (frSoNumero(cdsDetalheNATURCOD.AsString) <> '6910') then
            begin
              //NORMAL E SAÍDA
              if (TCadNotaFINNFE.Text='N') and (TCadNotaTIPO.Text='S') then
                vVlrUnitZerado := vVlrUnitZerado + 1;
            end;
          end;
        end;

        if (TCadNotaFINNFE.asString <> 'C') then //Complementar é manual
        begin
          if cdsDetalheICMS_PER.asFloat > 0 then
          begin
            if cdsDetalheICMS_RED.asFloat > 0 then
              cdsDetalheICMS_BASE.asFloat :=  frDeci(cdsDetalheVALOR.asFloat - (cdsDetalheVALOR.asFloat * cdsDetalheICMS_RED.asFloat / 100),2)
            else
              cdsDetalheICMS_BASE.asFloat :=  cdsDetalheVALOR.asFloat;
            cdsDetalheICMS_VLR.asFloat := frDeci(cdsDetalheICMS_BASE.asFloat * cdsDetalheICMS_PER.asFloat /100,2);
          end;
          if cdsDetalheIPI_PER.asFloat > 0 then
          begin
            if cdsDetalheVALOR.asFloat > 0 then
              cdsDetalheIPI_BASE.asFloat := cdsDetalheVALOR.asFloat;
            cdsDetalheIPI_VLR.asFloat  := frDeci(cdsDetalheIPI_BASE.asFloat * cdsDetalheIPI_PER.asFloat /100,2);
          end
          else begin
            cdsDetalheIPI_BASE.asFloat := 0;
            cdsDetalheIPI_VLR.asFloat  := 0;
          end;
          if cdsDetalheICMS_CREDPER.AsFloat > 0 then
            cdsDetalheICMS_CREDVLR.AsFloat := frDeci(cdsDetalheVALOR.asFloat * cdsDetalheICMS_CREDPER.AsFloat /100,2);

          if cdsDetalheEHSERVPER.AsFloat > 0 then
            cdsDetalheEHSERVVLR.AsFloat := frDeci(cdsDetalheVALOR.asFloat * cdsDetalheEHSERVPER.AsFloat / 100,2);

          if cdsDetalhePIS_PER.asFloat > 0 then
          begin
            cdsDetalhePIS_BASE.asFloat := cdsDetalheVALOR.asFloat;
            cdsDetalhePIS_VLR.asFloat  := frDeci(cdsDetalhePIS_BASE.asFloat * cdsDetalhePIS_PER.asFloat /100,2);
          end;

          if cdsDetalheCOFINS_PER.asFloat > 0 then
          begin
            cdsDetalheCOFINS_BASE.asFloat := cdsDetalheVALOR.asFloat;
            cdsDetalheCOFINS_VLR.asFloat  := frDeci(cdsDetalheCOFINS_BASE.asFloat * cdsDetalheCOFINS_PER.asFloat /100,2);
          end;
        end;

        vpesoliq := vpesoliq + (cdsDetalhePesoLiq.AsFloat * cdsDetalheQtde.asFloat);
        vpesobru := vpesobru + (cdsDetalhePesoBru.AsFloat * cdsDetalheQtde.asFloat);
        vbase := vbase + cdsDetalheICMS_BASE.asFloat;
        vicms := vicms + cdsDetalheICMS_VLR.asFloat;
        vipi  := vipi  + cdsDetalheIPI_VLR.asFloat;
        vqtd  := vqtd  + cdsDetalheQtde.asFloat;
        vvlr  := vvlr  + cdsDetalheValor.asFloat;
        vdes  := vdes  + (cdsDetalheQtde.asFloat * cdsDetalheVlrDesc.asFloat);
        vncm  := vncm  + cdsDetalheNCM_VLR.asFloat;
        vncme := vncme + cdsDetalheNCM_VLRE.asFloat;
        vcre  := vcre  + cdsDetalheICMS_CREDVLR.asFloat;
        vpis  := vpis  + cdsDetalhePIS_VLR.asFloat;
        vcof  := vcof  + cdsDetalheCOFINS_VLR.asFloat;

        if cdsDetalheEHSERVICO.AsString = 'S' then
        begin
          vser := vser + cdsDetalheVALOR.asFloat;
          vsii := vsii + cdsDetalheEHSERVVLR.asFloat;
        end;

        cdsDetalheCodLoteClass.asString := UpperCase(cdsDetalheCodLoteClass.asString);
        cdsDetalheRVlrmedio.AsFloat := cdsDetalheRValor.AsFloat;


        //Ajusta quantidade tribitária para quilos - estoque em quilos -> Frutas Morescos
        if vEstoqueKG then
        begin
          cdsDetalhe.FieldByName('uTrib').asString  := 'kg';
          cdsDetalhe.FieldByName('qTrib').asFloat   := frDeci(cdsDetalhePesoLiq.AsFloat * cdsDetalheQtde.asFloat, 3);
          if cdsDetalhePesoLiq.AsFloat = 0 then
            cdsDetalhe.FieldByName('vUnTrib').asFloat := 0
          else
            cdsDetalhe.FieldByName('vUnTrib').asFloat := frDeci(cdsDetalheUnit.asFloat / cdsDetalhePesoLiq.AsFloat,8);
        end
        else begin
          cdsDetalhe.FieldByName('uTrib').asString  := cdsDetalheUnidade.AsString;
          cdsDetalhe.FieldByName('qTrib').asFloat   := cdsDetalheQtde.AsFloat;
          cdsDetalhe.FieldByName('vUnTrib').asFloat := cdsDetalheUnit.AsFloat;
        end;

        cdsDetalhe.Post;

        if Trim(cdsDetalheCodLoteClass.asString) <> '' then
        begin
          vcodlote := cdsDetalheCodLoteClass.asString;
          fTra(1,['Select Codigo, Descricao, Lote From CadLoteClass Where Lote = '+QuotedStr(cdsDetalheCodLoteClass.asString)],1);
          if (Trim(dm.qrSqlTra.Fields[1].AsString) <> '') then
          begin
            vi := dm.qrSqlTra.Fields[0].asInteger;
            vclass[vi] := '(Lote:'+Trim(dm.qrSqlTra.Fields[2].AsString+' Doc.Class.: '+dm.qrSqlTra.Fields[1].AsString)+')';
          end;
        end;

        cdsDetalhe.Next;
      end;
      cdsDadosVlrBase.Value     := vbase;
      cdsDadosVlrIcms.Value     := vicms;
      cdsDadosVlrIPI.Value      := vipi;
      cdsDadosVlrProduto.Value  := vvlr+vdes;
      cdsDadosVlrDesc.Value     := vdes;
      cdsDadosPesoLiq.Value     := vpesoliq;
      cdsDadosPesoBru.Value     := vpesobru;
      cdsDadosTribNCM_VLR.Value := vncm;
      cdsDadosTribNCM_VLRE.Value:= vncme;
      cdsDadosVlrCred.Value     := vcre;
      cdsDadosVlrServ.Value     := vser;
      cdsDadosPerServ.Value     := vsii;
      cdsDadosPIS_VLR.Value     := vpis;
      cdsDadosCOFINS_VLR.Value  := vcof;

      //Importação
      if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
      begin
        if (Trim(cdsDadosQtdEsp.Text) = '') then
          cdsDadosQtdEsp.Text  := Trim(FormatFloat('0.###', vqtd))
      end
      else
        cdsDadosQtdEsp.Text  := Trim(FormatFloat('0.###', vqtd));

      vcadclass:= '';
      for vi := 0 to 1000 do
      begin
        if (Trim(vclass[vi]) <> '') then
          vcadclass := vcadclass +' '+ Trim(vclass[vi]);
      end;

    {  if cdsDadosnfe_modelo.asString = '99' then
      begin
        if cdsDetalhe.RecordCount >= 17 then
          ShowMessage('Para nota de produtor quantidade máxima de itens é 17.');
      end;
    }
    except

    end;
  finally

    cdsDetalhe.EnableControls;
    cdsDetalhe.Locate('Lancit', vreg, []);

  end;


end;

procedure TFfrmNotaFiscal.pCalculaTotal;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;

  cdsDadosVlrNota.AsFloat := cdsDadosVlrProduto.AsFloat+
                             cdsDadosVlrSeguro.AsFloat+
                             cdsDadosVlrIcmsFre.AsFloat-
                             cdsDadosVlrDesc.Value;
  //Importação
  if (TCadNota.FieldByName('IMPORTACAO').asString = 'S') then
  begin
    cdsDadosVlrNota.AsFloat := cdsDadosVlrNota.AsFloat+
                               RoundTo(cdsImportIMP_COF_VLR.asFloat * cdsImportIMP_COF_PER.asFloat / 100, -2)+
                               RoundTo(cdsImportIMP_PIS_VLR.asFloat * cdsImportIMP_PIS_PER.asFloat / 100, -2)+
                               RoundTo(cdsImportIMP_OUT_ADV.asFloat, -2)+
                               RoundTo(cdsImportIMP_II_VLR.asFloat * cdsImportIMP_II_PER.asFloat / 100, -2);
  end;
end;

function TFfrmNotaFiscal.pSSalvar(vTipo: Boolean): Boolean;
var vLanc, vi:Integer; vseqnota,vtabela,vreduz,vban,vdoc,vbb,vdd:String;
    vvlrfun: Double;
    vlrbx:String;
begin

  result := True;

  if vTipo then
  begin
     if TCadNotaRazao.Text = 'C' then
       fSql(1,1,['Delete From FiBaiRec Where Lanc =  0'+cdsDadosLanc.Text],1)
     else
       fSql(1,1,['Delete From FiBaiPag Where Lanc =  0'+cdsDadosLanc.Text],1);

     fSql(1,1,['Delete From CxBanco Where LancVen = 0'+cdsDadosLanc.Text],1);

     cdsDados.Edit;

     if (Trim(cdsDadosSerie.AsString) = '') then
       cdsDadosSerie.AsString := '1';

     vban := memDados.Lines.Text;
     cdsDadosObs2.Text:=Copy(vban,1,100);
     cdsDadosObs3.Text:=Copy(vban,101,100);
     cdsDadosObs4.Text:=Copy(vban,201,100);
     cdsDadosObs5.Text:=Copy(vban,301,100);
     cdsDadosObs6.Text:=Copy(vban,401,100);
     cdsDadosObs7.Text:=Copy(vban,501,100);
     cdsDadosObs8.Text:=Copy(vban,601,100);
     cdsDadosObs9.Text:=Copy(vban,701,100);
     cdsDadosObs10.Text:=Copy(vban,801,100);
     cdsDadosObs11.Text:=Copy(vban,901,100);

     //Número da nota
     vseqnota := 'NOTA_'+trim(cdsDadosSerie.AsString);
     if cdsDadosNota.asInteger < 1 then
     begin
        cdsDadosNota.asInteger   := frGenerator('NFVENDA',vseqnota,99);
        cdsDadosNSUNUM.Value := frGenerator('NFVENDA','NSUNUM',1);
        cdsDadosNSUDAT.asDateTime := Date;
        cdsDadosNSUHOR.Text  := TimeToStr(Time);
     end;

     //Para modelo 55 - fiscal
     if (cdsDadosnfe_modelo.asString = '55') then
     begin
       //Verifica se já existe essa nota -  se existir busca novamente
       vlanc := StrToIntDef(fBus(1,['Select max(nota) from nfvenda '+
                                    ' where lanc <> '+cdsDadosLanc.AsString+
                                    '   and serie = '+QuotedStr(cdsDadosSerie.AsString)],1),0);
       if (cdsDadosNota.asInteger <= vlanc)  then
       begin
         vlanc := StrToIntDef(fBus(1,['Select Count(*) from nfvenda '+
                         ' where lanc <> '+cdsDadosLanc.AsString+
                         '   and nota  = '+cdsDadosNota.AsString+
                         '   and serie = '+QuotedStr(cdsDadosSerie.AsString)],1),0);
         if (vlanc > 0) then
           cdsDadosNota.asInteger   := frGenerator('NFVENDA',vseqnota,99);
       end
       else begin
         //Verifica se não está muito acima da última nota.
         if (cdsDadosNota.asInteger > (vlanc+10))  then
         begin
           if (cdsDadosNota.asInteger > (frGenerator('NFVENDA',vseqnota,0)+10))  then
           begin
             ShowMessage('Nota fora de sequência!'+#13#10
                        +'Última nota: '+IntToStr(vLanc)+#13#10
                        +'Próxima Nota rotina: '+IntToStr(frGenerator('NFVENDA',vseqnota,0)));
             Result := False;
             Exit;
           end;
         end;
       end;

       //se tiver integração com o pedido - salvar o numero da nota e salvar como fechado
       if (cdsDadosNota.asInteger >0) and (cdsDadosPSP.asInteger>0) then
        fSql(1,1,['Update esvenda set baixado = ''S'', nota = 0'+cdsDadosNota.asString,
                  ' Where baixado =''N'' ',
                  '   and Registro= 0'+cdsDadosPSP.asString,
                  '   and Codigo= 0'+cdsDadosCodigo.asString],4);
     end;
     //fim

     cdsDados.Post;

     //Faz Financeiro
     if TCadNotaFinanceiro.Text = 'S' then
     begin
       cdsFinan.First;
       while not cdsFinan.Eof do
       begin
         if cdsFinan.FieldByName('BanCod').Value=0 then
         begin
           if TCadNotaRazao.Text = 'C' then vtabela := 'FiBaiRec'
           else vtabela := 'FiBaiPag';

           vvlrfun := cdsFinanValor.Value;
           fIntContas(vTabela,
                      cdsDadosLanc.Text,
                      frPree(cdsDadosNota.Value,6,'0',0),
                      cdsDadosCodigo.Text,
                      cdsDadosDescricao.Text,
                      frInvD(cdsDadosData.asDateTime),
                      frInvV(vvlrfun),
                      frInvD(cdsFinanVencto.asDateTime),
                      cdsFinanParc.Text);
         end
         else begin
            vban  := fBus(1,['Select Descricao From CadBanco Where Codigo=0'+cdsFinanBanCod.Text],1);
            vLanc := frGenerator('GERAL','LANC',1);
            vreduz:= cdsDadosCodigo.Text;
            if cdsFinanBanCod.asInteger=1 then
            begin
               vdoc  := 'N.F. '+frPree(cdsDadosNota.Value,6,'0',0);
               vbb   := 'S'; vdd:=frInvD(cdsDadosData.asDateTime);
               vreduz:= '0';
            end else if cdsFinanBanCod.Value=2 then
            begin
               vdoc := 'CH '+cdsFinanBanDoc.Text;
               vbb  := 'N'; vdd:='Null'; vreduz:='0';
            end else begin
               vdoc := 'N.F. '+frPree(cdsDadosNota.Value,6,'0',0);
               vbb  := 'S'; vdd:=frInvD(cdsDadosData.asDateTime);
            end;
           //Entrada - fiannceiro
           if TCadNotaRazao.Text = 'C' then
             fIntCaixa(cdsDadosLanc.Text,'0',IntToStr(vLanc),
                      frInvD(cdsDadosData.asDateTime),'E',
                      cdsFinanBanCod.Text,vban,
                      frInvD(cdsFinanVencto.asDateTime),
                      frInvV(cdsFinanValor.Value),
                      frInvV(cdsFinanValor.Value),
                      cdsDadosDescricao.Text,'0',' ',
                      'NFe nº '+frPree(cdsDadosNota.Value,6,'0',0)+' '+
                      cdsFinanBanEmi.Text,
                      vdoc,
                      vbb,vdd,
                      cdsDadosCodigo.Text,
                      vreduz,
                      frInvV(cdsFinanValor.Value))
           else
             fIntCaixa(cdsDadosLanc.Text,'0',IntToStr(vLanc),
                      frInvD(cdsDadosData.asDateTime),'S',
                      cdsFinanBanCod.Text,vban,
                      frInvD(cdsFinanVencto.asDateTime),
                      frInvV(cdsFinanValor.Value),
                      frInvV(cdsFinanValor.Value*-1),
                      cdsDadosDescricao.Text,'0',' ',
                      'NFe. nº '+frPree(cdsDadosNota.Value,6,'0',0)+' '+
                      cdsFinanBanEmi.Text,
                      vdoc,
                      vbb,vdd,
                      cdsDadosCodigo.Text,
                      vreduz,
                      frInvV(cdsFinanValor.Value));
         end;
         cdsFinan.Next;
       end;
       cdsFinan.First;
     end;

     //Comissão a Pagar
     if (cdsDadosComissaoValor.asFloat > 0) then
     begin
       fSql(1,1,['Delete From FiBaiPag  Where Lanc =  0'+cdsDadosLanc.Text +' and codigo = 0'+cdsDadosVendeCod.Text],1);
       vtabela := 'FiBaiPag';
       fIntContas(vTabela,
                  cdsDadosLanc.Text,
                  frPree(cdsDadosNota.Value,6,'0',0),
                  cdsDadosVendeCod.Text,
                  frmPesquisaVendedor.vpDescricao,
                  frInvD(cdsDadosData.asDateTime),
                  frInvV(cdsDadosComissaoValor.Value),
                  frInvD(cdsFinanVencto.asDateTime),
                  '1');

     end;

  end
  else begin
     if vtag<>2 then
     begin
       fSql(1,1,['Delete From FiPave    Where Lanc =  0'+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From nfVendCo  Where Lanc =  0'+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From nfVendRef Where Lanc =  0'+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From nfVendImp Where Lanc =  0'+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From FiBaiRec  Where Lanc =  0'+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From FiBaiPag  Where Lanc =  0'+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From CxBanco   Where LancVen=0'+cdsDadosLanc.Text],1);
       cdsDados.Delete;
     end;
  end;

end;

procedure TFfrmNotaFiscal.PStatusResgistroDblClick(Sender: TObject);
begin
  inherited;
  //Ajustar as notas
  if Copy(uppercase(xAcess),1,5) = 'ACWEB' then
  begin
    cdsDados.First;
    while not cdsDados.Eof do
    begin
      if (cdsDadosDifCod.asInteger = -1) and (cdsDadosnfe_modelo.asString = '55') then
        fSql(1,1,['UPDATE NFVENDA SET NFE_STATUS = '+QuotedStr('CA')+ ' Where LANC = 0'+cdsDadosLANC.Text],1)

      else begin

        if cdsDadosnfe_status.asString = '' then
          fSql(1,1,['UPDATE NFVENDA SET NFE_STATUS = '+QuotedStr('NN')+ ' Where LANC = 0'+cdsDadosLANC.Text],1);

      end;
      cdsDados.Next;
    end;
    cdsDados.First;
  end;

end;

procedure TFfrmNotaFiscal.NotaFiscal1Click(Sender: TObject);
var vfor:String;
    vtab,vtab2:String;
begin
  vfor:=IntToStr(TComponent(Sender).Tag);
  if vfor='1' then
  begin
    xRelTela := 'NotaFiscal';
    //Se for nota fiscal eletronica de ir para o gerenciador de notas
    if cdsDadosNFE_Modelo.asString = '55' then
      frForm(TFfrmGerenciadorNFE, FfrmGerenciadorNFE);
    //else
    //  pNotaFiscalGrafica
  end
  else if vfor='5' then begin

     vtab:='es';
     vtab2:='CadProdu';

     if not fTra(1,['Select * From '+vtab+'Venda Where Registro=0'+cdsDadosPSP.Text],1) then
     begin
       ShowMessage('Romaneio não encontrado...');
       Exit;
     end;
     vtab := dm.qrSqlTra.FieldByName('Lanc').asString;

     if qrPSPVenda<>Nil then qrPSPVenda.Destroy; Application.CreateForm(TqrPSPVenda, qrPSPVenda);
     with rlPSPVenda.qrPSPVenda do begin
       qrLabel16.Caption:='Romaneio de Venda Fruta';
       xRelTela := QRLabel16.Caption;
       qrPedi.Close;
       qrPediCom.Close;
       qrPedi.Sql.Strings[2] := 'Where Lanc = '+vtab;
       qrPediCom.Sql.Strings[2] := 'Where Lanc = '+vtab;
       qrPedi.Open;
       qrPediCom.Open;
       if qrPedi.RecordCount = 0 then
       begin
          Showmessage('Romaneio não Encontrado!');
          Exit;
       end;
       PrinterSettings.PrinterIndex := fImpr('Imp2');
       Preview;
     end;
  end else if vfor='4' then begin
    if qrPermisao<>Nil then qrPermisao.Destroy; Application.CreateForm(TqrPermisao, qrPermisao);
    with rlPermisao.qrPermisao do begin //Faturas
      qrRec.Close;
      qrRec.Sql.Strings[2]:='Where nf.Codigo=cc.Codigo and Lanc='+cdsDadosLanc.Text;
      qrRec.Open;
      PrinterSettings.PrinterIndex:=fImpr('Imp1');
      Preview;
    end;
  end;
end;


procedure TFfrmNotaFiscal.pCalculaComissao;
var vComissao: Double;
begin
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;


  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  dbEdit8.Enabled := True;
  vComissao := 0;

  if cdsDadosComissaoCod.asInteger = 0 then
  begin
    cdsDadosComissaoVlr.asFloat := 0;
    dbEdit8.Enabled := False;
  end;

  if cdsDadosComissaoCod.asInteger = 1 then
    vComissao := StrToFloatDef(cdsDadosQTDESP.Text,0) * cdsDadosComissaoVlr.asFloat;

  if cdsDadosComissaoCod.asInteger = 2 then
    vComissao := cdsDadosVLRNOTA.asFloat * cdsDadosComissaoVlr.asFloat / 100;

  if cdsDadosComissaoCod.asInteger = 3 then
    vComissao := cdsDadosComissaoVlr.asFloat;

  cdsDadosComissaoValor.asFloat := vComissao;

end;

procedure TFfrmNotaFiscal.EspelhoNota1Click(Sender: TObject);
var varquivo: String;
begin
  pcItem.ActivePageIndex := 1;
  cdsCadastro.Close;
  if (TCadNotaRazao.Text = 'C') then
    cdsCadastro.Sql.Text:= 'Select * from CADCLIEN where Codigo = ' + cdsDadosCODIGO.AsString
  else
    cdsCadastro.Sql.Text:= 'Select * from CADFORNE where Codigo = ' + cdsDadosCODIGO.AsString;
  cdsCadastro.Open;

  qrTrans.Sql.Clear;
  qrTrans.Sql.Add('select * from cadtrans where codigo = 0'+cdsDadosTRCod.AsString);
  qrTrans.Open;

  varquivo := xDirSi + 'NotaEspelho.fr3';
  if FileExists(varquivo) then
    frxReportNota.LoadFromFile(varquivo);

  frxPDFExport1.FileName  := 'Espelho da nota';
  frxXLSExport1.FileName  := frxPDFExport1.FileName;

  frxReportNota.ShowReport;
end;

procedure TFfrmNotaFiscal.sbNotaFiscalClick(Sender: TObject);
begin
  inherited;
  xRelTela := 'NotaFiscal';
  //Se for nota fiscal eletronica de ir para o gerenciador de notas
  if cdsDadosNFE_Modelo.asString = '55' then
    frForm(TFfrmGerenciadorNFE, FfrmGerenciadorNFE)
end;

procedure TFfrmNotaFiscal.Configurar1Click(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  if (TCadNotaRazao.Text = 'C') then
    cdsCadastro.Sql.Text:= 'Select * from CADCLIEN where Codigo = ' + cdsDadosCODIGO.AsString
  else
    cdsCadastro.Sql.Text:= 'Select * from CADFORNE where Codigo = ' + cdsDadosCODIGO.AsString;
  cdsCadastro.Open;

  qrTrans.Sql.Clear;
  qrTrans.Sql.Add('select * from cadtrans where codigo = 0'+cdsDadosTRCod.AsString);
  qrTrans.Open;

  frxPDFExport1.FileName  := 'Espelho da nota';
  frxXLSExport1.FileName  := frxPDFExport1.FileName;

  frxReportNota.DesignReport;

end;

procedure TFfrmNotaFiscal.pGeraRomaneioEntrada;
var vID, vIL, vIR: Integer;
    vQtd, vMed: Double;
    vUnid, vVarieDes: String;
begin

  TCadNota.Locate('Codigo', cdsDadosDifCod.AsInteger, []);
  if (TCadNota.FieldByName('GERAROMENT').asString = 'S') then
  begin
    try

      //Procura para ver se existe
      vID := StrToIntDef(IntToStr(fBus(1,['Select LANC From ENTRE Where IMPORTLANC = 0'+cdsDadosLanc.Text],1)),0);
      if (vID > 0)  then
      begin
        vIR:= fBus(1,['Select RECIBO From ENTRE Where IMPORTLANC = 0'+cdsDadosLanc.Text],1);
        fSql(1,1,['Delete From ENTRE Where IMPORTLANC = 0'+cdsDadosLanc.Text],1);
        fSql(1,1,['Delete From ENTREVAR Where IMPORTLANC = 0'+cdsDadosLanc.Text],1);
      end
      else begin
        vID:= frGenerator('ENTRE','LANC',1);
        vIR:= frGenerator('ENTRE','RECIBO',1,xAno);
      end;

      vqtd := StrToFloatDef(cdsDadosQtdEsp.Text,0);
      if (vqtd <> 0) and (cdsDadosPesoLiq.AsFloat <> 0) then
        vmed := frDeci(cdsDadosPesoLiq.AsFloat / vqtd,3)
      else
        vmed := 0;

      fSql(1,1,['Insert Into ENTRE',
                '(LANC,RECIBO,IMPORTLANC,SAFRA,NOTA,DATA,'+
                ' PRODCOD,PRODDES,PLACA,PLACADES,LOCALCOD,'+
                ' QTDE,BINSLIQ,BINSMED,OBS,EMPRECOD,ACESOCOD)',
                'Values',
                '('+inttostr(vID)+','
                   +inttostr(vIR)+','
                   +inttostr(cdsDadosLanc.asInteger)+','
                   +QuotedStr(xAno)+','
                   +inttostr(cdsDadosNota.asInteger)+','
                   +frInvd(cdsDadosData.asDateTime)+','
                   +inttostr(cdsDadosCodigo.AsInteger)+','
                   +QuotedStr(cdsDadosDescricao.AsString)+','
                   +inttostr(cdsDadosTRCod.AsInteger)+','
                   +QuotedStr(cdsDadosTRDes.AsString)+','
                   +'1,'
                   +frInvv(vqtd)+','
                   +frInvv(cdsDadosPesoLiq.AsFloat)+','
                   +frInvv(vmed)+','
                   +QuotedStr('NFe nº. '+cdsDadosNota.Text)+','
                   +IntToStr(xEmp)+','
                   +IntToStr(xAce)+')'],4);
      cdsDetalhe.First;
      while not cdsDetalhe.Eof do
      begin
        vUnid := UpperCase(cdsDetalheUNIDADE.asString);
        if (Pos('BI', vUnid) > 0) then
          vUnid := 'BINS';

        vVarieDes := fBus(1,['Select Descricao From CadVarie Where Codigo=0'+cdsDetalheGRUPOCOD.Text],1);

        vIL:= frGenerator('ENTREVAR','LANCIT',1);

        fSql(1,1,['Insert Into ENTREVAR',
                  '(LANC,LANCIT,IMPORTLANC,SAFRA,'+
                  ' BINSCOD,BINSDES,VARIECOD,VARIEDES,'+
                  ' VARIEQTD,VARIECHE,VARIEPES)',
                  'Values',
                  '('+inttostr(vID)+','
                     +inttostr(vIL)+','
                     +inttostr(cdsDadosLanc.asInteger)+','
                     +QuotedStr(xAno)+','
                     +'1,'
                     +QuotedStr(vUnid)+','
                     +inttostr(cdsDetalheGRUPOCOD.AsInteger)+','
                     +QuotedStr(vVarieDes)+','
                     +frInvv(cdsDetalheQTDE.asFloat)+','
                     +frInvv(cdsDetalhePesoLiq.AsFloat)+','
                     +frInvv(cdsDetalheQTDE.asFloat * cdsDetalhePesoLiq.AsFloat)
                     +')'],4);
        cdsDetalhe.Next;
      end;
      cdsDetalhe.First;

    except

    end;
  end;

end;


end.

