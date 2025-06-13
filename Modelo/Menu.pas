unit Menu;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Menus, QRPrntr, ComCtrls,
  Tabs, Gauges, Db, DBTables, Graphics, Mask, jpeg, RzPanel, RzTabs,
  Midas, MIDASLIB, Mapi, ShellAPI, ComObj, Printers, BDE,
  Messages, TlHelp32, IniFiles, ACBrBase, ACBrMail,  frxClass, dxGDIPlusClasses,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, RzGroupBar, System.ImageList, Vcl.ImgList,
  ACBrEnterTab;

type
  TFMenu = class(TForm)
    Logo: TImage;
    pnlMenu: TPanel;
    rzpgMenu: TRzPageControl;
    TabFaturamento: TRzTabSheet;
    RzPanel35: TRzPanel;
    RzPanel60: TRzPanel;
    SpeedButton65: TSpeedButton;
    RzPanel61: TRzPanel;
    RzPanel62: TRzPanel;
    SpeedButton72: TSpeedButton;
    RzPanel63: TRzPanel;
    RzPanel64: TRzPanel;
    SpeedButton73: TSpeedButton;
    SpeedButton75: TSpeedButton;
    RzPanel65: TRzPanel;
    TabFinanceiro: TRzTabSheet;
    RzPanel28: TRzPanel;
    RzPanel36: TRzPanel;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton84: TSpeedButton;
    RzPanel37: TRzPanel;
    TabProducao: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    SpeedButton89: TSpeedButton;
    RzPanel4: TRzPanel;
    RzPanel52: TRzPanel;
    SpeedButton91: TSpeedButton;
    SpeedButton92: TSpeedButton;
    RzPanel53: TRzPanel;
    RzPanel56: TRzPanel;
    SpeedButton97: TSpeedButton;
    SpeedButton98: TSpeedButton;
    SpeedButton99: TSpeedButton;
    SpeedButton100: TSpeedButton;
    SpeedButton101: TSpeedButton;
    RzPanel57: TRzPanel;
    TabCadastro: TRzTabSheet;
    RzPanel27: TRzPanel;
    RzPanel29: TRzPanel;
    SpeedButton102: TSpeedButton;
    SpeedButton104: TSpeedButton;
    RzPanel30: TRzPanel;
    RzPanel31: TRzPanel;
    SpeedButton105: TSpeedButton;
    SpeedButton106: TSpeedButton;
    SpeedButton108: TSpeedButton;
    SpeedButton109: TSpeedButton;
    RzPanel32: TRzPanel;
    RzPanel1: TRzPanel;
    SpeedButton114: TSpeedButton;
    SpeedButton116: TSpeedButton;
    RzPanel9: TRzPanel;
    TabCamara: TRzTabSheet;
    RzPanel25: TRzPanel;
    RzPanel26: TRzPanel;
    SpeedButton124: TSpeedButton;
    SpeedButton125: TSpeedButton;
    RzPanel43: TRzPanel;
    RzPanel44: TRzPanel;
    SpeedButton126: TSpeedButton;
    SpeedButton127: TSpeedButton;
    RzPanel45: TRzPanel;
    TabGerencial: TRzTabSheet;
    RzPanel13: TRzPanel;
    RzPanel16: TRzPanel;
    SpeedButton132: TSpeedButton;
    SpeedButton133: TSpeedButton;
    RzPanel17: TRzPanel;
    RzPanel46: TRzPanel;
    SpeedButton137: TSpeedButton;
    SpeedButton138: TSpeedButton;
    RzPanel47: TRzPanel;
    TabUtilitario: TRzTabSheet;
    RzPanel38: TRzPanel;
    RzPanel39: TRzPanel;
    SpeedButton142: TSpeedButton;
    SpeedButton143: TSpeedButton;
    RzPanel40: TRzPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    pnlCabecalho: TPanel;
    Panel7: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    pnlLeft: TPanel;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel15: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel3: TPanel;
    LMicro: TPanel;
    Panel2: TPanel;
    LMensagem: TPanel;
    titVersao: TPanel;
    PBarraRodape: TPanel;
    GBarra1: TGroupBox;
    Labela1: TLabel;
    PBarra1: TPanel;
    Gauge1: TGauge;
    LCont1: TLabel;
    PBarra2: TPanel;
    Gauge2: TGauge;
    LCont2: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    RzPanel54: TRzPanel;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    SpeedButton12: TSpeedButton;
    RzPanel55: TRzPanel;
    TabRelatorio: TRzTabSheet;
    RzPanel41: TRzPanel;
    RzPanel15: TRzPanel;
    SpeedButton140: TSpeedButton;
    RzPanel58: TRzPanel;
    RzPanel69: TRzPanel;
    SpeedButton18: TSpeedButton;
    RzPanel70: TRzPanel;
    RzPanel59: TRzPanel;
    SpeedButton141: TSpeedButton;
    RzPanel66: TRzPanel;
    TabSheet1: TRzTabSheet;
    RzPanel7: TRzPanel;
    RzPanel75: TRzPanel;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    RzPanel76: TRzPanel;
    RzPanel33: TRzPanel;
    SpeedButton110: TSpeedButton;
    SpeedButton111: TSpeedButton;
    SpeedButton112: TSpeedButton;
    SpeedButton113: TSpeedButton;
    RzPanel34: TRzPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton13: TSpeedButton;
    lblMsgBloqueado: TLabel;
    SpeedButton3: TSpeedButton;
    lblVersao: TLabel;
    RzPanel11: TRzPanel;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    RzPanel14: TRzPanel;
    RzPanel18: TRzPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton31: TSpeedButton;
    RzPanel19: TRzPanel;
    RzPanel21: TRzPanel;
    SpeedButton129: TSpeedButton;
    SpeedButton7: TSpeedButton;
    RzPanel22: TRzPanel;
    pnlImpressora: TPanel;
    SpeedButton38: TSpeedButton;
    RzPanel20: TRzPanel;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    RzPanel23: TRzPanel;
    SpeedButton15: TSpeedButton;
    SpeedButton66: TSpeedButton;
    TabSheet2: TRzTabSheet;
    RzPanel12: TRzPanel;
    RzPanel42: TRzPanel;
    SpeedButton30: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton36: TSpeedButton;
    RzPanel71: TRzPanel;
    RzPanel50: TRzPanel;
    SpeedButton123: TSpeedButton;
    SpeedButton10: TSpeedButton;
    RzPanel51: TRzPanel;
    SpeedButton20: TSpeedButton;
    SpeedButton22: TSpeedButton;
    RzPanel24: TRzPanel;
    SpeedButton43: TSpeedButton;
    RzPanel72: TRzPanel;
    RzPanel73: TRzPanel;
    SpeedButton45: TSpeedButton;
    RzPanel74: TRzPanel;
    SpeedButton19: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton39: TSpeedButton;
    tmpImagem: TTimer;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    RzPanel10: TRzPanel;
    SpeedButton54: TSpeedButton;
    SpeedButton56: TSpeedButton;
    RzPanel77: TRzPanel;
    SpeedButton4: TSpeedButton;
    TabGrafico: TRzTabSheet;
    RzPanel8: TRzPanel;
    RzPanel85: TRzPanel;
    SpeedButton59: TSpeedButton;
    RzPanel86: TRzPanel;
    SpeedButton63: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton80: TSpeedButton;
    RzPanel78: TRzPanel;
    SpeedButton58: TSpeedButton;
    SpeedButton62: TSpeedButton;
    RzPanel84: TRzPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton144: TSpeedButton;
    RzPanel48: TRzPanel;
    RzPanel49: TRzPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton79: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton35: TSpeedButton;
    imgACWeb: TImage;
    pageFormMenu: TcxPageControl;
    Panel11: TPanel;
    SpeedButton200: TSpeedButton;
    ImageList1: TImageList;
    pnlTopo: TPanel;
    imgEmpresa: TImage;
    pnlImg: TPanel;
    Panel19: TPanel;
    pnlUsuario: TPanel;
    imgUsuario: TImage;
    LUser: TPanel;
    Panel20: TPanel;
    LEmpre: TPanel;
    grpBarPrinc: TRzGroupBar;
    rzgInpar: TRzGroup;
    RzGroup1: TRzGroup;
    rzgSistema: TRzGroup;
    RzGroup2: TRzGroup;
    RzGroup3: TRzGroup;
    RzGroup4: TRzGroup;
    RzGroup5: TRzGroup;
    RzGroup6: TRzGroup;
    RzGroup7: TRzGroup;
    RzGroup8: TRzGroup;
    RzGroup9: TRzGroup;
    RzGroup10: TRzGroup;
    RzGroup13: TRzGroup;
    Panel8: TPanel;
    ACBrEnterTab1: TACBrEnterTab;
    Panel16: TPanel;
    pnlReconectar: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SairdoSistema1Click(Sender: TObject);
    procedure DisplayHint(Sender: TObject);
    procedure SBM1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmpImagemTimer(Sender: TObject);
    procedure titVersaoClick(Sender: TObject);
    procedure LUserDblClick(Sender: TObject);
    procedure pageFormMenuCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure rzgSistemaItems0Click(Sender: TObject);
    procedure pnlReconectarDblClick(Sender: TObject);
  private
    xCarregouMenu: Boolean;
    procedure pLerConexao;
    procedure pFecharTodosForms;
  public
    procedure pAbreConexao(vConexao: String);
    procedure fAbrirLogin;
    procedure fProg(vtag:Integer);
    procedure fAtualizacaoSoftware;
    procedure fVerificaModulo;

  end;
  procedure fBar(vTip,vTam:Integer;vDes:String);
  procedure fPreview(Sender: TObject);
  function  fImpr(vFil:String):Integer;
  function  fImprEPL(vFil:String):Integer;
  procedure fRecalPreco(vgr,vdt,vEClass: String; vProdutoCod:Integer = 0; vMostraBarra: Boolean = True; vVerVenda: Boolean = True);
  procedure fRecalPrecoCompra(vgr,vdt,vEClass: String; vProdutoCod:Integer = 0; vMostraBarra: Boolean = True);
  function  EnviaMail(hWnd: Integer; const Destinatario, Assunto, Body, Anexo1, Anexo2: String): WordBool; stdcall; export;
  function  EnviaMailGerenciador(hWnd: Integer; const Destinatario, Assunto, Body, Anexo1, Anexo2: String): WordBool; stdcall; export;
  function  EnviaMailOutlook(hWnd: Integer; const Destinatario, Assunto, Body, Anexo1, Anexo2: String): WordBool; stdcall; export;

