unit frmGerenciadorNFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables, FileCtrl,
  jpeg, ComCtrls, Grids, DBGrids, OleCtrls, SHDocVw,
  ACBrNFeDANFEClass, ACBrNFe, ACBrUtil,
  ACBrBase, RzPanel, pcnConversao, pcnConversaoNFe, Math,
  ACBrDFe, ACBrDFeSSL, blcksock, TypInfo, ACBrMail,
  ACBrNFeDANFEFR, frxClass, ACBrDFeReport, ACBrDFeDANFeReport, frxDesgn,
  vcl.Clipbrd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.DateUtils;

type
  TFfrmGerenciadorNFE = class(TForm)
    dsConfig: TDataSource;
    tbConfig: TTable;
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    tbConfigREGISTRO: TIntegerField;
    tbConfigCER_CAMINHO: TStringField;
    tbConfigCER_SENHA: TStringField;
    tbConfigCER_NUMSERIE: TStringField;
    tbConfigGER_DANFE: TStringField;
    tbConfigGER_FORMAEMISSAO: TStringField;
    tbConfigGER_LOGOMARCA: TStringField;
    tbConfigGER_SALVAR: TStringField;
    tbConfigGER_PATHSALVAR: TStringField;
    tbConfigWEB_UF: TStringField;
    tbConfigWEB_AMBIENTE: TStringField;
    tbConfigWEB_VISUALIZAR: TStringField;
    tbConfigPRX_HOST: TStringField;
    tbConfigPRX_PORTA: TStringField;
    tbConfigPROX_USER: TStringField;
    tbConfigPROX_PASS: TStringField;
    tbConfigEML_HOST: TStringField;
    tbConfigEML_PORT: TStringField;
    tbConfigEML_PASS: TStringField;
    tbConfigEML_ASSUNTO: TStringField;
    tbConfigEML_SSL: TStringField;
    dsNota: TDataSource;
    TNota: TTable;
    TProduto: TTable;
    TFinan: TTable;
    TNotaLANC: TIntegerField;
    TNotaDIF: TStringField;
    TNotaNOTA: TIntegerField;
    TNotaSERIE: TStringField;
    TNotaVENDECOD: TIntegerField;
    TNotaCODIGO: TIntegerField;
    TNotaDESCRICAO: TStringField;
    TNotaDATA: TDateTimeField;
    TNotaENTREGA: TDateTimeField;
    TNotaNATURCOD: TFloatField;
    TNotaDADOSCOD: TIntegerField;
    TNotaTRTIPO: TStringField;
    TNotaTRCOD: TIntegerField;
    TNotaTRDES: TStringField;
    TNotaVLRDESC: TFloatField;
    TNotaVLRBASE: TFloatField;
    TNotaVLRICMS: TFloatField;
    TNotaVLRFRETE: TFloatField;
    TNotaVLRPRODUTO: TFloatField;
    TNotaVLRIPI: TFloatField;
    TNotaVLRNOTA: TFloatField;
    TNotaPESOBRU: TFloatField;
    TNotaPESOLIQ: TFloatField;
    TNotaQTDESP: TStringField;
    TNotaPSP: TIntegerField;
    TNotaFRETECOD: TIntegerField;
    TNotaFRETEDES: TStringField;
    TNotaTRPLACA: TStringField;
    TNotaTRCIDADE: TStringField;
    TNotaTRESTADO: TStringField;
    TNotaESTADO: TStringField;
    TNotaVLRSEGURO: TFloatField;
    TNotaVLRICMSFRE: TFloatField;
    TNotaOBS1: TStringField;
    TNotaFORPAG: TIntegerField;
    TNotaSEGTIP: TStringField;
    TNotaOBS2: TStringField;
    TNotaOBS3: TStringField;
    TNotaOBS4: TStringField;
    TNotaOBS5: TStringField;
    TNotaOBS6: TStringField;
    TNotaRECEITA: TIntegerField;
    TNotaDIFCOD: TIntegerField;
    TNotaDIFDES: TStringField;
    TNotaEMPRECOD: TIntegerField;
    TNotaACESOCOD: TIntegerField;
    TNotaFORMA: TStringField;
    TNotaVLRFUNRURAL: TFloatField;
    TNotaPRODCOD: TIntegerField;
    TNotaPRODDES: TStringField;
    TNotaESTOQUE: TStringField;
    TNotaNSUNUM: TIntegerField;
    TNotaNSUDAT: TDateTimeField;
    TNotaNSUHOR: TStringField;
    TNotaPRODNOTA: TIntegerField;
    TNotaNFE_MODELO: TStringField;
    TNotaNFE_STATUS: TStringField;
    TNotaNFE_CHAVE: TStringField;
    TNotaNFE_RECIBO: TStringField;
    TNotaNFE_PROTOC: TStringField;
    TNotaNFE_CANCEL: TStringField;
    TNotaNFE_XML: TStringField;
    tbConfigEML_USER: TStringField;
    TNotaNFE_CCE1: TStringField;
    TNotaNFE_CCE2: TStringField;
    TNotaNFE_CCE3: TStringField;
    TNotaNFE_CCESEQ: TIntegerField;
    TNotaNFE_CCEDATA: TDateTimeField;
    tbConfigCER_VALIDADE: TDateTimeField;
    TImportac: TTable;
    TImportacLANC: TIntegerField;
    TImportacLANCIT: TIntegerField;
    TImportacDI_NR: TStringField;
    TImportacDI_DT: TDateTimeField;
    TImportacLOC_DES: TStringField;
    TImportacLOC_UF: TStringField;
    TImportacLOC_DT: TDateTimeField;
    TImportacTRA_VIA: TStringField;
    TImportacTRA_VLR: TFloatField;
    TImportacTRA_TIP: TStringField;
    TImportacTRA_CNPJ: TStringField;
    TImportacTRA_UF: TStringField;
    TImportacADC_NR: TIntegerField;
    TImportacADC_SEQ: TIntegerField;
    TImportacADC_COD: TStringField;
    TImportacIMP_ICM_VLR: TFloatField;
    TImportacIMP_ICM_PER: TFloatField;
    TImportacIMP_OUT_ADV: TFloatField;
    TImportacIMP_OUT_IOF: TFloatField;
    TImportacIMP_IPI_VLR: TFloatField;
    TImportacIMP_IPI_PER: TFloatField;
    TImportacIMP_IPI_COD: TIntegerField;
    TImportacIMP_II_VLR: TFloatField;
    TImportacIMP_II_PER: TFloatField;
    TImportacIMP_II_COD: TIntegerField;
    TImportacIMP_PIS_VLR: TFloatField;
    TImportacIMP_PIS_PER: TFloatField;
    TImportacIMP_PIS_COD: TIntegerField;
    TImportacIMP_COF_VLR: TFloatField;
    TImportacIMP_COF_PER: TFloatField;
    TImportacIMP_COF_COD: TIntegerField;
    TFinanLANC: TIntegerField;
    TFinanPARC: TIntegerField;
    TFinanVENCTO: TDateTimeField;
    TFinanVALOR: TFloatField;
    TFinanPERC: TFloatField;
    TFinanVLR: TFloatField;
    TFinanCAR: TIntegerField;
    TFinanTIPO: TStringField;
    TFinanLANCIT: TIntegerField;
    TFinanBANCOD: TIntegerField;
    TFinanBANDOC: TStringField;
    TFinanBANEMI: TStringField;
    TFinanEMPRECOD: TIntegerField;
    TFinanACESOCOD: TIntegerField;
    TFinanBANDES: TStringField;
    TProdutoLANC: TIntegerField;
    TProdutoDATA: TDateTimeField;
    TProdutoCLIENTE: TIntegerField;
    TProdutoCODIGO: TIntegerField;
    TProdutoDESCRICAO: TStringField;
    TProdutoUNIDADE: TStringField;
    TProdutoPESOLIQ: TFloatField;
    TProdutoPESOBRU: TFloatField;
    TProdutoQTDE: TFloatField;
    TProdutoUNIT: TFloatField;
    TProdutoVALOR: TFloatField;
    TProdutoLANCIT: TIntegerField;
    TProdutoGRUPOCOD: TIntegerField;
    TProdutoPERDESC: TFloatField;
    TProdutoVLRDESC: TFloatField;
    TProdutoVENCTO: TDateTimeField;
    TProdutoRUNIT: TFloatField;
    TProdutoRVALOR: TFloatField;
    TProdutoEMPRECOD: TIntegerField;
    TProdutoACESOCOD: TIntegerField;
    TProdutoESTOQUE: TStringField;
    TProdutoNATURCOD: TFloatField;
    TProdutoICMS_SIT: TStringField;
    TProdutoICMS_PER: TFloatField;
    TProdutoICMS_RED: TFloatField;
    TProdutoICMS_BASE: TFloatField;
    TProdutoICMS_VLR: TFloatField;
    TProdutoIPI_SIT: TStringField;
    TProdutoIPI_PER: TFloatField;
    TProdutoIPI_BASE: TFloatField;
    TProdutoIPI_VLR: TFloatField;
    TProdutoPRUNIT: TFloatField;
    TProdutoPREMB: TFloatField;
    TProdutoCODLOTECLASS: TStringField;
    TProdutoNCM_COD: TStringField;
    TProdutoNCM_PER: TFloatField;
    TProdutoNCM_VLR: TFloatField;
    TProdutoICMS_CREDPER: TFloatField;
    TProdutoICMS_CREDVLR: TFloatField;
    TNotaVLRCRED: TFloatField;
    TNotaVLRSERV: TFloatField;
    TNotaPERSERV: TFloatField;
    TProdutoEHSERVICO: TStringField;
    TProdutoEHSERVPER: TFloatField;
    TProdutoEHSERVVLR: TFloatField;
    TCadastro: TTable;
    TCadastroCODIGO: TIntegerField;
    TCadastroDESCRICAO: TStringField;
    TCadastroENDERECO: TStringField;
    TCadastroBAIRRO: TStringField;
    TCadastroCEP: TStringField;
    TCadastroESTADO: TStringField;
    TCadastroCPF: TStringField;
    TCadastroDOC: TStringField;
    TCadastroFONE: TStringField;
    TCadastroCIDADEDES: TStringField;
    sqlDados: TQuery;
    sqlDadosLANC: TIntegerField;
    sqlDadosDIF: TStringField;
    sqlDadosNOTA: TIntegerField;
    sqlDadosSERIE: TStringField;
    sqlDadosVENDECOD: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosDATA: TDateTimeField;
    sqlDadosENTREGA: TDateTimeField;
    sqlDadosNATURCOD: TFloatField;
    sqlDadosDADOSCOD: TIntegerField;
    sqlDadosTRTIPO: TStringField;
    sqlDadosTRCOD: TIntegerField;
    sqlDadosTRDES: TStringField;
    sqlDadosVLRDESC: TFloatField;
    sqlDadosVLRBASE: TFloatField;
    sqlDadosVLRICMS: TFloatField;
    sqlDadosVLRFRETE: TFloatField;
    sqlDadosVLRPRODUTO: TFloatField;
    sqlDadosVLRIPI: TFloatField;
    sqlDadosVLRNOTA: TFloatField;
    sqlDadosPESOBRU: TFloatField;
    sqlDadosPESOLIQ: TFloatField;
    sqlDadosQTDESP: TStringField;
    sqlDadosPSP: TIntegerField;
    sqlDadosFRETECOD: TIntegerField;
    sqlDadosFRETEDES: TStringField;
    sqlDadosTRPLACA: TStringField;
    sqlDadosTRCIDADE: TStringField;
    sqlDadosTRESTADO: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosVLRSEGURO: TFloatField;
    sqlDadosVLRICMSFRE: TFloatField;
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
    sqlDadosDIFDES: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosFORMA: TStringField;
    sqlDadosVLRFUNRURAL: TFloatField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosESTOQUE: TStringField;
    sqlDadosNSUNUM: TIntegerField;
    sqlDadosNSUDAT: TDateTimeField;
    sqlDadosNSUHOR: TStringField;
    sqlDadosPRODNOTA: TIntegerField;
    sqlDadosNFE_MODELO: TStringField;
    sqlDadosNFE_STATUS: TStringField;
    sqlDadosNFE_CHAVE: TStringField;
    sqlDadosNFE_RECIBO: TStringField;
    sqlDadosNFE_PROTOC: TStringField;
    sqlDadosNFE_CANCEL: TStringField;
    sqlDadosNFE_XML: TStringField;
    sqlDadosCODLOTECLASS: TStringField;
    sqlDadosCLI_FUNPER: TFloatField;
    sqlDadosCLI_COMISPER: TFloatField;
    sqlDadosCLI_ADIANTCX: TFloatField;
    sqlDadosNFE_CCE1: TStringField;
    sqlDadosNFE_CCE2: TStringField;
    sqlDadosNFE_CCE3: TStringField;
    sqlDadosNFE_CCESEQ: TIntegerField;
    sqlDadosNFE_CCEDATA: TDateTimeField;
    sqlDadosTRIBNCM_PER: TFloatField;
    sqlDadosTRIBNCM_VLR: TFloatField;
    sqlDadosVLRCRED: TFloatField;
    sqlDadosVLRSERV: TFloatField;
    sqlDadosPERSERV: TFloatField;
    tbConfigCER_SSLLIB: TIntegerField;
    tbConfigCER_CRYPTLIB: TIntegerField;
    tbConfigCER_HTTPLIB: TIntegerField;
    tbConfigCER_XMLSIGNLIB: TIntegerField;
    tbConfigWEB_SSLTYPE: TIntegerField;
    tbConfigGER_VERSAO: TIntegerField;
    tbConfigGER_PATSCHEMAS: TStringField;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    frxReport1: TfrxReport;
    TProdutoRVLRMEDIO: TFloatField;
    TProdutoPIS_SIT: TStringField;
    TProdutoPIS_PER: TFloatField;
    TProdutoPIS_BASE: TFloatField;
    TProdutoPIS_VLR: TFloatField;
    TProdutoCOFINS_SIT: TStringField;
    TProdutoCOFINS_PER: TFloatField;
    TProdutoCOFINS_BASE: TFloatField;
    TProdutoCOFINS_VLR: TFloatField;
    TProdutoIPI_CENQ: TStringField;
    TNotaPIS_VLR: TFloatField;
    TNotaCOFINS_VLR: TFloatField;
    TNotaEMAILENV: TIntegerField;
    sqlDadosEMAILENV: TIntegerField;
    sqlDadosEMAIL: TStringField;
    lblRodape: TLabel;
    PopupMenu1: TPopupMenu;
    ConfigurarDANFE1: TMenuItem;
    tbConfigMGM_SUP: TIntegerField;
    tbConfigMGM_INF: TIntegerField;
    tbConfigMGM_ESQ: TIntegerField;
    tbConfigMGM_DIR: TIntegerField;
    frxDesigner1: TfrxDesigner;
    TNotaOBS7: TStringField;
    TNotaOBS8: TStringField;
    TNotaOBS9: TStringField;
    TNotaOBS10: TStringField;
    TNotaOBS11: TStringField;
    TNotaOBS12: TStringField;
    tbConfigEML_TLS: TStringField;
    TNotaNFE_CCE4: TStringField;
    TNotaNFE_CCE5: TStringField;
    TNotaNFE_CCE6: TStringField;
    TNotaNFE_CCE7: TStringField;
    TNotaNFE_CCE8: TStringField;
    TNotazMemoCarta: TStringField;
    TProdutoPRODUTOCOD: TStringField;
    TNotaOBS13: TStringField;
    ACBrMail1: TACBrMail;
    tbConfigSMTP_HOST: TStringField;
    tbConfigSMTP_PORTA: TStringField;
    tbConfigSMTP_USER: TStringField;
    tbConfigSMTP_PASS: TStringField;
    tbConfigSMTP_USERNAME: TStringField;
    TProdutoNCM_PERE: TFloatField;
    TProdutoNCM_VLRE: TFloatField;
    TProdutoNCM_PERM: TFloatField;
    TProdutoNCM_VLRM: TFloatField;
    TProdutoUTRIB: TStringField;
    TProdutoQTRIB: TFloatField;
    TProdutoVUNTRIB: TFloatField;
    TProdutoCBENEF: TStringField;
    RzPanel1: TRzPanel;
    PageControl1: TPageControl;
    TabGerenciador: TTabSheet;
    pn_nfe: TPanel;
    Bevel4: TBevel;
    Image1: TImage;
    Bevel5: TBevel;
    Bevel6: TBevel;
    GroupBox8: TGroupBox;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    btnFiltro: TBitBtn;
    GroupBox9: TGroupBox;
    bt_nfe_validar: TBitBtn;
    bt_nfe_danfe: TBitBtn;
    btnEmailUnico: TButton;
    GroupBox10: TGroupBox;
    cbPdf: TCheckBox;
    cbXml: TCheckBox;
    bt_nfe_status: TBitBtn;
    bt_nfe_consultar: TBitBtn;
    btnEmailOutlook: TBitBtn;
    btnEmailLote: TBitBtn;
    GroupBox11: TGroupBox;
    bt_nfe_cancelar: TBitBtn;
    bt_nfe_carta: TButton;
    bt_nfe_inutilizar: TBitBtn;
    bt_nfe_Contigencia: TBitBtn;
    bt_nfe_rejeitar: TBitBtn;
    pnl_log: TPanel;
    pgLog: TPageControl;
    TabSheet10: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    MemoResp: TMemo;
    TabSheet11: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet12: TTabSheet;
    memoRespWS: TMemo;
    TabSheet13: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    bt_nfe_assinar: TBitBtn;
    PStatus: TPanel;
    pLegenda: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label13: TLabel;
    lblRegistro: TLabel;
    spbTudo: TCheckBox;
    BitBtn2: TBitBtn;
    pnl_msg: TPanel;
    dbDados: TDBGrid;
    TabConfig: TTabSheet;
    Panel1: TPanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    Label12: TLabel;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    sbData: TSpeedButton;
    lSSLLib1: TLabel;
    sbtnPathSalvar: TSpeedButton;
    spPathSchemas: TSpeedButton;
    Label19: TLabel;
    edtCaminho: TDBEdit;
    edtSenha: TDBEdit;
    edtNumSerie: TDBEdit;
    edtValidade: TDBEdit;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    cbSSLType: TComboBox;
    ckSalvar: TDBCheckBox;
    edtPathLogs: TDBEdit;
    edtPathSchemas: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    sbtnLogoMarca: TSpeedButton;
    rgTipoDanfe: TDBRadioGroup;
    rgFormaEmissao: TDBRadioGroup;
    cbVersaoDF: TDBRadioGroup;
    cbUF: TDBComboBox;
    rgTipoAmb: TDBRadioGroup;
    edtLogoMarca: TDBEdit;
    ckVisualizar: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    btnSalvarConfig: TBitBtn;
    btn_Testar: TBitBtn;
    memConexao: TMemo;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    Label35: TLabel;
    Label40: TLabel;
    Label17: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label42: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    edtEmitRazao: TDBEdit;
    edtEmitLogradouro: TDBEdit;
    edtEmitNumero: TDBEdit;
    edtEmitBairro: TDBEdit;
    edtEmitFone: TDBEdit;
    edtEmitCidade: TDBEdit;
    edtEmitCEP: TDBEdit;
    edtEmitUF: TDBEdit;
    edtEmitIE: TDBEdit;
    edtEmitCNPJ: TDBEdit;
    edtEmitCodCidade: TDBEdit;
    edtEmitCNAE: TDBEdit;
    ckSimples: TDBCheckBox;
    edtEmitEmailContador: TDBEdit;
    edtEmitIm: TDBEdit;
    TabSheet1: TTabSheet;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edtEmailAssunto: TDBEdit;
    edtSmtpHost: TDBEdit;
    edtSmtpPort: TDBEdit;
    edtSmtpPass: TDBEdit;
    edtSmtpUser: TDBEdit;
    cbEmailSSL: TDBCheckBox;
    cbEmailTLS: TDBCheckBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    lblPorta: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label50: TLabel;
    edtSmtp_Porta: TDBEdit;
    edtSmtp_User: TDBEdit;
    edtSmtp_Senha: TDBEdit;
    edtSmtp_Host: TDBEdit;
    edtSmtp_UserName: TDBEdit;
    Button1: TButton;
    mLog: TMemo;
    tabCarta: TTabSheet;
    Panel2: TPanel;
    Label16: TLabel;
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    sbCancelar: TSpeedButton;
    sbImprimir: TSpeedButton;
    sbEmailCartaCor: TSpeedButton;
    sbEnviarCarta: TSpeedButton;
    RzPanel2: TRzPanel;
    Memo1: TMemo;
    GroupBox7: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox6: TGroupBox;
    memCarta: TMemo;
    Memo2: TMemo;
    tabInutilizar: TTabSheet;
    Panel3: TPanel;
    Label18: TLabel;
    sbInutilizar: TSpeedButton;
    Label21: TLabel;
    lblInut: TLabel;
    Memo3: TMemo;
    GroupBox12: TGroupBox;
    txtJust_ano: TMaskEdit;
    GroupBox13: TGroupBox;
    txtJust_mod: TMaskEdit;
    GroupBox15: TGroupBox;
    txtJust_obs: TMemo;
    GroupBox16: TGroupBox;
    txtJust_ser: TMaskEdit;
    GroupBox17: TGroupBox;
    txtJust_ini: TMaskEdit;
    GroupBox18: TGroupBox;
    txtJust_fim: TMaskEdit;
    gbInut: TGroupBox;
    txtJust_resp: TMemo;
    btnInut: TButton;
    TabCancelar: TTabSheet;
    Panel6: TPanel;
    lblCancelar: TLabel;
    sbCancelarEnviar: TSpeedButton;
    GroupBox19: TGroupBox;
    edCancelarData: TEdit;
    GroupBox20: TGroupBox;
    edCancelarLote: TEdit;
    GroupBox21: TGroupBox;
    edCancelarObs: TEdit;
    GroupBox22: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox24: TGroupBox;
    DBEdit10: TDBEdit;
    sqlDadosXSEL: TStringField;
    TNotaXSEL: TStringField;
    PopupMenu2: TPopupMenu;
    CopiarXMLMemria1: TMenuItem;
    CopiarXMLMemria2: TMenuItem;
    DownloadarquivoXMLePDF1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    DownloadarquivoPDF1: TMenuItem;
    CopiararquivoPDFMemria1: TMenuItem;
    TNotaVOL_QTDE: TIntegerField;
    TNotaVOL_ESPECIE: TStringField;
    TNotaVOL_MARCA: TStringField;
    TNotaVOL_NUMERACAO: TStringField;
    qrSqlObterArq: TFDQuery;
    qrSqlObterArqREG_ID: TIntegerField;
    qrSqlObterArqLANC: TIntegerField;
    qrSqlObterArqARQUIVOXML: TMemoField;
    qrSqlObterArqARQUIVOPDF: TMemoField;
    qrSqlObterArqNOMEXML: TStringField;
    qrSqlObterArqNOMEPDF: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure bt_nfe_statusClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_nfe_validarClick(Sender: TObject);
    procedure bt_nfe_consultarClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure bt_nfe_assinarClick(Sender: TObject);
    procedure bt_nfe_danfeClick(Sender: TObject);
    procedure bt_nfe_cancelarClick(Sender: TObject);
    procedure btnEmailOutlookClick(Sender: TObject);
    procedure btnEmailUnicoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_nfe_cartaClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure dtFiltroChange(Sender: TObject);
    procedure dbDadosDblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure spbTudoClick(Sender: TObject);
    procedure bt_nfe_inutilizarClick(Sender: TObject);
    procedure sbInutilizarClick(Sender: TObject);
    procedure txtJust_iniExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure sbEmailCartaCorClick(Sender: TObject);
    procedure bt_nfe_ContigenciaClick(Sender: TObject);
    procedure sbDataClick(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure AtualizaSSLLibsCombo;
    procedure spPathSchemasClick(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure btnInutClick(Sender: TObject);
    procedure sqlDadosCalcFields(DataSet: TDataSet);
    procedure lblRegistroDblClick(Sender: TObject);
    procedure ConfigurarDANFE1Click(Sender: TObject);
    procedure sbEnviarCartaClick(Sender: TObject);
    procedure memCartaEnter(Sender: TObject);
    procedure memCartaExit(Sender: TObject);
    procedure TNotaCalcFields(DataSet: TDataSet);
    procedure sbCancelarEnviarClick(Sender: TObject);
    procedure btn_TestarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ACBrMail1AfterMailProcess(Sender: TObject);
    procedure ACBrMail1BeforeMailProcess(Sender: TObject);
    procedure ACBrMail1MailException(const AMail: TACBrMail; const E: Exception;
      var ThrowIt: Boolean);
    procedure ACBrMail1MailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure dtInicialChange(Sender: TObject);
    procedure dtFinalChange(Sender: TObject);
    procedure lblPortaDblClick(Sender: TObject);
    procedure bt_nfe_rejeitarClick(Sender: TObject);
    procedure CopiarXMLMemria1Click(Sender: TObject);
    procedure CopiarXMLMemria2Click(Sender: TObject);
    procedure DownloadarquivoXMLePDF1Click(Sender: TObject);
    procedure CopiararquivoPDFMemria1Click(Sender: TObject);
    procedure DownloadarquivoPDF1Click(Sender: TObject);

  private
    vTag,vKey:Integer;
    vpMarca, vpEsp: String;
    vpArqXml, vpArqPdf: TStringStream;

    function FazendaEstadual(pUF: String): String;
    function fEnviarEmailNormal(const sSmtpHost, sSmtpPort, sSmtpUser,
          sSmtpPasswd, sFrom, sTo, sAssunto: String; sMensagem: TStrings;
          SSL: Boolean; sCC, Anexos: TStrings; PedeConfirma, AguardarEnvio: Boolean;
          NomeRemetente: String; TLS: Boolean; HTML:Boolean):String;
    function fBuscaCaminho:String;
    procedure  pCopiaArquivoMemoria(vtp:String);
    procedure  pCopiaArquivoDownload(vtp:String);
    procedure  pSalvarArquivoNFE(sArqTipo, sArqSalvar: String);
    function   pObterArquivoNFE(sArqTipo:String): String;
    function   pImportarArquivoNFE(vfarq, vfano, vfmes:String): String;
    procedure  pExcluirArquivosTmp;

  public
    { Public declarations }
    procedure LerConfiguracao;
    function  GerarNFe(NumNFe:String):String;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    function  VerificaExisteXml(vAbreDialog:Boolean = true):String;
    procedure pAtualizaSqlDados;
    procedure pAtualizaTNota;
    function  pPesquisaCNPJ(xUF,xDocumento: String):String;

  end;

var
  FfrmGerenciadorNFE: TFfrmGerenciadorNFE;

const
  SELDIRHELP = 1000;

implementation

uses Menu, Rotina, Data, Pesq, Mapi, ShellAPI, Email,
     smtpsend, ssl_openssl, mimemess, mimepart, zModeloRel,
     zEmail; // units para enviar email

{$R *.DFM}

procedure TFfrmGerenciadorNFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FfrmGerenciadorNFE);
end;

procedure TFfrmGerenciadorNFE.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;
begin
  cbSSLLib.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbSSLLib.ItemIndex := 0 ;

  cbCryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;
  cbCryptLib.ItemIndex := 0 ;

  cbHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;
  cbHttpLib.ItemIndex := 0 ;

  cbXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;
  cbXmlSignLib.ItemIndex := 0 ;

  cbSSLType.Items.Clear ;
  For Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) ) ;
  cbSSLType.ItemIndex := 0 ;

  PageControl1.ActivePageIndex := 0;
