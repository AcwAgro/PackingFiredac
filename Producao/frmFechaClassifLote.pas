unit frmFechaClassifLote;

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
  cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmFechaCassifLote = class(TFModelo)
    dsitem: TDataSource;
    cdsitem: TClientDataSet;
    dspitem: TDataSetProvider;
    sqlitem: TQuery;
    dsorigem: TDataSource;
    cdsorigem: TClientDataSet;
    dsporigem: TDataSetProvider;
    sqlorigem: TQuery;
    PageControl1: TPageControl;
    tab_produto: TTabSheet;
    tab_Classi: TTabSheet;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
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
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Tab_finan: TTabSheet;
    gbProdutor: TGroupBox;
    GroupBox3: TGroupBox;
    dtpClaIni: TDateTimePicker;
    dtpClafim: TDateTimePicker;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    dtpFinini: TDateTimePicker;
    dtpFinFim: TDateTimePicker;
    GroupBox8: TGroupBox;
    dtpDate: TDateTimePicker;
    sqlfinan: TQuery;
    dspfinan: TDataSetProvider;
    cdsfinan: TClientDataSet;
    dsfinan: TDataSource;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosDATA: TDateTimeField;
    sqlDadosDTLOTEINI: TDateTimeField;
    sqlDadosDTLOTEFIM: TDateTimeField;
    sqlDadosDTPRECOINI: TDateTimeField;
    sqlDadosDTPRECOFIM: TDateTimeField;
    sqlDadosDTFINANINI: TDateTimeField;
    sqlDadosDTFINANFIM: TDateTimeField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosINDUSOPCAO: TStringField;
    sqlDadosINDUSQTDE: TFloatField;
    sqlDadosINDUSPER: TFloatField;
    sqlDadosINDUSMUL: TFloatField;
    sqlDadosINDUSTOL: TFloatField;
    sqlDadosSACOLOPCAO: TStringField;
    sqlDadosSACOLQTDE: TFloatField;
    sqlDadosSACOLPER: TFloatField;
    sqlDadosSACOLMUL: TFloatField;
    sqlDadosSACOLTOL: TFloatField;
    sqlDadosTOTALBINS: TFloatField;
    sqlDadosTOTALCX: TFloatField;
    sqlDadosTOTALKGBRU: TFloatField;
    sqlDadosTOTALKGLIQ: TFloatField;
    sqlDadosTOTALMEDIA: TFloatField;
    sqlDadosTOTALEMBAL: TFloatField;
    sqlDadosTOTALOPER: TFloatField;
    sqlDadosTOTALCOMIS: TFloatField;
    sqlDadosSUBTOTAL: TFloatField;
    sqlDadosPERFUNRURAL: TFloatField;
    sqlDadosTOTALFUNRURAL: TFloatField;
    sqlDadosTOTALMULTA: TFloatField;
    sqlDadosTOTALLIQUIDO: TFloatField;
    sqlDadosTOTALDEBITO: TFloatField;
    sqlDadosTOTALCREDITO: TFloatField;
    sqlDadosTOTALARECEBER: TFloatField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosDATA: TDateTimeField;
    cdsDadosDTLOTEINI: TDateTimeField;
    cdsDadosDTLOTEFIM: TDateTimeField;
    cdsDadosDTPRECOINI: TDateTimeField;
    cdsDadosDTPRECOFIM: TDateTimeField;
    cdsDadosDTFINANINI: TDateTimeField;
    cdsDadosDTFINANFIM: TDateTimeField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosINDUSOPCAO: TStringField;
    cdsDadosINDUSQTDE: TFloatField;
    cdsDadosINDUSPER: TFloatField;
    cdsDadosINDUSMUL: TFloatField;
    cdsDadosINDUSTOL: TFloatField;
    cdsDadosSACOLOPCAO: TStringField;
    cdsDadosSACOLQTDE: TFloatField;
    cdsDadosSACOLPER: TFloatField;
    cdsDadosSACOLMUL: TFloatField;
    cdsDadosSACOLTOL: TFloatField;
    cdsDadosTOTALBINS: TFloatField;
    cdsDadosTOTALCX: TFloatField;
    cdsDadosTOTALKGBRU: TFloatField;
    cdsDadosTOTALKGLIQ: TFloatField;
    cdsDadosTOTALMEDIA: TFloatField;
    cdsDadosTOTALEMBAL: TFloatField;
    cdsDadosTOTALOPER: TFloatField;
    cdsDadosTOTALCOMIS: TFloatField;
    cdsDadosSUBTOTAL: TFloatField;
    cdsDadosPERFUNRURAL: TFloatField;
    cdsDadosTOTALFUNRURAL: TFloatField;
    cdsDadosTOTALMULTA: TFloatField;
    cdsDadosTOTALLIQUIDO: TFloatField;
    cdsDadosTOTALDEBITO: TFloatField;
    cdsDadosTOTALCREDITO: TFloatField;
    cdsDadosTOTALARECEBER: TFloatField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlorigemREGISTRO: TIntegerField;
    sqlorigemLANCIT: TIntegerField;
    sqlorigemLOTE: TIntegerField;
    sqlorigemDATA: TDateTimeField;
    sqlorigemQTDE: TFloatField;
    cdsorigemREGISTRO: TIntegerField;
    cdsorigemLANCIT: TIntegerField;
    cdsorigemLOTE: TIntegerField;
    cdsorigemDATA: TDateTimeField;
    cdsorigemQTDE: TFloatField;
    sqlitemREGISTRO: TIntegerField;
    sqlitemLANCIT: TIntegerField;
    sqlitemPRODCOD: TIntegerField;
    sqlitemUNID: TStringField;
    sqlitemPESO: TFloatField;
    sqlitemCALIBRE: TIntegerField;
    sqlitemQTDE: TFloatField;
    sqlitemQTDEKG: TFloatField;
    sqlitemVLRMEDIA: TFloatField;
    sqlitemVLRMEDIAKG: TFloatField;
    sqlitemVLRTOTAL: TFloatField;
    sqlitemVLRTOTALKG: TFloatField;
    sqlitemPREEMBAL: TFloatField;
    sqlitemVLREMBAL: TFloatField;
    sqlitemPREOPER: TFloatField;
    sqlitemVLROPER: TFloatField;
    sqlitemPERCOMIS: TFloatField;
    sqlitemVLRCOMIS: TFloatField;
    sqlitemPERMULTA: TFloatField;
    sqlitemVLRMULTA: TFloatField;
    sqlitemVLRLIQUIDO: TFloatField;
    sqlitemPRELIQUIDO: TFloatField;
    cdsitemREGISTRO: TIntegerField;
    cdsitemLANCIT: TIntegerField;
    cdsitemPRODCOD: TIntegerField;
    cdsitemUNID: TStringField;
    cdsitemPESO: TFloatField;
    cdsitemCALIBRE: TIntegerField;
    cdsitemQTDE: TFloatField;
    cdsitemQTDEKG: TFloatField;
    cdsitemVLRMEDIA: TFloatField;
    cdsitemVLRMEDIAKG: TFloatField;
    cdsitemVLRTOTAL: TFloatField;
    cdsitemVLRTOTALKG: TFloatField;
    cdsitemPREEMBAL: TFloatField;
    cdsitemVLREMBAL: TFloatField;
    cdsitemPREOPER: TFloatField;
    cdsitemVLROPER: TFloatField;
    cdsitemPERCOMIS: TFloatField;
    cdsitemVLRCOMIS: TFloatField;
    cdsitemPERMULTA: TFloatField;
    cdsitemVLRMULTA: TFloatField;
    cdsitemVLRLIQUIDO: TFloatField;
    cdsitemPRELIQUIDO: TFloatField;
    sqlfinanREGISTRO: TIntegerField;
    sqlfinanLANCIT: TIntegerField;
    sqlfinanDATA: TDateTimeField;
    sqlfinanDESCRICAO: TStringField;
    sqlfinanVLRDEBITO: TFloatField;
    sqlfinanVLRCREDITO: TFloatField;
    sqlfinanMANUAL: TStringField;
    cdsfinanREGISTRO: TIntegerField;
    cdsfinanLANCIT: TIntegerField;
    cdsfinanDATA: TDateTimeField;
    cdsfinanDESCRICAO: TStringField;
    cdsfinanVLRDEBITO: TFloatField;
    cdsfinanVLRCREDITO: TFloatField;
    cdsfinanMANUAL: TStringField;
    DBGrid3: TDBGrid;
    Label17: TLabel;
    Label18: TLabel;
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
    sqlitemPRODDES: TStringField;
    cdsitemPRODDES: TStringField;
    ppRelFecha: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine3: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText45: TppDBText;
    ppLabel53: TppLabel;
    ppDBText46: TppDBText;
    ppLabel54: TppLabel;
    ppDBText47: TppDBText;
    ppLabel55: TppLabel;
    ppDBText48: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine4: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppTitleBand4: TppTitleBand;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppRelFechaResumo: TppReport;
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
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine1: TppLine;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine2: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLine7: TppLine;
    ppLine10: TppLine;
    frmPesquisaProd: TfrmPesquisa;
    frmPesquisaVar: TfrmPesquisa;
    sqlitemVLRCAIXA: TFloatField;
    cdsitemVLRCAIXA: TFloatField;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    raCodeModule1: TraCodeModule;
    raCodeModule2: TraCodeModule;
    raCodeModule3: TraCodeModule;
    raCodeModule4: TraCodeModule;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppVariable5: TppVariable;
    ppLine11: TppLine;
    ppParameterList1: TppParameterList;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel59: TppLabel;
    ppDBText53: TppDBText;
    ppLabel60: TppLabel;
    ppDBText54: TppDBText;
    ppLabel61: TppLabel;
    ppDBText55: TppDBText;
    ppLabel62: TppLabel;
    ppDBText56: TppDBText;
    ppLabel63: TppLabel;
    ppDBText57: TppDBText;
    ppLabel64: TppLabel;
    ppDBText58: TppDBText;
    ppLabel65: TppLabel;
    ppDBText59: TppDBText;
    ppLabel66: TppLabel;
    ppDBText60: TppDBText;
    ppLabel67: TppLabel;
    ppDBText61: TppDBText;
    ppLabel68: TppLabel;
    ppDBText62: TppDBText;
    ppLabel69: TppLabel;
    ppDBText63: TppDBText;
    ppLabel70: TppLabel;
    ppDBText64: TppDBText;
    ppLine8: TppLine;
    ppLabel71: TppLabel;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppVariable1: TppVariable;
    ppLabel19: TppLabel;
    ppVariable3: TppVariable;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    Panel3: TPanel;
    lblMedia: TLabel;
    raCodeModule5: TraCodeModule;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel37: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppVariable6: TppVariable;
    ppVariable7: TppVariable;
    ppParameterList2: TppParameterList;
    ppNFC: TppDBPipeline;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel38: TppLabel;
    ppLine13: TppLine;
    ppLabel39: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine14: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLine15: TppLine;
    ppDBText35: TppDBText;
    ppLabel40: TppLabel;
    PopupMenu3: TPopupMenu;
    Lanamentoanaltico1: TMenuItem;
    Lanamentosinttico1: TMenuItem;
    N1: TMenuItem;
    LanamentoanalticoNFC1: TMenuItem;
    PorProdutoranaltico1: TMenuItem;
    porProdutorSinttico1: TMenuItem;
    N2: TMenuItem;
    Geralanaltico1: TMenuItem;
    Geralsinttico1: TMenuItem;
    cdsDadosRel: TClientDataSet;
    cdsItemRel: TClientDataSet;
    dsDadosRel: TDataSource;
    dsItemRel: TDataSource;
    ppLabel47: TppLabel;
    ppDBText65: TppDBText;
    ppLabel74: TppLabel;
    ppDBText66: TppDBText;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel86: TppLabel;
    ppDBText71: TppDBText;
    ppLabel87: TppLabel;
    ppDBText72: TppDBText;
    ppLabel88: TppLabel;
    ppDBText73: TppDBText;
    ppLabel89: TppLabel;
    ppDBText74: TppDBText;
    ppLabel90: TppLabel;
    ppDBText75: TppDBText;
    ppLabel91: TppLabel;
    ppDBText76: TppDBText;
    ppLabel92: TppLabel;
    ppDBText77: TppDBText;
    ppLabel93: TppLabel;
    ppDBText78: TppDBText;
    ppLine18: TppLine;
    ppLabel94: TppLabel;
    ppLine19: TppLine;
    ppLabel95: TppLabel;
    ppDBText79: TppDBText;
    ppLabel96: TppLabel;
    ppVariable8: TppVariable;
    ppLabel97: TppLabel;
    ppVariable9: TppVariable;
    raCodeModule6: TraCodeModule;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppDBText29: TppDBText;
    ppLabel20: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel36: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppVariable2: TppVariable;
    ppVariable4: TppVariable;
    ppLabel31: TppLabel;
    cdsitemvTamDes: TStringField;
    cdsItemRelvTamDes: TStringField;
    cbVarieClone: TCheckBox;
    GroupBox10: TGroupBox;
    Label29: TLabel;
    dtpPreIni: TDateTimePicker;
    dtpPreFim: TDateTimePicker;
    cdsitemvClasCod: TIntegerField;
    cdsitemvClasDes: TStringField;
    LanamentosintticoCategoria1: TMenuItem;
    ppRelFechaCategoria: TppReport;
    ppTitleBand8: TppTitleBand;
    ppLabel75: TppLabel;
    ppDBText36: TppDBText;
    ppLabel82: TppLabel;
    ppDBText39: TppDBText;
    ppLabel85: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLine5: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine6: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine16: TppLine;
    ppLabel111: TppLabel;
    ppDBText83: TppDBText;
    ppLabel112: TppLabel;
    ppDBText84: TppDBText;
    ppLabel113: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    raCodeModule7: TraCodeModule;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppLabel115: TppLabel;
    ppDBText90: TppDBText;
    ppLabel116: TppLabel;
    ppDBText91: TppDBText;
    ppLabel117: TppLabel;
    ppDBText92: TppDBText;
    ppLabel118: TppLabel;
    ppDBText93: TppDBText;
    ppLabel119: TppLabel;
    ppDBText94: TppDBText;
    ppLabel120: TppLabel;
    ppDBText95: TppDBText;
    ppLabel121: TppLabel;
    ppDBText96: TppDBText;
    ppLine17: TppLine;
    ppLabel122: TppLabel;
    ppLine20: TppLine;
    ppLabel123: TppLabel;
    ppDBText97: TppDBText;
    ppLabel124: TppLabel;
    ppVariable11: TppVariable;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    raCodeModule8: TraCodeModule;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppVariable14: TppVariable;
    raCodeModule9: TraCodeModule;
    ppParameterList3: TppParameterList;
    ppDBText82: TppDBText;
    ppVariable15: TppVariable;
    cdsItemRelvClasCod: TStringField;
    cdsItemRelvClasDes: TStringField;
    gbLote: TGroupBox;
    sbLoteclas: TSpeedButton;
    GroupBox1: TGroupBox;
    DBEdit19: TDBEdit;
    sqlDadosLOTEORIGEM: TIntegerField;
    cdsDadosLOTEORIGEM: TIntegerField;
    DBEdit20: TDBEdit;
    gbRegistro: TGroupBox;
    DBEdit14: TDBEdit;
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
    N3: TMenuItem;
    ppLabel102: TppLabel;
    ppLabel83: TppLabel;
    ppDBText40: TppDBText;
    ppLabel84: TppLabel;
    cdsDadosRelLOTEORIGEM: TIntegerField;
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
    sqlDadosREGLOG: TMemoField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TMemoField;
    cdsDadosREG_ID: TIntegerField;
    sqlorigemREGLOG: TMemoField;
    sqlorigemREG_ID: TIntegerField;
    cdsorigemREGLOG: TMemoField;
    cdsorigemREG_ID: TIntegerField;
    sqlitemREGLOG: TMemoField;
    sqlitemREG_ID: TIntegerField;
    cdsitemREGLOG: TMemoField;
    cdsitemREG_ID: TIntegerField;
    sqlfinanREGLOG: TMemoField;
    sqlfinanREG_ID: TIntegerField;
    cdsfinanREGLOG: TMemoField;
    cdsfinanREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure gbVariedadeExit(Sender: TObject);
    procedure gbProdutorExit(Sender: TObject);
    procedure CB1Exit(Sender: TObject);
    procedure ppRelFechaBeforePrint(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure Lanamentoanaltico1Click(Sender: TObject);
    procedure PorProdutoranaltico1Click(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure ppTitleBand4BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure cdsitemCalcFields(DataSet: TDataSet);
    procedure cbVarieCloneClick(Sender: TObject);
    procedure cdsitemBeforePost(DataSet: TDataSet);
    procedure sbLoteclasClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure fMostraDetalhe;
    procedure fTotalizador(vFocus:Boolean = true);
    procedure fTotalFinan;
  public
    { Public declarations }
    vNFC: Integer;
  end;

var
  FfrmFechaCassifLote: TFfrmFechaCassifLote;

implementation

{$R *.dfm}
uses Menu, Data, Rotina;

procedure TFfrmFechaCassifLote.FormCreate(Sender: TObject);
begin
  inherited;

  Tab_Finan.TabVisible := False;

//  dtInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy',date));
//  dtFinal.Date   := StrToDate('31/12/'+FormatDateTime('yyyy',date));
  pcItem.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;

  frmPesquisaVar.pInicia('ttVariedade', TForm(Sender),7,147,gbProdutor,true);
  frmPesquisaProd.pInicia('ttProdutor', TForm(Sender),7,147,gbVariedade,true);
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmFechaCassifLote.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmFechaCassifLote.CB1Exit(Sender: TObject);
begin
  inherited;
//  if (not sbSalvar.Visible) then Exit;
//  cdsDadosSacolOpcao.asString:= Copy(cb1.text,1,1);
end;

procedure TFfrmFechaCassifLote.cbVarieCloneClick(Sender: TObject);
begin
  inherited;
  dtpDate.SetFocus;
end;

procedure TFfrmFechaCassifLote.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (sbSalvar.Visible) then Exit;
  if cdsDados.IsEmpty then exit;
  if pcItem.ActivePageIndex = 1 then
  begin
    if cdsDadosData.IsNull then exit;
    frmPesquisaVar.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaProd.pRetornaDados(cdsDadosProdCod.AsString);
    dtpDate.Date   := cdsDadosData.Value;
    dtpClaIni.Date := cdsDadosDTLoteIni.Value;
    dtpClaFim.Date := cdsDadosDTLoteFim.Value;
    dtpFinIni.Date := cdsDadosDTFinanIni.Value;
    dtpFinFim.Date := cdsDadosDTFinanFim.Value;

    if (cdsDadosDTPrecoIni.Value = 0) then
    begin
      dtpPreIni.Date := cdsDadosDTLoteIni.Value;
      dtpPreFim.Date := cdsDadosDTLoteFim.Value;
    end
    else begin
      dtpPreIni.Date := cdsDadosDTPRECOIni.Value;
      dtpPreFim.Date := cdsDadosDTPRECOFim.Value;
    end;

//    cb1.ItemIndex  := StrToIntDef(cdsDadosSacolOpcao.asString,1) -1;
    fMostraDetalhe;
  end;
end;

procedure TFfrmFechaCassifLote.cdsitemBeforePost(DataSet: TDataSet);
begin

  if cdsitemPRODCOD.asInteger = 0 then
  begin
    cdsitem.Cancel;
    abort;
  end;

  inherited;

  cdsItemqtdeKg.asFloat := frDeci(cdsItemqtde.asFloat * cdsItemPeso.asFloat,3);
  if (cdsItemPeso.asFloat > 0) and (cdsItemVlrCaixa.asFloat > 0) then
    cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrCaixa.asFloat / cdsItemPeso.asFloat,2);

  cdsItemVlrTotal.asFloat   := frDeci(cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat,2);

  if (cdsItemQtdeKG.asFloat > 0) then
    cdsItemVlrMediaKG.asFloat := frDeci(cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat,3);

  cdsItemVlrTotalKG.asFloat := frDeci(cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat,3);

  if (cdsItemVlrCaixa.asFloat <= 0) then
    cdsItemVlrCaixa.asFloat  := cdsItemVlrMedia.asFloat * cdsItemPeso.asFloat;

  cdsItemVlrEmbal.asFloat := cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat;
  cdsItemVlrOper.asFloat  := cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat;
  cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat);
  cdsItemVlrComis.asFloat := frDeci((cdsItemVlrComis.asFloat * (cdsItemPerComis.asFloat / 100)),2);
  cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                             - cdsItemVlrEmbal.asFloat
                             - cdsItemVlrOper.asFloat
                             - cdsItemVlrComis.asFloat;

  if (cdsItemQtdeKG.asFloat > 0) then
    cdsItemPreLiquido.asFloat := frDeci(cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat,2)
  else
    cdsItemPreLiquido.asFloat := 0;