var
  FMenu: TFMenu;
  xRelTela, xRelEmail, xPM_duplica, xPM_V_difcod, xPM_C_difcod:String;
  xExpirou, zTagTela, xImpressoraPadrao: Integer;
  xpPesquisa: Boolean;
  xPrecoMedio: Real;

implementation

uses Data, Rotina, Login, zScript, rlImprimir, FrmCadVariedade, FrmCadCategoria,
  FrmCadMarca, FrmCadDefeito, FrmCadBins, FrmCadCliente, FrmCadFornecedor,
  FrmCadMotorista, FrmCadProdutor, FrmCadProduto, FrmCadMercadoria,
  FrmCadInsumos, FrmCadBanco, FrmCadPlano, FrmCadNota, FrmCadNatur,
  FrmCadEstado, FrmCadCidade, FrmCadPomar, FrmCadMaquina, frmRomaneioEntra,
  frmRomaneioEmpres, frmRomaneioTara, frmAmostra, frmDefeito, frmRoman,
  frmPalet, frmManutenc, frmPrevisao, frmRomanAbre, frmRomanFecha, frmEstoque,
  frmRecibo, frmReciboAutonomo, frmControleFrete, frmFinanceiro,
  frmCompraDiversa, frmControleCheque, frmBaixaContas, frmRelMaquina,
  frmRelGerencial, frmRelProducao, frmRelFinan, frmRelContas, frmRelPomar,
  frmCadAcesso, frmCadImpres, frmCadEmpresa, frmCompra, frmVendaProduto, frmVendaInsumos,
  EstoqProdu, EstoqEmbal, EstoqMerca, EstoqEntra,
  frmPrecoInsumos, frmPrecoProduto, frmNotaFiscal,
  FrmCadDados, frmGerenciadorNFE,
  frmCadDivisao, frmImpEtiqueta, frmRelVendaCompra, FrmCadLote, zRegistro,
  frmFechaClassif, frmEstoqueOut, frmAjuste, frmImpEtiqBins, frmImpEtiquetaFundo,
  frmImpEtiqPalet, frmCartaFrete, frmCartaCompra, frmFechaEntrada, zBde,
  frmCadDivSaida, frmFechaEmbalagem, frmImpEtiqBinsSaida, frmBaixaReceber,
  frmCadGenerator, frmEsteira, frmBaixaAdiant, frmRelQualidade, frmCadLocal,
  frmCadVendedor, frmRomanRastrear, FrmCadEmbalador, FrmRomanEmbal,
  frmCadFuncionario, frmVendaProdutoLote, frmEstoqueVer,
  frmRelGrafico, frmRelGraFinan, FrmCadCategoriaCusto,
  frmPrecoMercadoria, frmEstoquePalets, frmCadNcmIBPT,
  frmRomanMarca, frmRelMontaCarga, frmRelGraProdu, frmFechaPrestServ,
  FrmCadVariedadeCusto, frmAluguelCamara;
{$R *.DFM}

procedure TFMenu.FormCreate(Sender: TObject);
begin

  xAno:=Copy(DateToStr(Now),7,4);
  xJaeInter[0]:='ACW DESENVOLVIMENTO DE SOFTWARE AGRONEGOCIOS LTDA';
  xJaeInter[1]:='ACWebAgro';
  xJaeInter[2]:='Rua Ana Lonardoni Laverde, 130';
  xJaeInter[3]:='Curitiba (PR) 82810-680';
  xJaeInter[4]:='Telefone (41) 9.9255-7216';
  xJaeInter[5]:='CNPJ 33.910.873/0001-90';
  xJaeInter[6]:='Programando sua Empresa.';

  //Abre Arquivo para conexao Alias diferente
  xdirsi := ExtractFilePath(Application.ExeName);

  //Abrir conexão com conexão odbc


  //Abre Conexao
  if DM = nil then
    Application.CreateForm(TDM, DM);

  dm.Session1.Active     := False;
  dm.JaeAdmin.Connected  := False;
  dm.BDConexao.Connected := False;

  //Abre login
  fAbrirLogin;

end;

procedure TFMenu.fAbrirLogin;
var i: Integer;
  aDevice : array[0..255] of char;
  aDriver : array[0..255] of char;
  aPort : array[0..255] of char;
  ahDMode : THandle;
  aMemo: TMemo;
  all: Integer;
begin

  //PrintImpressora Padrão
  Printer.GetPrinter(aDevice, aDriver, aPort, ahDMode);

  aMemo := TMemo.Create(self);
  aMemo.PARENT := FMenu;
  aMemo.Lines := Printer.Printers;
  pnlImpressora.Caption := 'Sem Impressora padrão  ';
  xImpressoraPadrao := 0;
  for all:=0 to aMemo.Lines.Count-1 do
  begin
    if aMemo.Lines[all] = aDevice then
    begin
      pnlImpressora.Caption := 'Impressora padrão: ['+aDevice+']  ';
      xImpressoraPadrao :=  all;
    end;
  end;
  aMemo.Free;

  rzpgMenu.ActivePageIndex := 0;
  grpBarPrinc.Visible  := False;
  pnlCabecalho.Visible := False;

  //Application.Restore;
  WindowState:=wsMaximized;
//  FMenu.Show;

  Enabled := False;
  xExpirou := 99;
  if FLogin=nil then Application.CreateForm(TFLogin, FLogin);

  pLerConexao;
  pAbreConexao('01');

  FLogin.gbEmpresa.Visible := True;

  FLogin.ShowModal;

  if (FLogin.Caption = 'FECHAR') then
  begin

    FreeAndNil(FLogin);
    Application.Terminate;

  end
  else begin

    FreeAndNil(FLogin);
    tmpImagem.Enabled := True;

    fAtualizacaoSoftware;

    if not dm.TEmpresa.Active then
      dm.TEmpresa.Open;

    if not dm.TAcesso.Active then
     dm.TAcesso.Open;

    if not dm.TImpres.Active then
      dm.TImpres.Open;

    xCarregouMenu := False;
    for i := 0 to 5 do
    begin
      if not xCarregouMenu then
        fVerificaModulo;
    end;

    if not xCarregouMenu then
    begin
      MessageBox(0, 'O sistema não conseguindo carregar o banco de dados, verificar rede e será fechado.', 'Aviso', MB_ICONINFORMATION or MB_OK);
      Application.Terminate;
    end;

    //Trazer todas as notas que fazem vendas
    xPM_duplica := fBus(1,['Select valor From zGenerator Where Tabela = ''PRECOMEDIO'' and Campo = ''DUPLICA'''],1);

    dm.TCadNota.Close;
    dm.TCadNota.Open;
    xPM_V_difcod := '  and (nf.Difcod in (0';
    dm.TCadNota.First;
    while not dm.TCadNota.Eof do
    begin
      if ((dm.TCadNota.FieldByName('rel_venda').asString = 'S')  and
          (dm.TCadNota.FieldByName('tipo').asString      = 'S')  and
          (dm.TCadNota.FieldByName('finnfe').asString    = 'N')  and
          (dm.TCadNota.FieldByName('razao').asString     = 'C')) then
        xPM_V_difcod := xPM_V_difcod +', '+ dm.TCadNota.FieldByName('codigo').asString;
      dm.TCadNota.Next;
    end;
    xPM_V_difcod := xPM_V_difcod +'))';

  end;

  xPM_C_difcod := '  and (nf.Difcod in (0';
  dm.TCadNota.First;
  while not dm.TCadNota.Eof do
  begin
    if ((dm.TCadNota.FieldByName('tipo').asString   = 'E')   and
        (dm.TCadNota.FieldByName('finnfe').asString = 'N')   and
        (dm.TCadNota.FieldByName('razao').asString  <> 'C')) then
      xPM_C_difcod := xPM_C_difcod +', '+ dm.TCadNota.FieldByName('codigo').asString;
    dm.TCadNota.Next;
  end;
  xPM_C_difcod := xPM_C_difcod +'))';