end;

procedure TFfrmGerenciadorNFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmGerenciadorNFE.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmGerenciadorNFE.btnSalvarConfigClick(Sender: TObject);
begin
  if (Length(Trim(edtValidade.text)) < 7) then
  begin
    ShowMessage('Obrigatório informar data de validade!');
    edtValidade.SetFocus;
    Exit;
  end;

  tbConfig.Edit;
  if tbConfigRegistro.asInteger = 0 then tbConfigRegistro.asInteger := 1;

  //Versão 4.0
  tbConfigCER_SSLLib.asInteger    := cbSSLLib.ItemIndex;
  tbConfigCER_CryptLib.asInteger  := cbCryptLib.ItemIndex;
  tbConfigCER_HttpLib.asInteger   := cbHttpLib.ItemIndex;
  tbConfigCER_XmlSignLib.asInteger:= cbXmlSignLib.ItemIndex;
  tbConfigWEB_SSLType.asInteger   := cbSSLType.ItemIndex;


  tbConfig.Post;

  Sleep(1500);

  dm.TEmpresa.Edit;
  dm.TEmpresa.Post;
  tbConfig.Edit;
  dm.TEmpresa.Edit;
  LerConfiguracao;
  ShowMessage('Dados Salvo!');
end;

procedure TFfrmGerenciadorNFE.FormShow(Sender: TObject);
begin
  tabCarta.TabVisible := False;
  tabInutilizar.TabVisible := False;
  tabCancelar.TabVisible := False;
  pnl_log.Visible := false;
  pnl_msg.Visible := false;
  dtInicial.Date := Date - 3;
  dtFinal.Date := Date;
  tbConfig.Close;

  tbConfig.Open;
  dm.TEmpresa.Open;
  if tbConfig.isEmpty then tbConfig.Append
  else tbConfig.Edit;
  dm.TEmpresa.Edit;
  LerConfiguracao;
  btnFiltro.OnClick(btnFiltro);
end;

function TFfrmGerenciadorNFE.VerificaExisteXml(vAbreDialog:Boolean = true):String;
var sXML, varq, vchave, vano, vmes: string;
begin
//    C:\ACWebFruits\NFE_Arquivos\42130511741540000142550010000034691000034692-NFe.xml
  sXML := TNotanfe_xml.asstring;
  vchave := TNotanfe_chave.asstring;
  if vchave = '' then vchave := Copy(sxml, length(varq)+1, 44);

  varq := ExtractFileDir(sXML)+'\';
  if varq = '' then varq := 'C:\ACWebFruits\NFE_Arquivos\';
  if not DirectoryExists(varq) then varq := xdirsi+'NFE_Arquivos\';

  vano := '20'+copy(vchave, 3,2);
  vmes := copy(vchave, 5,2);
  //Se não encontrar - primeiro vai tentar procurar na pasta - que foi salvo no banco
  if not FileExists(sxml) then
  begin
    //Vai procurar no banco
    if (pObterArquivoNFE('XML') <> '') then
      sxml := pImportarArquivoNFE(varq, vano, vmes)
    else
      sxml := varq +vchave+'-NFe.xml';

    //Procura na pasta antiga - nfe_arquivos
    if not FileExists(sxml) then
    begin
      sxml := varq +vchave+'-nfe.xml'; //minusculo
      if not FileExists(sxml) then
      begin
        //Procura na pasta antiga - nfe_arquivos + Ano 2010 pelo nfe
        sxml := varq + vano +'\'+vchave+'-nfe.xml';
        if not FileExists(sxml) then
        begin
          //Procura na pasta antiga - nfe_arquivos + Ano 2010 pelo nfe - 'XML2015'
          sxml := varq + 'xml'+vano +'\'+vchave+'-nfe.xml';
          if not FileExists(sxml) then
          begin
            //Procura na pasta antiga - nfe_arquivos + Ano 2010 pelo nfe - 'XML2015'+mes
            sxml := varq + 'xml'+vano+vmes+'\'+vchave+'-nfe.xml';
            if not FileExists(sxml) then
            begin
              //Abre a pesquisa
              if vAbreDialog then
              begin
                OpenDialog1.Title := 'Selecione a NFE';
                OpenDialog1.DefaultExt := '*-nfe.XML';
                OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
                OpenDialog1.InitialDir := ExtractFileDir(application.ExeName); //ACBrNFe1.Configuracoes.Geral.PathSalvar;
                if OpenDialog1.Execute then
                  sXML := OpenDialog1.FileName;
                if not FileExists(sxml) then
                  sXML := '';
              end
              else
                sXML := '';
            end;
          end;
        end;
      end;
    end;
  end;
  result := sXML;
end;

procedure TFfrmGerenciadorNFE.sbCancelarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  tabCarta.TabVisible := False;
end;

procedure TFfrmGerenciadorNFE.sbSalvarClick(Sender: TObject);
var sXML: string;
begin
  if TNota.isEmpty then exit;

  sXML := TNotanfe_xml.asstring;
  if sxml = '' then exit;

  if (Trim(memCarta.Lines.Text) = '') then
  begin
    ShowMessage('Informar texto a ser alterado!');
    Exit;
  end;

  if not frPerg(PChar('Deseja Salvar?')) then exit;

  memCarta.Lines.Text := frAcen(memCarta.Lines.Text);
  TNota.Edit;
  TNotaNFE_CCE1.asString := Trim(Copy(memCarta.Lines.Text,1,120));
  TNotaNFE_CCE2.asString := Trim(Copy(memCarta.Lines.Text,121,120));
  TNotaNFE_CCE3.asString := Trim(Copy(memCarta.Lines.Text,241,120));
  TNotaNFE_CCE4.asString := Trim(Copy(memCarta.Lines.Text,361,120));
  TNotaNFE_CCE5.asString := Trim(Copy(memCarta.Lines.Text,481,120));
  TNotaNFE_CCE6.asString := Trim(Copy(memCarta.Lines.Text,601,120));
  TNotaNFE_CCE7.asString := Trim(Copy(memCarta.Lines.Text,721,120));
  TNotaNFE_CCE8.asString := Trim(Copy(memCarta.Lines.Text,841,120));
  TNota.Post;
  pAtualizaSqlDados;

end;

procedure TFfrmGerenciadorNFE.sbEnviarCartaClick(Sender: TObject);
var vAux, sXML, Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
  if TNota.isEmpty then exit;

  sXML := TNotanfe_xml.asstring;
  if sxml = '' then exit;

  if (Trim(memCarta.Lines.Text) = '') then
  begin
    ShowMessage('Informar texto a ser alterado!');
    Exit;
  end;

  if not frPerg(PChar('Deseja Enviar?')) then exit;

  sxml := VerificaExisteXml;
  if FileExists(sxml) then
  begin
    Chave := Trim(OnlyNumber(TNotaNFE_Chave.AsString));
    idLote := '1';
    CNPJ := Copy(Chave,7,14);
    nSeqEvento := TNotaNFE_CCESEQ.AsString;
    Correcao := Trim(memCarta.Lines.Text);
    ACBrNFe1.EventoNFe.Evento.Clear;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := Chave;
      infEvento.CNPJ   := CNPJ;
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := StrToInt(nSeqEvento);
      infEvento.detEvento.xCorrecao := Correcao;
    end;
    if ACBrNFe1.EnviarEvento(StrToInt(idLote)) then
    begin
      Sleep(1500);

      MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
      LoadXML(MemoResp, WBResposta);
      PageControl1.ActivePageIndex := 0;
      tabCarta.TabVisible := False;
    end
    else begin
      with ACBrNFe1.WebServices.EnvEvento do
      begin
        raise Exception.Create(
          'Ocorreram erros ao enviar a Carta de Correção:' + sLineBreak +
          'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
          'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
          'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
          sLineBreak +
          'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
          'Motivo: '   + EventoRetorno.xMotivo
        );
      end;
    end;
  end
  else application.messagebox('Arquivo XML não corrigida!','Erro',mb_ok+mb_iconerror);

end;

procedure TFfrmGerenciadorNFE.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
    tbConfigCer_Caminho.AsString := OpenDialog1.FileName;
end;

procedure TFfrmGerenciadorNFE.sbtnGetCertClick(Sender: TObject);
begin
//  {$IFNDEF ACBrNFeOpenSSL}
  //tbConfigCER_NumSerie.asString := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
  tbConfigCER_NumSerie.asString := ACBrNFe1.SSL.SelecionarCertificado;
  //edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
//  {$ENDIF}
end;

procedure TFfrmGerenciadorNFE.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
    tbConfigGER_LOGOMARCA.asString := OpenDialog1.FileName;
end;

procedure TFfrmGerenciadorNFE.sbtnPathSalvarClick(Sender: TObject);
var Dir: string;
begin
  try
    if Length(tbConfigGer_PathSalvar.AsString) <= 0 then
       Dir := ExtractFileDir(Application.ExeName)+'\NFE_Arquivos'
    else
       Dir := tbConfigGer_PathSalvar.AsString;
    OpenDialog1.Title := 'Selecione um arquivo';
    OpenDialog1.DefaultExt := '*.*';
    OpenDialog1.Filter := 'Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := Dir;
    if OpenDialog1.Execute then
      Dir := ExtractFileDir(OpenDialog1.FileName);
  except
    Dir := ExtractFileDir('C:\NFE_Arquivos');
  end;

  //if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
  tbConfigGer_PathSalvar.AsString := Dir;

end;

procedure TFfrmGerenciadorNFE.spbTudoClick(Sender: TObject);
begin
  TNota.DisableControls;
  TNota.First;
  while not TNota.Eof do
  begin
    TNota.Edit;
    if (not spbTudo.Checked) then
       TNota.FieldByName('XSEL').Text:=''
    else
       TNota.FieldByName('XSEL').Text:='*';
    TNota.Post;
    TNota.Next;
  end;
  TNota.EnableControls;
  pAtualizaTNota;
  pAtualizaSqlDados;
end;

procedure TFfrmGerenciadorNFE.txtJust_iniExit(Sender: TObject);
begin
  if (trim(txtJust_fim.Text) = '') then
    txtJust_fim.text := txtJust_ini.text;
end;

procedure TFfrmGerenciadorNFE.LerConfiguracao;
var Ok : Boolean;
    vdias: Real;
begin
  try
    ACBrNFe1.Configuracoes.Certificados.ArquivoPFX   := edtCaminho.Text;
    //ACBrNFe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
    ACBrNFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie  := edtNumSerie.Text;
//    edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
//    {$ENDIF}

    ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));

    ACBrNFe1.Configuracoes.Arquivos.Salvar       := ckSalvar.Checked;
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar   := fBuscaCaminho; //edtPathLogs.Text;

    //Caption := 'Gerenciador de NFe.  ' +fBuscaCaminho;

    ACBrNFe1.Configuracoes.WebServices.UF         := cbUF.Text;
    ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
    ACBrNFe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

    ACBrNFe1.Configuracoes.WebServices.ProxyHost := '';//edtProxyHost.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyPort := '';//edtProxyPorta.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyUser := '';//edtProxyUser.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyPass := '';//edtProxySenha.Text;

    //Versão 4.00
    cbSSLLib.ItemIndex     := tbConfigCER_SSLLib.asInteger;
    cbCryptLib.ItemIndex   := tbConfigCER_CryptLib.asInteger;
    cbHttpLib.ItemIndex    := tbConfigCER_HttpLib.asInteger;
    cbXmlSignLib.ItemIndex := tbConfigCER_XmlSignLib.asInteger;
    cbSSLType.ItemIndex    := tbConfigWEB_SSLType.asInteger;
    ACBrNFe1.Configuracoes.Geral.SSLLib          := TSSLLib(cbSSLLib.ItemIndex);
    ACBrNFe1.Configuracoes.Geral.SSLCryptLib     := TSSLCryptLib(cbCryptLib.ItemIndex);
    ACBrNFe1.Configuracoes.Geral.SSLHttpLib      := TSSLHttpLib(cbHttpLib.ItemIndex);
    ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib   := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
    AtualizaSSLLibsCombo;
    ACBrNFe1.Configuracoes.Geral.ModeloDF        := TpcnModeloDF(0);
    ACBrNFe1.Configuracoes.Geral.VersaoDF        := TpcnVersaoDF(cbVersaoDF.ItemIndex+2);
    ACBrNFe1.Configuracoes.Arquivos.PathSchemas  := edtPathSchemas.Text;
    ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

    ACBrNFe1.Configuracoes.WebServices.Salvar     := True;
    ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
    ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet := 10000;
    ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas := 10000;
    ACBrNFe1.Configuracoes.WebServices.TimeOut := 10000;
    ACBrNFe1.Configuracoes.WebServices.Tentativas := 2;

    ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := True;
//    ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';
    ACBrNFe1.Configuracoes.Geral.IdentarXML := False;

    if ACBrNFe1.DANFE <> nil then
    begin
      ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
      ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
    end;

    //Ler data do vencimento do certificado
    if (Length(trim(edtValidade.text)) > 7) then
    begin
      vdias := tbConfigCER_VALIDADE.Value - Date;
      if vdias <= 0 then
        frPerg(PChar('Certificado Dígital Exprirado em '+FormatDateTime('dd/mm/yyyy',tbConfigCER_VALIDADE.Value)),'OK')
      else
        if vdias <= 15 then
          frPerg(PChar('* ATENÇÃO * '#13'Falta '+FloatToStr(vdias)+' dia(s) para expirar o Certificado Dígital !'#13'Data para Expirar : '+FormatDateTime('dd/mm/yyyy',tbConfigCER_VALIDADE.Value)),'OK');
    end;

    ACBrNFeDANFEFR1.FastFile := ExtractFileDir(application.ExeName) + '\DANFE.fr3';
    ACBrNFe1.DANFE:= ACBrNFeDANFEFR1;

  finally

    lblRodape.Caption := '  Ambiente (';
    if tbConfigWEB_AMBIENTE.AsString = 'H' then
      lblRodape.Caption := lblRodape.Caption + 'Homologação'
    else
      lblRodape.Caption := lblRodape.Caption + 'Produção';

    //Força homologação
//    if (Pos('JARRIER', xAcess) > 0) then
//      lblRodape.Caption := lblRodape.Caption + 'Homologação/ACW';

    lblRodape.Caption := lblRodape.Caption + ') - Validade ('+edtValidade.text+')';
    lblRodape.Caption := lblRodape.Caption + ' - ' +fBuscaCaminho;

  end;
end;

procedure TFfrmGerenciadorNFE.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure TFfrmGerenciadorNFE.memCartaEnter(Sender: TObject);
begin

  keyPreview := False;

end;

procedure TFfrmGerenciadorNFE.memCartaExit(Sender: TObject);
begin

  keyPreview := True;

end;

procedure TFfrmGerenciadorNFE.bt_nfe_statusClick(Sender: TObject);
var vmsgtag: Integer;
begin
  vmsgtag := bt_nfe_status.Tag;
  bt_nfe_status.Tag := 0;

  LerConfiguracao;
  Application.ProcessMessages;

  pgLog.ActivePageIndex := 0;
  if ACBrNFe1.WebServices.StatusServico.Executar then
  begin
    Sleep(1000);

    pnl_msg.Caption := '';
    pnl_msg.Visible := False;
    pnl_log.Visible := True;
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetornoWS);
    LoadXML(MemoResp, WBResposta);
    MemoLog.Lines.Clear;
    MemoLog.Lines.Add('***  OK  ***');

    if (vmsgtag = 1) then

      MemoLog.Lines.Add('Conectado ao WebService da receita...')

    else begin

      MemoLog.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
      MemoLog.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
      MemoLog.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
      MemoLog.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);

    end;
  end
  else begin
    Sleep(1000);
    pnl_msg.Caption := '';
    pnl_msg.Visible := False;
    pnl_log.Visible := True;
    MemoLog.Lines.Clear;
    MemoLog.Lines.Add('* ERRO/ERRO/ERRO *');

    if ACBrNFe1.WebServices.StatusServico.cStat > 99 then
    begin
      MemoLog.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
      MemoLog.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
      MemoLog.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
      MemoLog.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
      MemoLog.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
      MemoLog.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
      MemoLog.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
      MemoLog.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
      MemoLog.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
    end
    else begin
      MemoLog.Lines.Add('WebService Consulta Status serviço:');
      MemoLog.Lines.Add('  - Inativo ou Inoperante tente novamente.');
    end;

    ShowMessage('Erro ao conectar com o webService da receita!');
    Abort;

  end
end;