end;

procedure TFfrmFechaCassifLote.cdsitemCalcFields(DataSet: TDataSet);
var vcateg: String;
begin
  inherited;
  if (cdsitemvTamDes.AsString <> '') then
    exit;
  if pcItem.ActivePageIndex = 0 then
    exit;

  if (cdsItemProdCod.AsInteger > 0) then
  begin

    cdsitemvTamDes.AsString := fBus(1,['Select calibredes from cadprodu where codigo = 0'+cdsItemProdCod.AsString],1);
    if (cdsitemvTamDes.AsString = '') then
      cdsitemvTamDes.AsString := fBus(1,['Select calibre from cadprodu where codigo = 0'+cdsItemProdCod.AsString],1);
    vcateg := fBus(1,['Select categcod from cadprodu where codigo = 0'+cdsItemProdCod.AsString],1);
    cdsitemvClasCod.AsString := fBus(1,['Select variecod from cadCateg where codigo = 0'+vcateg],1);
    cdsitemvClasDes.AsString := fBus(1,['Select variedes from cadCateg where codigo = 0'+vcateg],1);
    
  end;

end;

procedure TFfrmFechaCassifLote.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  //Zanete sempre falou que é no liquido -> 14/11/2020
  cdsDados.Edit;
  cdsDadosTotalFunRural.AsFloat := frDeci(cdsDadosSubTotal.asFloat * cdsDadosPerFunRural.AsFloat / 100,2);
  //-Marcos fukishima 10/10/2020-> está errado porque a contranota é do liquido.->cdsDadosTotalFunRural.AsFloat := frDeci(cdsDadosTotalMedia.asFloat * cdsDadosPerFunRural.AsFloat / 100,2);
  fTotalFinan;