end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
var vmsg: String;
begin

  dm.Session1.Active := False;
//  dm.Session2.Active := False;
//  dm.JaeEsteira.Connected := False;
  dm.JaeAdmin.Connected := False;

  vmsg := 'Falta '+IntToStr(xExpirou)+' dias para expirar a licença.';
  if (xExpirou = 1) then
     frPerg('Sua licença expira hoje.', 'OK')
  else if (xExpirou < 1) then
     frPerg('Sua licença expirou.','OK')
  else begin
    if (xExpirou < 10) then
      frPerg(PChar(vmsg),'OK');
  end;

end;

procedure TFMenu.DisplayHint(Sender: TObject);
begin
  LMensagem.Caption:=GetLongHint(Application.Hint);
end;

procedure TFMenu.SBM1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var vTag:String; vSpeed:TSpeedButton;
begin
  vSpeed:=TSpeedButton(Sender);
  vTag:=Copy(IntToStr(vSpeed.Tag),2,1);
end;

procedure TFMenu.titVersaoClick(Sender: TObject);
begin
{
  //Ajustar sistema;
  MessageBox(0, 'Módulo em manutenção, aguardar, orientação técnica!', 'Aviso', MB_ICONWARNING or MB_OK);
  Exit;

  if frPerg('Deseja atualizar software?','SN') then
  begin

    pFecharTodosForms;

    //acwebfruits
    if FAtualiza=nil then Application.CreateForm(TFAtualiza, FAtualiza);
    FAtualiza.vArquivo := 'acwebfruits.exe';
    FAtualiza.lblTitulo.Caption := ' Atualizando software: '+FAtualiza.vArquivo;
    FAtualiza.tmpAtualiza.Enabled := True;
    FAtualiza.ShowModal;

    Sleep(500);

    //ACWebEsteiraFixo.exe
    if FAtualiza=nil then Application.CreateForm(TFAtualiza, FAtualiza);
    FAtualiza.vArquivo := 'acwebesteirafixo.exe';
    FAtualiza.lblTitulo.Caption := ' Atualizando software: '+FAtualiza.vArquivo;
    FAtualiza.tmpAtualiza.Enabled := True;
    FAtualiza.ShowModal;

    MessageBox(0, 'Atualização concluída, o sistema será fechado.', 'Aviso', MB_ICONINFORMATION or MB_OK);
    Application.Terminate;

  end;

}

end;

procedure TFMenu.tmpImagemTimer(Sender: TObject);
var vimaglog:String; vi: Integer;
begin
  tmpImagem.Enabled := False;
  Logo.Visible := False;
  for vI := 1 to 2 do
  begin
    case vi of
      1: vimaglog := xdirSi+'logo.bmp';
      2: vimaglog := xdirSi+'logo.jpg'
    end;
    if (FileExists(vimaglog)) and (Logo.Visible = false) then
    begin
      Logo.Picture.LoadFromFile(vimaglog);
      Logo.Visible := True;
      Application.ProcessMessages;
      Logo.Left := (FMenu.Width  - Logo.Width ) div 2;
      Logo.Top  := (FMenu.Height - Logo.Height) div 2;
    end;
  end;
end;

procedure TFMenu.SairdoSistema1Click(Sender: TObject);
begin
  fProg(TComponent(Sender).Tag);
end;

procedure TFMenu.rzgSistemaItems0Click(Sender: TObject);
begin
  try

    fProg(TRzGroupItem(Sender).Tag);

  except

  end;

end;

procedure TFMenu.fProg(vtag:Integer);
begin
  zTagTela := vtag;
  case vtag of
//Faturamento
     1001: frForm(TFfrmNotaFiscal, FfrmNotaFiscal);
     1002: begin
            frForm(TFfrmGerenciadorNFE, FfrmGerenciadorNFE);
            FfrmGerenciadorNFE.TabConfig.TabVisible := False;
            FfrmGerenciadorNFE.TabGerenciador.TabVisible := True;
          end;
     1003: frForm(TFfrmEstoque, FfrmEstoque);
     1031: frForm(TFfrmEstoqueVer, FfrmEstoqueVer);
     1004: begin
             if (fBus(1,['Select valor From zGenerator Where Tabela = ''ESVENDA'' and Campo = ''LOTE_PROD'''],1) = 0) then
               frForm(TFfrmVendaProduto, FfrmVendaProduto)
             else
               frForm(TFfrmVendaProdutoLote, FfrmVendaProdutoLote);
           end;

     1005: frForm(TFfrmVendaInsumos, FfrmVendaInsumos);
     1006: frForm(TFfrmCompra, FfrmCompra);
     1007: frForm(TFfrmEstoqueOut, FfrmEstoqueOut);
     1032: frForm(TFfrmEstoquePalet, FfrmEstoquePalet);
//     1010: frForm(TFfrmCobranca, FfrmCobranca);

//Financeiro
     2001: frForm(TFfrmFinanceiro, FfrmFinanceiro);
     2003: frForm(TFfrmCompraDiversa, FfrmCompraDiversa);
     2004: frForm(TFfrmControleCheque, FfrmControleCheque);
     2005: frForm(TFfrmRecibo, FfrmRecibo);
     2006: frForm(TFfrmReciboAutonomo, FfrmReciboAutonomo);
     2007: frForm(TFfrmCartaFrete, FfrmCartaFrete);
     2009: frForm(TFfrmBaixaReceber, FfrmBaixaReceber);
     2010: frForm(TFfrmBaixaContas, FfrmBaixaContas);
     6003: frForm(TFfrmControleFrete, FfrmControleFrete);
     6004: frForm(TFfrmCartacompra,   FfrmCartaCompra);
     6006: frForm(TFfrmBaixaAdiant, FfrmBaixaAdiant);
     6010: frForm(TFfrmAluguelCamara, FfrmAluguelCamara);
//Produção
     3001: frForm(TFfrmRomaneioEntra, FfrmRomaneioEntra);
     3002: frForm(TFfrmRomaneioEmpres, FfrmRomaneioEmpres );
     3003: frForm(TFfrmRomaneioTara, FfrmRomaneioTara);
     3004: frForm(TFfrmAmostra, FfrmAmostra);
     3005: frForm(TFfrmDefeito, FfrmDefeito);
     3006: frForm(TFfrmRoman, FfrmRoman);
     3007: frForm(TFfrmPalet, FfrmPalet);
     3008: frForm(TFfrmRomanAbre, FfrmRomanAbre);
     3009: frForm(TFfrmRomanFecha, FfrmRomanFecha);
     3010: frForm(TFfrmManutenc, FfrmManutenc);
     3011: frForm(TFfrmEsteira, FfrmEsteira);
     3012: frForm(TFfrmRomanRastrear, FfrmRomanRastrear);
     3013: frForm(TFfrmRomanEmbal, FfrmRomanEmbal);
     3014: frForm(TFfrmRomanMarca, FfrmRomanMarca);
//Cadastro
     4001: frForm(TFfrmCadCliente, FfrmCadCliente);
     4002: frForm(TFfrmCadFornecedor, FfrmCadFornecedor);
     4003: frForm(TFfrmCadProdutor, FfrmCadProdutor);
     4004: frForm(TFfrmCadMotorista, FfrmCadMotorista);
     4005: frForm(TFfrmCadBanco, FfrmCadBanco);
     4006: frForm(TFfrmCadPlano, FfrmCadPlano);
     4007: frForm(TFfrmCadVariedade, FfrmCadVariedade);
     4008: frForm(TFfrmCadCategoria, FfrmCadCategoria);
     4009: frForm(TFfrmCadMarca, FfrmCadMarca);
     4010: frForm(TFfrmCadDefeito, FfrmCadDefeito);
     4011: frForm(TFfrmCadBins, FfrmCadBins);
     4012: frForm(TFfrmCadLote, FfrmCadLote);
     4013: frForm(TFfrmCadProduto, FfrmCadProduto);
     4014: frForm(TFfrmCadMercadoria, FfrmCadMercadoria);