procedure TFfrmGerenciadorNFE.btnFiltroClick(Sender: TObject);
begin
  dbDados.Enabled := True;
  pnl_log.Visible := False;
  pnl_msg.Visible := False;
  sqldados.close;
  sqldados.sql.Clear;
  sqlDados.SQL.Add('select * from nfvenda');
  sqlDados.SQL.Add('where NFE_Modelo = '+QuotedStr('55'));
  sqlDados.SQL.Add('  and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  sqlDados.SQL.Add('order by lanc desc');
  sqlDados.Open;

  TNota.Close;
  TNota.Filter := 'NFE_Modelo = '+QuotedStr('55')+
                  ' and Data > '+ QuotedStr(FormatDateTime('dd/mm/yyyy',dtInicial.Date-1))+
                  ' and Data < '+ QuotedStr(FormatDateTime('dd/mm/yyyy',dtFinal.Date+1));
  TNota.Filtered := True;
  TNota.Open;
  try
    dbDados.SelectedIndex := 2;

    if dbDados.Focused then
      dbDados.SetFocus;

    spbTudo.Checked := false;
    pAtualizaTNota;
  except
  end;
  lblRegistro.Caption := '(Registro: '+IntToStr(TNota.RecordCount)+')';
end;

procedure TFfrmGerenciadorNFE.btnInutClick(Sender: TObject);
begin
  lblInut.Caption := 'PARAR';
end;

procedure TFfrmGerenciadorNFE.dbDadosDblClick(Sender: TObject);
var vi: Integer;
begin
  pAtualizaTNota;
  TNota.Edit;
  if TNota.FieldByName('XSEL').Text='*' then
    TNota.FieldByName('XSEL').Text:=''
  else TNota.FieldByName('XSEL').Text:='*';
  TNota.Post;
  pAtualizaSqlDados;
end;

procedure TFfrmGerenciadorNFE.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if sqldadosnfe_status.AsString = 'NN' then //Não enviada
    dbDados.Canvas.Font.Color:= clBlack;
  if sqldadosnfe_status.AsString = 'VA' then //Validade
    dbDados.Canvas.Font.Color:= clGreen; //$00004000;
  if sqldadosnfe_status.AsString = 'VR' then //Aguardando recibo
    dbDados.Canvas.Font.Color:= $00004080;
  if sqldadosnfe_status.AsString = 'EV' then //Enviada - assinatura
    dbDados.Canvas.Font.Color:= $00004080;
  if sqldadosnfe_status.AsString = 'OK' then //Aceita
    dbDados.Canvas.Font.Color:= clNavy;
  if sqldadosnfe_status.AsString = 'ER' then //Erro
    dbDados.Canvas.Font.Color:= clRed;
  if sqldadosnfe_status.AsString = 'CA' then //Cancelada
    dbDados.Canvas.Font.Color:= clMaroon;
  if sqldadosnfe_status.AsString = 'RE' then //Rejeitado manual
    dbDados.Canvas.Font.Color:= clMaroon;
  if sqldadosnfe_status.AsString = 'DN' then //Denegada
    dbDados.Canvas.Font.Color:= clMaroon;

  if dbDados.SelectedRows.CurrentRowSelected then
    dbDados.Canvas.Font.Color:= clBlack;

  dbDados.DefaultDrawDataCell(Rect, dbDados.columns[datacol].field, State);
end;

procedure TFfrmGerenciadorNFE.DownloadarquivoPDF1Click(Sender: TObject);
begin
  pCopiaArquivoDownload('PDF');
end;

procedure TFfrmGerenciadorNFE.DownloadarquivoXMLePDF1Click(Sender: TObject);
begin
  pCopiaArquivoDownload('XML');
  pCopiaArquivoDownload('PDF');
end;

procedure TFfrmGerenciadorNFE.dtFiltroChange(Sender: TObject);
begin
  btnFiltro.onClick(sender);
end;

procedure TFfrmGerenciadorNFE.dtFinalChange(Sender: TObject);
begin
  if not(dtFinal.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmGerenciadorNFE.dtInicialChange(Sender: TObject);
begin
  if not(dtInicial.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmGerenciadorNFE.bt_nfe_consultarClick(Sender: TObject);
var sXML : string;
begin
  pnl_log.Visible := False;
  if TNota.IsEmpty then exit;

 try
   pAtualizaTNota;
   sxml := VerificaExisteXml;
   if sxml = '' then exit;
   if FileExists(sxml) then
   begin
     pnl_log.Visible := True;
     ACBrNFe1.NotasFiscais.Clear;
     ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
     ACBrNFe1.Consultar;
     Sleep(1500);

     MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
     MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
     LoadXML(MemoResp, WBResposta);

     MemoLog.Lines.Clear;
     MemoLog.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Consulta.cStat));
     MemoLog.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Consulta.xMotivo);

     if (ACBrNFe1.WebServices.Consulta.cStat < 120) then
     begin
       TNota.Edit;
       if (ACBrNFe1.WebServices.Consulta.cStat = 101) then
       begin
         //Cancelada
         TNotanfe_status.asString := 'CA';
         TNotaDIFCOD.asInteger := -1;
       end
       else begin
         if (TNotanfe_status.asString <> 'OK') then
           TNotanfe_status.asString := 'OK';
       end;
       TNotaOBS1.asString := IntToStr(ACBrNFe1.WebServices.Consulta.cStat)+' - '+ACBrNFe1.WebServices.Consulta.xMotivo;
       TNotaNFE_Protoc.asString := ACBrNFe1.WebServices.Consulta.Protocolo;
       TNotaNFE_Chave.asString  := ACBrNFe1.WebServices.Consulta.NFeChave;
       TNota.Post;
       pAtualizaSqlDados;
     end;
   end
   else
    application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
  except
    on E:exception do
    begin
      application.MessageBox(PChar('Erro ao criar/imprimir NFe!'+#13+'Mensagem: '+E.message),'Erro', mb_ok+mb_iconerror);
    end;
  end;
end;

procedure TFfrmGerenciadorNFE.bt_nfe_validarClick(Sender: TObject);
var sXML, vmsg : string;
    vtrue: Boolean;
begin
  pnl_log.Visible := False;
  vtrue := True;
  vmsg := '';

  //Pode enviar
  pAtualizaTNota;

  if (TNotanfe_status.asString = 'OK') then
    vmsg := 'Esta nota já foi validada/aceita pela receita!';

  if (TNotanfe_status.asString = 'CA') then
    vmsg := 'Esta nota já foi cancelada pela receita!';

  if (TNotanfe_status.asString = 'RE') then
    vmsg := 'Esta nota já foi rejeitada pelo usuário!';

  if (TNotanfe_status.asString = 'DN') then
    vmsg := 'Esta nota já foi denegada pela receita!';

  if (vmsg <> '') then
  begin
    ShowMessage(vmsg);
    vtrue := False;
  end;

  if vtrue then
  begin

    //Verifica o status antes
    //Evitar erro antes de enviar
    bt_nfe_status.Tag := 1;

    if tbConfigWEB_AMBIENTE.AsString <> 'H' then
      bt_nfe_status.onClick(bt_nfe_status);

    if not frPerg(PChar('Deseja Enviar N.F.E.?'+#13+'Número: '+frPree(TNotaNota.asString, 6, '0', 0))) then exit;

    dbDados.Enabled := False;
    pgLog.ActivePageIndex := 0;
    pnl_log.Visible := False;
    //LerConfiguracao;

    //Application.ProcessMessages;

    try
      ACBrNFe1.NotasFiscais.Clear;
      sXML := GerarNFe(frPree(TNotaNota.asString, 6, '0', 0));
      Application.ProcessMessages;;
      Sleep(1000);

      if FileExists(sXML) then
      begin
        //Validar
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(sXML);

        ACBrNFe1.NotasFiscais.Validar;
        Sleep(1000);

        TNota.Edit;
        TNotaNFE_XML.asString := sxml;
        if ACBrNFe1.NotasFiscais.Items[0].Alertas = '' then
        begin
//          TNotaOBS1.asString := IntToStr(ACBrNFe1.WebServices.EnviarDPEC.cStat)+' - '+ACBrNFe1.WebServices.EnviarDPEC.xMotivo;
          TNotanfe_status.asString := 'VA';
          TNota.Post;
          pAtualizaSqlDados;
        end
        else begin
          TNotaOBS1.asString := 'Alertas: '+ACBrNFe1.NotasFiscais.Items[0].Alertas;
          TNotanfe_status.asString := 'ER';
          TNota.Post;
          pAtualizaSqlDados;
        end;

        //Transmitir
        bt_nfe_assinar.Click;

      end
      else Application.MessageBox('Ocorreu erro no formato do XML, Verificar cadastros','Erro',mb_ok+mb_iconerror);
    except
      on E:exception do
      begin
        dbDados.Enabled := True;
        application.MessageBox(PChar('Erro ao criar/imprimir NFe!'+#13+
                                         'Mensagem: '+E.message),'Erro',
                                         mb_ok+mb_iconerror);
      end;
    end;
    dbDados.Enabled := True;
  end;
end;

procedure TFfrmGerenciadorNFE.Button1Click(Sender: TObject);
var
  Dir, ArqXML: string;
  MS: TMemoryStream;
  P, N: Integer;
begin

  Dir := ExtractFilePath(ParamStr(0));

  P := pos(' - ', edtEmailAssunto.Text);
  if P > 0 then
  begin
    N := StrToIntDef(copy(edtEmailAssunto.Text, P + 3, 5), 0) + 1;
    edtEmailAssunto.Text := copy(edtEmailAssunto.Text, 1, P + 2) + IntToStr(N);
  end;

  ACBrMail1.Clear;
  ACBrMail1.IsHTML := False;//cbUsarHTML.Checked;
  ACBrMail1.Subject := edtEmailAssunto.Text;

  if (edtSmtp_Host.Text <> '') then
  begin
    //Se for smtp - padrão
    ACBrMail1.Host     := edtSmtp_Host.text;
    ACBrMail1.Port     := edtSmtp_Porta.text;
    ACBrMail1.Username := edtSmtp_UserName.text;
    ACBrMail1.From     := edtSmtp_User.text;
    ACBrMail1.FromName := Copy(xEmpre,1,30);
    ACBrMail1.Password := edtSmtp_Senha.text;
    ACBrMail1.AddAddress(edtSmtpUser.text, edtSmtpUser.text);
  end
  else begin
    //Do próprio usuário
    ACBrMail1.Host     := edtSmtpHost.text;
    ACBrMail1.Port     := edtSmtpPort.text;
    ACBrMail1.Username := edtSmtpUser.text;
    ACBrMail1.From     := edtSmtpUser.text;
    ACBrMail1.FromName := edtSmtpUser.text;
    ACBrMail1.Password := edtSmtpPass.text;
  end;

  ACBrMail1.SetTLS := cbEmailTLS.Checked;
  ACBrMail1.SetSSL := cbEmailSSL.Checked;  // Verifique se o seu servidor necessita SSL

  ACBrMail1.Send();

  mLog.Lines.Add('Teste finalizado.');

end;

function TFfrmGerenciadorNFE.GerarNFe(NumNFe:String):String;
var vitem, vdupparc: Integer;
    vdest, vprod, vfinnfe, vcfopdesc, vfgrefer:String;
    vperc:Double;
    vprdBC,vprdICMS,vprdBCST,vprdOUT,vprdII,vprdIPI,vprdPIS,vprdCOFINS,vprdNF: Double;
    vString, vCEST: String;
    vProdMarca, vProdEsp: String;
begin
 try
   //Verifica se já não existe para não dar duplicidade


   with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     //Abre tabelas auxiliares
     TProduto.Close;
     TProduto.Filter := 'LANC = '+ TNotaLanc.AsString;
     TProduto.Open;
     TFinan.Close;
     TFinan.Filter := 'LANC = '+ TNotaLanc.AsString;
     TFinan.Open;
     TImportac.Close;
     TImportac.Filter := 'LANC = '+ TNotaLanc.AsString;
     TImportac.Open;

     NumNFE := frPree(NumNFE, 6, '0', 0);

     //Cadastro de nota
     fsql(1,1,['Select razao, item, finnfe, cfopdesc, fgrefer from cadnota where codigo = '+TNotaDifCod.AsString],1);
     vdest     := dm.qrSql1.FieldByName('razao').asString;
     vprod     := dm.qrSql1.FieldByName('item').asString;
     vfinnfe   := dm.qrSql1.FieldByName('finnfe').asString;
     vcfopdesc := dm.qrSql1.FieldByName('cfopdesc').asString;
     vfgrefer  := dm.qrSql1.FieldByName('fgrefer').asString;

     //IDENTIFICAÇÃO NA CHAVE DE ACESSO
     //Ide.cNF       := StrToInt(NumNFe);
     if (StrToInt(NumNFe) = TNotaLanc.asInteger) then
       Ide.cNF       := StrToInt(NumNFe)+100
     else
       Ide.cNF       := StrToInt(TNotaLanc.AsString);

     if (Trim(vcfopdesc) <> '')  then
       Ide.natOp     := Trim(vcfopdesc)
     else
      Ide.natOp     := Copy(UpperCase(fBus(1,['Select Descricao From CadNatur Where Codigo = 0'+ frSubs(TNotaNaturCod.Text,',','.')],1)),1,60);

     if TFinan.RecordCount = 0 then
       Ide.indPag    := ipVista
     else
       Ide.indPag    := ipPrazo;

     Ide.modelo    := 55;
     Ide.serie     := TNotaSerie.AsInteger;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := TNotaData.Value;
     Ide.dSaiEnt   := TNotaEntrega.Value;
     Ide.hSaiEnt   := Now;

     if TNotaDif.AsString = 'S' then
       Ide.tpNF      := tnSaida
     else
       Ide.tpNF      := tnEntrada;

     //if TNotaSerie.AsInteger > 900 then Ide.tpEmis := teContingencia
     //else Ide.tpEmis    := teNormal;
     //TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA, teSVCAN, teSVCRS, teSVCSP, teOffLine);

     Ide.tpEmis    :=  ACBrNFe1.Configuracoes.Geral.FormaEmissao;

     if tbConfigWEB_AMBIENTE.AsString = 'P' then
       Ide.tpAmb := taProducao
     else
       Ide.tpAmb := taHomologacao;

     //Força Homologação
//     if (Pos('JARRIER', xAcess) > 0) then
//       Ide.tpAmb := taHomologacao;

     Ide.verProc   := frVersao; //Versão do seu sistema
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);

     if vfinnfe = 'A' then
       Ide.finNFe    := fnAjuste
     else if vfinnfe = 'D' then
       Ide.finNFe    := fnDevolucao
     else if vfinnfe = 'C' then
       Ide.finNFe    := fnComplementar
     else
       Ide.finNFe    := fnNormal;

     //Verifica tipo de nota
     if frehDevolucao(frSubs(TNotaNaturCod.Text,',','')) or
        (vfinnfe = 'C') or (vfinnfe = 'D') or (vfgrefer = 'S') then
     begin
       vitem := 0;
       if frehDevolucao(frSubs(TNotaNaturCod.Text,',','')) then
         Ide.finNFe := fnDevolucao;

       fSql(1,3,['Select campo1, nota, nfp_mmaa, nfp_modelo, nfp_serie from nfvendref where lanc = 0'+TNotaLanc.AsString],1);
       dm.qrSql3.First;

       while not dm.qrSql3.Eof do
       begin

         //Campo 1 <> de em branco ou (ou outros não podem estar em branco)
         if (Trim(dm.qrSql3.fields[0].AsString) <> '')   or
            ((Trim(dm.qrSql3.fields[1].AsString) <> '')  and
             (Trim(dm.qrSql3.fields[2].AsString) <> '')  and
             (Trim(dm.qrSql3.fields[3].AsString) <> '')  and
             (Trim(dm.qrSql3.fields[4].AsString) <> '')) then
         begin
           Ide.NFref.Add;

           //Nota fiscal chave acesso
           if (Trim(dm.qrSql3.fields[0].AsString) <> '') then
             Ide.NFref[vitem].refNFe := Trim(dm.qrSql3.fields[0].AsString)

           else begin
             //Se for nota fiscal produtor manual
             if vdest = 'C' then
               fsql(1,1,['Select cpf, estado, doc from cadclien where codigo = '+TNotaCodigo.AsString],1)
             else
               fsql(1,1,['Select cpf, estado, doc from cadforne where codigo = '+TNotaCodigo.AsString],1);

             fsql(1,2,['select distinct SubString(numero from 1 fro 2) from cadcidad where estado = '+QuotedStr(dm.qrSql1.Fields[1].AsString)],1);

             Ide.NFref[vitem].RefNFP.cUF    := StrToIntDef(dm.qrSql2.Fields[0].AsString,42);
             Ide.NFref[vitem].RefNFP.CNPJCPF:= frTStr(dm.qrSql1.Fields[0].asString);
             Ide.NFref[vitem].RefNFP.IE     := frTStr(dm.qrSql1.Fields[2].asString);
             Ide.NFref[vitem].RefNFP.AAMM   := Copy(dm.qrSql3.fields[2].AsString,4,2)+Copy(dm.qrSql3.fields[2].AsString,1,2);
             Ide.NFref[vitem].RefNFP.modelo := dm.qrSql3.fields[3].AsString;
             Ide.NFref[vitem].RefNFP.serie  := dm.qrSql3.fields[4].AsInteger;
             Ide.NFref[vitem].RefNFP.nNF    := dm.qrSql3.fields[1].AsInteger;
           end;
           vitem := vitem + 1;
         end;

         dm.qrSql3.Next;
       end;

     end;
     vitem := 0;

     if Assigned(ACBrNFe1.DANFE) then  Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

     //EMITENTE
     Emit.CNPJCPF    := frTStr(edtEmitCNPJ.Text);

//     if (Trim(edtEmitIE.Text) = '') or (Trim(edtEmitIE.Text) = 'ISENTO') then Emit.IE := 'ISENTO'
     if (Trim(edtEmitIE.Text) = '') or (Trim(uppercase(edtEmitIE.Text)) = 'ISENTO') then Emit.IE := 'ISENTO'
     else Emit.IE := frTStr(edtEmitIE.Text);

     if TProduto.FieldByName('ehservico').asString = 'S' then
       if edtEmitIM.Text <> '' then
         Emit.IM         := frTStr(edtEmitIM.Text);

     Emit.CNAE       := frTStr(edtEmitCNAE.Text);

     if ckSimples.Checked then Emit.CRT := crtSimplesNacional
     else Emit.CRT := crtRegimeNormal;

     Emit.xNome             := edtEmitRazao.Text;
     Emit.xFant             := edtEmitRazao.Text;
     Emit.EnderEmit.fone    := edtEmitFone.Text;
     Emit.EnderEmit.CEP     := StrToInt(frTStr(edtEmitCEP.Text));
     Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
     Emit.EnderEmit.nro     := edtEmitNumero.Text;
     Emit.EnderEmit.xCpl    := '';
     Emit.EnderEmit.xBairro := edtEmitBairro.Text;
     Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
     Emit.EnderEmit.xMun    := edtEmitCidade.Text;
     Emit.EnderEmit.UF      := edtEmitUF.Text;
     Emit.enderEmit.cPais   := 1058;
     Emit.enderEmit.xPais   := 'BRASIL';

     if vdest = 'C' then
       fsql(1,1,['Select * from cadclien where codigo = '+TNotaCodigo.AsString],1)
     else
       fsql(1,1,['Select * from cadforne where codigo = '+TNotaCodigo.AsString],1);
//Tipo de consumidor
     if uppercase(edtEmitUF.Text) = uppercase(dm.qrSql1.FieldByName('Estado').asString) then
       Ide.idDest    := doInterna
     else begin
       if upperCase(dm.qrSql1.FieldByName('Estado').asString) = 'EX' then
         Ide.idDest    := doExterior
       else
         Ide.idDest    := doInterestadual;
     end;

     if vdest = 'C' then
     begin
       if uppercase(dm.qrSql1.FieldByName('Funsim').asString) = 'S' then
         Ide.indFinal  := cfConsumidorFinal
       else
         Ide.indFinal  := cfNao;
     end
     else
       Ide.indFinal  := cfNao;

//Cliente
     Ide.indPres    := pcPresencial;
     Ide.procEmi    := peAplicativoContribuinte;
     Ide.indIntermed:= iiOperacaoSemIntermediador;

     Dest.CNPJCPF           := frTStr(dm.qrSql1.FieldByName('CPF').asString);
{     if Length(Dest.CNPJCPF) < 12 then
     begin
        //Dest.IE := 'ISENTO';
        Dest.indIEDest := inNaoContribuinte;
        Ide.indFinal   := cfConsumidorFinal;
        //Ide.indPres    := pcNao;
     end
     else begin
}
       if (StrToFloatDef(frTStr(dm.qrSql1.FieldByName('DOC').asString),0) < 1) then
       begin
         Dest.indIEDest := inNaoContribuinte;
         Ide.indFinal   := cfConsumidorFinal;
//         Dest.IE := 'ISENTO'
       end
       else if (StrToFloatDef(frTStr(dm.qrSql1.FieldByName('DOC').asString),0) > 1) and (Trim(dm.qrSql1.FieldByName('DOC').asString) = 'ISENTO') then
       begin
         Dest.indIEDest:=inIsento;
         Ide.indFinal  := cfNao;
//         Dest.IE := 'ISENTO'
       end
       else begin
         Dest.IE := frTStr(dm.qrSql1.FieldByName('DOC').asString);
         Dest.indIEDest:=inContribuinte;
         Ide.indFinal  := cfNao;
       end;
//     end;
     Dest.ISUF              := '';
     Dest.xNome             := dm.qrSql1.FieldByName('Descricao').asString;
     Dest.EnderDest.Fone    := frTStr(dm.qrSql1.FieldByName('Fone').asString);
     Dest.EnderDest.CEP     := StrToIntDef(frTStr(dm.qrSql1.FieldByName('Cep').asString),0);
     Dest.EnderDest.xLgr    := dm.qrSql1.FieldByName('Endereco').asString;
     Dest.EnderDest.nro     := IntToStr(StrToIntDef(frTStr(dm.qrSql1.FieldByName('Endereco').asString),0));
     Dest.EnderDest.xCpl    := '';
     Dest.EnderDest.xBairro := dm.qrSql1.FieldByName('Bairro').asString;
     Dest.EnderDest.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSql1.FieldByName('CidadeCod').asString],1),0);
     Dest.EnderDest.xMun    := dm.qrSql1.FieldByName('CidadeDes').asString;
     Dest.EnderDest.UF      := upperCase(dm.qrSql1.FieldByName('Estado').asString);
     if upperCase(dm.qrSql1.FieldByName('Estado').asString) = 'EX' then
     begin
       Dest.EnderDest.cPais   := StrToIntDef(fBus(1,['Select PaisCod from cadcidad where codigo = 0'+dm.qrSql1.FieldByName('CidadeCod').asString],1),0);
       Dest.EnderDest.xPais   := fBus(1,['Select PaisNome from cadcidad where codigo = 0'+dm.qrSql1.FieldByName('CidadeCod').asString],1);
       Dest.idEstrangeiro     := dm.qrSql1.FieldByName('DOC').asString;
     end
     else begin
       Dest.EnderDest.cPais   := 1058;
       Dest.EnderDest.xPais   := 'BRASIL';
     end;

