unit frmFechaEmbalagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppDB, ppDBPipe, ppDBBDE, ppParameter, ppComm, ppRelatv, ppProd,
  ppModule, raCodMod, RzButton, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, ppDesignLayer,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmFechaEmbalagem = class(TFModelo)
    dsitem: TDataSource;
    cdsitem: TClientDataSet;
    dspitem: TDataSetProvider;
    dsembal: TDataSource;
    cdsembal: TClientDataSet;
    dspembal: TDataSetProvider;
    PageControl1: TPageControl;
    tab_produto: TTabSheet;
    DBGrid1: TDBGrid;
    Label10: TLabel;
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
    SB1: TSpeedButton;
    SB3: TSpeedButton;
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
    Label18: TLabel;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    ppDados: TppBDEPipeline;
    ppembal: TppBDEPipeline;
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
    ppSummaryBand2: TppSummaryBand;
    ppTitleBand4: TppTitleBand;
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
    ppLine11: TppLine;
    ppParameterList1: TppParameterList;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    Panel3: TPanel;
    lblMedia: TLabel;
    raCodeModule5: TraCodeModule;
    dspCNF: TDataSetProvider;
    cdsCNF: TClientDataSet;
    dsCNF: TDataSource;
    cdsCNFQTDE: TBCDField;
    cdsCNFPESOLIQ: TBCDField;
    cdsCNFUNIT: TBCDField;
    cdsCNFVALOR: TBCDField;
    cdsCNFDOC: TStringField;
    cdsCNFREGISTRO: TIntegerField;
    cdsCNFLANCIT: TIntegerField;
    cdsCNFDATA: TSQLTimeStampField;
    cdsCNFDESCRICAO: TStringField;
    ppNFC: TppDBPipeline;
    ppSubReport2: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel38: TppLabel;
    ppLine13: TppLine;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine14: TppLine;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    cdsCNFPESOKG: TBCDField;
    dsDadosRel: TDataSource;
    dsItemRel: TDataSource;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox8: TGroupBox;
    Tab_Embal: TTabSheet;
    DBEdit2: TDBEdit;
    DBGrid2: TDBGrid;
    cdsembalREGISTRO: TIntegerField;
    cdsembalLANCIT: TIntegerField;
    cdsembalPRODCOD: TIntegerField;
    cdsembalUNID: TStringField;
    cdsembalPESO: TBCDField;
    cdsembalCALIBRE: TIntegerField;
    cdsembalQTDE: TBCDField;
    cdsembalQTDEKG: TBCDField;
    cdsembalVLRMEDIA: TBCDField;
    cdsembalVLRMEDIAKG: TBCDField;
    cdsembalVLRTOTAL: TBCDField;
    cdsembalVLRTOTALKG: TBCDField;
    cdsembalPREEMBAL: TBCDField;
    cdsembalVLREMBAL: TBCDField;
    cdsembalPREOPER: TBCDField;
    cdsembalVLROPER: TBCDField;
    cdsembalPERCOMIS: TBCDField;
    cdsembalVLRCOMIS: TBCDField;
    cdsembalPERMULTA: TBCDField;
    cdsembalVLRMULTA: TBCDField;
    cdsembalVLRLIQUIDO: TBCDField;
    cdsembalPRELIQUIDO: TBCDField;
    cdsembalPRODDES: TStringField;
    cdsembalVLRCAIXA: TBCDField;
    DBGrid3: TDBGrid;
    SB4: TSpeedButton;
    PopupMenu4: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppLine1: TppLine;
    ppLabel20: TppLabel;
    ppLine2: TppLine;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppLabel23: TppLabel;
    ppVariable2: TppVariable;
    ppLabel24: TppLabel;
    ppVariable4: TppVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    raCodeModule1: TraCodeModule;
    GroupBox6: TGroupBox;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    sbIndustria: TSpeedButton;
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
    sqlDadosLOTEORIGEM: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosLOTEORIGEM: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsembalREGLOG: TStringField;
    cdsembalREG_ID: TIntegerField;
    cdsitemREGLOG: TStringField;
    cdsitemREG_ID: TIntegerField;
    cdsCNFREGLOG: TStringField;
    cdsCNFREG_ID: TIntegerField;
    sqlembal: TFDQuery;
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
    sqlCNF: TFDQuery;
    sqlCNFLANCIT: TIntegerField;
    sqlCNFREGISTRO: TIntegerField;
    sqlCNFDATA: TSQLTimeStampField;
    sqlCNFDESCRICAO: TStringField;
    sqlCNFQTDE: TBCDField;
    sqlCNFPESOLIQ: TBCDField;
    sqlCNFUNIT: TBCDField;
    sqlCNFVALOR: TBCDField;
    sqlCNFDOC: TStringField;
    sqlCNFPESOKG: TBCDField;
    sqlCNFREGLOG: TStringField;
    sqlCNFREG_ID: TIntegerField;
    sqlembalLANCIT: TIntegerField;
    sqlembalREGISTRO: TIntegerField;
    sqlembalPRODCOD: TIntegerField;
    sqlembalUNID: TStringField;
    sqlembalPESO: TBCDField;
    sqlembalCALIBRE: TIntegerField;
    sqlembalQTDE: TBCDField;
    sqlembalQTDEKG: TBCDField;
    sqlembalVLRMEDIA: TBCDField;
    sqlembalVLRMEDIAKG: TBCDField;
    sqlembalVLRTOTAL: TBCDField;
    sqlembalVLRTOTALKG: TBCDField;
    sqlembalPREEMBAL: TBCDField;
    sqlembalVLREMBAL: TBCDField;
    sqlembalPREOPER: TBCDField;
    sqlembalVLROPER: TBCDField;
    sqlembalPERCOMIS: TBCDField;
    sqlembalVLRCOMIS: TBCDField;
    sqlembalPERMULTA: TBCDField;
    sqlembalVLRMULTA: TBCDField;
    sqlembalVLRLIQUIDO: TBCDField;
    sqlembalPRELIQUIDO: TBCDField;
    sqlembalPRODDES: TStringField;
    sqlembalVLRCAIXA: TBCDField;
    sqlembalREGLOG: TStringField;
    sqlembalREG_ID: TIntegerField;
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
    procedure sbPeriodoClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure sbIndustriaClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure SB4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private
    { Private declarations }
    procedure fMostraDetalhe;
    procedure fTotalizador;
    procedure fTotalCNF;
  public
    { Public declarations }
    vNFC: Integer;
  end;