//     4015: frForm(TFfrmCadInsumos, FfrmCadInsumos);
     4016: frForm(TFfrmCadMaquina, FfrmCadMaquina);
     4017: frForm(TFfrmCadLocal, FfrmCadLocal);
     4018: frForm(TFfrmCadVendedor, FfrmCadVendedor);
     4019: frForm(TFfrmCadEmbalador, FfrmCadEmbalador);
     4020: frForm(TFfrmCadFuncionario, FfrmCadFuncionario);

//Camara Fria
{
     6051: frForm(TFfrmFechaCassif, FfrmFechaCassif);
     6052: frForm(TFfrmCadPomar, FfrmCadPomar);
     6053: frForm(TFfrmCadHisto, FfrmCadHisto);
     6053: frForm(TFfrmCadHisto, FfrmCadHisto);
}
//Produtor
     6001, 6008: begin
                   if vtag = 6001 then xFechaTipo := 'S'
                   else xFechaTipo := 'T';

                   if TForm(FfrmFechaCassif) <> nil then FfrmFechaCassif.Close;

                   frForm(TFfrmFechaCassif,   FfrmFechaCassif);

                 end;
     6002: frForm(TFfrmFechaEntrada,  FfrmFechaEntrada);
     6005: frForm(TFfrmFechaEmbalagem, FfrmFechaEmbalagem);
     6007: frForm(TFfrmFechaPrestServ,  FfrmFechaPrestServ);

//Gerencial
     8001: frForm(TFfrmPrecoProduto, FfrmPrecoProduto);
     8002: frForm(TFfrmPrecoInsumos, FfrmPrecoInsumos);
     8003: frForm(TFfrmCadVariedadeCusto, FfrmCadVariedadeCusto);
     8004: frForm(TFfrmCadCategoriaCusto, FfrmCadCategoriaCusto);
//     8003: frForm(TFfrmPlanilhaCusto, FfrmPlanilhaCusto);
//    8006: frForm(TFfrmPlanilhaCusto, FfrmPlanilhaCusto);
     8007: frForm(TFfrmAjuste, FfrmAjuste);
     8008: frForm(TFfrmPrevisao, FfrmPrevisao);
     8009: frForm(TFfrmCadDivisao, FfrmCadDivisao);
     8010: frForm(TFfrmCadDivSaida, FfrmCadDivSaida);
     8011: frForm(TFfrmPrecoMercadoria, FfrmPrecoMercadoria);
//Fiscal
     9001: frForm(TFEstoqProdu, FEstoqProdu);
     9002: frForm(TFEstoqEmbal, FEstoqEmbal);
     9003: frForm(TFEstoqMerca, FEstoqMerca);
     9004: frForm(TFEstoqEntra, FEstoqEntra);
     9005: frForm(TFfrmCadNota,  FfrmCadNota);
     9006: frForm(TFfrmCadDados,  FfrmCadDados);
     9007: frForm(TFfrmCadNatur, FfrmCadNatur);
     9008: frForm(TFfrmCadEstado, FfrmCadEstado);
     9009: frForm(TFfrmCadCidade, FfrmCadCidade);
     9010: frForm(TFfrmCadNCMIBPT, FfrmCadNCMIBPT);
//Relatório
     9801: frForm(TFfrmRelVendaCompra, FfrmRelVendaCompra, 20);
     9802: frForm(TFfrmRelProducao, FfrmRelProducao, 20);
     9803: frForm(TFfrmRelMaquina, FfrmRelMaquina, 20);
     9804: frForm(TFfrmRelFinan, FfrmRelFinan, 20);
     9805: frForm(TFfrmRelContas, FfrmRelContas, 20);
     9806: frForm(TFfrmRelQualidade, FfrmRelQualidade, 20);
     9807: frForm(TFfrmRelGerencial, FfrmRelGerencial, 20);
     9808: frForm(TFfrmRelMontaCarga, FfrmRelMontaCarga, 20);
//Utilitario
     9901: frForm(TFfrmCadEmpresa, FfrmCadEmpresa);
     9902: frForm(TFfrmCadAcesso, FfrmCadAcesso);
     9903: frForm(TFfrmCadImpres, FfrmCadImpres);
     9906: begin
             frForm(TFfrmGerenciadorNFE, FfrmGerenciadorNFE);
             FfrmGerenciadorNFE.TabConfig.TabVisible := True;
             FfrmGerenciadorNFE.TabGerenciador.TabVisible := False;
           end;
     9907: frForm(TFRegistro, FRegistro);
     9988: frForm(TFfrmCadGenerator, FfrmCadGenerator);

//Etiquetas - Configurar
     9950,9951: begin
             frForm(TFfrmImpEtiqBins, FfrmImpEtiqBins);
             FfrmImpEtiqBins.vImpDireto := False;
           end;
     9952,9953: begin
             frForm(TFfrmImpEtiquetaFundo, FfrmImpEtiquetaFundo);
//             if (vtag = 9952) then //configurar
//               FfrmImpEtiqFundo.vImpDireto := False;
           end;
     9954,9955: begin
             frForm(TFfrmImpEtiqueta, FfrmImpEtiqueta);
//             if (vtag = 9954) then //configurar
//               FfrmImpEtiqueta.vImpDireto := False;
           end;
     9958,9959: begin
             frForm(TFfrmImpEtiqBinsSaida, FfrmImpEtiqBinsSaida);
             FfrmImpEtiqBinsSaida.vImpDireto := False;
           end;
//Graficos
     9850: frForm(TFfrmRelGrafico, FfrmRelGrafico, 20);
     9851: frForm(TFfrmRelGraFinan, FfrmRelGraFinan, 20);
     9852: frForm(TFfrmRelGraProdu, FfrmRelGraProdu, 20);
   end;
end;

procedure fBar(vTip,vTam:Integer;vDes:String);
begin
  with FMenu do begin
    if vdes<>'' then GBarra1.Caption:=' '+vDes+' ';
    if vTip=0 then begin
       Gauge1.MaxValue:=vTam;
       Gauge1.Progress:=1;
       PBarra1.Visible:=True;
       PBarra2.Visible:=False;
       PBarraRodape.Visible:=True;
    end
    else if vTip=1 then Gauge1.Progress:=Gauge1.Progress+1
    else if vTip=2 then begin
       PBarraRodape.Visible:=False;
       PBarra1.Visible:=False;
       PBarra2.Visible:=False;
    end;
    if vTip<3 then
       LCont1.Caption:=IntToStr(Gauge1.Progress)+'/'+IntToStr(Gauge1.MaxValue)
    else begin
         if vTip=3 then begin
            Gauge2.MaxValue:=vTam;
            Gauge2.Progress:=1;
            PBarra2.Visible:=True;
         end
         else if vTip=4 then Gauge2.Progress:=Gauge2.Progress+1;
         LCont2.Caption:=IntToStr(Gauge2.Progress)+'/'+IntToStr(Gauge2.MaxValue);
    end;
    Application.ProcessMessages;
  end;
end;

procedure fPreview(Sender: TObject);
begin
  try
    if FImprimir=Nil then Application.CreateForm(TFImprimir, FImprimir);
       FImprimir.qrImprimir.QRPrinter:=TQRPrinter(Sender);
       FImprimir.WindowState:=wsMaximized;
       FImprimir.Show;
  except
    ShowMessage('Erro no Visualizador de Impressão!');
  end;
end;

function fImpr(vFil:String):Integer;
var vVolume: String;
begin

  vVolume := frMicro('C');

  if dm.TImpres.Locate('Volume', vVolume, []) then
  begin
    //vfil
    if (Trim(dm.TImpres.FieldByName('Imp1').asString) = '') then
      Result := xImpressoraPadrao
    else
      Result:=dm.TImpres.FieldByName('Imp1').asInteger;
  end
  else
    Result := xImpressoraPadrao;
end;

function fImprEPL(vFil:String):Integer;
var vVolume: String;
begin
  vVolume := frMicro('C');

  dm.TImpres.Locate('Volume', vVolume, []);
  Result:=dm.TImpres.FieldByName(vfil).asInteger;

end;