//*** RETIRADA OU ENTREGA
     //se Data maior = igual 07/05
     if (Date >= StrToDate('07/05/2019')) then
     begin
       //Endereco de retirada - Emitente
       if fTra(1,['Select * From CadEndereco Where Tipo = ''E'' and Lanc=0'+dm.TEmpresa.FieldByName('Codigo').asString],1) then
       begin
         if (TNotaDif.AsString = 'E') or (Trim(TNotaNaturCod.asString) = '5,901') then
         begin
           if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
           begin
             if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
               Retirada.CNPJCPF := frTStr(dm.qrSqlTra.FieldByName('CPF').asString);

             Retirada.xLgr    := dm.qrSqlTra.FieldByName('Endereco').asString;
             Retirada.nro     := dm.qrSqlTra.FieldByName('Numero').asString;
             Retirada.xCpl    := '';
             Retirada.xBairro := dm.qrSqlTra.FieldByName('Bairro').asString;
             Retirada.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSqlTra.FieldByName('CidadeCod').asString],1),0);
             Retirada.xMun    := dm.qrSqlTra.FieldByName('CidadeDes').asString;
             Retirada.UF      := dm.qrSqlTra.FieldByName('Estado').asString;
           end;
         end;
       end;
       //Endereco de Entrega - Emitente
       if fTra(1,['Select * From CadEndereco Where Tipo = ''T'' and Lanc=0'+dm.TEmpresa.FieldByName('Codigo').asString],1) then
       begin
         if (TNotaDif.AsString = 'S') and (Trim(TNotaNaturCod.asString) <> '5,901') then
         begin
           if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
           begin
             if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
               Entrega.CNPJCPF := frTStr(dm.qrSqlTra.FieldByName('CPF').asString);

             Entrega.xLgr    := dm.qrSqlTra.FieldByName('Endereco').asString;
             Entrega.nro     := dm.qrSqlTra.FieldByName('Numero').asString;
             Entrega.xCpl    := '';
             Entrega.xBairro := dm.qrSqlTra.FieldByName('Bairro').asString;
             Entrega.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSqlTra.FieldByName('CidadeCod').asString],1),0);
             Entrega.xMun    := dm.qrSqlTra.FieldByName('CidadeDes').asString;
             Entrega.UF      := dm.qrSqlTra.FieldByName('Estado').asString;
           end;
         end;
       end;

       //Endereço de entrega
       if vdest = 'C' then //Cliente
       begin
         if fTra(1,['Select * From CadEndereco Where Tipo = ''C'' and Lanc=0'+TNotaCodigo.asString],1) then
         begin
           if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
           begin
             if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
               Entrega.CNPJCPF := frTStr(dm.qrSqlTra.FieldByName('CPF').asString);

             Entrega.xLgr    := dm.qrSqlTra.FieldByName('Endereco').asString;
             Entrega.nro     := dm.qrSqlTra.FieldByName('Numero').asString;
             Entrega.xCpl    := '';
             Entrega.xBairro := dm.qrSqlTra.FieldByName('Bairro').asString;
             Entrega.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSqlTra.FieldByName('CidadeCod').asString],1),0);
             Entrega.xMun    := dm.qrSqlTra.FieldByName('CidadeDes').asString;
             Entrega.UF      := dm.qrSqlTra.FieldByName('Estado').asString;
           end;
         end;
       end;

       //Endereço de Retirada
       if vdest = 'F' then //Fornecedor
       begin
         if fTra(1,['Select * From CadEndereco Where Tipo = ''F'' and Lanc=0'+TNotaCodigo.asString],1) then
         begin
           if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
           begin
             if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
               Retirada.CNPJCPF := frTStr(dm.qrSqlTra.FieldByName('CPF').asString);

             Retirada.xLgr    := dm.qrSqlTra.FieldByName('Endereco').asString;
             Retirada.nro     := dm.qrSqlTra.FieldByName('Numero').asString;
             Retirada.xCpl    := '';
             Retirada.xBairro := dm.qrSqlTra.FieldByName('Bairro').asString;
             Retirada.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSqlTra.FieldByName('CidadeCod').asString],1),0);
             Retirada.xMun    := dm.qrSqlTra.FieldByName('CidadeDes').asString;
             Retirada.UF      := dm.qrSqlTra.FieldByName('Estado').asString;
           end;
         end;
       end;


       //Produtor
       if vdest = 'P' then //Produtor
       begin
         //Endereco de retirada - Produtor
         if fTra(1,['Select * From CadEndereco Where Tipo = ''D'' and Lanc=0'+TNotaCodigo.asString],1) then
         begin
           if (TNotaDif.AsString = 'E') or (Trim(TNotaNaturCod.asString) = '5,901') then
           begin
             if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
             begin
               if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
                 Retirada.CNPJCPF := frTStr(dm.qrSqlTra.FieldByName('CPF').asString);

               Retirada.xLgr    := dm.qrSqlTra.FieldByName('Endereco').asString;
               Retirada.nro     := dm.qrSqlTra.FieldByName('Numero').asString;
               Retirada.xCpl    := '';
               Retirada.xBairro := dm.qrSqlTra.FieldByName('Bairro').asString;
               Retirada.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSqlTra.FieldByName('CidadeCod').asString],1),0);
               Retirada.xMun    := dm.qrSqlTra.FieldByName('CidadeDes').asString;
               Retirada.UF      := dm.qrSqlTra.FieldByName('Estado').asString;
             end;
           end;
         end;
         //Endereco de Entrega - Produtor
         if fTra(1,['Select * From CadEndereco Where Tipo = ''G'' and Lanc=0'+TNotaCodigo.asString],1) then
         begin
           if (TNotaDif.AsString = 'S') and (Trim(TNotaNaturCod.asString) <> '5,901') then
           begin
             if (Trim(dm.qrSqlTra.FieldByName('Endereco').asString) <> '') then
             begin
               if (Trim(frTStr(dm.qrSqlTra.FieldByName('CPF').asString)) <> '') then
                 Entrega.CNPJCPF := frTStr(dm.qrSqlTra.FieldByName('CPF').asString);

               Entrega.xLgr    := dm.qrSqlTra.FieldByName('Endereco').asString;
               Entrega.nro     := dm.qrSqlTra.FieldByName('Numero').asString;
               Entrega.xCpl    := '';
               Entrega.xBairro := dm.qrSqlTra.FieldByName('Bairro').asString;
               Entrega.cMun    := StrToIntDef(fBus(1,['Select Numero from cadcidad where codigo = 0'+dm.qrSqlTra.FieldByName('CidadeCod').asString],1),0);
               Entrega.xMun    := dm.qrSqlTra.FieldByName('CidadeDes').asString;
               Entrega.UF      := dm.qrSqlTra.FieldByName('Estado').asString;
             end;
           end;
         end;
       end;

     end;
//***FIM RETIRADA OU ENTREGA

     //PRODUTOS
     TProduto.First;
     vitem := 0;
     vprdBC := 0;
     vprdICMS := 0;
     vprdBCST := 0;
     vprdOUT := 0;
     vprdII := 0;
     vprdIPI := 0;
     vprdPIS := 0;
     vprdCOFINS := 0;
     vpMarca := '';
     vpEsp   := '';
     while not TProduto.Eof do
     begin
       vitem := vitem + 1;

       with Det.Add do
       begin
         Prod.nItem    := vitem;

         if (Trim(TProduto.FieldByName('ProdutoCod').asString) <> '') then
           Prod.cProd    := TProduto.FieldByName('ProdutoCod').asString
         else
           Prod.cProd    := TProduto.FieldByName('Codigo').asString;
         Prod.cEAN     := 'SEM GTIN';
         Prod.xProd    := TProduto.FieldByName('Descricao').asString;
         if vprod = 'P' then
           Prod.NCM      := fBus(1,['Select NCM from cadprodu where codigo = 0'+TProduto.FieldByName('Codigo').asString],1)
         else
           Prod.NCM      := fBus(1,['Select Barra from cadmerca where codigo = 0'+TProduto.FieldByName('Codigo').asString],1);
//*** CBENEF
         if (Trim(TProduto.FieldByName('CBENEF').asString) <> '') then
           Prod.cBenef := TProduto.FieldByName('CBENEF').asString;

//*** CEST
         if vprod = 'P' then
           vCEST      := fBus(1,['Select CEST from cadprodu where codigo = 0'+TProduto.FieldByName('Codigo').asString],1)
         else
           vCEST      := fBus(1,['Select CEST from cadmerca where codigo = 0'+TProduto.FieldByName('Codigo').asString],1);
         if (Length(vCEST) > 2) then
           Prod.CEST  := vCEST;
//***CEST

         Prod.EXTIPI   := '';
         Prod.CFOP     := frTStr(TProduto.FieldByName('NaturCod').asString);
         if UpperCase(TProduto.FieldByName('Unidade').asString) = 'BI' then
           Prod.uCom     := 'bin'
         else
           Prod.uCom     := TProduto.FieldByName('Unidade').asString;
         Prod.qCom     := RoundTo(TProduto.FieldByName('Qtde').asFloat, -3);
         Prod.vUnCom   := RoundTo(TProduto.FieldByName('Unit').asFloat, -8);
         Prod.vProd    := RoundTo(TProduto.FieldByName('Qtde').asFloat * TProduto.FieldByName('Unit').asFloat, -2);

         Prod.cEANTrib  := 'SEM GTIN';

         if (TProduto.FieldByName('qTrib').asFloat <> 0) then
         begin
           Prod.uTrib     := TProduto.FieldByName('uTrib').asString;
           Prod.qTrib     := RoundTo(TProduto.FieldByName('qTrib').asFloat, -3);
           Prod.vUnTrib   := RoundTo(TProduto.FieldByName('vUnTrib').asFloat, -8);
         end
         else begin
           Prod.uTrib     := Prod.uCom;
           Prod.qTrib     := RoundTo(TProduto.FieldByName('Qtde').asFloat, -3);
           Prod.vUnTrib   := RoundTo(TProduto.FieldByName('Unit').asFloat, -8);
         end;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         //Desconto
         if RoundTo(TProduto.FieldByName('VlrDesc').asFloat, -6) > 0 then
           Prod.vDesc   := RoundTo(TProduto.FieldByName('Qtde').asFloat * TProduto.FieldByName('VlrDesc').asFloat, -2)
         else
           Prod.vDesc   := 0;
         //Acrescimo
         if (RoundTo(TProduto.FieldByName('Valor').asFloat, -2) < RoundTo(TProduto.FieldByName('RValor').asFloat, -2)) then
           Prod.vOutro  := RoundTo(TProduto.FieldByName('RValor').asFloat - TProduto.FieldByName('Valor').asFloat, -2)
         else begin
           if Copy(frTStr(TProduto.FieldByName('NaturCod').asString),1,1) = '3' then
             Prod.vOutro  := RoundTo(TImportacIMP_OUT_ADV.asFloat, -2)
           else
             Prod.vOutro  := 0;
         end;

         infAdProd      := '';
         if vprod = 'M' then
           infAdProd  := Trim(fBus(1,['Select INFADCIONAL from cadmerca where codigo = 0'+TProduto.FieldByName('Codigo').asString],1));

{
         //Especie e Marca
         vProdMarca := '';
         vProdEsp   := '';
         if vprod = 'P' then
           vProdMarca := fBus(1,['Select Marca from cadprodu where codigo = 0'+TProduto.FieldByName('Codigo').asString],1)
         else
           vProdMarca := fBus(1,['Select Marca from cadmerca where codigo = 0'+TProduto.FieldByName('Codigo').asString],1);

         if UpperCase(TProduto.FieldByName('Unidade').asString) = 'BI' then
           vProdEsp := 'Bins'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'CX' then
           vProdEsp := 'Caixas'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'LT' then
           vProdEsp := 'Litros'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'KG' then
           vProdEsp := 'Quilos'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'TN' then
           vProdEsp := 'Tonelada'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'T' then
           vProdEsp := 'Tonelada'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'PL' then
           vProdEsp := 'Palet'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'UN' then
           vProdEsp := 'Unidade'
         else if UpperCase(TProduto.FieldByName('Unidade').asString) = 'SC' then
           vProdEsp := 'Saco';

         if (Trim(vProdMarca) <> '') then
         begin
           if (Pos(vProdMarca, vpMarca) = 0) then
             vpMarca := vpMarca +' '+ vProdMarca;
         end;

         if (Trim(vProdEsp) <> '') then
         begin
           if (Pos(vProdEsp, vpEsp) = 0) then
             vpEsp := vpEsp +' '+ vProdEsp;
         end;
}

         //Importação
         if Copy(frTStr(TProduto.FieldByName('NaturCod').asString),1,1) = '3' then
         begin
           TImportac.Close;
           TImportac.Filter := 'LANC = 0'+ TNotaLanc.AsString + ' and LANCIT = 0'+TProdutoLancit.asString;
           TImportac.Open;
           with Prod.DI.Add do
           begin
             nDi         := TImportacDI_NR.asString;
             dDi         := TImportacDI_DT.Value;
             xLocDesemb  := TImportacLOC_DES.asString;
             UFDesemb    := TImportacLOC_UF.asString;
             dDesemb     := TImportacLOC_DT.Value;
             cExportador := TNotaCodigo.asString;
             with adi.Add do
             begin
               nAdicao := TImportacADC_NR.asInteger;
               nSeqAdi := TImportacADC_SEQ.asInteger;
               cFabricante := TImportacADC_COD.asString;
             end;
           end;
         end;

         with Imposto do
         begin
           //Serviço
           if TProduto.FieldByName('ehservico').asString = 'S' then
           begin
             ISSQN.vBC       := RoundTo(TProduto.FieldByName('Valor').asFloat, -3);
             ISSQN.vAliq     := TProduto.FieldByName('ehservper').AsFloat;
             ISSQN.vISSQN    := RoundTo(TProduto.FieldByName('ehservvlr').asFloat, -3);
             ISSQN.cMunFG    := StrToInt(edtEmitCodCidade.Text);
             ISSQN.cListServ := fBus(1,['Select Listaservico from cadmerca where codigo = 0'+TProduto.FieldByName('Codigo').asString],1);
             ISSQN.indISS    := iiNaoIncidencia;
             ISSQN.indIncentivo := iiNao;
           end
           else begin

             ICMS.orig   := oeNacional;
             ICMS.modBC  := dbiPrecoTabelado;

             if dm.TEmpresa.FieldByName('simples').AsString <> 'S' then
             begin
               //Isento
               if RoundTo(TProduto.FieldByName('Icms_Per').asFloat, -3) = 0 then
               begin
                 if Pos('50', TProduto.FieldByName('Icms_Sit').asString) > 0 then
                   ICMS.CST    := cst50
                 else if Pos('51', TProduto.FieldByName('Icms_Sit').asString) > 0 then
                   ICMS.CST    := cst51
                 else if Pos('41', TProduto.FieldByName('Icms_Sit').asString) > 0 then
                   ICMS.CST    := cst41
                 else ICMS.CST    := cst40;
                 ICMS.pICMS  := 0;
                 ICMS.vICMS  := 0;
                 ICMS.vBC    := 0;
               end
               else begin
                 vperc := RoundTo(TProduto.FieldByName('Valor').asFloat * TProduto.FieldByName('Icms_Per').asFloat / 100, -3);
                 ICMS.vBC    := RoundTo(TProduto.FieldByName('Valor').asFloat, -3);
                 ICMS.CST    := cst00;

                 if Pos('20', TProduto.FieldByName('Icms_Sit').asString) > 0 then
                 begin
                   ICMS.CST    := cst20;
                   ICMS.pRedBC := RoundTo(TProduto.FieldByName('Icms_Red').asFloat, -3);
                   ICMS.vBC    := RoundTo(TProduto.FieldByName('Icms_Base').asFloat, -3);
                 end;
                 
                 ICMS.pICMS  := RoundTo(TProduto.FieldByName('Icms_Per').asFloat, -3);
                 ICMS.vICMS  := RoundTo(TProduto.FieldByName('Icms_Vlr').asFloat, -3);
               end;
             end
             else begin
               case StrToIntDef(Copy(TProduto.FieldByName('Icms_Sit').asString,2,3),0) OF
                 101: ICMS.CSOSN := csosn101;
                 102: ICMS.CSOSN := csosn102;
                 103: ICMS.CSOSN := csosn103;
                 201: ICMS.CSOSN := csosn201;
                 202: ICMS.CSOSN := csosn202;
                 203: ICMS.CSOSN := csosn203;
                 300: ICMS.CSOSN := csosn300;
                 400: ICMS.CSOSN := csosn400;
                 500: ICMS.CSOSN := csosn500
               else
                 ICMS.CSOSN := csosn900;
               end;
               if (Pos('101', TProduto.FieldByName('Icms_Sit').asString) > 0) or
                  (Pos('201', TProduto.FieldByName('Icms_Sit').asString) > 0) or
                  (Pos('900', TProduto.FieldByName('Icms_Sit').asString) > 0) then
               begin
                 ICMS.pCredSN     := TProduto.FieldByName('ICMS_CREDPER').AsFloat;
                 ICMS.vCredICMSSN := TProduto.FieldByName('ICMS_CREDVLR').AsFloat;
               end;
               if (Pos('500', TProduto.FieldByName('Icms_Sit').asString) > 0) then
               begin
                 ICMS.vBCSTRet   := TProduto.FieldByName('Valor').AsFloat;
                 ICMS.vICMSSTRet := TProduto.FieldByName('Icms_Vlr').AsFloat;
               end;
             end;

             //**** IPI
             if (Trim(TProduto.FieldByName('Ipi_sit').asString) = '') then
             begin
               if TNotaDif.AsString = 'S' then
                 IPI.CST   := ipi99
               else
                 IPI.CST   := ipi49;
               IPI.clEnq   := '';
               IPI.cEnq    := '999';
             end
             else begin
               case StrToIntDef(TProduto.FieldByName('Ipi_sit').asString,0) of
                 0: IPI.CST := ipi00;
                 1: IPI.CST := ipi01;
                 2: IPI.CST := ipi02;
                 3: IPI.CST := ipi03;
                 4: IPI.CST := ipi04;
                 5: IPI.CST := ipi05;
                49: IPI.CST := ipi49;
                50: IPI.CST := ipi50;
                51: IPI.CST := ipi51;
                52: IPI.CST := ipi52;
                53: IPI.CST := ipi53;
                54: IPI.CST := ipi54;
                55: IPI.CST := ipi55;
               else
                 IPI.CST := ipi99;
               end;
               IPI.clEnq   := '';
               IPI.cEnq    := TProduto.FieldByName('Ipi_cenq').asString;
             end;
             if Ide.finNFe <> fnDevolucao then
             begin
               IPI.vBC  := RoundTo(TProduto.FieldByName('Ipi_base').AsFloat, -2);
               IPI.pIPI := RoundTo(TProduto.FieldByName('Ipi_per').AsFloat, -2);
               IPI.vIPI := RoundTo(TProduto.FieldByName('Ipi_vlr').AsFloat, -2);
             end;

           end;

           //**** PIS
           if (Trim(TProduto.FieldByName('Pis_sit').asString) = '') then
           begin
             PIS.CST  := pis99;
             PIS.vBC  := 0;
             PIS.pPIS := 0;
             PIS.vPIS := 0;
           end
           else begin
             case StrToIntDef(TProduto.FieldByName('Pis_sit').asString,0) of
               1: PIS.CST := pis01;
               2: PIS.CST := pis02;
               3: PIS.CST := pis03;
               4: PIS.CST := pis04;
               5: PIS.CST := pis05;
               6: PIS.CST := pis06;
               7: PIS.CST := pis07;
               8: PIS.CST := pis08;
               9: PIS.CST := pis09;
              49: PIS.CST := pis49;
              50: PIS.CST := pis50;
              51: PIS.CST := pis51;
              52: PIS.CST := pis52;
              53: PIS.CST := pis53;
              54: PIS.CST := pis54;
              55: PIS.CST := pis55;
              56: PIS.CST := pis56;
              60: PIS.CST := pis60;
              61: PIS.CST := pis61;
              62: PIS.CST := pis62;
              63: PIS.CST := pis63;
              64: PIS.CST := pis64;
              65: PIS.CST := pis65;
              66: PIS.CST := pis66;
              67: PIS.CST := pis67;
              70: PIS.CST := pis70;
              71: PIS.CST := pis71;
              72: PIS.CST := pis72;
              73: PIS.CST := pis73;
              74: PIS.CST := pis74;
              75: PIS.CST := pis75;
              98: PIS.CST := pis98;
             else
               PIS.CST := pis99;
             end;
             PIS.vBC  := RoundTo(TProduto.FieldByName('Pis_base').AsFloat, -2);
             PIS.pPIS := RoundTo(TProduto.FieldByName('Pis_per').AsFloat, -2);
             PIS.vPIS := RoundTo(TProduto.FieldByName('Pis_vlr').AsFloat, -2);
           end;

           //**** COFINS
           if (Trim(TProduto.FieldByName('Cofins_sit').asString) = '') then
           begin
             COFINS.CST := cof99;
             COFINS.vBC := 0;
             COFINS.pCOFINS := 0;
             COFINS.vCOFINS := 0;
           end
           else begin
             case StrToIntDef(TProduto.FieldByName('COFINS_sit').asString,0) of
               1: COFINS.CST := cof01;
               2: COFINS.CST := cof02;
               3: COFINS.CST := cof03;
               4: COFINS.CST := cof04;
               5: COFINS.CST := cof05;
               6: COFINS.CST := cof06;
               7: COFINS.CST := cof07;
               8: COFINS.CST := cof08;
               9: COFINS.CST := cof09;
              49: COFINS.CST := cof49;
              50: COFINS.CST := cof50;
              51: COFINS.CST := cof51;
              52: COFINS.CST := cof52;
              53: COFINS.CST := cof53;
              54: COFINS.CST := cof54;
              55: COFINS.CST := cof55;
              56: COFINS.CST := cof56;
              60: COFINS.CST := cof60;
              61: COFINS.CST := cof61;
              62: COFINS.CST := cof62;
              63: COFINS.CST := cof63;
              64: COFINS.CST := cof64;
              65: COFINS.CST := cof65;
              66: COFINS.CST := cof66;
              67: COFINS.CST := cof67;
              70: COFINS.CST := cof70;
              71: COFINS.CST := cof71;
              72: COFINS.CST := cof72;
              73: COFINS.CST := cof73;
              74: COFINS.CST := cof74;
              75: COFINS.CST := cof75;
              98: COFINS.CST := cof98;
             else
               COFINS.CST := cof99;
             end;
             COFINS.vBC  := RoundTo(TProduto.FieldByName('Cofins_base').AsFloat, -2);
             COFINS.pCOFINS := RoundTo(TProduto.FieldByName('Cofins_per').AsFloat, -2);
             COFINS.vCOFINS := RoundTo(TProduto.FieldByName('Cofins_vlr').AsFloat, -2);
           end;

           // partilha do ICMS e fundo de probreza
           ICMSUFDest.vBCUFDest      := 0.00;
           ICMSUFDest.pFCPUFDest     := 0.00;
           ICMSUFDest.pICMSUFDest    := 0.00;
           ICMSUFDest.pICMSInter     := 0.00;
           ICMSUFDest.pICMSInterPart := 0.00;
           ICMSUFDest.vFCPUFDest     := 0.00;
           ICMSUFDest.vICMSUFDest    := 0.00;
           ICMSUFDest.vICMSUFRemet   := 0.00;

           //Importação
           if Copy(frTStr(TProduto.FieldByName('NaturCod').asString),1,1) = '3' then
           begin
             ICMS.orig   := oeEstrangeiraImportacaoDireta;
             ICMS.CST    := cst51;
             ICMS.vBC    := RoundTo(TImportacIMP_ICM_VLR.asFloat, -2);
             ICMS.pICMS  := RoundTo(TImportacIMP_ICM_PER.asFloat, -2);
             ICMS.vICMS  := RoundTo(TImportacIMP_ICM_VLR.asFloat * TImportacIMP_ICM_PER.asFloat / 100, -2);

             IPI.CST     := ipi00;
             IPI.clEnq   := '';
             IPI.cEnq    := TImportacIMP_IPI_COD.asString;
             IPI.vBC     := RoundTo(TImportacIMP_IPI_VLR.asFloat, -2);
             IPI.pIPI    := RoundTo(TImportacIMP_IPI_PER.asFloat, -2);
             IPI.vIPI    := RoundTo(TImportacIMP_IPI_VLR.asFloat * TImportacIMP_IPI_PER.asFloat / 100, -2);

             II.vBc      := RoundTo(TImportacIMP_II_VLR.asFloat, -2);
             II.vII      := RoundTo(TImportacIMP_II_VLR.asFloat * TImportacIMP_II_PER.asFloat / 100, -2);
             II.vIOF     := RoundTo(TImportacIMP_OUT_IOF.asFloat, -2);
             II.vDespAdu := RoundTo(TImportacIMP_OUT_ADV.asFloat, -2);

             PIS.CST     := pis01;
             PIS.vBC     := RoundTo(TImportacIMP_PIS_VLR.asFloat, -2);
             PIS.pPIS    := RoundTo(TImportacIMP_PIS_PER.asFloat, -2);
             PIS.vPIS    := RoundTo(TImportacIMP_PIS_VLR.asFloat * TImportacIMP_PIS_PER.asFloat / 100, -2);
             PIS.qBCProd := 0;
             PIS.vAliqProd := 0;

             COFINS.CST       := cof01;
             COFINS.vBC       := RoundTo(TImportacIMP_COF_VLR.asFloat, -2);
             COFINS.pCOFINS   := RoundTo(TImportacIMP_COF_PER.asFloat, -2);
             COFINS.vCOFINS   := RoundTo(TImportacIMP_COF_VLR.asFloat * TImportacIMP_COF_PER.asFloat /100, -2);
             COFINS.qBCProd   := 0;
             COFINS.vAliqProd := 0;

             vprdBC   := vprdBC   + ICMS.vBC;
             vprdICMS := vprdICMS + ICMS.vICMS;
             vprdOUT  := vprdOUT  + II.vDespAdu;
             vprdII   := vprdII   + II.vII;
             vprdIPI  := vprdIPI  + IPI.vIPI;
             vprdPIS  := vprdPIS  + PIS.vPIS;
             vprdCOFINS := vprdCOFINS + COFINS.vCOFINS;
           end;
           //Devolução imposto IPI
           if Ide.finNFe = fnDevolucao then
           begin
             if (TProduto.FieldByName('Ipi_per').AsFloat > 0) then
             begin
               pDevol := RoundTo(100, -2);
               vIPIDevol := RoundTo(TProduto.FieldByName('Ipi_vlr').AsFloat, -2);
             end;
           end;
         end;


       end;
       TProduto.Next;
     end;
     vprdNF := vprdII + vprdPIS + vprdCOFINS + vprdOUT;

     //Totalizador
     Total.ICMSTot.vBC     := RoundTo(TNotaVlrBase.asFloat, -2) + RoundTo(vprdBC, -2);
     Total.ICMSTot.vICMS   := RoundTo(TNotaVlrIcms.asFloat, -2) + RoundTo(vprdICMS, -2);
     Total.ICMSTot.vBCST   := 0;
     Total.ICMSTot.vST     := 0;
     if TProduto.FieldByName('ehservico').asString = 'S' then
       Total.ICMSTot.vProd   := 0
     else begin
       if Ide.finNFe = fnDevolucao then
         Total.ICMSTot.vProd   := RoundTo(TNotaVlrProduto.asFloat, -2)
       else
         Total.ICMSTot.vProd   := RoundTo(TNotaVlrProduto.asFloat - TNotaVlrIPI.asFloat, -2)

     end;
     Total.ICMSTot.vFrete  := RoundTo(TNotaVlrFrete.asFloat, -2);
     Total.ICMSTot.vSeg    := RoundTo(TNotaVlrseguro.asFloat, -2);
     Total.ICMSTot.vDesc   := RoundTo(TNotaVlrDesc.asFloat, -2);
     Total.ICMSTot.vII     := RoundTo(vprdII, -2);

     if Ide.finNFe = fnDevolucao then
       Total.ICMSTot.vIPIDevol := RoundTo(TNotaVlrIpi.asFloat, -2)
     else
       Total.ICMSTot.vIPI    := RoundTo(TNotaVlrIpi.asFloat, -2) + RoundTo(vprdIPI, -2);

     Total.ICMSTot.vPIS    := RoundTo(TNotaPis_Vlr.asFloat, -2)    + RoundTo(vprdPIS, -2);
     Total.ICMSTot.vCOFINS := RoundTo(TNotaCofins_Vlr.asFloat, -2) + RoundTo(vprdCOFINS, -2);
     Total.ICMSTot.vOutro  := RoundTo(vprdOUT, -2);

     if Ide.finNFe = fnDevolucao then
       Total.ICMSTot.vNF     := RoundTo(TNotaVlrNota.asFloat + TNotaVlrIpi.asFloat, -2)
     else
       Total.ICMSTot.vNF     := RoundTo(TNotaVlrNota.asFloat, -2);// + RoundTo(vprdNF, -2);

     // partilha do icms e fundo de probreza
     Total.ICMSTot.vFCPUFDest   := 0.00;
     Total.ICMSTot.vICMSUFDest  := 0.00;
     Total.ICMSTot.vICMSUFRemet := 0.00;

     //SERVIÇO
     if TNotaVlrServ.AsFloat > 0 then
     begin
       Total.ISSQNtot.vServ   := TNotaVlrServ.AsFloat;
       Total.ISSQNTot.vBC     := TNotaVlrServ.AsFloat;
       Total.ISSQNTot.vISS    := TNotaPerServ.AsFloat;
       Total.ISSQNTot.dCompet := TNotaData.Value;
     end
     else begin
       Total.ISSQNtot.vServ   := 0;
       Total.ISSQNTot.vBC     := 0;
       Total.ISSQNTot.vISS    := 0;
     end;
     Total.ISSQNTot.vPIS    := 0;
     Total.ISSQNTot.vCOFINS := 0;

     //TRANSPORTADORA
     //0-Terceiro = tag 2,
     //1-Emitente = tag 0,
     //2-Destinatario= tag 1,
     //3=Transporte Próprio por conta do Remetente = tag 3;
     //4=Transporte Próprio por conta do Destinatário = tag 4;
     //9-Sem Frete= tag 9
     //TpcnModalidadeFrete = (mfContaEmitente, mfContaDestinatario, mfContaTerceiros, mfProprioRemetente, mfProprioDestinatario, mfSemFrete);

     if (TNotaTRTipo.AsString = '1') or (TNotaTRTipo.AsString = '3') or (TNotaTRTipo.AsString = '9') or
        (TNotaTRCod.asInteger = 1) or (POS('O MESMO', TNotaTRDes.AsString) > 0) then
     begin
       if (TNotaTRTipo.AsString = '1') then
         Transp.modFrete := mfContaEmitente
       else if (TNotaTRTipo.AsString = '3') then
         Transp.modFrete := mfProprioRemetente
       else
         Transp.modFrete := mfSemFrete;

       Transp.Transporta.CNPJCPF  := '';
       Transp.Transporta.xNome    := '';
       Transp.Transporta.IE       := '';
       Transp.Transporta.xEnder   := '';
       Transp.Transporta.xMun     := '';
       Transp.Transporta.UF       := '';
       Transp.veicTransp.placa := '';
       Transp.veicTransp.UF    := '';
       Transp.veicTransp.RNTC  := '';
     end
     else begin
       if fTra(1,['Select Descricao,CPF,Doc,Endereco,Estado,TrPlaca,TrEstado,CidadeCod From CadTrans Where Codigo=0'+TNota.FieldByName('TRCod').Text],1) then
       begin
         if (TNotaTRTipo.AsString = '2') then
           Transp.modFrete := mfContaDestinatario
         else if (TNotaTRTipo.AsString = '4') then
           Transp.modFrete := mfProprioDestinatario
         else
           Transp.modFrete := mfContaTerceiros;

         Transp.Transporta.CNPJCPF  := dm.qrSqlTra.Fields[1].Text;
         Transp.Transporta.xNome    := dm.qrSqlTra.Fields[0].Text;
         Transp.Transporta.IE       := dm.qrSqlTra.Fields[2].Text;
         Transp.Transporta.xEnder   := dm.qrSqlTra.Fields[3].Text;
         Transp.Transporta.UF       := upperCase(dm.qrSqlTra.Fields[4].Text);