end;

procedure TFfrmFechaCassifLote.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  fTotalizador;
end;

procedure TFfrmFechaCassifLote.DBGrid1ColExit(Sender: TObject);
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
           cdsItemVlrCaixa.asFloat := frDeci(cdsItemVlrMedia.asFloat * cdsItemPeso.asFloat,2);

         cdsItemVlrTotal.asFloat   := frDeci(cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat,2);
         if (cdsItemQtdeKG.asFloat > 0) then
           cdsItemVlrMediaKG.asFloat := frDeci(cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat,3);
         cdsItemVlrTotalKG.asFloat := frDeci(cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat,3);

         if (cdsItemVlrCaixa.asFloat <= 0) then
           cdsItemVlrCaixa.asFloat  := cdsItemVlrMedia.asFloat * cdsItemPeso.asFloat;
       end;
    8: cdsItemVlrEmbal.asFloat := cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat;
   10: cdsItemVlrOper.asFloat  := cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat;
  End;
//  if (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat) > 0  then
    cdsItemVlrComis.asFloat := (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat);
//  else
//    cdsItemVlrComis.asFloat := 0;
  cdsItemVlrComis.asFloat := frDeci((cdsItemVlrComis.asFloat * (cdsItemPerComis.asFloat / 100)),2);
  cdsItemVlrLiquido.asFloat := cdsItemVlrTotal.asFloat
                             - cdsItemVlrEmbal.asFloat
                             - cdsItemVlrOper.asFloat
                             - cdsItemVlrComis.asFloat;
  if (cdsItemQtdeKG.asFloat > 0) then
    cdsItemPreLiquido.asFloat := frDeci(cdsItemVlrLiquido.asFloat / cdsItemQtdeKG.asFloat,2)
  else
    cdsItemPreLiquido.asFloat := 0;