procedure TFMenu.fVerificaModulo;
var vi, vtag:integer; vgrupo, vuser, vcap, vbus: String;
begin
  //Procura Grupo se não encontrar cadastra
 dm.TModulo.Close;
 dm.TModulo.Open;

  for vi := 0 to 100 do
  begin
    vgrupo := '';
    case vi of
      10: vgrupo := '[Faturamento]';
      20: vgrupo := '[Financeiro]';
      30: vgrupo := '[Produção]';
      40: vgrupo := '[Cadastro]';
      60: vgrupo := '[Produtor]';
      80: vgrupo := '[Gerencial]';
      90: vgrupo := '[Fiscal]';
      98: vgrupo := '[Relatório]';
      99: vgrupo := '[Sistema]';
    end;
    if (vgrupo <> '') then
    begin
      //Procura na base
      //fSql(1,1,['Select Tag From zModulo Where Tipo = '+QuotedStr('X')+' and Tag = 0'+IntToStr(vi)],1);
      if not dm.TModulo.Locate('TAG', vi, []) then
      begin
        //Não encontrou cadastra
        fSql(1,3,['Insert Into zModulo',
                  '(Descricao,Tipo,Grupo,Tag,Editar,Excluir,Visualizar)',
                  'Values',
                  '('+QuotedStr(vGrupo)+','+QuotedStr('X')+','+IntToStr(vi)+','+IntToStr(vi)+
                  ','+QuotedStr('01;')+','+QuotedStr('01;')+','+QuotedStr('01;')+')'],4);
      end;
    end;
  end;

  //Modulos
  for vi := 0 to ComponentCount - 1 do
  begin
    if Components[vi] is TSpeedButton then
    begin
      if ((Components[vi] as TSpeedButton).Tag > 1000) then
      begin
        (Components[vi] as TSpeedButton).Enabled := True;
        vtag := (Components[vi] as TSpeedButton).Tag;
        vcap := ' -> ';
        if ((Components[vi] as TSpeedButton).Hint <> '') then
          vcap := vcap + (Components[vi] as TSpeedButton).Hint +' ';
        vcap := Copy(vcap + (Components[vi] as TSpeedButton).Caption,1,25);

        //Procura na base
        //fSql(1,1,['Select Tag, Visualizar From zModulo Where Tipo = '+QuotedStr('X')+' and Tag = 0'+IntToStr(vtag)],1);
        //if (dm.qrSql1.RecordCount > 0) then
        if dm.TModulo.Locate('TAG', vtag, []) then
        begin
         //Encontrou - procura o usuario
          vuser := frpree(xace,2,'0',0)+';';
          vbus := dm.TModulo.Fields[1].asString;
          //vbus := dm.qrSql1.Fields[1].asString;
          if pos(vuser,vbus) > 0 then (Components[vi] as TSpeedButton).Enabled := True
          else (Components[vi] as TSpeedButton).Enabled := False;
        end
        else begin
          //Não encontrou cadastra
          fSql(1,3,['Insert Into zModulo',
                    '(Descricao,Tipo,Grupo,Tag,Editar,Excluir,Visualizar)',
                    'Values',
                    '('+QuotedStr(vCap)+','+QuotedStr('X')+','+Copy(IntToStr(vtag),1,2)+','+IntToStr(vtag)+
                    ','+QuotedStr('01;')+','+QuotedStr('01;')+','+QuotedStr('01;')+')'],4);
          if ((vtag = 9902) or (vtag = 9907)) then (Components[vi] as TSpeedButton).Enabled := True;
        end;
        if (Components[vi] as TSpeedButton).Enabled then
          xCarregouMenu := True;
      end;
    end;
  end;
end;

procedure TFMenu.fAtualizacaoSoftware;
var vVersao, vCaminho: String;
    vtrue: Boolean;
begin

//Ajustar sistema;
Exit;

  //Apenas para atualizar o ttuloque foi atualizado
  lblVersao.Visible := False;
  vtrue := false;
  try
    vVersao := fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('Software')],1);
    if (vVersao = '') then
    begin
      vtrue := true;
      //Criar Parametro
      fSql(1,3,['Insert Into xParametro ',
                '(Codigo,Parametro,Valor)',
                ' Values',
                '(925,'+QuotedStr('Software')+','+QuotedStr(titVersao.Caption)+')'],4);
      vVersao := titVersao.Caption
    end
    else begin
      if (titVersao.Caption <> vVersao) then
      begin
        vVersao := titVersao.Caption;
        vtrue := true;
      end;
    end;
  except
    vVersao := '';
  end;
  //Abrir tela fazer backup
  if vtrue then
  begin
    lblVersao.Visible := True;
    lblVersao.Caption := 'Sistema atualizado '+vVersao;
    fSql(1,3,['Update xParametro set Valor = '+QuotedStr(vVersao),
              ' Where Codigo = 925'],2);
  end;
end;

procedure TFMenu.LUserDblClick(Sender: TObject);
begin

  pFecharTodosForms;
  fAbrirLogin;

end;

procedure TFMenu.pageFormMenuCanCloseEx(Sender: TObject; ATabIndex: Integer;
  var ACanClose: Boolean);
var i, x: Integer;
begin

  x := ATabIndex;

  // Fecha todos os forms
  for i := Application.ComponentCount - 1 downto 1 do
  begin
    if Application.Components[i] is TForm then
    begin
      if PageFormMenu.Pages[x].Caption = TForm(Application.Components[i]).Caption then
      begin
        TForm(Application.Components[i]).Close;
        Break;
      end;
    end;
  end;

end;

procedure TFMenu.pFecharTodosForms;
var i:Integer;
    xtab : TcxTabSheet;
begin

  //Fecha todos os forms
  for i := Application.ComponentCount-1 downto 1 do
  begin
    if Application.Components[i] is TForm then
    begin
      if not(TForm(Application.Components[i]) = Application.MainForm) then
      begin

        if Pos('ACWebFruits', TForm(Application.Components[i]).Caption) = 0 then
        begin
          TForm(Application.Components[i]).Close;

          xtab := FMenu.PageFormMenu.ActivePage;

          if Assigned(xtab) then
          begin
            xtab.Parent := nil;
            xtab.PageControl := nil;
            FreeAndNil(xtab);
          end;

        end;

      end;
    end;
  end;

end;

procedure TFMenu.pLerConexao;
var ArqIniNew: TIniFile;
    vArquivo, vtxt : String;
begin

  xBDConexao := '';
  xBDAlias   := '';
  xBDLocal   := '24.152.37.101';
  xBDPorta   := '3060';
  xBDPasta   := 'teste\';
  xBDBase    := 'BDFrutis.FDB';
  xBDPath    := 'c:\acwagro\basedados\';

  vArquivo := xdirsi+'DADOS\Conexao.ini';

  //Se o arquivo não existe - deve criar o padrão
  if not FileExists(vArquivo) then
  begin
    try
      ArqIniNew := TIniFile.Create(vArquivo);
      //2 DIGITOS + '-' + 10 DIGITOS + '-' + 50 DIGITOS
      ArqIniNew.WriteString('Conexao', 'Base1', '01-MODELOSFRT-MODELO');
      ArqIniNew.WriteString('Conexao', 'Pasta', 'teste\');
    finally
      ArqIniNew.Free;
      Sleep(400);
    end;
   end;

  //Cria o arquivo e pega a conexao
  if FileExists(vArquivo) then
  begin

    try

      ArqIniNew := TIniFile.Create(vArquivo);

      //Conexão padrão
      vtxt       := ArqIniNew.ReadString('Conexao', 'Base1', '');
      xBDConexao := Trim(Copy(vtxt, 1, 2));
      xBDAlias   := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));

      FLogin.cbEmpresa.Properties.Items.Clear;
      vtxt := '01-'+Trim(Copy(vtxt, 15, 30));
      FLogin.cbEmpresa.Properties.Items.Add(vtxt);
      FLogin.cbEmpresa.Text := vtxt;

      //Caso tenha segunda empresa
      vtxt := ArqIniNew.ReadString('Conexao02', 'Base1', '');
      if vtxt <> '' then
      begin
        vtxt := '02-'+Trim(Copy(vtxt, 15, 30));
        FLogin.cbEmpresa.Properties.Items.Add(vtxt);
      end;

    finally

      ArqIniNew.Free;

    end
  end;
end;

procedure TFMenu.pnlReconectarDblClick(Sender: TObject);
begin
  pAbreConexao(xBDConexao);
  fAcessoBDE(xBDConexao);
  ShowMessage('Reconexão OK');
end;

procedure TFMenu.pAbreConexao(vConexao:String);
var ArqIniNew: TIniFile;
    vArquivo, vConx, vtxt : String;