var
  FfrmFechaEmbalagem: TFfrmFechaEmbalagem;

implementation

{$R *.dfm}
uses Menu, Data, Rotina;

procedure TFfrmFechaEmbalagem.FormCreate(Sender: TObject);
begin
  inherited;
//  dtInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy',date));
//  dtFinal.Date   := StrToDate('31/12/'+FormatDateTime('yyyy',date));
  pcItem.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmFechaEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmFechaEmbalagem.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsDados.Edit;
  cdsDadosTotalFunRural.AsFloat := frDeci(cdsDadosTotalMedia.asFloat * cdsDadosPerFunRural.AsFloat / 100,2);
end;

procedure TFfrmFechaEmbalagem.DBEdit1Exit(Sender: TObject);
var vlotdes: String;
    vbins: Double;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (vkey <> 13) then Exit;

  vlotdes := Trim(cdsDadosVariedes.AsString);
  if (vlotdes = '') then
  begin
    ShowMessage('Obrigatótio informar lote!');
    dbEdit1.SetFocus;
    Exit;
  end;
  if (Copy(vlotdes, length(vlotdes), 1) = ',') then
    vlotdes := Copy(vlotdes, 1, length(vlotdes) - 1);

  if (Pos(',',vlotdes) > 0) then
    vlotdes := '(ro.lanc in ('+vlotdes+'))'
  else
    vlotdes := '(ro.lanc = 0'+vlotdes+')';

  fSql(1,5,['select ro.lanc, ro.lote, pr.prodcod, pr.proddes, pr.qtdebin',
            '  from roman ro, romanpro pr',
            ' where (ro.lanc = pr.lanc)',
            '   and '  + vlotdes,
            'order by ro.lote'], 5);
  cdsDadosProdCod.AsInteger := dm.qrSql5.FieldByName('prodcod').asInteger;
  cdsDadosProdDes.AsString := dm.qrSql5.FieldByName('proddes').asString;

  //Total dos bins
  vbins := 0;
  dm.qrSql5.First;
  while not dm.qrSql5.Eof do
  begin
    vbins := vbins + dm.qrSql5.FieldByName('qtdebin').asFloat;
    dm.qrSql5.Next;
  end;
  dm.qrSql5.First;
  cdsDadosTOTALBINS.asFloat := vbins;