//         Transp.veicTransp.placa    := frTira(dm.qrSqlTra.Fields[5].Text,'-');
//         Transp.veicTransp.UF       := upperCase(dm.qrSqlTra.Fields[6].Text);
//         Transp.veicTransp.RNTC     := '';
         Transp.Transporta.xMun     := fBus(1,['Select descricao From CadCidad Where Codigo=0'+dm.qrSqlTra.Fields[7].Text],1);
//         Transp.Transporta.xMun     := IntToStr(fBus(1,['Select Numero From CadCidad Where Codigo=0'+dm.qrSqlTra.Fields[7].Text],1));
       end;
     end;

     with Transp.Vol.Add do
     begin
 //      qVol  := StrToIntDef(TNotaQtdEsp.asString,1);
//       nVol  := TNotaQtdEsp.asString;
       if (TNotaVOL_QTDE.AsInteger > 0) then
         qVol  := TNotaVOL_QTDE.AsInteger
       else
         qVol  := 1;

       if (Trim(TNotaVOL_NUMERACAO.AsString) <> '') then
         nVol  := Copy(TNotaVOL_NUMERACAO.AsString, 1,20);

       pesoL := RoundTo(TNotaPesoLiq.asFloat, -3);
       pesoB := RoundTo(TNotaPesoBru.asFloat, -3);
       marca := '';
       esp   := '';

       if (Trim(TNotaVOL_MARCA.AsString) <> '') then
         vpMarca := Trim(Copy(TNotaVOL_MARCA.AsString,1,20));

       if (Trim(TNotaVOL_ESPECIE.AsString) <> '') then
         vpEsp := Trim(Copy(TNotaVOL_ESPECIE.AsString,1,20));

       if (Trim(vpMarca) <> '') then
       begin
         if (Length(Trim(vpMarca)) < 25) then
           marca := Trim(vpMarca);
       end;

       if (Trim(vpEsp) <> '') then
       begin
         if (Length(Trim(vpEsp)) < 25) then
           esp := Trim(vpEsp);
       end;



     end;

     //financeiro
     Cobr.Fat.nFat  := NumNFe;
     Cobr.Fat.vOrig := RoundTo(TNotaVlrNota.asFloat, -2);
     //Cobr.Fat.vDesc := 0;
     Cobr.Fat.vLiq  := RoundTo(TNotaVlrNota.asFloat, -2);

     if TFinan.RecordCount > 0 then
     begin
       vdupparc := 0;
       TFinan.First;
       while not TFinan.Eof do
       begin
         inc(vdupparc);
         with Cobr.Dup.Add do
         begin
           nDup  := frPree(vdupparc, 3, '0', 0);
           dVenc := TFinan.FieldByName('Vencto').Value;
           vDup  := RoundTo(TFinan.FieldByName('Valor').asFloat, -2);
         end;
         TFinan.Next;
       end;
     end;

      //Forma de pagamentos
     with pag.Add do
     begin
       if TFinan.RecordCount > 0 then
       begin
         tPag := fpBoletoBancario;
         vPag := RoundTo(TNotaVlrNota.asFloat, -2);
       end
       else begin
         tPag := fpSemPagamento;
         vPag := 0;
       end;

     end;

     //Dados adicionais
     InfAdic.infCpl := Trim(TNotaOBS2.AsString+TNotaOBS3.AsString+TNotaOBS4.AsString+TNotaOBS5.AsString);

     //Informação ao fisco
     if (Trim(TNotaOBS13.AsString) <> '') then
       InfAdic.infAdFisco := Trim(TNotaOBS13.AsString);

     with infRespTec do
     begin
       CNPJ      := '33910873000190';
       xContato  := 'JARRIER FIGUEREDO';
       email     := 'jarrier@acwagro.com.br';
       fone      := '41992557216';
       //idCSRT := 0;
       //hashCSRT := '';
     end;

     exporta.UFembarq   := '';;
     exporta.xLocEmbarq := '';
     compra.xNEmp := '';
     compra.xPed  := '';
     compra.xCont := '';
   end;
   //ACBrNFe1.NotasFiscais.Items[0].SaveToFile;

   ACBrNFe1.NotasFiscais.GerarNFe;

   ACBrNFe1.NotasFiscais.Assinar;

   ACBrNFe1.NotasFiscais.Items[0].GravarXML();
   result := ACBrNFe1.NotasFiscais.Items[0].NomeArq;
//   MemoResp.Lines.LoadFromFile(PathWithDelim(ACBrNFe1.Configuracoes.Geral.PathSalvar)+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
   MemoResp.Lines.LoadFromFile(ACBrNFe1.NotasFiscais.Items[0].NomeArq);
   LoadXML(MemoResp, WBResposta);

 except
   LoadXML(MemoResp, WBResposta);
   MemoLog.Lines.Add('');
   MemoLog.Lines.Add('Envio NFe');
   MemoLog.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
   MemoLog.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
   MemoLog.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
   MemoLog.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
   MemoLog.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
   MemoLog.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
   MemoLog.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
   MemoLog.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
   MemoLog.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
   ACBrNFe1.NotasFiscais.Items[0].GravarXML();

   pnl_log.Visible := True;
   pnl_msg.Caption := '';
   pnl_msg.Visible := False;
 end;
end;

procedure TFfrmGerenciadorNFE.Image1Click(Sender: TObject);
begin
  Close;
  FMenu.fProg(101);
end;


procedure TFfrmGerenciadorNFE.lblRegistroDblClick(Sender: TObject);
var
 Chave, idLote, CNPJ, Protocolo, Justificativa : string;
begin
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Cancelamento', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  Protocolo:='';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Protocolo de Autorização', Protocolo)) then
     exit;
  Justificativa := 'Justificativa do Cancelamento';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;
  with ACBrNFe1.EventoNFe.Evento.New do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := Protocolo;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
  LoadXML(MemoResp, WBResposta);

  if (ACBrNFe1.WebServices.EnvEvento.cStat < 200) then
  begin
    if ACBrNFe1.WebServices.Consulta.cStat = 101 then
    begin
      TNota.Edit;
      TNotanfe_status.asString := 'CA';
      TNotaOBS1.asString := IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat)+' - '+ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      TNotaDIFCOD.asInteger := -1;
      TNota.Post;
    end
    else begin
      //Caso seja 128 - espera um pouco e faz consulta.
      if ACBrNFe1.WebServices.Consulta.cStat = 128 then
      begin
        Sleep(2000);
        ShowMessage('Aguarde está em processamento...'+#13#10+
                    'Verifique se não tem CTe para cancelar'+#13#10+
                    'Clique OK, para continuar...');
        Sleep(3000);
        //bt_nfe_consultar.onClick(bt_nfe_consultar); //comentar para não mascarar o motivo de rejeição
      end
      else begin
        Sleep(1000);
        bt_nfe_consultar.onClick(bt_nfe_consultar);
      end;
    end;
    pAtualizaSqlDados;
  end;


end;

procedure TFfrmGerenciadorNFE.ACBrMail1AfterMailProcess(Sender: TObject);
begin
  mLog.Lines.Add('Depois de Enviar o email: ' + TACBrMail(Sender).Subject);
end;

procedure TFfrmGerenciadorNFE.ACBrMail1BeforeMailProcess(Sender: TObject);
begin
  mLog.Lines.Add('Antes de Enviar o email: ' + TACBrMail(Sender).Subject);

end;

procedure TFfrmGerenciadorNFE.ACBrMail1MailException(const AMail: TACBrMail;
  const E: Exception; var ThrowIt: Boolean);
begin
  ShowMessage(E.Message);
  ThrowIt := False;
  mLog.Lines.Add('*** Erro ao Enviar o email: ' + AMail.Subject);

end;

procedure TFfrmGerenciadorNFE.ACBrMail1MailProcess(const AMail: TACBrMail;
  const aStatus: TMailStatus);
begin
//  ProgressBar1.Position := Integer(aStatus);

  case aStatus of
    pmsStartProcess:
      mLog.Lines.Add('Iniciando processo de envio.');
    pmsConfigHeaders:
      mLog.Lines.Add('Configurando o cabeçalho do e-mail.');
    pmsLoginSMTP:
      mLog.Lines.Add('Logando no servidor de e-mail.');
    pmsStartSends:
      mLog.Lines.Add('Iniciando os envios.');
    pmsSendTo:
      mLog.Lines.Add('Processando lista de destinatários.');
    pmsSendCC:
      mLog.Lines.Add('Processando lista CC.');
    pmsSendBCC:
      mLog.Lines.Add('Processando lista BCC.');
    pmsSendReplyTo:
      mLog.Lines.Add('Processando lista ReplyTo.');
    pmsSendData:
      mLog.Lines.Add('Enviando dados.');
    pmsLogoutSMTP:
      mLog.Lines.Add('Fazendo Logout no servidor de e-mail.');
    pmsDone:
      begin
        mLog.Lines.Add('E-mail enviado.');
//        ProgressBar1.Position := ProgressBar1.Max;
      end;
  end;

  mLog.Lines.Add('   ' + AMail.Subject);

  Application.ProcessMessages;

end;

procedure TFfrmGerenciadorNFE.ACBrNFe1GerarLog(const Mensagem: String);
begin
  memoLog.Lines.Add(Mensagem);
  if ckVisualizar.Checked then
    Showmessage(mensagem);
end;

procedure TFfrmGerenciadorNFE.ACBrNFe1StatusChange(Sender: TObject);
begin
  pnl_msg.Caption := '';
  pnl_msg.Visible := True;
  case ACBrNFe1.Status of
    stIdle            : pnl_msg.Visible := False;
    stNFeStatusServico: pnl_msg.Caption := 'Verificando Status do servico...';
    stNFeRecepcao     : pnl_msg.Caption := 'Enviando dados da NFe...';
    stNfeRetRecepcao  : pnl_msg.Caption := 'Recebendo dados da NFe...';
    stNfeConsulta     : pnl_msg.Caption := 'Consultando NFe...';
    stNfeCancelamento : pnl_msg.Caption := 'Enviando cancelamento de NFe...';
    stNfeInutilizacao : pnl_msg.Caption := 'Enviando pedido de Inutilização...';
    stNFeRecibo       : pnl_msg.Caption := 'Consultando Recibo de Lote...';
    stNFeCadastro     : pnl_msg.Caption := 'Consultando Cadastro...';
//    stNFeEnvDPEC      : pnl_msg.Caption := 'Enviando DPEC...';
//    stNFeConsultaDPEC : pnl_msg.Caption := 'Consultando DPEC...';
    stNFeEmail        : pnl_msg.Caption := 'Enviando Email...';
  end;
  Application.ProcessMessages;
end;

procedure TFfrmGerenciadorNFE.BitBtn1Click(Sender: TObject);
begin
  pgLog.ActivePageIndex := 0;
  pnl_log.Visible := False;
end;

procedure TFfrmGerenciadorNFE.BitBtn2Click(Sender: TObject);
var vi: Integer;
begin
  //Mostra dados Coluna
  pAtualizaTNota;
  pnl_log.Visible := True;
  pgLog.ActivePageIndex := 0;
  memolog.Clear;
  for vi := 1 to dbDados.Columns.Count - 1 do
  begin
    try
      memolog.Lines.Add(PChar(dbDados.Columns[vi].Title.Caption +': '+ TNota.FieldByName(dbDados.Columns[vi].FieldName).AsString));
    except

    end;
  end;
end;