begin

  vArquivo := xdirsi+'DADOS\Conexao.ini';

  if vConexao = '01' then vConx := 'Conexao'
  else if vConexao = '02' then vConx := 'Conexao02'
  else vConx := 'Conexao';

  try

    ArqIniNew := TIniFile.Create(vArquivo);
    vtxt       := ArqIniNew.ReadString(vConx, 'Base1', '');
    xBDConexao := Trim(Copy(vtxt, 1, 2));
    xBDAlias   := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));

    vtxt       := ArqIniNew.ReadString(vConx, 'Local', '');
    if (vtxt <> '') then
      xBDLocal   := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Porta', '');
    if (vtxt <> '') then
      xBDPorta   := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Pasta', '');
    if (vtxt <> '') then
      xBDPasta   := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Base', '');
    if (vtxt <> '') then
      xBDBase    := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Path', '');
    if (vtxt <> '') then
      xBDPath    := vtxt;

    if (Trim(xBDConexao) = '01') then
      xBDConexao := '';

  finally

    ArqIniNew.Free;

  end;
end;

function EnviaMail(hWnd: Integer; const Destinatario, Assunto, Body, Anexo1, Anexo2: String): WordBool; stdcall; export;
var vtpEmail: Integer;
begin

  //1 - Configurado - outros pelo outlook
  vtpEmail:= frGenerator('NFE','EMAIL',0);
  if (vtpEmail = 1) then
    result := EnviaMailGerenciador(hWnd, Destinatario, Assunto, Body, Anexo1, Anexo2)
  else
    result := EnviaMailOutlook(hWnd, Destinatario, Assunto, Body, Anexo1, Anexo2);

end;

function EnviaMailGerenciador(hWnd: Integer; const Destinatario, Assunto, Body, Anexo1, Anexo2: String): WordBool; stdcall; export;
var
  Lista : TStringList;
  I: Integer;
  Anexo: String;
begin
  try

    try

      dm.TConfig.Close;
      dm.TConfig.Open;

      //Assunto
      dm.ACBrMail.AltBody.Text := Body;
      dm.ACBrMail.Subject      := Assunto;

      if (dm.TConfigSMTP_HOST.AsString <> '') then
      begin
        //Smtp Pagrao
        dm.ACBrMail.Host         := dm.TConfigSMTP_HOST.AsString;
        dm.ACBrMail.Port         := dm.TConfigSMTP_PORTA.AsString;
        dm.ACBrMail.From         := dm.TConfigSMTP_USER.AsString;
        dm.ACBrMail.FromName     := Copy(xEmpre,1,30);
        dm.ACBrMail.UserName     := dm.TConfigSMTP_USERNAME.AsString;
        dm.ACBrMail.Password     := dm.TConfigSMTP_PASS.AsString;
        dm.ACBrMail.AltBody.Text := dm.ACBrMail.AltBody.Text +#13#10
                                  + 'Enviado pelo Remetente: ' + dm.TConfigEML_USER.AsString
                                  + #13#10;
      end
      else begin
        //Smtp Usuario
        dm.ACBrMail.Host         := dm.TConfigEML_HOST.AsString;
        dm.ACBrMail.Port         := dm.TConfigEML_PORT.AsString;
        dm.ACBrMail.From         := dm.TConfigEML_USER.AsString;
        dm.ACBrMail.FromName     := Copy(xEmpre,1,30);
        dm.ACBrMail.UserName     := dm.TConfigEML_USER.AsString;
        dm.ACBrMail.Password     := dm.TConfigEML_PASS.AsString;
      end;

      dm.ACBrMail.SetSSL       := (dm.TConfigEML_SSL.AsString = 'T');
      dm.ACBrMail.SetTLS       := (dm.TConfigEML_TLS.AsString = 'T');

      Anexo := '';
      if (Length(Trim(Anexo1)) > 5) then
      begin
        if (Copy(Anexo1, length(Anexo1),1) <> ';') then
          Anexo := Anexo + Anexo1+';';
      end;
      if (Length(Trim(Anexo2)) > 5) then
      begin
        if (Copy(Anexo2, length(Anexo2),1) <> ';') then
          Anexo := Anexo + Anexo2+';';
      end;

      Lista := frTStringList(Anexo,';');

      for I := 0 to Lista.Count - 1 do
         dm.ACBrMail.AddAttachment(Lista[I], '', adAttachment);
      Lista.Free;

      if (Length(Trim(Destinatario)) > 5) then
      begin

        Lista := frTStringList(Destinatario,';');
        for I := 0 to Lista.Count - 1 do
            dm.ACBrMail.AddAddress(Lista[I]);
        Lista.Free;

      end;

      //Adicionar copia
      if (dm.TConfigPRX_HOST.AsString <> '') then
        dm.ACBrMail.AddCC(dm.TConfigEML_USER.AsString, '');

      dm.ACBrMail.Send(False);
      Result := True;

      //if (Result and MostrarDialogos) then
      //Application.MessageBox(PChar('Email enviado com sucesso!!!'), 'Email');

    except

      on E:Exception do
      begin

        Result := False;
        MessageDlg('Erro ao enviar Email: ' + E.Message, mtError, [mbOk], 0);
        raise Exception.Create('Erro ao enviar Email: ' + E.Message);

      end;

    end;

  finally

//    FreeAndNil(ACBrMail);

  end;

end;

function EnviaMailOutlook(hWnd: Integer; const Destinatario, Assunto, Body, Anexo1, Anexo2: String): WordBool; stdcall; export;
var
  MapiMessage: TMapiMessage;
  MError: Cardinal;
  Sender: TMapiRecipDesc;
  PRecip, Recipients: PMapiRecipDesc;
  PFiles, Attachments: PMapiFileDesc;
  SendMail: TFNMapiSendMail;
  MAPIModule: HModule;
  vp,vc,vi,vq: Integer;
  vdest,varq1,varq2: String;
  vemail: Array[1..11] of String;
  vanex1: Array[1..100] of String;
  vanex2: Array[1..100] of String;
begin
  Result := False;
  for vp := 1 to 10 do vemail[vp] := '';
  for vp := 1 to 100 do vanex1[vp] := '';
  for vp := 1 to 100 do vanex2[vp] := '';

  Application.Handle := hWnd;

  try
    vdest := trim(destinatario);
    if (Copy(vdest, length(vdest)-1, 1) <> ';') then
      vdest := vdest + ';';
    vp := 0;
    vi := 1;
    for vc := 0 to Length(vdest) do
    begin
      if Copy(vdest,vc,1) = ';' then
      begin
        if vp < 11 then
        begin
          vp := vp +1;
          vemail[vp] := Copy(vdest,vi,(vc-vi));
          vi := vc +1;
        end;
      end;
    end;

    MapiMessage.nRecipCount := vp;
    GetMem(Recipients, MapiMessage.nRecipCount * sizeof(TMapiRecipDesc));