//  cdsItemVlrLiquido.asFloat := frDeci(cdsItemPreLiquido.asFloat * cdsItemQtdeKG.asFloat,2);

  cdsItem.Post;
  if (DBGrid1.SelectedIndex > 11) then
    fTotalizador;

end;

procedure TFfrmFechaCassifLote.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsItem.Edit;
  DBGrid1.SelectedIndex:=3;
end;

procedure TFfrmFechaCassifLote.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if (sbSalvar.Visible) then
    fTotalizador(false);
end;

procedure TFfrmFechaCassifLote.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_down then
  begin
    if (sbSalvar.Visible) and (gbLote.visible) and (DBGrid1.SelectedIndex = 5) then
    begin
      DBGrid1.SelectedIndex := 6;
      fTotalizador(false);
      cdsItem.Prior;
      DBGrid1.SelectedIndex := 5;
    end;
  end;

end;

procedure TFfrmFechaCassifLote.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if key =#13 then begin
     if DBGrid1.SelectedIndex<>12 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=3;
  end;

end;

procedure TFfrmFechaCassifLote.Excluir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsItem.delete;
end;

procedure TFfrmFechaCassifLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmFechaCassifLote);
end;

procedure TFfrmFechaCassifLote.sbImprimirClick(Sender: TObject);
begin
  inherited;
  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFfrmFechaCassifLote.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.Value, 300) then
    exit;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaVar.pLimpaCampo;
           frmPesquisaProd.pLimpaCampo;
//           if cdsDados.IsEmpty then
//           begin
             dtpDate.Date   := Date;
             dtpClaIni.Date := StrToDate('01/01/'+FormatDateTime('yyyy', date));
             dtpClaFim.Date := Date;
             dtpFinIni.Date := dtpClaIni.Date;
             dtpFinFim.Date := Date;
             dtpPreIni.Date := dtpClaIni.Date;
             dtpPreFim.Date := Date;