procedure TFfrmGerenciadorNFE.bt_nfe_assinarClick(Sender: TObject);
var sXML, vLogo: string;
begin
  if TNota.isEmpty then exit;

  sxml := VerificaExisteXml;
  if sxml = '' then exit;
  if FileExists(sxml) then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(sxml);
    ACBrNFe1.Enviar(0, False);
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
    LoadXML(MemoResp, WBResposta);
    if (ACBrNFe1.WebServices.Retorno.cStat < 200) then
    begin
      TNota.Edit;
      TNotanfe_status.asString := 'OK';
      TNotaOBS1.asString := IntToStr(ACBrNFe1.WebServices.Retorno.cStat)+' - '+ACBrNFe1.WebServices.Retorno.xMotivo;
      TNotaNFE_Recibo.asString := ACBrNFe1.WebServices.Retorno.Recibo;
      TNotaNFE_Protoc.asString := ACBrNFe1.WebServices.Retorno.Protocolo;
      TNotaNFE_Chave.asString  := ACBrNFe1.WebServices.Retorno.ChaveNFE;
      TNota.Post;

      //Salva xml no banco de dados
      if (pObterArquivoNFE('XML') = '') then
        pSalvarArquivoNFE('XML', sxml);

      pAtualizaSqlDados;
      MemoLog.Lines.Clear;
      MemoLog.Lines.Add('*** OK ***');
    end
    else begin
      TNota.Edit;
      TNotanfe_status.asString := 'ER';
      TNotaOBS1.asString := IntToStr(ACBrNFe1.WebServices.Retorno.cStat)+' - '+ACBrNFe1.WebServices.Retorno.xMotivo;
      TNota.Post;
      pAtualizaSqlDados;
      pnl_log.Visible := True;
      MemoLog.Lines.Clear;
      MemoLog.Lines.Add('* ERRO/ERRO/ERRO *');
    end;
    MemoLog.Lines.Add('Envio NFe');
    MemoLog.Lines.Add('tpAmb:    '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    MemoLog.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
    MemoLog.Lines.Add('cStat:    '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    MemoLog.Lines.Add('cUF:      '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    MemoLog.Lines.Add('xMotivo:  '+ ACBrNFe1.WebServices.Retorno.xMotivo);
    MemoLog.Lines.Add('cMsg:     '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    MemoLog.Lines.Add('xMsg:     '+ ACBrNFe1.WebServices.Retorno.xMsg);
    MemoLog.Lines.Add('Recibo:   '+ ACBrNFe1.WebServices.Retorno.Recibo);
    MemoLog.Lines.Add('Protocolo:'+ ACBrNFe1.WebServices.Retorno.Protocolo);

    if TNotanfe_status.asString = 'OK' then
    begin
{      bt_nfe_danfe.Click;
      if frPerg(PChar('Deseja Enviar e-mail?')) then
        bt_Outlook.Click;}

      ACBrNFe1.DANFE.Usuario := xAcess;
      vLogo := xdirsi+'LogoDanfe.jpg';
      if FileExists(vLogo) then
        ACBrNFe1.DANFE.Logo := vLogo;

      ACBrNFe1.NotasFiscais.Imprimir;
      //Depois cria o arquivo pdf
      ACBrNFe1.DANFE.PathPDF := fBuscaCaminho;
      ACBrNFe1.NotasFiscais.ImprimirPDF;
    end;
  end
  else
    application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
end;

procedure TFfrmGerenciadorNFE.bt_nfe_danfeClick(Sender: TObject);
var sXML, spdf, vLogo: string;
    vEmail: Integer;
begin
  if TNota.isEmpty then exit;

  pAtualizaTNota;

  //Limpa arquivos emporarios apos 3 dias
  if (bt_nfe_danfe.Tag = 0) then
  begin
    pExcluirArquivosTmp;
    bt_nfe_danfe.Tag := 1;
  end;

  sxml := VerificaExisteXml;
  if FileExists(sxml) then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(sXML);

    ACBrNFe1.DANFE.Usuario := xAcess;
    vLogo := xdirsi+'LogoDanfe.jpg';

    ACBrNFe1.DANFE.MargemSuperior := tbConfigMGM_SUP.AsInteger;
    ACBrNFe1.DANFE.MargemEsquerda := tbConfigMGM_ESQ.AsInteger;
    ACBrNFe1.DANFE.MargemDireita  := tbConfigMGM_DIR.AsInteger;
    ACBrNFe1.DANFE.MargemInferior := tbConfigMGM_INF.AsInteger;
    ACBrNFe1.DANFE.MostraSetup := True;

    ACBrNFe1.NotasFiscais.Imprimir;
    //Depois cria o arquivo pdf
    ACBrNFe1.DANFE.PathPDF := fBuscaCaminho;
    ACBrNFe1.NotasFiscais.ImprimirPDF;

    //Salvar o XML e PDF no banco de dados
    if (pObterArquivoNFE('XML') = '') then
      pSalvarArquivoNFE('XML', sxml);

    if (pObterArquivoNFE('PDF') = '') then
    begin
      spdf := fBuscaCaminho+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
      if FileExists(spdf) then
        pSalvarArquivoNFE('PDF', spdf);
    end;

    //Se não mandou email - vai verificar se é pra mandar automatico
    if (TNotaEMAILENV.asinteger = 0) then
    begin
      vEmail := frGenerator('NFE','EMAIL',0);
      if (vEmail > 0) then
      begin
        case vEmail of
          1: btnEmailUnico.onClick(btnEmailUnico);
          2: btnEmailLote.onClick(btnEmailLote);
          3: btnEmailOutlook.onClick(btnEmailOutlook);
        end;
      end;
    end;

  end
  else
    application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
end;

procedure TFfrmGerenciadorNFE.bt_nfe_cancelarClick(Sender: TObject);
begin

  pAtualizaTNota;
  tabCancelar.TabVisible := True;
  PageControl1.ActivePageIndex := 4;
  TabCancelar.Caption := 'Cancelar';
  lblCancelar.Caption := 'Cancelar NFe';
  sbCancelarEnviar.Caption := ' Salvar e Enviar ';

  edCancelarData.Text := DateTimeToStr(Now);
  edCancelarLote.Text := FormatDateTime('yymmdd', now)+'01';
  edCancelarObs.Text  := '';

  if edCancelarObs.Focused then
    edCancelarObs.SetFocus;

end;

function TFfrmGerenciadorNFE.fBuscaCaminho: String;
var vpasta:String;
begin
  vpasta := Trim(Trim(edtPathLogs.Text) + '\xml'+FormatDateTime('yyyy',now)+FormatDateTime('mm',now));
  if not DirectoryExists(vPasta) then
  begin
    CreateDir(vPasta);
    Sleep(100);
    if not DirectoryExists(vPasta) then
    begin
      ForceDirectories(vPasta);
      Sleep(100);
      if not DirectoryExists(vPasta) then
      begin
        vpasta := Trim(edtPathLogs.Text);
        Sleep(100);
        if not DirectoryExists(vPasta) then
          CreateDir(vPasta);
      end;
    end;
  end;
  result := vpasta;
end;


procedure TFfrmGerenciadorNFE.bt_nfe_cartaClick(Sender: TObject);
var vAux, sXML, idLote: string;
begin
  if TNota.isEmpty then exit;

  pAtualizaTNota;
  sXML := TNotanfe_xml.asstring;
  if sxml = '' then exit;

//  if FileExists(sxml) then
//  begin
    TNota.Edit;
    memCarta.Lines.Clear;
    memCarta.Lines.Add(Trim(TNotaNFE_CCE1.Text)+Trim(TNotaNFE_CCE2.Text)+Trim(TNotaNFE_CCE3.Text)+
                       Trim(TNotaNFE_CCE4.Text)+Trim(TNotaNFE_CCE5.Text)+Trim(TNotaNFE_CCE6.Text)+
                       Trim(TNotaNFE_CCE7.Text)+Trim(TNotaNFE_CCE8.Text));
    if TNotaNFE_CCESEQ.AsInteger = 0 then
    begin
      TNotaNFE_CCESEQ.AsInteger := fBus(1,['Select Max(NFE_CCESEQ) From NFVenda '],1) + 1;
      TNotaNFE_CCEDATA.Value := Now;
    end;
    tabCarta.TabVisible := True;
    PageControl1.ActivePageIndex := 2;
//  end
//  else application.messagebox('Arquivo XML não encontrada!','Erro',mb_ok+mb_iconerror);
end;

function TFfrmGerenciadorNFE.FazendaEstadual(pUF: String): String;
var vRetorno: String;
begin
  if pUf = 'AC' then vretorno := 'www.sefaz.ac.gov.br';
  if pUf = 'AL' then vretorno := 'www.sefaz.al.gov.br';
  if pUf = 'AM' then vretorno := 'www.sefaz.am.gov.br';
  if pUf = 'AP' then vretorno := 'www.sefaz.ap.gov.br';
  if pUf = 'BA' then vretorno := 'www.sefaz.ba.gov.br';
  if pUf = 'CE' then vretorno := 'www.sefaz.ce.gov.br';
  if pUf = 'DF' then vretorno := 'www.sefaz.df.gov.br';
  if pUf = 'ES' then vretorno := 'www.sefa.es.gov.br';
  if pUf = 'EX' then vretorno := 'www.sefaz.rs.gov.br';
  if pUf = 'GO' then vretorno := 'www.sefaz.go.gov.br';
  if pUf = 'MA' then vretorno := 'www.sefaz.ma.gov.br';
  if pUf = 'MT' then vretorno := 'www.sefaz.mt.gov.br';
  if pUf = 'MS' then vretorno := 'www.sefaz.ms.gov.br';
  if pUf = 'MG' then vretorno := 'www.fazenda.mg.gov.br';
  if pUf = 'PA' then vretorno := 'www.sefa.pa.gov.br';
  if pUf = 'PE' then vretorno := 'www.sefaz.pe.gov.br';
  if pUf = 'PB' then vRetorno := 'www.receita.pb.gov.br';
  if pUf = 'PR' then vretorno := 'www.fazenda.pr.gov.br';
  if pUf = 'PI' then vretorno := 'www.sefaz.pi.gov.br';
  if pUf = 'RJ' then vretorno := 'www.sefaz.rj.gov.br';
  if pUf = 'RN' then vRetorno := 'www.set.rn.gov.br';
  if pUf = 'RO' then vRetorno := 'www.portal.sefin.ro.gov.br';
  if pUf = 'RS' then vretorno := 'www.sefaz.rs.gov.br';
  if pUf = 'RR' then vretorno := 'www.sefaz.rr.gov.br';
  if pUf = 'SC' then vretorno := 'www.sef.sc.gov.br';
  if pUf = 'SE' then vretorno := 'www.sefaz.se.gov.br';
  if pUf = 'SP' then vretorno := 'www.fazenda.sp.gov.br';
  if pUf = 'TO' then vretorno := 'www.sefa.to.gov.br';
  result := 'http://' + vRetorno;
end;

procedure TFfrmGerenciadorNFE.bt_nfe_inutilizarClick(Sender: TObject);
begin
  pAtualizaTNota;
  tabInutilizar.TabVisible := True;
  PageControl1.ActivePageIndex := 3;
  txtJust_ano.Text := FormatDateTime('yyyy', now);
  txtJust_mod.Text := '55';
  txtJust_ser.Text := '1';
  txtJust_ini.Text := '';
  txtJust_fim.Text := '';
end;

procedure TFfrmGerenciadorNFE.bt_nfe_rejeitarClick(Sender: TObject);
begin

  if TNota.IsEmpty then exit;

  pAtualizaTNota;
  tabCancelar.TabVisible := True;
  PageControl1.ActivePageIndex := 4;
  TabCancelar.Caption := 'Rejeitar';
  lblCancelar.Caption := 'Rejeitar NFe';
  sbCancelarEnviar.Caption := ' Salvar ';

  edCancelarData.Text := DateTimeToStr(Now);
  edCancelarLote.Text := FormatDateTime('yymmdd', now)+'01';
  edCancelarObs.Text  := '';

  if edCancelarObs.Focused then
    edCancelarObs.SetFocus;

end;

procedure TFfrmGerenciadorNFE.sbImprimirClick(Sender: TObject);
var vcod, vdest: String;
begin
  if not TNota.IsEmpty then
  begin
    vcod := TNotaLANC.asString;
    TNota.Filter := 'Lanc = 0'+vcod;
    TNota.Filtered := True;
    TCadastro.Close;
    fsql(1,1,['Select razao, item, finnfe, cfopdesc from cadnota where codigo = '+TNotaDifCod.AsString],1);
    vdest := dm.qrSql1.FieldByName('razao').asString;
    if vdest = 'C' then
      TCadastro.TableName := 'CADCLIEN'
    else
      TCadastro.TableName := 'CADFORNE';
    TCadastro.Filter := 'Codigo = ' + TNotaCodigo.AsString;
    TCadastro.Filtered := True;
    TCadastro.Open;

    Application.ProcessMessages;
    xRelTela := UpperCase(Name);
    Application.CreateForm(TFModeloRel, FModeloRel);
    FModeloRel.dsRelat.DataSet := TNota;
    FModeloRel.dsDetalhe.DataSet := TCadastro;
    FModeloRel.ShowModal;
    TNota.Filtered := False;
    TNota.Filter := '';
    TNota.Locate('Lanc', strtoint(vcod), []);
  end;
end;

procedure TFfrmGerenciadorNFE.sbInutilizarClick(Sender: TObject);
var vmax: Integer;
    vi, vf, vc: Integer;
    vtrue: Boolean;
begin
  gbInut.Visible := False;

  if (trim(txtJust_ano.Text) = '') then
  begin
    ShowMessage('Informar Ano!');
    txtJust_ano.SetFocus;
    Exit;
  end;
  if (trim(txtJust_mod.Text) = '') then
  begin
    ShowMessage('Informar Modelo!');
    txtJust_mod.SetFocus;
    Exit;
  end;
  if (trim(txtJust_ser.Text) = '') then
  begin
    ShowMessage('Informar Série!');
    txtJust_ser.SetFocus;
    Exit;
  end;
  if (trim(txtJust_ini.Text) = '') then
  begin
    ShowMessage('Informar Nº inicial!');
    txtJust_ini.SetFocus;
    Exit;
  end;
  if (trim(txtJust_fim.Text) = '') then
  begin
    ShowMessage('Informar Nº final!');
    txtJust_fim.SetFocus;
    Exit;
  end;
  if Length(trim(txtJust_obs.Text)) < 15 then
  begin
    ShowMessage('Informar Justificativa com mais de 15 digitos!');
    txtJust_fim.SetFocus;
    Exit;
  end;

  if not frPerg(PChar('Deseja Salvar e Enviar?')) then exit;

  try
    lblInut.Caption := 'ENVIAR';
    btnInut.Visible := True;
    lblInut.Visible := True;
    txtJust_resp.Lines.Clear;
    gbInut.Visible := True;
    vi := StrToInt(Trim(txtJust_ini.text));
    vf := StrToInt(Trim(txtJust_fim.text));
    vc := vi;
    vtrue := true;
    while vtrue do
    begin
      if (lblInut.Caption = 'PARAR') then
      begin
        if frPerg(PChar('Parar rôbo de envio?')) then
          vtrue := False
        else
          lblInut.Caption := 'ENVIAR';
      end;

      if vi <= vf then
      begin
        //Se a diferença for maior que 1000 deve fatiar o processo.
        if ((vf - vi) > 999) then
          vc := vi + 999
        else
          vc := vf;

        if (lblInut.Caption <> 'PARAR') then
          lblInut.Caption := 'Enviando processo: '+IntToStr(vi)+' - '+IntTostr(vc);

        Application.ProcessMessages;

        try
          ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text,
                                         Trim(txtJust_obs.text),
                                         StrToInt(Trim(txtJust_ano.text)),
                                         StrToInt(Trim(txtJust_mod.text)),
                                         StrToInt(Trim(txtJust_ser.text)),
                                         vi,
                                         vc
                                         );
          Sleep(5000); //Espera 5 segundos

          MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
          memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetornoWS);
          LoadXML(MemoResp, WBResposta);

          txtJust_resp.Lines.Add('Enviando processo: '+IntToStr(vi)+' - '+IntTostr(vc));
          txtJust_resp.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
          txtJust_resp.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
          txtJust_resp.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
          txtJust_resp.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
          txtJust_resp.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
          txtJust_resp.Lines.Add('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
          txtJust_resp.Lines.Add('CNPJ: '     +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
          txtJust_resp.Lines.Add('Modelo: '   +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
          txtJust_resp.Lines.Add('Serie: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
          txtJust_resp.Lines.Add('NumeroInicial: '+IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
          txtJust_resp.Lines.Add('NumeroInicial: '+IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
          txtJust_resp.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
          txtJust_resp.Lines.Add('Protocolo: '+ACBrNFe1.WebServices.Inutilizacao.Protocolo);
          txtJust_resp.Lines.Add('---');
        except
          ShowMessage('Ocorreu erros na inutilização....');
          vtrue := false;
          vi := vf +1;
        end;

      end
      else
        vtrue := false;

      //Proximo
      Sleep(2000); //Espera 2 segundos
      vi := vc + 1;

    end;
  finally
    btnInut.Visible := False;
    lblInut.Visible := False;
    txtJust_resp.Lines.Add('Arquivo salvo em: '+Trim(edtPathLogs.Text));
    txtJust_resp.Lines.SaveToFile(Trim(edtPathLogs.Text)+'\Rel_Inut_'+Trim(txtJust_ini.Text)+'_'+Trim(txtJust_fim.Text)+'.txt');

    vMax := StrtoIntdef(fBus(1,['Select max(codigo) from xparametro where parametro = ''Inutilizar'''],1),0);
    if vmax < 5000 then
    begin
      fSql(1,3,['Insert Into xParametro ',
                '(Codigo,Parametro,Valor)',
                ' Values',
                '('+inttostr(5000)+','+QuotedStr('Inutilizar')+','+
                  QuotedStr(' Ano:'+txtJust_ano.Text+
                            ' Modelo:'+txtJust_mod.Text+
                            ' Serie:'+txtJust_ser.Text+
                            ' N.Ini:'+txtJust_ini.Text+
                            ' N.Fim:'+txtJust_fim.Text)+')'],4);
    end
    else begin
      fSql(1,3,['Update xParametro ',
                ' Set Valor = '+
                  QuotedStr(' Ano:'+txtJust_ano.Text+
                            ' Modelo:'+txtJust_mod.Text+
                            ' Serie:'+txtJust_ser.Text+
                            ' N.Ini:'+txtJust_ini.Text+
                            ' N.Fim:'+txtJust_fim.Text),
                ' Where Codigo = 5000'],3);
    end;
  end;

end;


procedure TFfrmGerenciadorNFE.bt_nfe_ContigenciaClick(Sender: TObject);
var vlanc : Integer;
begin
  pAtualizaTNota;
  if (TNotanfe_status.AsString <> 'OK') then
  begin
    if not frPerg(PChar('Deseja Enviar nota em contigência?')) then exit;
    if not frPerg(PChar('Tem certeza?')) then exit;
    vlanc := TNotaLanc.asInteger;
    fSql(1,3,['UPDATE NFVENDA SET SERIE = '+QuotedStr('901')+' WHERE LANC = 0'+TNotaLanc.AsString],1);
    Sleep(100);
    TNota.Refresh;
    TNota.Locate('Lanc', vlanc, []);
    bt_nfe_validar.OnClick(bt_nfe_validar);
    Sleep(1500);
    bt_nfe_danfe.OnClick(bt_nfe_danfe);
  end;
end;

//************ EMAIL ************//
procedure TFfrmGerenciadorNFE.btnEmailOutlookClick(Sender: TObject);
var vemail, sXML, spdf: string;
    vseq, vtam: Integer;
    Email: TEmail;
    mmAssunto, mmTexto, mmXml, mmPdf: String;
    cc: TStrings;
    Outlook: OleVariant;
    vMailItem: variant;
begin
  try
    if TNota.isEmpty then exit;

    //Abrir Email
    try
      pAtualizaTNota;

      if not Assigned(frmEmail) then
        frmEmail := TfrmEmail.create(self);

      fsql(1,1,['Select razao from cadnota where codigo = '+TNotaDifCod.AsString],1);
      if TNotaDif.AsString = 'S' then
        vemail := fBus(1,['Select email from cadclien where codigo = 0'+TNotaCodigo.AsString],1)
      else
        vemail := fBus(1,['Select email from cadforne where codigo = 0'+TNotaCodigo.AsString],1);

      frmEmail.edm1.Text := Trim(vemail);
      frmEmail.edm2.Text := Trim(edtEmitEmailContador.Text);

      //Transportadora
      vemail := fBus(1,['Select email from cadtrans where codigo = 0'+TNotaTRCod.AsString],1);
      if (Trim(vemail) <> '') then
        frmEmail.edm3.Text := Trim(vemail);

      frmEmail.ShowModal;
    finally
       vemail := frmEmail.vRetEmail;
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
    mmAssunto := 'Relação das Notas Fiscais';
    if cbPdf.Checked then
      mmAssunto := mmAssunto + ', arquivo PDF';
    if cbXml.Checked then
      mmAssunto := mmAssunto + ', arquivo XML';

    vseq := 0;
    Screen.Cursor := crHourGlass;
    mmXml := '';
    mmPdf := '';
    mmTexto := '';
    mmTexto := mmTexto +'Emitida por: ' + Trim(edtEmitRazao.Text);
    mmTexto := mmTexto +' no dia: ' + DateToStr(Date)+#13#10;
    mmTexto := mmTexto +'O destinatário poderá consultar a validade do documento no portal de NF-e da SEFAZ-' + edtEmitUF.Text + ', '+#13#10;
    mmTexto := mmTexto +FazendaEstadual(edtEmitUF.Text) + ', ou no Portal Nacional de NF-e (https://www.nfe.fazenda.gov.br).';
    mmTexto := mmTexto +''+#13#10;
    mmTexto := mmTexto +'Abaixo relação das Notas Fiscais'+#13#10;

    //Procura
    TNota.First;
    while not TNota.Eof do
    begin
      if TNota.FieldByName('XSEL').asString = '*' then
      begin
        sxml := VerificaExisteXml(False);
        if (sxml <> '') then
        begin
          if FileExists(sxml) then
          begin
            spdf := fBuscaCaminho+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
            if FileExists(spdf) then
              spdf := ExtractFileDir(sxml)+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';

            caption := 'Gerenciador de Nota Fiscal Eletrônica.  ' +spdf;

            if not FileExists(spdf) then
            begin
              pnl_msg.Caption := 'Aguarde (1), lendo '+spdf;
              Application.ProcessMessages;
                ACBrNFe1.NotasFiscais.Clear;
                ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
                ACBrNFe1.DANFE.PathPDF := fBuscaCaminho;
                ACBrNFe1.NotasFiscais.ImprimirPDF;
                Sleep(1000);
                pnl_msg.Caption := 'Aguarde (2), lendo '+spdf;
                Application.ProcessMessages;
            end;
            inc(vseq);
            try
              mmTexto := mmTexto +'NFe.Nº: ' + frPree(TNota.FieldByName('NOTA').AsString,9,'0',0);
              mmTexto := mmTexto +', ' + DateToStr(TNota.FieldByName('Data').AsDateTime);
              mmTexto := mmTexto +', Chave: ' + TNota.FieldByName('NFE_Chave').asString;
              mmTexto := mmTexto +''+#13#10;
              // anexar XML
              if cbXml.Checked and FileExists(sxml) then
                mmXml:= mmXml + sxml+';';

              // anexar PDF
              if cbPdf.Checked and FileExists(spdf) then
                mmPdf:= mmPdf + spdf+';';
           except
             Application.MessageBox(PChar('Erro ao enviar Email da NF. '+TNota.FieldByName('NOTA').AsString),'Aviso',mb_ok+MB_ICONINFORMATION);
             Screen.Cursor := crDefault;
             Abort;
           end;
          end;
        end;
      end;
      TNota.Next;
    end;
    //Enviar o email
    Screen.Cursor := crDefault;
    if vseq > 0 then
    begin
      try
        mmTexto := mmTexto +''+#13#10;
        mmTexto := mmTexto +'Qualquer dúvida e/ou divergência, favor entrar em contato com a empresa acima.';

        //Em lote
        if (TComponent(Sender).Tag = 10) then
        begin
          if EnviaMail(110,
                       vemail,
                       mmAssunto,
                       mmTexto,
                       mmXml,
                       mmPdf
                       ) then
          begin
            TNota.Edit;
            TNotaEMAILENV.asinteger := 1;
            TNota.Post;
            Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
          end
          else begin
            application.messagebox('Houve falha... Favor Verificar o e-mail do Destinatário!','Atenção',mb_ok+MB_ICONERROR)
          end;
        end;

       // Em lote - No outlook
        if (TComponent(Sender).Tag = 20) then
        begin
          if EnviaMailOutlook(110,
                       PAnsiChar(vemail),
                       PAnsiChar(mmAssunto),
                       PAnsiChar(mmTexto),
                       PAnsiChar(mmXml),
                       PAnsiChar(mmPdf)
                       ) then
          begin
            TNota.Edit;
            TNotaEMAILENV.asinteger := 1;
            TNota.Post;
            Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
          end
          else begin
            application.messagebox('Houve falha... Favor Verificar o e-mail!','Atenção',mb_ok+MB_ICONERROR)
          end;
        end;

      except
        Application.MessageBox(PChar('Erro ao enviar Email da NF. '+TNota.FieldByName('NOTA').AsString),'Aviso',mb_ok+MB_ICONINFORMATION);
        Screen.Cursor := crDefault;
        VarClear(Outlook);
        Abort;
      end;
    end
    else
       Application.MessageBox('Nenhum arquivo foi encontrado para ser enviado por Email!','Aviso',mb_ok+MB_ICONINFORMATION);
  except
    Screen.Cursor := crDefault;
    Application.MessageBox('Não conseguiu fazer conexão!','Aviso',mb_ok+MB_ICONINFORMATION);
  end;
  TNota.First;
  pnl_msg.Visible := false;
end;

procedure TFfrmGerenciadorNFE.btnEmailUnicoClick(Sender: TObject);
var vemail, vem2, sXML, spdf : string;
    vseq, vi, vz: Integer;
    Email : TEmail;
    mmAssunto, mmTexto, vres: String;
    cc, ccTexto, ccAnexo: TStrings;
begin
//  pnl_msg.Visible := true;
  try
    if TNota.isEmpty then exit;

    pAtualizaTNota;
    //Abrir Email
    try
      if not Assigned(frmEmail) then
        frmEmail := TfrmEmail.create(self);

      fsql(1,1,['Select razao from cadnota where codigo = '+TNotaDifCod.AsString],1);
      //if TNotaDif.AsString = 'S' then
      if dm.qrsql1.fields[0].asstring = 'C' then
        vemail := fBus(1,['Select email from cadclien where codigo = 0'+TNotaCodigo.AsString],1)
      else
        vemail := fBus(1,['Select email from cadforne where codigo = 0'+TNotaCodigo.AsString],1);

      frmEmail.edm1.Text := Trim(vemail);
      frmEmail.edm2.Text := Trim(edtEmitEmailContador.Text);

      //Transportadora
      vemail := fBus(1,['Select email from cadtrans where codigo = 0'+TNotaTRCod.AsString],1);
      if (Trim(vemail) <> '') then
        frmEmail.edm3.Text := Trim(vemail);

      frmEmail.ShowModal;
    finally
       vemail := frmEmail.vRetEmail;
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

    sxml := VerificaExisteXml;
    if sxml = '' then exit;

    if FileExists(sxml) then
    begin
      if edtSmtpHost.text = '' then
      begin
        application.messagebox('Favor configurar a conta de email!','Erro',mb_ok+mb_iconerror);
        exit;
      end;

      spdf := fBuscaCaminho+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
      if not FileExists(spdf) then
        spdf := ExtractFileDir(sxml)+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';

      //Caption tela
      Caption := 'Gerenciador de Nota Fiscal Eletrônica.  ' +spdf;

      pnl_msg.Caption := 'Aguarde (1), lendo '+spdf;
      Application.ProcessMessages;
      if not FileExists(spdf) then
      begin
          ACBrNFe1.NotasFiscais.Clear;
          ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
          ACBrNFe1.DANFE.PathPDF := fBuscaCaminho;
          ACBrNFe1.NotasFiscais.ImprimirPDF;
          Sleep(1000);

      end;

      if vemail <> '' then
      begin
        //corpo da email
        mmAssunto := edtEmailAssunto.Text + ' Nº ' + frPree(TNotaNOTA.AsString,9,'0',0) + ' de ' + DateToStr(TNotaDATA.AsDateTime);
        mmTexto := '';
        mmTexto := mmTexto +'Conforme determina o Ajuste SINIEF 07/05 e Ato COTEPE 72/05, segue em anexo o arquivo XML (e a cópia do Danfe), '+#13#10;
        mmTexto := mmTexto +'referente à Nota Fiscal Eletrônica.'+#13#10;
        mmTexto := mmTexto +'Número: ' + frPree(TNotaNOTA.AsString,9,'0',0)+#13#10;
        mmTexto := mmTexto +'Emitida por: ' + Trim(edtEmitRazao.Text)+#13#10;
        mmTexto := mmTexto +'Na data de : ' + DateToStr(TNotaData.AsDateTime)+#13#10;
        mmTexto := mmTexto +''+#13#10;
        mmTexto := mmTexto +'O destinatário poderá consultar a validade do documento no portal de NF-e da SEFAZ-' + edtEmitUF.Text + ', '+#13#10;
        mmTexto := mmTexto +FazendaEstadual(edtEmitUF.Text) + ', ou no Portal Nacional de NF-e (https://www.nfe.fazenda.gov.br), '+#13#10;
        mmTexto := mmTexto +'utilizando a seguinte Chave de Acesso: ' + TNotaNFE_Chave.asString + '.'+#13#10;
        mmTexto := mmTexto +''+#13#10;
        mmTexto := mmTexto +'Qualquer dúvida e/ou divergência, favor entrar em contato com a empresa acima.'+#13#10;
        mmTexto := mmTexto +''+#13#10;
        mmTexto := mmTexto +'Este e-mail foi enviado automaticamente pelo Sistema Emissor de Notas Fiscais Eletrônicas (NF-e), não é necessário respondê-lo.';

        if EnviaMail(110,
                     vemail,
                     mmAssunto,
                     mmTexto,
                     sxml,
                     spdf
                     ) then
          begin
            TNota.Edit;
            TNotaEMAILENV.asinteger := 1;
            TNota.Post;
            Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
          end
        else begin
           application.messagebox('Houve falha no envio deste email... Favor Verificar o e-mail do Cliente!','Atenção',mb_ok+MB_ICONERROR)
        end;
      end;
    end
    else Application.MessageBox('Arquivo XML não encontrado!','Erro',mb_ok+mb_iconerror);
  except
  end;
  pnl_msg.Visible := false;
end;

procedure TFfrmGerenciadorNFE.sbEmailCartaCorClick(Sender: TObject);
var vemail, sXML, spdf: string;
    vseq, vtam: Integer;
    Email: TEmail;
    mmAssunto, mmTexto, varqold, varqnew, vcod: String;
    cc: TStrings;
    Outlook: OleVariant;
    vMailItem: variant;
    vtrue: Boolean;
begin
  try
    if TNota.isEmpty then exit;

    try
      if not Assigned(frmEmail) then
        frmEmail := TfrmEmail.create(self);

      fsql(1,1,['Select razao from cadnota where codigo = '+TNotaDifCod.AsString],1);
      if dm.qrSql1.FieldByName('razao').asString = 'C' then
        vemail := fBus(1,['Select email from cadclien where codigo = 0'+TNotaCodigo.AsString],1)
      else
        vemail := fBus(1,['Select email from cadforne where codigo = 0'+TNotaCodigo.AsString],1);

      frmEmail.edm1.Text := Trim(vemail);
      frmEmail.edm2.Text := Trim(edtEmitEmailContador.Text);

      //Transportadora
      vemail := fBus(1,['Select email from cadtrans where codigo = 0'+TNotaTRCod.AsString],1);
      if (Trim(vemail) <> '') then
        frmEmail.edm3.Text := Trim(vemail);

      frmEmail.ShowModal;
    finally
       vemail := frmEmail.vRetEmail;
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
    mmAssunto := 'Carta de correção';
    mmAssunto := mmAssunto + ', arquivo PDF salvo em anexo';
    vseq := 0;
    Screen.Cursor := crHourGlass;
    mmTexto := '';
    mmTexto := mmTexto +'Emitida por: ' + Trim(edtEmitRazao.Text);
    mmTexto := mmTexto +' no dia: ' + DateToStr(Date)+#13#10;
    mmTexto := mmTexto +'O destinatário poderá consultar a validade do documento no portal de NF-e da SEFAZ-' + edtEmitUF.Text + ', '+#13#10;
    mmTexto := mmTexto +FazendaEstadual(edtEmitUF.Text) + ', ou no Portal Nacional de NF-e (https://www.nfe.fazenda.gov.br).';
    mmTexto := mmTexto +''+#13#10;
    mmTexto := mmTexto +'NFe.Nº: ' + frPree(TNota.FieldByName('NOTA').AsString,9,'0',0);
    mmTexto := mmTexto +', ' + DateToStr(TNota.FieldByName('Data').AsDateTime);
    mmTexto := mmTexto +', Chave: ' + TNota.FieldByName('NFE_Chave').asString;
    mmTexto := mmTexto +''+#13#10;

    spdf := fBuscaCaminho+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-cce.pdf';

    vtrue := true;
    varqold := xdirSi+'Relatorio\FFRMGERENCIADORNFE_0001.rtm';
    if not FileExists(varqold) then
    begin
      varqold := xdirSi+'Listagem' +xBDConexao+ '\FFRMGERENCIADORNFE_0001.rtm';
      if not FileExists(varqold) then
        vtrue := false;
    end;

    if vtrue then
    begin
      vcod := TNotaLANC.asString;
      TNota.Filter := 'Lanc = 0'+vcod;
      TNota.Filtered := True;
      Application.ProcessMessages;
      TCadastro.Close;
      fsql(1,1,['Select razao, item, finnfe, cfopdesc from cadnota where codigo = '+TNotaDifCod.AsString],1);
      if (dm.qrSql1.FieldByName('razao').asString = 'C') then
        TCadastro.TableName := 'CADCLIEN'
      else
        TCadastro.TableName := 'CADFORNE';
      TCadastro.Filter := 'Codigo = ' + TNotaCodigo.AsString;
      TCadastro.Filtered := True;
      TCadastro.Open;

      varqnew := spdf;
      Application.CreateForm(TFModeloRel, FModeloRel);
      FModeloRel.dsRelat.DataSet := TNota;
      FModeloRel.dsDetalhe.DataSet := TCadastro;
      FModeloRel.ppRelatorio.Template.FileName := varqold;
      FModeloRel.ppRelatorio.Template.LoadFromFile;
      FModeloRel.ppRelatorio.AllowPrintToFile  := true;
      FModeloRel.ppRelatorio.ShowPrintDialog   := false;
      FModeloRel.ppRelatorio.DeviceType := 'PDF';
      FModeloRel.ppRelatorio.TextFileName := varqnew;
      FModeloRel.ppRelatorio.Print;

      TNota.Filtered := False;
      TNota.Filter := '';
      TNota.Locate('Lanc', strtoint(vcod), []);

      //Enviar o email
      Screen.Cursor := crDefault;
      try
        mmTexto := mmTexto +''+#13#10;
        mmTexto := mmTexto +'Qualquer dúvida e/ou divergência, favor entrar em contato com a empresa acima.';
        if EnviaMail(110,
                     vemail,
                     mmAssunto,
                     mmTexto,
                     '',
                     varqnew
                     ) then
            begin
              TNota.Edit;
              TNotaEMAILENV.asinteger := 1;
              TNota.Post;
              Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
            end
        else begin
           application.messagebox('Houve falha no envio deste email... Favor Verificar o e-mail do Cliente!','Atenção',mb_ok+MB_ICONERROR)
        end;
      except
        Application.MessageBox(PChar('Erro ao enviar Email da NF. '+TNota.FieldByName('NOTA').AsString),'Aviso',mb_ok+MB_ICONINFORMATION);
        Screen.Cursor := crDefault;
        VarClear(Outlook);
        Abort;
      end;
    end;
    FreeAndNil(FModeloRel);
  except
    Screen.Cursor := crDefault;
    Application.MessageBox('Não conseguiu fazer conexão!','Aviso',mb_ok+MB_ICONINFORMATION);
  end;

end;

function TFfrmGerenciadorNFE.fEnviarEmailNormal(const sSmtpHost, sSmtpPort, sSmtpUser,
      sSmtpPasswd, sFrom, sTo, sAssunto: String; sMensagem: TStrings;
      SSL: Boolean; sCC, Anexos: TStrings; PedeConfirma, AguardarEnvio: Boolean;
      NomeRemetente: String; TLS: Boolean; HTML:Boolean):String;
var
  smtp: TSMTPSend;
  msg_lines: TStringList;
  m:TMimemess;
  p: TMimepart;
  I : Integer;
  CorpoEmail: TStringList;
begin
//  SetStatus( stNFeEmail );
  Result := '';
  msg_lines := TStringList.Create;
  CorpoEmail := TStringList.Create;
  smtp := TSMTPSend.Create;
  m:=TMimemess.create;
  try
     p := m.AddPartMultipart('mixed', nil);
     if sMensagem <> nil then
     begin
//        CorpoEmail.Text := sMensagem.Text;
//        m.AddPartText(CorpoEmail, p);
       if HTML = true then
         m.AddPartHTML(sMensagem, p)
       else
         m.AddPartText(sMensagem, p);
     end;

//     if StreamNFe <> nil then
//       m.AddPartBinary(StreamNFe,NomeArq, p);

     if assigned(Anexos) then
     for i := 0 to Anexos.Count - 1 do
     begin
        m.AddPartBinaryFromFile(Anexos[i], p);
     end;

     m.header.tolist.add(sTo);

     if Trim(NomeRemetente) <> '' then
       m.header.From := Format('%s<%s>', [NomeRemetente, sFrom])
     else
       m.header.From := sFrom;

     m.header.subject := sAssunto;
     m.EncodeMessage;
     msg_lines.Add(m.Lines.Text);

     smtp.UserName := sSmtpUser;
     smtp.Password := sSmtpPasswd;

     smtp.TargetHost := sSmtpHost;
     smtp.TargetPort := sSmtpPort;

     smtp.FullSSL := SSL;
     // smtp.AutoTLS := SSL; ?
     smtp.AutoTLS := TLS;

     if(TLS) then
       smtp.StartTLS;

     if not smtp.Login then
       result := result + 'E-mail erro! No acesso do emitente: ' + smtp.EnhCodeString+sLineBreak+smtp.FullResult.Text;

     if not smtp.MailFrom(sFrom, Length(sFrom)) then
       result := result + 'E-mail erro! Emitente: ' + smtp.EnhCodeString+sLineBreak+smtp.FullResult.Text;

     if not smtp.MailTo(sTo) then
       result := result + 'E-mail erro! Remetente: ' + smtp.EnhCodeString+sLineBreak+smtp.FullResult.Text;

     if sCC <> nil then
     begin
       for I := 0 to sCC.Count - 1 do
       begin
         if not smtp.MailTo(sCC.Strings[i]) then
           result := result + 'E-mail erro! Remetente: ' + smtp.EnhCodeString+sLineBreak+smtp.FullResult.Text;
       end;
     end;

     if not smtp.MailData(msg_lines) then
       result := result + 'E-mail erro! Mensagem: ' + smtp.EnhCodeString+sLineBreak+smtp.FullResult.Text;

     if not smtp.Logout then
       result := result + 'E-mail erro! No fechamento: ' + smtp.EnhCodeString+sLineBreak+smtp.FullResult.Text;
  finally
     msg_lines.Free;
     CorpoEmail.Free;
     smtp.Free;
     m.free;
  end;
end;

{procedure TFfrmGerenciadorNFE.btn_EmailGeralClick(Sender: TObject);
var vemail, vem2, sXML, spdf : string;
    vseq, vi, vz: Integer;
    Email : TEmail;
    mmAssunto, mmTexto, vres: String;
    cc, ccTexto, ccAnexo: TStrings;
begin
//  pnl_msg.Visible := true;
  try
    if TNota.isEmpty then exit;
    try
      pAtualizaTNota;
      if not Assigned(frmEmail) then
        frmEmail := TfrmEmail.create(self);

      fsql(1,1,['Select razao from cadnota where codigo = '+TNotaDifCod.AsString],1);
      if TNotaDif.AsString = 'S' then
        vemail := fBus(1,['Select email from cadclien where codigo = 0'+TNotaCodigo.AsString],1)
      else
        vemail := fBus(1,['Select email from cadforne where codigo = 0'+TNotaCodigo.AsString],1);

      frmEmail.edm1.Text := Trim(vemail);
      frmEmail.edm2.Text := Trim(edtEmitEmailContador.Text);

      //Transportadora
      vemail := fBus(1,['Select email from cadtrans where codigo = 0'+TNotaTRCod.AsString],1);
      if (Trim(vemail) <> '') then
        frmEmail.edm3.Text := Trim(vemail);

      frmEmail.ShowModal;
    finally
       vemail := frmEmail.vRetEmail;
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

    if vemail <> '' then
    begin
      //corpo da email
      mmAssunto := 'Relação das Notas Fiscais';
      if cbPdf.Checked then
        mmAssunto := mmAssunto + ', arquivo PDF';
      if cbXml.Checked then
        mmAssunto := mmAssunto + ', arquivo XML';

      CC := TstringList.Create;
      if (Pos(';', vemail) > 0) then
      begin
        vem2 := vemail+';';
        vi := Pos(';', vem2);
        vemail := Trim(Copy(vem2, 1, vi-1));
        vem2 := Copy(vem2, vi+1, 300);
        vi := 1;
        for vz := 0 to Length(vem2) do
        begin
          if Copy(vem2,vz,1) = ';' then
          begin
            CC.Add(Trim(Copy(vem2,vi,vz-vi)));
            vi := vz+1;
          end;
        end;
      end;

      ccTexto := TstringList.Create;
      ccTexto.Add('Emitida por: ' + Trim(edtEmitRazao.Text));
      ccTexto.Add(' no dia: ' + DateToStr(Date));
      ccTexto.Add('');
      ccTexto.Add('O destinatário poderá consultar a validade do documento no portal de NF-e da SEFAZ-' + edtEmitUF.Text + ', ');
      ccTexto.Add(FazendaEstadual(edtEmitUF.Text) + ', ou no Portal Nacional de NF-e (https://www.nfe.fazenda.gov.br).');
      ccTexto.Add('');
      ccTexto.Add('Abaixo relação das Notas Fiscais');

      //Anexos
      ccAnexo := TstringList.Create;
      //Procura
      TNota.First;
      while not TNota.Eof do
      begin
        if TNota.FieldByName('XSEL').asString = '*' then
        begin
          sxml := VerificaExisteXml(False);
          if (sxml <> '') then
          begin
            if FileExists(sxml) then
            begin
              spdf := fBuscaCaminho+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
              if FileExists(spdf) then
                spdf := ExtractFileDir(sxml)+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
              if not FileExists(spdf) then
              begin
                pnl_msg.Caption := 'Aguarde (1), lendo '+spdf;
                Application.ProcessMessages;
                  ACBrNFe1.NotasFiscais.Clear;
                  ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
                  ACBrNFe1.DANFE.PathPDF := fBuscaCaminho;
                  ACBrNFe1.NotasFiscais.ImprimirPDF;
                  Sleep(1000);
                  pnl_msg.Caption := 'Aguarde (2), lendo '+spdf;
                  Application.ProcessMessages;
              end;
              try
                ccTexto.Add('');
                ccTexto.Add('NFe.Nº: ' + frPree(TNota.FieldByName('NOTA').AsString,9,'0',0)
                            +', ' + DateToStr(TNota.FieldByName('Data').AsDateTime)
                            +', Chave: ' + TNota.FieldByName('NFE_Chave').asString);

                // anexar XML
                if cbXml.Checked and FileExists(sxml) then
                  ccAnexo.Add(sxml);

                // anexar PDF
                if cbPdf.Checked and FileExists(spdf) then
                  ccAnexo.Add(spdf);

              except
                Application.MessageBox(PChar('Erro ao enviar Email da NF. '+TNota.FieldByName('NOTA').AsString),'Aviso',mb_ok+MB_ICONINFORMATION);
                Screen.Cursor := crDefault;
                Abort;
              end;
            end;
          end;
        end;
        TNota.Next;
      end;
      TNota.First;

      vres:= fEnviarEmailNormal(edtSmtpHost.Text,
                         edtSmtpPort.Text,
                         edtSmtpUser.Text,
                         edtSmtpPass.Text,
                         edtSmtpUser.Text,
                         vemail,
                         mmAssunto,
                         ccTexto,
                         cbEmailSSL.Checked,
                         CC,
                         ccAnexo,
                         False,
                         False,
                         xEmpre,
                         cbEmailSSL.Checked,
                         False);

      CC.Free;
      ccTexto.Free;
      ccAnexo.Free;
      if vres <> '' then
        Application.MessageBox(pchar(vres),'Erro',mb_ok+mb_iconerror)
      else begin
        TNota.Edit;
        TNotaEMAILENV.asinteger := 1;
        TNota.Post;
        Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      end;
    end;
  except
  end;
  pnl_msg.Visible := false;
end;
}

procedure TFfrmGerenciadorNFE.pAtualizaSqlDados;
begin
  sqldados.Close;
  sqldados.Open;
  sqldados.Locate('lanc', tnotalanc.AsInteger,[]);
end;

procedure TFfrmGerenciadorNFE.pAtualizaTNota;
begin

  TNota.Locate('lanc', sqldadoslanc.AsInteger,[]);

end;

//Versão 4.0
procedure TFfrmGerenciadorNFE.sbDataClick(Sender: TObject);
var vstr:String;
begin
  vstr := '- '+ACBrNFe1.SSL.CertCNPJ;
  vstr := vstr +#13#10+'- '+ ACBrNFe1.SSL.CertRazaoSocial;
  vstr := vstr +#13#10+'- '+ ACBrNFe1.SSL.CertNumeroSerie;
  vstr := vstr +#13#10+'- '+ FormatDateBr(ACBrNFe1.SSL.CertDataVenc);
  vstr := vstr +#13#10+'- '+ ACBrNFe1.SSL.CertSubjectName;
  vstr := vstr +#13#10+'- '+ ACBrNFe1.SSL.CertIssuerName;
  vstr := vstr +#13#10+'- '+ ACBrNFe1.SSL.CertCertificadora;
  ShowMessage(vstr);
  if Trim(FormatDateBr(ACBrNFe1.SSL.CertDataVenc)) <> '' then
    tbConfigCER_VALIDADE.Value := StrtoDate(FormatDateBr(ACBrNFe1.SSL.CertDataVenc));
end;

procedure TFfrmGerenciadorNFE.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TFfrmGerenciadorNFE.cbHttpLibChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TFfrmGerenciadorNFE.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TFfrmGerenciadorNFE.cbSSLTypeChange(Sender: TObject);
begin
  if cbSSLType.ItemIndex <> -1 then
     ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

procedure TFfrmGerenciadorNFE.cbXmlSignLibChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;


procedure TFfrmGerenciadorNFE.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex     := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex   := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex    := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );

 cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;
end;

procedure TFfrmGerenciadorNFE.spPathSchemasClick(Sender: TObject);
var Dir: string;
begin

  try
    if Length(tbConfigGer_PatSchemas.AsString) <= 0 then
       Dir := ExtractFileDir(application.ExeName)+'\Schemas'
    else
       Dir := tbConfigGer_PatSchemas.AsString;

    OpenDialog1.Title := 'Selecione um arquivo';
    OpenDialog1.DefaultExt := '*.*';
    OpenDialog1.Filter := 'Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := Dir;
    if OpenDialog1.Execute then
      Dir := ExtractFileDir(OpenDialog1.FileName);

  except
    Dir := ExtractFileDir('C:\Schemas');
  end;

  //if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
  tbConfigGer_PatSchemas.AsString := Dir;

end;

function TFfrmGerenciadorNFE.pPesquisaCNPJ(xUF,xDocumento: String):String;
begin
  try
    xDocumento :=  Trim(OnlyNumber(xDocumento));

    ACBrNFe1.WebServices.ConsultaCadastro.UF  := xUF;
    if Length(xDocumento) > 11 then
       ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := xDocumento
    else
       ACBrNFe1.WebServices.ConsultaCadastro.CPF := xDocumento;
    ACBrNFe1.WebServices.ConsultaCadastro.Executar;

    MemoResp.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS;
    Result := MemoResp.Lines.Text;
  except
    Result := 'Erro!';
  end;
end;

procedure TFfrmGerenciadorNFE.sqlDadosCalcFields(DataSet: TDataSet);
begin
  if sqlDadosEmailEnv.AsInteger = 0 then
    sqlDadosEmail.AsString := 'N'
  else
    sqlDadosEmail.AsString := 'S';
end;


procedure TFfrmGerenciadorNFE.ConfigurarDANFE1Click(Sender: TObject);
begin

  if FileExists(ExtractFilePath(Application.ExeName) + 'DANFE.fr3') then
  begin
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DANFE.fr3');
    frxReport1.DesignReport;
  end;

end;

procedure TFfrmGerenciadorNFE.CopiararquivoPDFMemria1Click(Sender: TObject);
begin
  pCopiaArquivoMemoria('PDF');
end;

procedure TFfrmGerenciadorNFE.CopiarXMLMemria1Click(Sender: TObject);
begin
  pCopiaArquivoMemoria('XML');
end;


procedure TFfrmGerenciadorNFE.TNotaCalcFields(DataSet: TDataSet);
begin

  TNotazMemoCarta.AsString := TNotaNFE_CCE1.AsString +
                              TNotaNFE_CCE2.AsString +
                              TNotaNFE_CCE3.AsString +
                              TNotaNFE_CCE4.AsString +
                              TNotaNFE_CCE5.AsString +
                              TNotaNFE_CCE6.AsString +
                              TNotaNFE_CCE7.AsString +
                              TNotaNFE_CCE8.AsString;
end;

procedure TFfrmGerenciadorNFE.sbCancelarEnviarClick(Sender: TObject);
var vAux, sXML, idLote, Chave, CNPJ, nSeqEvento, vnotacp: string;
    vDataTime: TDateTime;
begin
  if TNota.isEmpty then exit;

  vAux := Trim(edCancelarObs.Text);

  if Length(Trim(vAux)) < 15 then
  begin

    ShowMessage('Justificativa tem que ter mais de 15 letras.');
    exit;

  end;

  vnotacp := Trim(frImpu(2,'Informe o Número da nota: ',''));

  if frPree(vnotacp, 6, '0', 0) <> frPree(TNotaNota.asString, 6, '0', 0) then
  begin

    ShowMessage('Nota fiscal informada difere da nota selecionada!');
    exit;

  end;

  try

    vDataTime := StrToDateTime(edCancelarData.Text);

    if (TabCancelar.Caption = 'Cancelar') then
    begin

      sXML := TNotanfe_xml.asstring;
      if sxml = '' then exit;

      sxml := VerificaExisteXml;
      if FileExists(sxml) then
      begin
        if not frPerg(PChar('Deseja cancelar essa NFe?'+#13+'Número: '+frPree(TNotaNota.asString, 6, '0', 0))) then exit;
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(sXML);

        idLote := IntToStr(StrToIntDef(Trim(edCancelarLote.Text),1));  //FormatDateTime('yymmdd', now)+'01';
        ACBrNFe1.EventoNFe.Evento.Clear;
        ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
        with ACBrNFe1.EventoNFe.Evento.Add do
        begin
          infEvento.dhEvento        := vDataTime; //Now
          infEvento.tpEvento        := teCancelamento;
          infEvento.detEvento.xJust := vAux;
        end;

        ACBrNFe1.EnviarEvento(StrToInt(idLote));
        MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
        memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
        LoadXML(MemoResp, WBResposta);

        if (ACBrNFe1.WebServices.EnvEvento.cStat < 200) then
        begin
          if ACBrNFe1.WebServices.Consulta.cStat = 101 then
          begin
            TNota.Edit;
            TNotanfe_status.asString := 'CA';
            TNotaOBS1.asString := IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat)+' - '+ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            TNotaOBS12.asString := 'Cancelamento Lote: ' + idLote + ' - Data/Hora: ' + edCancelarData.Text + ' - Justificativa: '+vAux;
            TNotaDIFCOD.asInteger := -1;
            TNota.Post;

            PageControl1.ActivePageIndex := 0;
            tabCancelar.TabVisible := False;

          end
          else begin
            // Cancelamento fora do prazo
            if (ACBrNFe1.WebServices.Consulta.cStat = 501) then
            begin
              Sleep(1000);
              vAux := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
              ShowMessage(PChar('Cancelamento fora do prazo:')+#13#10+PChar(vAux));
              Sleep(2000);
            end
            else begin
              //Caso seja 128 - espera um pouco e faz consulta.
              if (ACBrNFe1.WebServices.Consulta.cStat = 128) then
              begin
                Sleep(1000);
                ShowMessage('Aguarde está em processamento...'+#13#10+
                            'Verifique se não tem CTe para cancelar'+#13#10+
                            'Clique OK, para continuar...');
                Sleep(2000);
                //bt_nfe_consultar.onClick(bt_nfe_consultar); //comentar para não mascarar o motivo de rejeição
              end
              else begin
                Sleep(1000);
                vAux := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
                ShowMessage(PChar('Cancelamento inválido devido:')+#13#10+PChar(vAux));
                Sleep(2000);
                bt_nfe_consultar.onClick(bt_nfe_consultar);
              end;
            end;
          end;
          pAtualizaSqlDados;
        end;
      end
      else application.messagebox('Arquivo XML não cancelado!','Erro',mb_ok+mb_iconerror);
    end
    else begin

      if not frPerg(PChar('Deseja rejeitar essa NFe?'+#13+'Número: '+frPree(TNotaNota.asString, 6, '0', 0))) then exit;

      sXML := TNotanfe_xml.asstring;
      if sxml = '' then exit;

      sxml := VerificaExisteXml;
      if FileExists(sxml) then
      begin
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(sXML);

        //pega cnpj
        fsql(1,2,['Select razao from cadnota where codigo = '+TNotaDifCod.AsString],1);
        if dm.qrSql2.FieldByName('razao').asString = 'C' then
          fsql(1,1,['Select cpf from cadclien where codigo = '+TNotaCodigo.AsString],1)
        else
          fsql(1,1,['Select cpf from cadforne where codigo = '+TNotaCodigo.AsString],1);
        CNPJ := Trim(OnlyNumber(dm.qrSql1.FieldByName('cpf').asString));

        Chave := Trim(OnlyNumber(TNotaNFE_Chave.AsString));
        idLote := '1';
        //CNPJ := Copy(Chave,7,14);
        nSeqEvento := IntToStr(fBus(1,['Select Max(NFE_CCESEQ) From NFVenda '],1) + 1);
        idLote := IntToStr(StrToIntDef(Trim(edCancelarLote.Text),1));  //FormatDateTime('yymmdd', now)+'01';
        ACBrNFe1.EventoNFe.Evento.Clear;
        ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
        with ACBrNFe1.EventoNFe.Evento.Add do
        begin
          infEvento.cOrgao          := 91; //Now
          infEvento.chNFe           := Chave;
          infEvento.CNPJ            := CNPJ;
          infEvento.dhEvento        := vDataTime; //Now
          infEvento.tpEvento        := teManifDestOperNaoRealizada;
          infEvento.detEvento.xJust := vAux;
          infEvento.nSeqEvento := StrToInt(nSeqEvento);
        end;

        ACBrNFe1.EnviarEvento(StrToInt(idLote));
        MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
        memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
        LoadXML(MemoResp, WBResposta);

        if (ACBrNFe1.WebServices.EnvEvento.cStat < 200) then
        begin
          if ACBrNFe1.WebServices.Consulta.cStat = 101 then
          begin
            TNota.Edit;
            TNotanfe_status.asString := 'RE';
            TNotaOBS1.asString := 'Rejeitado pelo usuário';
            TNotaOBS12.asString := 'Rejeitado Lote: ' + idLote + ' - Data/Hora: ' + edCancelarData.Text + ' - Justificativa: '+vAux;
            TNotaDIFCOD.asInteger := -1;
            TNotaNFE_CCESEQ.AsInteger := StrToIntDef(nSeqEvento,0);
            TNotaNFE_CCEDATA.Value := Now;
            TNota.Post;
          end
          else begin
            // Cancelamento fora do prazo
            if (ACBrNFe1.WebServices.Consulta.cStat = 501) then
            begin
              Sleep(1000);
              vAux := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
              ShowMessage(PChar('Reijatado fora do prazo:')+#13#10+PChar(vAux));
              Sleep(2000);
            end;
          end;
        end
        else begin
          TNota.Edit;
          TNotanfe_status.asString := 'RE';
          TNotaOBS1.asString := 'Rejeitado manualmente pelo usuário';
          TNotaOBS12.asString := 'Rejeitado Lote: ' + idLote + ' - Data/Hora: ' + edCancelarData.Text + ' - Justificativa: '+vAux;
          TNotaDIFCOD.asInteger := -1;
            TNotaNFE_CCESEQ.AsInteger := StrToIntDef(nSeqEvento,0);
            TNotaNFE_CCEDATA.Value := Now;
          TNota.Post;
        end;

      end
      else application.messagebox('Arquivo XML não rejeitado!','Erro',mb_ok+mb_iconerror);

      PageControl1.ActivePageIndex := 0;
      tabCancelar.TabVisible := False;
      pAtualizaSqlDados;

    end;

  except
    on E:exception do
    begin
      application.MessageBox(PChar('Erro cancelamento!'+#13+'Mensagem: '+E.message),'Erro', mb_ok+mb_iconerror);
    end;

  end;

end;

procedure TFfrmGerenciadorNFE.btn_TestarClick(Sender: TObject);
var vmsgtag: Integer;
begin

  memConexao.Lines.Clear;
  vmsgtag := bt_nfe_status.Tag;
  bt_nfe_status.Tag := 0;

  LerConfiguracao;
  Application.ProcessMessages;

  pgLog.ActivePageIndex := 0;
  if ACBrNFe1.WebServices.StatusServico.Executar then
  begin
    Sleep(1000);

    memConexao.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
    memConexao.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetornoWS);
    LoadXML(MemoResp, WBResposta);
    memConexao.Lines.Add('***  OK  ***');

    if (vmsgtag = 1) then

      memConexao.Lines.Add('Conectado ao WebService da receita...')

    else begin

      memConexao.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
      memConexao.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
      memConexao.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
      memConexao.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);

    end;

  end
  else begin
    Sleep(1000);
    pnl_msg.Caption := '';
    pnl_msg.Visible := False;
    pnl_log.Visible := True;
    memConexao.Lines.Clear;
    memConexao.Lines.Add('* ERRO/ERRO/ERRO *');

    if ACBrNFe1.WebServices.StatusServico.cStat > 99 then
    begin
      memConexao.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
      memConexao.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
      memConexao.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
      memConexao.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
      memConexao.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
      memConexao.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
      memConexao.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
      memConexao.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
      memConexao.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
    end
    else begin
      memConexao.Lines.Add('WebService Consulta Status serviço:');
      memConexao.Lines.Add('  - Inativo ou Inoperante tente novamente.');
    end;

    ShowMessage('Erro ao conectar com o webService da receita!');
    Abort;

  end
end;

procedure TFfrmGerenciadorNFE.lblPortaDblClick(Sender: TObject);
begin

if Trim(edtSmtp_Host.Text) <> '' then exit;

edtSmtp_Host.Text     := 'smtplw.com.br';
edtSmtp_Porta.Text    := '587';
edtSmtp_User.Text     := 'naoresponda@acwagro.com.br';
edtSmtp_Senha.Text    := 'CJmXpEmt3221';
edtSmtp_UserName.Text := 'jarrieragro';


end;

procedure TFfrmGerenciadorNFE.pCopiaArquivoMemoria(vtp: String);
  var sXML : string;
begin
  if TNota.IsEmpty then exit;

 try
   pAtualizaTNota;
   sxml := VerificaExisteXml;
   if sxml = '' then exit;
   if FileExists(sxml) then
   begin
     if (vtp = 'PDF') then
     begin
       sxml := ExtractFileDir(sxml)+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
       if not FileExists(sxml) then
         sxml := '';
     end;

     if sxml = '' then
     begin
       application.messagebox('Arquivo não econtraddo!','Erro',mb_ok+mb_iconerror);
       exit;
     end;

     if not frCopyFileToClipboard(sxml) then
       application.messagebox('Arquivo não alocado!','Erro',mb_ok+mb_iconerror)
     //else
     //  application.messagebox('OK!','Alocar arquivo',mb_ok);

   end
   else
    application.messagebox('Arquivo não econtraddo!','Erro',mb_ok+mb_iconerror);
  except
    on E:exception do
    begin
      application.MessageBox(PChar('Arquivo não alocado!'+#13+'Mensagem: '+E.message),'Erro', mb_ok+mb_iconerror);
    end;
  end;

end;

procedure TFfrmGerenciadorNFE.pCopiaArquivoDownload(vtp: String);
var sXML, sPasta, sArquivo : string;
    vok: Boolean;
begin
  if TNota.IsEmpty then exit;

 try
   pAtualizaTNota;
   sxml := VerificaExisteXml;
   if sxml = '' then exit;
   if FileExists(sxml) then
   begin
     if (vtp = 'PDF') then
     begin
       sxml := ExtractFileDir(sxml)+'\'+TNota.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf';
       if not FileExists(sxml) then
         sxml := '';
     end;

     if sxml = '' then
     begin
       application.messagebox('Arquivo não econtraddo!','Erro',mb_ok+mb_iconerror);
       exit;
     end;

     sArquivo := frExtrairArquivoNome(sxml);
     //\\tsclient\WebFile\
     sPasta := frGeneratorObter('GERAL', 'PASTA', 'OBS');
     if (UpperCase(sPasta) = 'TEMP')      or
        (UpperCase(sPasta) = 'DOCUMENTO') or
        (UpperCase(sPasta) = 'DOWNLOAD')
     then
       sPasta := frObterPasta('0',UpperCase(sPasta), '')
     else
       sPasta := frObterPasta('0','', sPasta);

     if sPasta <> '' then
     begin
       sArquivo := sPasta + '\' + sArquivo;
       vok := Copyfile(PChar(sxml), PChar(sArquivo), false);

       if not vok then
         application.messagebox('Arquivo não alocado','Erro',mb_ok+mb_iconerror)
//       else
//         application.messagebox('OK','Copia Arquivo',mb_ok);
     end
     else
       application.messagebox('Arquivo não alocado','Erro',mb_ok+mb_iconerror)

   end
   else
    application.messagebox('Arquivo não econtraddo!','Erro',mb_ok+mb_iconerror);
  except
    on E:exception do
    begin
      application.MessageBox(PChar('Arquivo não alocado!'+#13+'Mensagem: '+E.message),'Erro', mb_ok+mb_iconerror);
    end;
  end;

end;

procedure TFfrmGerenciadorNFE.CopiarXMLMemria2Click(Sender: TObject);
begin
  pCopiaArquivoDownload('XML');
end;

procedure TFfrmGerenciadorNFE.pSalvarArquivoNFE(sArqTipo, sArqSalvar: String);
var vReg_ID: Integer;
begin
  //Salva xml/pdf no banco de dados
  qrSqlObterArq.Close;
  qrSqlObterArq.Params[0].AsInteger := TNotaLanc.AsInteger;
  qrSqlObterArq.Open;

  if qrSqlObterArq.IsEmpty then
  begin
    vReg_ID := frGeneratorFB('gen_nfvenda_arquivo_id');
    qrSqlObterArq.Append;
    qrSqlObterArqREG_ID.AsInteger := vReg_ID;
    qrSqlObterArqLANC.AsInteger   := TNotaLanc.AsInteger;
  end
  else begin
    qrSqlObterArq.Edit;
  end;

  if (sArqTipo = 'XML') then
  begin
    if ((qrSqlObterArqNOMEXML.IsNull) and (sArqSalvar <> '')) then
    begin
      qrSqlObterArqNOMEXML.AsString := frExtrairArquivoNome(sArqSalvar);
      qrSqlObterArqARQUIVOXML.LoadFromFile(sArqSalvar);
      qrSqlObterArq.Post;
      qrSqlObterArq.ApplyUpdates(-1);
    end;
  end;

  if (sArqTipo = 'PDF') then
  begin
    if ((qrSqlObterArqNOMEPDF.IsNull) and (sArqSalvar <> '')) then
    begin
      qrSqlObterArqNOMEPDF.AsString := frExtrairArquivoNome(sArqSalvar);
      qrSqlObterArqARQUIVOPDF.LoadFromFile(sArqSalvar);
      qrSqlObterArq.Post;
      qrSqlObterArq.ApplyUpdates(-1);
    end;
  end;

end;

function TFfrmGerenciadorNFE.pObterArquivoNFE(sArqTipo:String): String;
begin
  //Salva xml no banco de dados
  Result := '';
  fSql(1,4,['Select NOMEXML, NOMEPDF from NFVENDA_ARQUIVO where LANC = 0'+TNotaLanc.AsString],1);
  if (sArqTipo = 'XML') then
  begin
    if (not dm.qrSql4.Fields[0].IsNull) then
      Result := dm.qrSql4.Fields[0].AsString;
  end;

  if (sArqTipo = 'PDF') then
  begin
    if (not dm.qrSql4.Fields[1].IsNull) then
      Result := dm.qrSql4.Fields[1].AsString;
  end;
  dm.qrSql4.Close;

end;


function TFfrmGerenciadorNFE.pImportarArquivoNFE(vfarq, vfano, vfmes:String): String;
var vsArq: String;
begin

  Result := '';
  qrSqlObterArq.Close;
  qrSqlObterArq.Params[0].AsInteger := TNotaLanc.AsInteger;
  qrSqlObterArq.Open;

  if not qrSqlObterArq.IsEmpty then
  begin
    if (not qrSqlObterArqNOMEXML.IsNull) then
    begin

      vsArq := vfarq  + 'xml' +vfano +vfmes + '\';

      if not DirectoryExists(vsArq) then
        ForceDirectories(vsArq);

      vsArq := vsArq  + qrSqlObterArqNOMEXML.AsString;
      (qrSqlObterArq.FieldByName('ARQUIVOXML') as TBlobField).SaveToFile(vsArq);
      Sleep(300);

      if FileExists(vsArq) then
        Result := vsArq;

    end;
  end;

end;


procedure TFfrmGerenciadorNFE.pExcluirArquivosTmp;
var vSearchRec: TSearchRec;
    vpasta, vdata, varq, vext: String;
    vrec: Integer;
begin
  //Após 10 dia exluir arquivos da pasta
  try
  vpasta := Trim(Trim(edtPathLogs.Text) + '\xml'+FormatDateTime('yyyy',dtFinal.DateTime)+FormatDateTime('mm',dtFinal.DateTime));
  if DirectoryExists(vPasta) then
  begin
    for vrec := 0 to 5 do
    begin
      case vrec of
        0: vext := '*-sta.xml';
        1: vext := '*-cad.xml';
        2: vext := '*-rec.xml';
        3: vext := '*-soap.xml';
        4: vext := '*-lot.xml';
        5: vext := '*-eve.xml';
      end;
      FindFirst(vpasta+'\'+vext, faAnyFile, vSearchRec);
      repeat
        if (vSearchRec.Name <> '') then
        begin
          varq := vpasta+'\'+vSearchRec.Name;
          if FileExists(varq) then
          begin
            vdata := pObterDataArquivo(varq);
            if (vdata <> '') then
            begin
              if (StrToDate(vdata) <= StrToDate(DateToStr(now - 3))) then
                DeleteFile(varq);
            end;
          end;
        end;
      until (FindNext(vSearchRec) <> 0);
    end;
  end;
  finally
    FindClose(vSearchRec);
  end;
end;


end.