//    Attachments := nil;

    with MapiMessage do
    begin
      ulReserved := 0;
      lpszSubject := PAnsiChar(Assunto);
      lpszNoteText := PAnsiChar(Body);
      lpszMessageType := nil;
      lpszDateReceived := nil;
      lpszConversationID := nil;
      flFlags := 0;
      Sender.ulReserved := 0;
      Sender.ulRecipClass := MAPI_ORIG;
      Sender.lpszName := PAnsiChar('');
      Sender.lpszAddress := PAnsiChar('');
      Sender.ulEIDSize := 0;
      Sender.lpEntryID := nil;
      lpOriginator := @Sender;

      PRecip := Recipients;
      for vc := 1 to 10 do
      begin
        if (Trim(vemail[vc]) <> '') then
        begin
          PRecip^.ulReserved := 0;
          PRecip^.ulRecipClass := MAPI_TO;
          PRecip^.lpszName := PAnsiChar(vemail[vc]);
          PRecip^.lpszAddress := StrNew(PAnsiChar('SMTP:' + vemail[vc]));
          PRecip^.ulEIDSize := 0;
          PRecip^.lpEntryID := nil;
          Inc(PRecip);
        end;
      end;
      lpRecips := Recipients;

      //Anexo1;
      vp := 0;
      vi := 1;
      varq1 := trim(Anexo1);
      if (length(varq1) > 10) then
      begin
        if (Copy(varq1, length(varq1), 1) <> ';') then
          varq1 := varq1 + ';';
        for vc := 0 to Length(varq1) do
        begin
          if Copy(varq1,vc,1) = ';' then
          begin
            if vp < 101 then
            begin
              vp := vp +1;
              vanex1[vp] := Copy(varq1,vi,(vc-vi));
              vi := vc +1;
            end;
          end;
        end;
      end;
      //Anexo2;
      vq := 0;
      vi := 1;
      varq2 := trim(Anexo2);
      if (length(varq2) > 10) then
      begin
        if (Copy(varq2, length(varq2), 1) <> ';') then
          varq2 := varq2 + ';';
        for vc := 0 to Length(varq2) do
        begin
          if Copy(varq2,vc,1) = ';' then
          begin
            if vp < 101 then
            begin
              vq := vq +1;
              vanex2[vq] := Copy(varq2,vi,(vc-vi));
              vi := vc +1;
            end;
          end;
        end;
      end;
      //Salva no email
      nFileCount := vp+vq;
      if nFileCount > 0 then
      begin
        GetMem(Attachments, nFileCount * sizeof(TMapiFileDesc));
        PFiles := Attachments;
        for vc := 1 to 100 do
        begin
          //Anexo 1
          if (Trim(vanex1[vc]) <> '') then
          begin
            Attachments^.nPosition :=  Cardinal ($FFFFFFFF);//Cardinal(-1);
            Attachments^.lpszPathName := PAnsiChar(vanex1[vc]);
            Attachments^.lpszFileName := '';
            Attachments^.ulReserved := 0;
            Attachments^.flFlags := 0;
            Attachments^.lpFileType := nil;
            Inc(Attachments);
          end;
          //Anexo 2
          if (Trim(vanex2[vc]) <> '') then
          begin
            Attachments^.nPosition := Cardinal ($FFFFFFFF);//Cardinal(-1);
            Attachments^.lpszPathName := PAnsiChar(vanex2[vc]);
            Attachments^.lpszFileName := '';
            Attachments^.ulReserved := 0;
            Attachments^.flFlags := 0;
            Attachments^.lpFileType := nil;
            Inc(Attachments);
          end;
        end;
        lpFiles := PFiles;
      end
      else begin
        nFileCount := 0;
        lpFiles := Nil;
      end;
    end;
    Application.ProcessMessages;
    mError := 0;
    MAPIModule := LoadLibrary(PChar(MAPIDLL));
    if MAPIModule = 0 then
      mError := 99999
    else
    begin
      try
        @SendMail := GetProcAddress(MAPIModule, 'MAPISendMail');
        if @SendMail<>nil then
        begin
          MError := SendMail(0, Application.Handle, MapiMessage, MAPI_DIALOG or MAPI_LOGON_UI, 0);
          case MError of
            MAPI_E_USER_ABORT: MessageDlg('Operação abortada pelo usuário ou '+#13+#10+
                                          'Ocorreu um erro inesperado!'#13 +'Código: ' + IntToStr(MError),mtInformation, [mbOk], 0);
            SUCCESS_SUCCESS: Result := True;
          end;
        end;
      finally
        FreeLibrary(MAPIModule);
      end;
    end;
    if mError <> 0 then
    begin
      MessageDlg('Ocorreu um erro inesperado!'#13 +'Código: ' + IntToStr(MError), mtError, [mbOk], 0);
    end;

    finally
      PRecip := Recipients;
      StrDispose(PRecip^.lpszAddress);
      Inc(PRecip);
      FreeMem(Recipients, MapiMessage.nRecipCount * sizeof(TMapiRecipDesc));
      if Assigned(PFiles) then FreeMem(PFiles, MapiMessage.nFileCount * sizeof(TMapiFileDesc));
      Application.Handle := 0;
  end;
end;

procedure fRecalPreco(vgr,vdt,vEClass: String; vProdutoCod:Integer = 0; vMostraBarra: Boolean = True; vVerVenda: Boolean = True);
var vproduto, vdata: String;
    dplProdNew, dplVarieOld, dplVarieDup: Integer;
    vprfixo, vprMedio: Double;
    vultvenda, vultclass, voldvenda, voldclass: String;
    vrecalcula: Boolean;
    vcount: Integer;
begin

  if (pos('MODELO', xEmpre) > 0) then exit;

  if vMostraBarra then
    fBar(0,1,'Aguarde...');

  //Verifica se já está atualizado - pela venda e pela classificação
  vrecalcula := true;

  if vVerVenda then
  begin
    vultvenda := fBus(1,['Select Valor From xParametro Where codigo = 941'],1);
    vultclass := fBus(1,['Select Valor From xParametro Where codigo = 942'],1);
    voldvenda := fBus(1,['Select Max(Lanc) From nfvenda'],1);
    voldclass := fBus(1,['Select Max(Lanc) From roman'],1);

    if (vultvenda = voldvenda) and
       (vultclass = voldclass) then
      vrecalcula := False;
  end;

  if vrecalcula then
  begin
    try
      //Ajusta valor da venda
      fSql(2,2,['update nfvendco set rvalor = valor ',
                ' where (rvalor is null) or (rvalor = 0) and '+vdt],2);
      //Novo campo para preço medio - Devido o desconto no receber
      fSql(2,2,['update nfvendco set rvlrmedio = valor ',
                ' where (rvlrmedio is null) or (rvlrmedio = 0) and '+vdt],2);
      //Zera por data
      if (vProdutoCod = 0) then
      begin
        fSql(2,2,['update classifm m set m.preco = 0',
                  ' where exists(select f.lanc '+
                  '                from classif f'+
                  '               where f.lanc=m.lanc and '+vdt+')'],2);
        vproduto := '';
        if (Trim(vgr) <> '') then
        begin
          vproduto := ' and ('+vgr+')';
          vproduto := frSubs(vproduto,'Codigo','co.Codigo');
        end;

      end
      else
       vproduto := ' and (co.Codigo = 0' +IntToStr(vProdutoCod)+ ') ';

      vdata := frSubs(vdt,'Data','nf.Data');

      fSql(1,1,['Select co.Codigo, Sum(co.RVlrMedio) as vv, sum(co.qtde) as vq',
                '  From nfVendCo co, nfvenda nf',
                ' Where (co.lanc = nf.lanc) '+
                '   and '+vdata + vproduto + xPM_V_difcod,
                ' Group By co.Codigo'],4);

      if vMostraBarra then
        fBar(0,dm.qrSql1.RecordCount,'Aguarde...');
{

      //Caso não tnha venda - Obtem preço de fixo do produto
      if dm.qrSql1.RecordCount = 0 then
      begin
        vprfixo := StrToFloatDef(fBus(1,['Select (venda1 * pesoliq) From CadProdu Where Codigo=0'+IntToStr(vProdutoCod)],1),0);
        xPrecoMedio := vprfixo;
        fSql(1,2,['Update Classifm m ',
                  '   Set m.Preco='+frInvV(vprfixo),
                  ' Where m.ProdCod=0'+IntToStr(vProdutoCod),
                  '   and exists(select f.lanc '+
                  '                from classif f'+
                  '               where f.lanc=m.lanc and '+vdt+')'],4);

      end;
}
      dm.qrSqlCommit.Close;
      dm.qrSqlCommit.Sql.Clear;
      dm.qrSqlCommit.Sql.Add('EXECUTE BLOCK AS BEGIN');
      vcount := 0;

      while not dm.qrSql1.Eof do
      begin

        xPrecoMedio := 0;

        if dm.qrSql1.Fields[0].asInteger > 0 then
        begin

          if vMostraBarra then
            fBar(1,dm.qrSql1.RecordCount,'Processando Preço Medio...  '+dm.qrSql1.Fields[0].Text);

          //Repassa média por data
          //if ((dm.qrSql1.Fields[1].asFloat>0.00) and (dm.qrSql1.Fields[2].asFloat>0.00) or (vprfixo > 0.000)) then
          if ((dm.qrSql1.Fields[1].asFloat>0.00) and (dm.qrSql1.Fields[2].asFloat>0.00)) then
          begin
            vprMedio := frDeci(dm.qrSql1.Fields[1].asFloat/dm.qrSql1.Fields[2].asFloat, 4);
            if (vprMedio = 0) then
            begin
             //Obtem preço de fixo do produto
             vprfixo := StrToFloatDef(fBus(1,['Select (venda1 * pesoliq) From CadProdu Where Codigo=0'+dm.qrSql1.Fields[0].Text],1),0);
             vprMedio := frDeci(vprfixo,4);
            end;

            xPrecoMedio := vprMedio;
            inc(vcount);

            dm.qrSqlCommit.Sql.Add('Update Classifm m '+
                                   '   Set m.Preco='+frInvV(vprMedio)+
                                   ' Where m.ProdCod=0'+dm.qrSql1.Fields[0].Text+
                                   '   and exists(select f.lanc '+
                                   '                from classif f'+
                                   '               where f.lanc=m.lanc and '+vdt+');');

            //Verifica se é para duplicar preço para outra variedade
            if xPM_duplica = '1' then
            begin
              //Abre tabela com os código da variedade outra.
              dplVarieOld := StrToIntDef(Copy(dm.qrSql1.Fields[0].asString,1,2),0);
              fSql(1,3,['Select codigo from cadvarie where duplicacod = '+IntToStr(dplVarieOld)],1);
              while not dm.qrSql3.Eof do begin
                dplVarieDup := dm.qrSql3.Fields[0].asInteger;
                if dplVarieOld <> dplVarieDup then
                begin
                  dplProdNew := StrToIntDef(IntToStr(dplVarieDup)+Copy(dm.qrSql1.Fields[0].asString,3,5),0);
                  inc(vcount);
                  //Repassa valor para o novo codigo
                  dm.qrSqlCommit.Sql.Add('Update Classifm m '+
                                         '   Set m.Preco='+frInvV(vprMedio)+
                                         ' Where m.ProdCod=0'+IntToStr(dplProdNew)+
                                         '   and exists(select f.lanc '+
                                         '                 from classif f'+
                                         '               where f.lanc=m.lanc and '+vdt+');');
                end;
                dm.qrSql3.Next;

                //Salvar por partes
                if vcount > 50 then
                begin
                  vcount := 0;
                  dm.qrSqlCommit.Sql.Add('END');
                  dm.qrSqlCommit.ExecSQL;
                  // Limpa e começa de novo
                  dm.qrSqlCommit.Sql.Clear;
                  dm.qrSqlCommit.Sql.Add('EXECUTE BLOCK AS BEGIN');
                end;

              end;
            end;
          end;
        end;
        dm.qrSql1.Next;

        //Salvar por partes
        if vcount > 50 then
        begin
          vcount := 0;
          dm.qrSqlCommit.Sql.Add('END');
          dm.qrSqlCommit.ExecSQL;
          // Limpa e começa de novo
          dm.qrSqlCommit.Sql.Clear;
          dm.qrSqlCommit.Sql.Add('EXECUTE BLOCK AS BEGIN');
        end;

      end;

      //Salvar por partes
      if vcount > 0 then
      begin
        vcount := 0;
        dm.qrSqlCommit.Sql.Add('END');
        dm.qrSqlCommit.ExecSQL;
      end;

    except

    end;

    if (vultvenda <> voldvenda) or
       (vultclass <> voldclass) then
    begin
      fSql(1,3,['Update xParametro set Valor = '+QuotedStr(voldvenda), ' Where Codigo = 941'],2);
      fSql(1,3,['Update xParametro set Valor = '+QuotedStr(voldclass), ' Where Codigo = 942'],2);
    end
    else
      vrecalcula := False;

  end;

  if vMostraBarra then
    fBar(2,3,'');

  dm.qrSqlCommit.Close;
  dm.qrSqlCommit.Sql.Clear;

{
      while not dm.qrSql1.Eof do
      begin

        xPrecoMedio := 0;

        if dm.qrSql1.Fields[0].asInteger > 0 then
        begin

          if vMostraBarra then
            fBar(1,dm.qrSql1.RecordCount,'Processando Preço Medio...  '+dm.qrSql1.Fields[0].Text);

          //Repassa média por data
          //if ((dm.qrSql1.Fields[1].asFloat>0.00) and (dm.qrSql1.Fields[2].asFloat>0.00) or (vprfixo > 0.000)) then
          if ((dm.qrSql1.Fields[1].asFloat>0.00) and (dm.qrSql1.Fields[2].asFloat>0.00)) then
          begin
            vprMedio := frDeci(dm.qrSql1.Fields[1].asFloat/dm.qrSql1.Fields[2].asFloat, 4);
            if (vprMedio = 0) then
            begin
             //Obtem preço de fixo do produto
             vprfixo := StrToFloatDef(fBus(1,['Select (venda1 * pesoliq) From CadProdu Where Codigo=0'+dm.qrSql1.Fields[0].Text],1),0);
             vprMedio := frDeci(vprfixo,4);
            end;

            xPrecoMedio := vprMedio;

            fSql(1,2,['Update Classifm m ',
                      '   Set m.Preco='+frInvV(vprMedio),
                      ' Where m.ProdCod=0'+dm.qrSql1.Fields[0].Text,
                      '   and exists(select f.lanc '+
                      '                from classif f'+
                      '               where f.lanc=m.lanc and '+vdt+')'],4);

            //Verifica se é para duplicar preço para outra variedade
            if xPM_duplica = '1' then
            begin
              //Abre tabela com os código da variedade outra.
              dplVarieOld := StrToIntDef(Copy(dm.qrSql1.Fields[0].asString,1,2),0);
              fSql(1,3,['Select codigo from cadvarie where duplicacod = '+IntToStr(dplVarieOld)],1);
              while not dm.qrSql3.Eof do begin
                dplVarieDup := dm.qrSql3.Fields[0].asInteger;
                if dplVarieOld <> dplVarieDup then
                begin
                  dplProdNew := StrToIntDef(IntToStr(dplVarieDup)+Copy(dm.qrSql1.Fields[0].asString,3,5),0);

                  //Repassa valor para o novo codigo
                  fSql(2,2,['Update Classifm m ',
                            '   Set m.Preco='+frInvV(vprMedio),
                            ' Where m.ProdCod=0'+IntToStr(dplProdNew),
                            '   and exists(select f.lanc '+
                            '                from classif f'+
                            '               where f.lanc=m.lanc and '+vdt+')'],4);
                end;
                dm.qrSql3.Next;
              end;
            end;
          end;
        end;
        dm.qrSql1.Next;
      end;
    except

    end;
}

end;

procedure fRecalPrecoCompra(vgr,vdt,vEClass: String; vProdutoCod:Integer = 0; vMostraBarra: Boolean = True);
var vduplica, vproduto, vdifcod, vdata: String;
    dplProdNew, dplVarieOld, dplVarieDup: Integer;
    vprfixo, vprMedio: Double;
begin

  if (pos('MODELO', xEmpre) > 0) then exit;

  if vMostraBarra then
    fBar(0,1,'Aguarde...');

  fSql(2,2,['update nfvendco set rvalor = valor ',
            ' where (rvalor is null) or (rvalor = 0) and '+vdt],2);
  //Novo campo para preço medio - Devido o desconto no receber
  fSql(2,2,['update nfvendco set rvlrmedio = valor ',
            ' where (rvlrmedio is null) or (rvlrmedio = 0) and '+vdt],2);

  vdata := frSubs(vdt,'Data','nf.Data');

  //Se duplicad deve pegar o pai
  if xPM_duplica = '1' then
  begin
    vproduto := ' and (co.GrupoCod = 0' +Copy(IntToStr(vProdutoCod),1,2)+ ') ';
    fSql(1,1,['Select co.GrupoCod, Sum(co.RVlrMedio) as vv, sum(co.qtde) as vq',
              '  From nfVendCo co, nfvenda nf',
              ' Where (co.lanc = nf.lanc) '+
              '   and '+vdata + vproduto + xPM_C_difcod,
              ' Group By co.GrupoCod'],4);
  end
  else begin
    vproduto := ' and (co.Codigo = 0' +IntToStr(vProdutoCod)+ ') ';
    fSql(1,1,['Select co.Codigo, Sum(co.RVlrMedio) as vv, sum(co.qtde) as vq',
              '  From nfVendCo co, nfvenda nf',
              ' Where (co.lanc = nf.lanc) '+
              '   and '+vdata + vproduto + vdifcod,
              ' Group By co.Codigo'],4);
  end;

  if vMostraBarra then
    fBar(0,dm.qrSql1.RecordCount,'Aguarde...');

  while not dm.qrSql1.Eof do
  begin

    xPrecoMedio := 0;

    if dm.qrSql1.Fields[0].asInteger > 0 then
    begin

      if vMostraBarra then
        fBar(1,dm.qrSql1.RecordCount,'Processando Preço Medio...  '+dm.qrSql1.Fields[0].Text);

      //Obtem preço de fixo do produto
      vprfixo := StrToFloatDef(fBus(1,['Select (venda1 * pesoliq) From CadProdu Where Codigo=0'+dm.qrSql1.Fields[0].Text],1),0);

      //Repassa média por data
      if ((dm.qrSql1.Fields[1].asFloat>0.00) and (dm.qrSql1.Fields[2].asFloat>0.00) or (vprfixo > 0.000)) then
      begin
        if (vprfixo > 0.000) then
          vprMedio := frDeci(vprfixo,4)
        else
          vprMedio := frDeci(dm.qrSql1.Fields[1].asFloat/dm.qrSql1.Fields[2].asFloat, 4);

        xPrecoMedio := vprMedio;
      end;
    end;
    dm.qrSql1.Next;
  end;

  if vMostraBarra then
    fBar(2,3,'');

end;

end.