//           end;
           cdsDados.Append;
           cdsDadosRegistro.AsInteger := frGenerator('FECHA_CLASSIF','REGISTRO',1);
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
           fMostraDetalhe;

           if gbLote.Visible then
             DBEdit20.SetFocus
           else
             frmPesquisaProd.edtPesquisa.SetFocus;

         end;
     13: begin

          cdsDados.Edit;
          dtpDate.SetFocus;

        end;
     14: begin
           if pDeleteDataSet(4,['FECHA_CLASSIF_FINAN', 'FECHA_CLASSIF_ITEM', 'FECHA_CLASSIF_ORIG','FECHA_CLASSIF'],
                               ['REGISTRO', 'REGISTRO', 'REGISTRO', 'REGISTRO'],
                               [cdsDadosRegistro.AsString, cdsDadosRegistro.AsString, cdsDadosRegistro.AsString, cdsDadosRegistro.AsString]) then
           begin
             cdsDados.DELETE;
             //cdsDados.Refresh;
           end;
         end;
     15: begin
           try
             if cdsDadosNumero.AsInteger = 0 then cdsDadosNumero.AsInteger   := frGenerator('FECHA_CLASSIF','NUMERO',1);
             cdsDadosVarieCod.AsInteger := frmPesquisaVar.vpCodPrincipal;
             cdsDadosProdCod.AsInteger  := frmPesquisaProd.vpCodPrincipal;
             cdsDadosVarieDes.AsString  := frmPesquisaVar.vpDescricao;
             cdsDadosProdDes.AsString   := frmPesquisaProd.vpDescricao;
              cdsDadosData.Value         := dtpDate.Date;
             cdsDadosDTLoteIni.Value    := dtpClaIni.Date;
             cdsDadosDTLoteFim.Value    := dtpClaFim.Date;
             cdsDadosDTFinanIni.Value   := dtpFinIni.Date;
             cdsDadosDTFinanFim.Value   := dtpFinFim.Date;
             cdsDadosDTPrecoIni.Value   := dtpPreIni.Date;
             cdsDadosDTPrecoFim.Value   := dtpPreFim.Date;
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
               cdsItem.Post;
             end;
             //Não pode ficar em branco
             if cdsfinan.RecordCount = 0 then
             begin
               cdsfinan.Append;
               cdsfinanRegistro.asInteger:= cdsDadosRegistro.AsInteger;
               cdsfinanLancit.asInteger  := frGenerator('FECHA_CLASSIF_FINAN','LANCIT',1);
               cdsfinan.Post;
             end;

             if pInsertDataSet('REG_ID', 'FECHA_CLASSIF', cdsDados) then
             begin
               pInsertDataSetVarios('REGISTRO', 'REG_ID', 'FECHA_CLASSIF_ORIG', cdsOrigem);
               pInsertDataSetVarios('REGISTRO', 'REG_ID', 'FECHA_CLASSIF_ITEM', cdsItem);
               pInsertDataSetVarios('REGISTRO', 'REG_ID', 'FECHA_CLASSIF_FINAN', cdsFinan);
               xREG_ID := cdsDadosREG_ID.AsInteger;
               cdsDados.Cancel;
               cdsDados.Refresh;
               cdsDados.Locate('REG_ID', xREG_ID, []);
             end;
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
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmFechaCassifLote.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Filter := '';
  cdsDados.Filtered := False;

  cdsDados.Close;
  cdsOrigem.Close;
  cdsItem.Close;
  cdsFinan.Close;

  sqlDados.SQL.Clear;
  sqlDados.SQL.Add('select * from fecha_classif');
  sqlDados.SQL.Add('where indusopcao = ''C''');
  sqlDados.SQL.Add('  and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  sqlDados.SQL.Add('order by numero');

  cdsDados.Open;
  cdsOrigem.Open;
  cdsItem.Open;
  cdsFinan.Open;
  cdsDados.First;
  fMostraDetalhe;

end;

procedure TFfrmFechaCassifLote.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    if cdsDados.IsEmpty then exit;
    frmPesquisaVar.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaProd.pRetornaDados(cdsDadosProdCod.AsString);
    dtpDate.Date   := cdsDadosData.Value;
    dtpClaIni.Date := cdsDadosDTLoteIni.Value;
    dtpClaFim.Date := cdsDadosDTLoteFim.Value;
    dtpFinIni.Date := cdsDadosDTFinanIni.Value;
    dtpFinFim.Date := cdsDadosDTFinanFim.Value;

    if (cdsDadosDTPrecoIni.Value = 0) then
    begin
      dtpPreIni.Date := cdsDadosDTLoteIni.Value;
      dtpPreFim.Date := cdsDadosDTLoteFim.Value;
    end
    else begin
      dtpPreIni.Date := cdsDadosDTPRECOIni.Value;
      dtpPreFim.Date := cdsDadosDTPRECOFim.Value;
    end;

//    cb1.ItemIndex  := StrToIntDef(cdsDadossacolOpcao.asString,1) -1;
    fMostraDetalhe;
  end;
end;

procedure TFfrmFechaCassifLote.ppRelFechaBeforePrint(Sender: TObject);
begin
  inherited;
  ppSubReport4.Visible := (vNFC = 181);
  ppSubReport3.Visible := ((cdsDadosTotalDebito.AsFloat + cdsDadosTotalCredito.AsFloat) > 0);
end;

procedure TFfrmFechaCassifLote.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppSubReport1.Visible := not (vNFC > 200);
  if ppSubReport1.Visible then
    ppSubReport1.Visible := ((cdsDadosTotalDebito.AsFloat + cdsDadosTotalCredito.AsFloat) > 0);
  ppLabel2.Visible  := not (vNFC > 200);
  ppDBText1.Visible := not (vNFC > 200);
  ppDBText2.Visible := (vNFC < 400);
  ppLabel20.Visible := (vNFC >= 400);
end;

procedure TFfrmFechaCassifLote.ppTitleBand4BeforePrint(Sender: TObject);
begin
  inherited;
  if (vNFC >= 200) then
  begin
    ppSubReport3.Visible := False;
    ppSubReport4.Visible := False;
  end;
  ppLabel52.Visible  := not (vNFC >= 200);
  ppDBText45.Visible := not (vNFC >= 200);
  ppDBText46.Visible := (vNFC < 400);
  ppLabel34.Visible := (vNFC >= 400);
end;

procedure TFfrmFechaCassifLote.fMostraDetalhe;
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

  if cdsDadosTOTALBINS.asFloat <> 0 then
    lblMedia.Caption := FormatFloat('#0', cdsDadosTOTALKGBRU.asFloat / cdsDadosTOTALBINS.asFloat)
  else
    lblMedia.Caption := '';

end;

procedure TFfrmFechaCassifLote.fTotalFinan;
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

procedure TFfrmFechaCassifLote.fTotalizador(vFocus:Boolean = true);
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

    cdsItemVlrMedia.asFloat := frDeci(cdsItemVlrMedia.asFloat,2);
    cdsItemVlrTotal.asFloat   := frDeci((cdsItemVlrMedia.asFloat * cdsItemQtdeKG.asFloat),2);
    if (cdsItemQtdeKG.asFloat > 0) then
       cdsItemVlrMediaKG.asFloat := frDeci((cdsItemVlrMedia.asFloat / cdsItemPeso.asFloat),3);

    cdsItemVlrTotalKG.asFloat := frDeci((cdsItemVlrMediakg.asFloat * cdsItemQtdeKG.asFloat),3);
    cdsItemVlrEmbal.asFloat := frDeci((cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat),2);
    cdsItemVlrOper.asFloat  := frDeci((cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat),2);
//    if (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat) > 0 then
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
  cdsDadosTOTALCX.asFloat    := vcx;
  cdsDadosTOTALKGBRU.asFloat := vkg;
  cdsDadosTOTALEMBAL.asFloat := vemb;
  cdsDadosTOTALOPER.asFloat  := voper;
  cdsDadosTOTALCOMIS.asFloat := vcom;
  cdsDadosTOTALMEDIA.asFloat := vmed;

  cdsDadosSUBTOTAL.asFloat   := vmed - vemb - voper - vcom - cdsDadosTOTALMULTA.asFloat;
  //cdsDadosTotalFunRural.AsFloat := frDeci(vmed * cdsDadosPerFunRural.AsFloat / 100,2);
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
  if cdsDadosTOTALBINS.asFloat <> 0 then
    lblMedia.Caption := FormatFloat('#0', cdsDadosTOTALKGBRU.asFloat / cdsDadosTOTALBINS.asFloat)
  else
    lblMedia.Caption := '';

  //Total Financeiro
  fTotalFinan;
  if PageControl1.ActivePageIndex = 0 then
  begin
    if vFocus then
    begin
      DBGrid1.SetFocus;
      DBGrid1.SelectedIndex := 2;
    end;
  end;
  cdsItem.Locate('Lancit', vreg, []);
  cdsitem.Next;
end;

procedure TFfrmFechaCassifLote.gbVariedadeExit(Sender: TObject);
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
    dtpDate.SetFocus;
  end;
end;

procedure TFfrmFechaCassifLote.gbProdutorExit(Sender: TObject);
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

procedure TFfrmFechaCassifLote.Inserir1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsItem.Cancel;
end;

procedure TFfrmFechaCassifLote.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsFinan.Append;
end;

procedure TFfrmFechaCassifLote.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if frExcl then cdsFinan.delete;
end;

procedure TFfrmFechaCassifLote.Lanamentoanaltico1Click(Sender: TObject);
begin
  pcItem.ActivePageIndex := 1;
  inherited;
  //Analitico
  dsDadosRel.DataSet := cdsDados;
  dsItemRel.DataSet  := cdsItem;
  fMostraDetalhe;

  vNFC := TComponent(Sender).Tag;
  if (vNFC = 20) then
  begin
    ppLabel1.Caption := 'Acerto/Fechamento Produtor - Variedade: '+uppercase(cdsDadosVarieDes.AsString);
    ppRelFechaResumo.DeviceType := 'Screen';
    ppRelFechaResumo.Print;
  end
  else begin
    if (vNFC = 30) then
    begin
      ppLabel102.Caption := 'Acerto/Fechamento Produtor';
      ppLabel84.Caption  := cdsDadosLoteOrigem.asString;
      ppRelFechaCategoria.DeviceType := 'Screen';
      ppRelFechaCategoria.Print;
    end
    else begin
      ppLabel51.Caption := 'Acerto/Fechamento Produtor - Variedade: '+uppercase(cdsDadosVarieDes.AsString);
      ppRelFecha.DeviceType := 'Screen';
      ppRelFecha.Print;
    end;
  end;
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmFechaCassifLote.PorProdutoranaltico1Click(Sender: TObject);
var vi, vf: Integer;
    vp,vn: String;
begin
  inherited;
  pcItem.ActivePageIndex := 1;
  //Analitico por produtor
  vi := cdsDadosRegistro.asInteger;
  vp := 'ProdCod = 0'+cdsDadosProdCod.asString;
  vn := 'VarieCod = 0'+cdsDadosVarieCod.asString;

  dtInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy',dtInicial.date));
  dtFinal.Date   := StrToDate('31/12/'+FormatDateTime('yyyy',dtFinal.date));
  sbPeriodo.OnClick(sbPeriodo);

  cdsDados.DisableControls;

  vNFC := TComponent(Sender).Tag;
  if (vNFC < 400) then
    cdsDados.Filter := vp+' and '+vn
  else
    cdsDados.Filter := vn;
  cdsDados.Filtered := True;

  if (cdsDados.RecordCount < 2) then
  begin
    dsDadosRel.DataSet := cdsDados;
    dsItemRel.DataSet  := cdsItem;
    fMostraDetalhe;
  end
  else begin
    cdsDadosRel.Close;
    cdsItemRel.Close;
    dsDadosRel.DataSet := cdsDadosRel;
    dsItemRel.DataSet  := cdsItemRel;
    cdsDadosRel.CreateDataSet;
    cdsItemRel.CreateDataSet;
    cdsDados.First;
    cdsDadosRel.Append;
    while not cdsDados.Eof do
    begin
      //Salva os dados e soma
      for vf := 0 to cdsDados.FieldCount - 1 do
      begin
        vn := cdsDados.Fields[vf].FieldName;
        if (cdsDadosRel.FindField(vn) <> Nil) then
        begin
          if cdsDados.FieldByName(vn).DataType in [ftFloat, ftCurrency] then
            cdsDadosRel.FieldByName(vn).asFloat := cdsDadosRel.FieldByName(vn).asFloat + cdsDados.FieldByName(vn).asFloat
          else begin
            if (cdsDados.FieldByName(vn).asString <> '') and (cdsDadosRel.FieldByName(vn).IsNull) then
              cdsDadosRel.FieldByName(vn).Value := cdsDados.FieldByName(vn).Value
          end;
        end;
      end;
      fMostraDetalhe;
      //soma os itens
      cdsItem.First;
      while not cdsItem.Eof do
      begin
        if cdsItemRel.Locate('PRODCOD', cdsItemProdCod.AsInteger,[]) then
          cdsItemRel.Edit
        else
          cdsItemRel.Append;

        //Salva os dados e soma
        for vf := 0 to cdsItem.FieldCount - 1 do
        begin
          vn := cdsItem.Fields[vf].FieldName;
          if (cdsItemRel.FindField(vn) <> Nil) then
          begin
            if cdsItem.FieldByName(vn).DataType in [ftFloat, ftCurrency] then
              cdsItemRel.FieldByName(vn).asFloat := cdsItemRel.FieldByName(vn).asFloat + cdsItem.FieldByName(vn).asFloat
            else begin
              if (cdsItem.FieldByName(vn).asString <> '')and (cdsItemRel.FieldByName(vn).IsNull) then
                cdsItemRel.FieldByName(vn).Value := cdsItem.FieldByName(vn).Value
            end;
          end;
        end;
        //Média
         if (cdsItemRel.FieldByName('QtdeKG').asFloat > 0) then
         begin
           cdsItemRel.FieldByName('VlrMedia').asFloat   := frDeci(cdsItemRel.FieldByName('VlrTotal').asFloat / cdsItemRel.FieldByName('QtdeKG').asFloat,2);
           cdsItemRel.FieldByName('PreEmbal').asFloat   := frDeci(cdsItemRel.FieldByName('VlrEmbal').asFloat / cdsItemRel.FieldByName('QtdeKG').asFloat,2);
           cdsItemRel.FieldByName('PreOper').asFloat    := frDeci(cdsItemRel.FieldByName('VlrOper').asFloat / cdsItemRel.FieldByName('QtdeKG').asFloat,2);
           cdsItemRel.FieldByName('PerComis').asFloat   := frDeci(cdsItemRel.FieldByName('VlrComis').asFloat / cdsItemRel.FieldByName('QtdeKG').asFloat,2);
           cdsItemRel.FieldByName('PreLiquido').asFloat := frDeci(cdsItemRel.FieldByName('VlrLiquido').asFloat / cdsItemRel.FieldByName('QtdeKG').asFloat,2);
         end;
         if (cdsItemRel.FieldByName('Peso').asFloat > 0) then
           cdsItemRel.FieldByName('VlrMediaKG').asFloat := frDeci(cdsItemRel.FieldByName('VlrMedia').asFloat / cdsItemRel.FieldByName('Peso').asFloat,3);

        cdsItem.Next;
      end;
      cdsDados.Next;
    end;
  end;

  if (vNFC = 200) or (vNFC = 400) then
  begin
    if (vNFC = 200) then
      ppLabel51.Caption := 'Acerto/Fechamento Geral por Produtor - Variedade: '+uppercase(cdsDadosVarieDes.AsString)
    else
      ppLabel51.Caption := 'Acerto/Fechamento Geral - Variedade: '+uppercase(cdsDadosVarieDes.AsString);

    ppRelFecha.DeviceType := 'Screen';
    ppRelFecha.Print;
  end;
  if (vNFC = 300) or (vNFC = 500) then
  begin
    if (vNFC = 300) then
      ppLabel1.Caption := 'Acerto/Fechamento Geral por Produtor - Variedade: '+uppercase(cdsDadosVarieDes.AsString)
    else
      ppLabel1.Caption := 'Acerto/Fechamento Geral - Variedade: '+uppercase(cdsDadosVarieDes.AsString);

    ppRelFechaResumo.DeviceType := 'Screen';
    ppRelFechaResumo.Print;
  end;

  cdsDados.Filter := '';
  cdsDados.Filtered := False;
  cdsDados.Locate('REGISTRO', vi, []);

  cdsDados.EnableControls;
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmFechaCassifLote.sbLoteclasClick(Sender: TObject);
var vdat, vdatmed, vcon, vproduto, vcateg: String;
    vlanc, vlancx, edLote, vlotelanc, vlancCat, vlancVar: Integer;
    vtrue: Boolean;
begin
  inherited;

  DBGrid1.SetFocus;

  edLote := cdsDadosLoteOrigem.asInteger;

  if (edLote < 1) then
    exit;

  if (fBus(1,['Select count(*) from fecha_classif where LOTEORIGEM = 0'+cdsDadosLoteOrigem.AsString],1) > 0) then
  begin

    if not frPerg('Já existe fechamento com esse LOTE!'+#13+'Deseja continuar?', 'SN') then
    begin
      dbEdit20.setFocus;
      exit;
    end;

  end;

  vdat := '(ro.Data>='+frInvD(dtInicial.Date)+' and ro.Data<'+frInvD(dtFinal.Date+1)+')';
  fSql(1,5,['select first 1 ro.data, ro.lote, pr.qtdebin, ro.lanc, ro.variecod, pr.prodcod',
            '  from roman ro, romanpro pr',
            ' where (ro.lanc = pr.lanc)',
            '   and '  + vdat,
            '   and ro.lote = 0' + IntToStr(edLote),
            'order by ro.lote'], 5);
  if (dm.qrSql5.RecordCount = 0) then
  begin
    ShowMessage('Lote não encontrado!');
    DBEdit20.SetFocus;
    Exit;
  end;

  cdsorigem.First;
  while not cdsorigem.Eof do
    cdsorigem.Delete;
  cdsitem.First;
  while not cdsitem.Eof do
    cdsitem.Delete;

  cdsDadosProdCod.asInteger   := dm.qrSql5.FieldByName('prodcod').asInteger;
  cdsDadosVarieCod.asInteger  := dm.qrSql5.FieldByName('variecod').asInteger;
  frmPesquisaProd.pRetornaDados(cdsDadosProdCod.AsString);
  frmPesquisaVar.pRetornaDados(cdsDadosVarieCod.AsString);
  vlotelanc := dm.qrSql5.FieldByName('lanc').asInteger;

  vlancx := StrToInt(cdsDadosRegistro.AsString+'0000');
  fBar(0,dm.qrSql5.RecordCount,'Aguarde importando entrada fruta...');
  dm.qrSql5.First;
  while not dm.qrSql5.Eof do
  begin
    fBar(1,1,'');
    vlancx := vlancx +1;
    cdsOrigem.Append;
    cdsOrigemRegistro.asInteger := cdsDadosRegistro.AsInteger;
    cdsOrigemLancit.asInteger := vlancx;
    cdsOrigemData.Value     := dm.qrSql5.FieldByName('Data').Value;
    cdsOrigemLote.asInteger := dm.qrSql5.FieldByName('Lote').asInteger;
    cdsOrigemQtde.asFloat   := dm.qrSql5.FieldByName('Qtdebin').asFloat;
//    vlote := dm.qrSql5.FieldByName('Lanc').asInteger;
    cdsOrigem.Post;
    dm.qrSql5.Next;
  end;

  //Item
  vdat := '(Data>='+frInvD(dtpClaIni.Date)+' and Data<'+frInvD(dtpClaFim.Date+1)+')';
  vdatMed := '(Data>='+frInvD(dtpPreIni.Date)+' and Data<'+frInvD(dtpPreFim.Date+1)+')';

  //Custo por data -> dtpClaFim.Date
  fSql(1,3,['select Max(lanc) from cadcategcus where data < '+frInvD(dtpClaFim.Date+1)],1);
  vlancCat := dm.qrSql3.Fields[0].AsInteger;
  fSql(1,3,['select Max(lanc) from cadvariecus where data < '+frInvD(dtpClaFim.Date+1)],1);
  vlancVar := dm.qrSql3.Fields[0].AsInteger;
  dm.qrSql3.Close;

  vCon := Trim(cdsDadosVarieCod.asString);
  vCon := 'Codigo>='+frPree(vCon,7,'0',1)+' and Codigo<='+frPree(vCon,7,'9',1);
//  fRecalPreco(vcon,vdatmed,'S');
  fSql(1,1,['select co.prodcod, co.calibre, sum(co.qtdeent) as qtde, sum(co.pesoreal) as peso, avg(co.preco) as preco',
            '  from classif pp, classifm co',
            ' where (pp.lanc = co.lanc) and (co.prodcod > 0)',
            '   and pp.integra = 0'  + IntToStr(vlotelanc),
            ' group by co.prodcod, co.calibre',
            ' order by SubString(co.prodcod from 3 for 5), co.calibre'], 6);

  vlanc := StrToInt(cdsDadosRegistro.AsString+'0000');
  fBar(0,dm.qrSql1.RecordCount,'Aguarde importando itens...');
  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin
    fBar(1,1,'');
    //Verifica se pode incluir industria
    vtrue := true;
    if vtrue then
    begin
      vproduto := dm.qrSql1.FieldByName('ProdCod').asstring;
      if cbVarieClone.Checked then
        vproduto := cdsDadosVarieCod.asString + vproduto;

      if not cdsItem.Locate('ProdCod', strtoint(vproduto), []) then
      begin
        vlanc := vlanc +1;
        cdsItem.Append;
        cdsItemRegistro.asInteger:= cdsDadosRegistro.AsInteger;
        cdsItemLancit.asInteger  := vlanc;
        cdsItemProdCod.asInteger := strtoint(vproduto);
        cdsItemCalibre.asInteger := dm.qrSql1.FieldByName('Calibre').asInteger;
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
//      if cdsItemPeso.asFloat > 0  then
//      begin
        //Obtem preco da média de venda
//        cdsItemVlrMedia.asFloat  := frDeci(dm.qrSql1.FieldByName('Preco').asFloat / cdsItemPeso.asFloat,2);
//        cdsItemVlrCaixa.asFloat  := frDeci(dm.qrSql1.FieldByName('Preco').asFloat,2);
//      end
//      else begin
        cdsItemVlrMedia.asFloat  := 0;
        cdsItemVlrCaixa.asFloat  := 0;
//      end;
      cdsItemVlrTotal.asFloat  := frDeci(cdsItemQtdeKG.asFloat * cdsItemVlrMedia.asFloat,2);
      cdsItemPreEmbal.asFloat  := 0;
      cdsItemPreOper.asFloat  := 0;
      cdsItemPerComis.asFloat := 0;

      if (cdsItemQtdeKG.asFloat > 0) then
      begin

        if (dm.qrSql3.FieldByName('CustoFG').asString = 'S') then
        begin

          cdsItemPreOper.asFloat  := dm.qrSql3.FieldByName('CustoOpe').asFloat;
          cdsItemPerComis.asFloat := dm.qrSql3.FieldByName('CustoLuc').asFloat;
          cdsItemPreEmbal.asFloat := dm.qrSql3.FieldByName('CustoEmb').asFloat;

        end
        else begin

//          fSql(1,2,['select val1, val2 from cadvarie where codigo = 0' +Copy(cdsItemProdCod.asString,1,2)],1);
          fSql(1,2,['select val1, val2 from cadvariecus where lanc = 0' +IntToStr(vlancVar)+ ' and codigo = 0' +Copy(cdsItemProdCod.asString,1,2)],1);

          if not dm.qrSql2.Eof then
          begin
            cdsItemPreOper.asFloat  := dm.qrSql2.FieldByName('Val1').asFloat;
            cdsItemPerComis.asFloat := dm.qrSql2.FieldByName('Val2').asFloat;
          end;

//          fSql(1,2,['select val1 from cadcateg where codigo = 0' +Copy(cdsItemProdCod.asString,3,2)],1);
          fSql(1,2,['select val1 from cadcategcus where lanc = 0' +IntToStr(vlancCat)+ ' and codigo = 0' +Copy(cdsItemProdCod.asString,3,2)],1);

          if not dm.qrSql2.Eof then
            cdsItemPreEmbal.asFloat  := dm.qrSql2.FieldByName('Val1').asFloat;

        end;

        cdsItemPreEmbal.asFloat  := 0;
        cdsItemPreOper.asFloat  := 0;
        cdsItemPerComis.asFloat := 0;

        cdsItemVlrOper.asFloat  := cdsItemPreOper.asFloat * cdsItemQtdeKG.asFloat;
        cdsItemVlrEmbal.asFloat := cdsItemPreEmbal.asFloat * cdsItemQtdeKG.asFloat;

//        if (cdsItemVlrTotal.asFloat - cdsItemVlrOper.asFloat - cdsItemVlrEmbal.asFloat) > 0 then
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

        cdsitemvTamDes.AsString := fBus(1,['Select calibredes from cadprodu where codigo = 0'+cdsItemProdCod.AsString],1);
        if (cdsitemvTamDes.AsString = '') then
          cdsitemvTamDes.AsString := fBus(1,['Select calibre from cadprodu where codigo = 0'+cdsItemProdCod.AsString],1);
        vcateg := fBus(1,['Select categcod from cadprodu where codigo = 0'+cdsItemProdCod.AsString],1);
        cdsitemvClasCod.AsString := fBus(1,['Select variecod from cadCateg where codigo = 0'+vcateg],1);
        cdsitemvClasDes.AsString := fBus(1,['Select variedes from cadCateg where codigo = 0'+vcateg],1);

      end;

      cdsItem.Post;
    end;
    dm.qrSql1.Next;
  end;
  cdsOrigem.First;

  //Pega a data do lote de origem -> Deve buscar no romaneio de entrada
  dtpClaIni.Date := cdsOrigemDATA.Value;
  if fTra(1,['Select DATA From EntRE Where Recibo = 0'+cdsOrigemLOTE.AsString+' Order by DATA '],1) then
    dtpDate.Date := dm.qrSqlTra.Fields[0].Value
  else
    dtpDate.Date := cdsOrigemDATA.Value;

  //Prazo de acerto
  vlancx:= fBus(1,['Select prazo from cadforne where codigo = 0'+cdsDadosProdCod.AsString],1);

  dtpDate.Date := dtpDate.Date + vlancx;

  fTotalizador;

  fBar(2,1,'');
  cdsItem.First;
  PageControl1.ActivePageIndex := 0;

end;

end.