end;

procedure TFfrmFechaEmbalagem.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsItem.Edit;
  Case DBGrid1.SelectedIndex of
    4: begin
         cdsItemqtdeKg.asFloat := frDeci(cdsItemqtde.asFloat * cdsItemPeso.asFloat,3);
       end;
    6: begin
         if (cdsItemPeso.asFloat > 0) and (cdsItemVlrCaixa.asFloat > 0) then
           cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrCaixa.asFloat / cdsItemPeso.asFloat,2);
       end;
    7: begin
         cdsItemVlrTotal.asFloat   := frDeci(cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat,2);
         if (cdsItemQtdeKG.asFloat > 0) then
           cdsItemVlrMediaKG.asFloat := frDeci(cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat,3);
         cdsItemVlrTotalKG.asFloat := frDeci(cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat,3);

         if (cdsItemVlrCaixa.asFloat <= 0) then
           cdsItemVlrCaixa.asFloat  := cdsItemVlrMedia.asFloat * cdsItemPeso.asFloat;
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

  cdsItemVlrLiquido.asFloat := frDeci(cdsItemPreLiquido.asFloat * cdsItemQtdeKG.asFloat,2);

  cdsItem.Post;
  if DBGrid1.SelectedIndex > 7 then
    fTotalizador;
end;

procedure TFfrmFechaEmbalagem.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsItem.Edit;
  DBGrid1.SelectedIndex:=4;
end;

procedure TFfrmFechaEmbalagem.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmFechaEmbalagem.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>8 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=4;
  end;
end;

procedure TFfrmFechaEmbalagem.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsEmbal.Edit;
  Case DBGrid2.SelectedIndex of
    3: begin
         cdsEmbalQtdeKg.asFloat     := frDeci(cdsEmbalQtde.asFloat * cdsEmbalPeso.asFloat,3);
         cdsEmbalVlrTotal.asFloat   := frDeci(cdsEmbalVlrCaixa.asFloat * cdsEmbalQtdeKG.asFloat,2);
         cdsEmbalVlrLiquido.asFloat := cdsEmbalVlrTotal.asFloat;
    end;
    4: begin
         cdsEmbal.Post;
         cdsEmbal.Next;
       end;
  End;
end;

procedure TFfrmFechaEmbalagem.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid2.ReadOnly := cdsDados.State = dsBrowse;
  cdsEmbal.Edit;
  DBGrid2.SelectedIndex:=2;
end;

procedure TFfrmFechaEmbalagem.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmFechaEmbalagem.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>4 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=2;
  end;
end;

procedure TFfrmFechaEmbalagem.DBGrid3ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsCNF.Edit;
  Case DBGrid3.SelectedIndex of
    0: begin
         if Copy(cdsCNFLancit.Text,1,2)='99' then begin
           cdscnf.Delete;
           fTotalCnf;
           DBEdit16.SetFocus;
           Exit;
         end;
         cdsCnfRegistro.asInteger := cdsCnfRegistro.AsInteger;
       end;
    2: begin
         cdscnfValor.asFloat := cdscnfQtde.asFloat * cdscnfUnit.asFloat;
         cdsCnf.Post;
         fTotalCnf;
         DBGrid3.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmFechaEmbalagem.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid3.ReadOnly := cdsDados.State = dsBrowse;
  cdsCnf.Edit;
  DBGrid3.SelectedIndex:=0;
end;

procedure TFfrmFechaEmbalagem.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmFechaEmbalagem.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid3.SelectedIndex<>3 then DBGrid3.SelectedIndex:=DBGrid3.SelectedIndex+1
     else DBGrid3.SelectedIndex:=0;
  end;
end;

procedure TFfrmFechaEmbalagem.Excluir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsItem.delete;
end;

procedure TFfrmFechaEmbalagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmFechaEmbalagem);
end;

procedure TFfrmFechaEmbalagem.sbImprimirClick(Sender: TObject);
begin
  pcItem.ActivePageIndex := 1;

  inherited;
  //Analitico
  dsDadosRel.DataSet := cdsDados;
  dsItemRel.DataSet  := cdsItem;
  fMostraDetalhe;

  ppLabel51.Caption := 'Fechamento Terceirizado';
  ppRelFecha.DeviceType := 'Screen';
  ppRelFecha.Print;

  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmFechaEmbalagem.sbIncluirClick(Sender: TObject);
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
           cdsDados.Append;
           cdsDadosRegistro.AsInteger := frGenerator('FECHA_CLASSIF','REGISTRO',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('FECHA_CLASSIF');
           cdsDadosNumero.AsInteger   := 0;
           cdsDadosIndusOpcao.asString:= 'T';
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
           cdsDadosData.AsDateTime           := Date;
           cdsDadosDTLoteIni.AsDateTime      := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTLoteFim.AsDateTime      := Date;
           cdsDadosDTFinanIni.AsDateTime     := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTFinanFim.AsDateTime     := Date;
           cdsDadosDTPrecoIni.AsDateTime     := StrToDate('01/01/'+FormatDateTime('yyyy', date));
           cdsDadosDTPrecoFim.AsDateTime     := Date;

           fMostraDetalhe;
           DBEDIT3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEDIT3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From FECHA_CLASSIF_ITEM   Where Registro=0'+cdsDadosRegistro.asString],1);
           fSql(1,2,['Delete From FECHA_CLASSIF_CNF    Where Registro=0'+cdsDadosRegistro.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             if cdsDadosNumero.AsInteger = 0 then cdsDadosNumero.AsInteger   := frGenerator('GERAL','FC_NUM_T',1);
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
               cdsItemLancit.asInteger  := StrToInt(cdsDadosRegistro.AsString+'9991');
               cdsItemREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ITEM');
               cdsItem.Post;
             end;
             //Não pode ficar em branco
             if cdsCnf.RecordCount = 0 then
             begin
               cdsCnf.Append;
               cdsCnfRegistro.asInteger:= cdsDadosRegistro.AsInteger;
               cdsCnfLancit.asInteger  := 1;
               cdsCnfREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_CNF');
               cdsCnf.Post;
             end;

             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsItem.ApplyUpdates(-1);
             cdsEmbal.ApplyUpdates(-1);
             cdsCNF.ApplyUpdates(-1);

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

procedure TFfrmFechaEmbalagem.sbIndustriaClick(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  DBEDIT3.SetFocus;
  Application.ProcessMessages;

  if cdsItem.Locate('ProdCod', 9980000, []) then
    cdsItem.Delete;

  if (cdsDadosIndusqtde.AsFloat > 0) then
  begin
    fTotalizador;
    if ((cdsDadosIndusqtde.AsFloat * cdsDadosTotalBins.AsFloat) > cdsDadosTotalkgbru.AsFloat) then
    begin
      cdsItem.Append;
      cdsItemREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ITEM');
      cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
      cdsItemLancit.asInteger  := StrToInt(cdsDadosRegistro.AsString+'0998');
      cdsItemProdCod.asInteger := 9980000;
      cdsItemCalibre.asInteger := 000;
      cdsItemUnid.asString    := 'cx';
      cdsItemPeso.asFloat     := 18;
      cdsItemProdDes.asString := 'INDUSTRIA';
      cdsItemQtdeKG.asFloat    := frDeci((cdsDadosIndusqtde.AsFloat * cdsDadosTotalBins.AsFloat) - cdsDadosTotalkgbru.AsFloat,3);
      cdsItemQtde.asFloat      := frDeci(cdsItemQtdeKG.asFloat / 18,3);
      cdsItemVlrMedia.asFloat  := 0;
      cdsItemVlrCaixa.asFloat  := 0;
      cdsItemVlrTotal.asFloat  := 0;
      cdsItemPreEmbal.asFloat  := 0;
      cdsItemPreOper.asFloat   := 0;
      cdsItemPerComis.asFloat  := 0;
      cdsItemVlrLiquido.asFloat := 0;
      cdsItemPreLiquido.asFloat := 0;
      cdsItem.Post;
    end;
  end;
  fTotalizador;
end;

procedure TFfrmFechaEmbalagem.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Filter := '';
  cdsDados.Filtered := False;
  cdsDados.Close;
  sqlDados.SQL.Clear;
  sqlDados.SQL.Add('select * from fecha_classif');
  sqlDados.SQL.Add('where indusopcao = ''T''');
  sqlDados.SQL.Add('  and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  sqlDados.SQL.Add('order by numero');
  cdsDados.Open;
  cdsDados.Last;
  fMostraDetalhe;
end;

procedure TFfrmFechaEmbalagem.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    if cdsDados.IsEmpty then exit;
    fMostraDetalhe;
  end;
end;

procedure TFfrmFechaEmbalagem.SB1Click(Sender: TObject);
var vlotdes: String; vlanc: Integer;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  cdsitem.First;
  while not cdsitem.Eof do
    cdsitem.Delete;

  vlotdes := Trim(cdsDadosVariedes.AsString);
  if (vlotdes = '') then
  begin
    ShowMessage('Obrigatótio informar lote!');
    dbEdit1.SetFocus;
    Exit;
  end;

  if (Copy(vlotdes, length(vlotdes), 1) = ',') then
    vlotdes := Copy(vlotdes, 1, length(vlotdes) - 1);

  if (Pos(',',vlotdes) > 0) then
    vlotdes := '(pp.integra in ('+vlotdes+'))'
  else
    vlotdes := '(pp.integra = 0'+vlotdes+')';

  //Item
  fSql(1,1,['select co.prodcod, co.calibre, sum(co.qtdeent) as qtde, sum(co.pesoreal) as peso, avg(co.preco) as preco',
            '  from classif pp, classifm co',
            ' where (pp.lanc = co.lanc) and (co.prodcod > 0)',
            '   and '  + vlotdes,
//            '   and (pp.codigo = 0' +cdsDadosProdCod.asString+ ')',
            ' group by co.prodcod, co.calibre',
            ' order by SubString(co.prodcod from 3 for 5), co.calibre'], 6);
  vlanc := StrToInt(cdsDadosRegistro.AsString+'0000');
  fBar(0,dm.qrSql1.RecordCount,'Aguarde importando itens...');
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin
    fBar(1,1,'');
    //Verifica se pode incluir industria
    if not cdsItem.Locate('ProdCod', dm.qrSql1.FieldByName('ProdCod').asInteger, []) then
    begin
      vlanc := vlanc +1;
      cdsItem.Append;
      cdsItemREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ITEM');
      cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
      cdsItemLancit.asInteger  := vlanc;
      cdsItemProdCod.asInteger := dm.qrSql1.FieldByName('ProdCod').asInteger;
      cdsItemCalibre.asInteger := dm.qrSql1.FieldByName('Calibre').asInteger;
      fSql(1,3,['select unidade, categdes, pesoliq, variedes from cadprodu where codigo = 0' +cdsItemProdCod.asString],1);
      if not dm.qrSql3.Eof then
      begin
        cdsItemUnid.asString    := dm.qrSql3.FieldByName('Unidade').asString;
        cdsItemPeso.asFloat     := dm.qrSql3.FieldByName('pesoliq').asFloat;
        cdsItemProdDes.asString := dm.qrSql3.FieldByName('Variedes').asString+' '+dm.qrSql3.FieldByName('Categdes').asString;
      end;
    end
    else
      cdsItem.Edit;

    cdsItemQtde.asFloat      := cdsItemQtde.asFloat + frDeci(dm.qrSql1.FieldByName('Qtde').asFloat,0);
    cdsItemQtdeKG.asFloat    := cdsItemQtde.asFloat * cdsItemPeso.asFloat;
    if cdsItemPeso.asFloat > 0  then
    begin
      cdsItemVlrMedia.asFloat  := frDeci(dm.qrSql1.FieldByName('Preco').asFloat / cdsItemPeso.asFloat,2);
      cdsItemVlrCaixa.asFloat  := frDeci(dm.qrSql1.FieldByName('Preco').asFloat,2);
    end
    else begin
      cdsItemVlrMedia.asFloat  := 0;
      cdsItemVlrCaixa.asFloat  := 0;
    end;
    cdsItemVlrTotal.asFloat  := frDeci(cdsItemQtdeKG.asFloat * cdsItemVlrMedia.asFloat,2);
    cdsItemPreEmbal.asFloat  := 0;
    cdsItemPreOper.asFloat  := 0;
    cdsItemPerComis.asFloat := 0;

    if (cdsItemQtdeKG.asFloat > 0) then
    begin
      cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                                 - cdsItemVlrEmbal.asFloat
                                 - cdsItemVlrOper.asFloat
                                 - cdsItemVlrComis.asFloat;
      if (cdsItemQtdeKG.asFloat > 0) then
        cdsItemPreLiquido.asFloat := frDeci(cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat,2)
      else
        cdsItemPreLiquido.asFloat := 0;

      cdsItemVlrLiquido.asFloat := frDeci(cdsItemPreLiquido.asFloat * cdsItemQtdeKG.asFloat,2);
    end;

    cdsItem.Post;
    dm.qrSql1.Next;
  end;
  fTotalizador;
  fBar(2,1,'');
  cdsItem.First;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFfrmFechaEmbalagem.SB3Click(Sender: TObject);
var vdat,vtes: String; vlanc: Integer;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  cdsEmbal.Last;
  vlanc := cdsEmbalLancit.asInteger;
  cdsEmbal.First;
  while not cdsEmbal.Eof do
    cdsEmbal.Delete;

  if (vlanc < StrToInt(cdsDadosRegistro.AsString+'9000')) then
    vlanc := StrToInt(cdsDadosRegistro.AsString+'9000');
  fBar(0,cdsitem.RecordCount,'Aguarde importando mercadoria...');

  cdsitem.First;
  while not cdsitem.Eof do
  begin
    fSql(1,1,['select codigo, descricao, unidade, qtde',
              '  from cadprobx',
              ' where lanc = 0'+cdsitemprodcod.AsString,
              ' order by codigo'], 4);
    dm.qrSql1.First;
    while not dm.qrSql1.Eof do
    begin
      fBar(1,1,'');
      if not cdsEmbal.Locate('ProdCod', dm.qrSql1.FieldByName('Codigo').asInteger, []) then
      begin
        vlanc := vlanc +1;
        cdsEmbal.Append;
        cdsEmbalREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_ITEM');
        cdsEmbalRegistro.asInteger:= cdsDadosRegistro.AsInteger;
        cdsEmbalLancit.asInteger  := vlanc;
        cdsEmbalProdCod.asInteger := dm.qrSql1.FieldByName('Codigo').asInteger;
        cdsEmbalProdDes.asString  := dm.qrSql1.FieldByName('Descricao').asString;
        cdsEmbalUnid.asString     := dm.qrSql1.FieldByName('Unidade').asString;
      end
      else
        cdsEmbal.Edit;

      cdsEmbalQtde.asFloat      := cdsEmbalQtde.asFloat + cdsItemQtde.asFloat;
      cdsEmbalQtdeKG.asFloat    := cdsEmbalQtdeKG.asFloat + (frDeci(dm.qrSql1.FieldByName('Qtde').asFloat * cdsItemQtde.asFloat,3));
      if cdsEmbalQtde.asFloat > 0 then
        cdsEmbalPeso.asFloat    := frDeci(cdsEmbalQtdeKG.asFloat / cdsEmbalQtde.asFloat,3);
      cdsEmbalVlrMedia.asFloat  := 0;
      cdsEmbalVlrCaixa.asFloat  := 0;
      cdsEmbalVlrTotal.asFloat  := 0;
      cdsEmbal.Post;
      dm.qrSql1.Next;
    end;
    cdsitem.Next;
  end;

  cdsitem.First;
  fBar(2,1,'');
  PageControl1.ActivePageIndex := 1;
end;

procedure TFfrmFechaEmbalagem.SB4Click(Sender: TObject);
var vdat,vnota: String;
    vlanc: Integer;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  cdscnf.First;
  while not cdscnf.Eof do
    cdscnf.Delete;

  fBar(0,cdsembal.RecordCount,'Aguarde calculando agrupadores...');
//COMISSÃO
  vlanc := StrToInt(cdsDadosRegistro.AsString+'8000');
  vlanc := vlanc +1;
  cdscnf.Append;
  cdsCnfREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_CNF');
  cdscnfRegistro.asInteger := cdsDadosRegistro.AsInteger;
  cdscnfLancit.asInteger   := vlanc;
  cdscnfData.AsDateTime    := cdsDadosData.AsDateTime;
  cdscnfDescricao.asString := 'COMISSÃO';
  cdscnfPesoLiq.asFloat    := 0;
  cdscnfQtde.asFloat       := 0;
  cdscnfValor.asFloat      := 0;
  cdscnfUnit.asFloat       := frDeci(cdsDadosTotalMedia.AsFloat / 100,4);
  cdscnf.Post;

  //Emabalgens
  cdsembal.First;
  while not cdsembal.Eof do
  begin
    fBar(1,1,'');
    fSql(1,1,['select Agrupador, compra',
              '  from cadmerca',
              ' where codigo = 0'+cdsembalprodcod.AsString,
              ' order by codigo'], 4);
    dm.qrSql1.First;
    if not cdscnf.Locate('Descricao', dm.qrSql1.FieldByName('Agrupador').asString, []) then
    begin
      vlanc := vlanc + 1;
      cdscnf.Append;
      cdsCnfREG_ID.AsInteger   := frGeneratorFB('FECHA_CLASSIF_CNF');
      cdscnfRegistro.asInteger := cdsDadosRegistro.AsInteger;
      cdscnfLancit.asInteger   := vlanc;
      cdscnfDescricao.asString := dm.qrSql1.FieldByName('Agrupador').asString;
      cdscnfData.AsDateTime    := cdsDadosData.AsDateTime;
    end
    else
      cdscnf.Edit;

    cdscnfQtde.asFloat   := cdscnfQtde.asFloat + cdsembalqtdekg.asFloat;
    cdscnfValor.asFloat  := cdscnfValor.asFloat + (cdsembalqtdekg.asFloat * dm.qrSql1.FieldByName('Compra').asFloat);
    if (cdscnfQtde.asFloat > 0) then
      cdscnfUnit.asFloat := frDeci(cdscnfValor.asFloat / cdscnfQtde.asFloat,3)
    else
      cdscnfUnit.asFloat   := 0;
    cdscnf.Post;

    cdsembal.Next;
  end;

  fTotalCNF;
  fBar(2,1,'');
  PageControl1.ActivePageIndex := 2;

end;

procedure TFfrmFechaEmbalagem.fMostraDetalhe;
begin
  //Produtos
  cdsitem.close;
  sqlitem.SQL.Clear;
  sqlitem.SQL.Add('select * from fecha_classif_item');
  sqlitem.SQL.Add('where ProdCod > 999999 and registro = 0'+cdsDadosRegistro.asString);
  sqlitem.SQL.Add('order by lancit');
  cdsitem.Open;
  //Produtos
  cdsembal.close;
  sqlembal.SQL.Clear;
  sqlembal.SQL.Add('select * from fecha_classif_item');
  sqlembal.SQL.Add('where ProdCod < 999999 and registro = 0'+cdsDadosRegistro.asString);
  sqlembal.SQL.Add('order by lancit');
  cdsembal.Open;
  //Financeiro
  cdscnf.close;
  sqlcnf.SQL.Clear;
  sqlcnf.SQL.Add('select * from fecha_classif_cnf');
  sqlcnf.SQL.Add('where registro = 0'+cdsDadosRegistro.asString);
  sqlcnf.SQL.Add('order by lancit');
  cdscnf.Open;

  if cdsDadosTOTALBINS.asFloat <> 0 then
    lblMedia.Caption := FormatFloat('#0', cdsDadosTOTALKGBRU.asFloat / cdsDadosTOTALBINS.asFloat)
  else
    lblMedia.Caption := '';

end;

procedure TFfrmFechaEmbalagem.fTotalCNF;
var vreg: Integer; vdeb: Double;
begin
  vreg := cdscnfLancit.asInteger;
  cdscnf.DisableControls;
  vdeb := 0;
  cdscnf.First;
  while not cdscnf.Eof do
  begin
    vdeb := vdeb + cdscnfValor.asFloat;
    cdscnf.Next;
  end;
  cdscnf.EnableControls;
  cdsDados.Edit;
  cdsDadosTOTALDEBITO.asFloat   := vdeb;
  cdsDadosTOTALARECEBER.asFloat := cdsDadosTotalMedia.asFloat -
                                   cdsDadosTotalDebito.AsFloat;
  cdscnf.Locate('Lancit', vreg, []);
  cdscnf.Next;
end;

procedure TFfrmFechaEmbalagem.fTotalizador;
var vreg: Integer;
    vcx, vkg, vemb, voper, vcom, vmed, vliq, vbins: Double;
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
  cdsitem.First;
  while not cdsitem.Eof do
  begin
    //Recalcula
    cdsitem.Edit;
    vcx  := vcx   + cdsItemQtde.asFloat;
    vkg  := vkg   + cdsItemQtdeKG.asFloat;

    cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrMedia.asFloat,2);
    cdsItemVlrTotal.asFloat := frDeci((cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat),2);
    if (cdsItemQtdeKG.asFloat > 0) then
       cdsItemVlrMediaKG.asFloat := frDeci((cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat),3);

    cdsItemVlrTotalKG.asFloat := frDeci((cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat),3);

    cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                               - cdsItemVlrEmbal.asFloat
                               - cdsItemVlrOper.asFloat
                               - cdsItemVlrComis.asFloat;
    if (cdsItemQtdeKG.asFloat > 0) then
      cdsItemPreLiquido.asFloat := frDeci((cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat),2)
    else
      cdsItemPreLiquido.asFloat := 0;

    cdsItemVlrLiquido.asFloat := frDeci(cdsItemPreLiquido.asFloat * cdsItemQtdeKG.asFloat,2);

    cdsitem.Post;

    vmed := vmed  + cdsItemVlrTotal.asFloat;
    vliq := vliq  + cdsItemVlrLiquido.asFloat;
    cdsitem.Next;
  end;
  cdsitem.EnableControls;
  cdsDados.Edit;
  cdsDadosTOTALCX.asFloat    := vcx;
  cdsDadosTOTALKGBRU.asFloat := vkg;
  cdsDadosTOTALMEDIA.asFloat := vmed;
  cdsDadosSUBTOTAL.asFloat   := vliq - cdsDadosTOTALMULTA.asFloat;

  if cdsDadosTOTALBINS.asFloat <> 0 then
    lblMedia.Caption := FormatFloat('#0', cdsDadosTOTALKGBRU.asFloat / cdsDadosTOTALBINS.asFloat)
  else
    lblMedia.Caption := '';

  cdsItem.Locate('Lancit', vreg, []);
  cdsitem.Next;
end;

procedure TFfrmFechaEmbalagem.Inserir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsItem.Cancel;
end;

procedure TFfrmFechaEmbalagem.MenuItem1Click(Sender: TObject);
var vlanc: Integer;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsCNF.Last;
  vlanc := cdscnfLancit.asInteger + 100;
  cdscnf.Append;
  cdsCnfREG_ID.AsInteger  := frGeneratorFB('FECHA_CLASSIF_CNF');
  cdscnfRegistro.asInteger := cdsDadosRegistro.AsInteger;
  cdscnfLancit.asInteger   := vlanc;
  cdscnfData.AsDateTime    := cdsDadosData.AsDateTime;
  cdscnfDescricao.asString := '';
  cdscnfPesoLiq.asFloat    := 0;
  cdscnfQtde.asFloat       := 0;
  cdscnfValor.asFloat      := 0;
  cdscnfUnit.asFloat       := 0;
  cdscnf.Post;
end;

procedure TFfrmFechaEmbalagem.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsCNF.delete;
end;

procedure TFfrmFechaEmbalagem.MenuItem3Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsEmbal.Cancel;
end;

procedure TFfrmFechaEmbalagem.MenuItem4Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsEmbal.delete;
end;

end.

