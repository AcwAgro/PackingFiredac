unit FrmCadProdutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa, ShellApi,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadProdutor = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosENDERECO: TStringField;
    sqlDadosCIDADECOD: TIntegerField;
    sqlDadosCOOPER: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosENDERECO: TStringField;
    cdsDadosCIDADECOD: TIntegerField;
    cdsDadosCOOPER: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlDadosCIDADEDES: TStringField;
    cdsDadosCIDADEDES: TStringField;
    GroupBox4: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit6: TDBEdit;
    sqlDadosBAIRRO: TStringField;
    sqlDadosCEP: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosCPF: TStringField;
    sqlDadosDOC: TStringField;
    sqlDadosFONE: TStringField;
    GroupBox13: TGroupBox;
    DBEdit12: TDBEdit;
    cdsDadosBAIRRO: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosDOC: TStringField;
    cdsDadosFONE: TStringField;
    frmPesquisaCidade: TfrmPesquisa;
    sqlDadosEMAIL: TStringField;
    cdsDadosEMAIL: TStringField;
    sqlDadosFUNRURALPER: TBCDField;
    cdsDadosFUNRURALPER: TBCDField;
    GroupBox11: TGroupBox;
    frmPesquisaGrupo: TfrmPesquisa;
    sqlDadosGRUPOCOD: TIntegerField;
    cdsDadosGRUPOCOD: TIntegerField;
    RzPanel3: TRzPanel;
    SBGrupo: TSpeedButton;
    sqlDadosTIPOCOD: TStringField;
    cdsDadosTIPOCOD: TStringField;
    spbCEP: TSpeedButton;
    GroupBox24: TGroupBox;
    DBEdit23: TDBEdit;
    spbMapa: TSpeedButton;
    GroupBox12: TGroupBox;
    DBEdit10: TDBEdit;
    sqlDadosWEBLOCAL: TStringField;
    cdsDadosWEBLOCAL: TStringField;
    sqlDadosCTC: TIntegerField;
    cdsDadosCTC: TIntegerField;
    spbMapaWeb: TSpeedButton;
    sqlDadosPRAZO: TIntegerField;
    cdsDadosPRAZO: TIntegerField;
    DBRadioGroup16: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    dspEndRetirada: TDataSetProvider;
    cdsEndRetirada: TClientDataSet;
    cdsEndRetiradaLANCIT: TIntegerField;
    cdsEndRetiradaLANC: TIntegerField;
    cdsEndRetiradaTIPO: TStringField;
    cdsEndRetiradaCPF: TStringField;
    cdsEndRetiradaDOC: TStringField;
    cdsEndRetiradaDESCRICAO: TStringField;
    cdsEndRetiradaENDERECO: TStringField;
    cdsEndRetiradaCOMPLEM: TStringField;
    cdsEndRetiradaNUMERO: TStringField;
    cdsEndRetiradaBAIRRO: TStringField;
    cdsEndRetiradaCEP: TStringField;
    cdsEndRetiradaCIDADEDES: TStringField;
    cdsEndRetiradaESTADO: TStringField;
    cdsEndRetiradaFONE: TStringField;
    cdsEndRetiradaEMAIL: TStringField;
    cdsEndRetiradaCIDADECOD: TIntegerField;
    cdsEndRetiradaEMPRECOD: TIntegerField;
    cdsEndRetiradaACESOCOD: TIntegerField;
    dsEndRetirada: TDataSource;
    btnCNPJ: TBitBtn;
    dsEndEntrega: TDataSource;
    cdsEndEntrega: TClientDataSet;
    dspEndEntrega: TDataSetProvider;
    cdsEndEntregaLANCIT: TIntegerField;
    cdsEndEntregaLANC: TIntegerField;
    cdsEndEntregaTIPO: TStringField;
    cdsEndEntregaCPF: TStringField;
    cdsEndEntregaDOC: TStringField;
    cdsEndEntregaDESCRICAO: TStringField;
    cdsEndEntregaENDERECO: TStringField;
    cdsEndEntregaCOMPLEM: TStringField;
    cdsEndEntregaNUMERO: TStringField;
    cdsEndEntregaBAIRRO: TStringField;
    cdsEndEntregaCEP: TStringField;
    cdsEndEntregaCIDADEDES: TStringField;
    cdsEndEntregaESTADO: TStringField;
    cdsEndEntregaFONE: TStringField;
    cdsEndEntregaEMAIL: TStringField;
    cdsEndEntregaCIDADECOD: TIntegerField;
    cdsEndEntregaEMPRECOD: TIntegerField;
    cdsEndEntregaACESOCOD: TIntegerField;
    sqlDadosOBS: TStringField;
    cdsDadosOBS: TStringField;
    rzpcGrupo: TRzPageControl;
    tsbInformacao: TRzTabSheet;
    GroupBox15: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit17: TDBEdit;
    gbPlano: TGroupBox;
    frmPesquisaCTC: TfrmPesquisa;
    GroupBox9: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit11: TDBEdit;
    tsbEntrega: TRzTabSheet;
    Label6: TLabel;
    GroupBox29: TGroupBox;
    DBEdit28: TDBEdit;
    GroupBox30: TGroupBox;
    DBEdit29: TDBEdit;
    GroupBox32: TGroupBox;
    DBEdit31: TDBEdit;
    GroupBox33: TGroupBox;
    DBEdit32: TDBEdit;
    GroupBox34: TGroupBox;
    DBEdit33: TDBEdit;
    GroupBox35: TGroupBox;
    frmPesquisaEndRetirada: TfrmPesquisa;
    GroupBox36: TGroupBox;
    DBEdit34: TDBEdit;
    GroupBox27: TGroupBox;
    DBEdit25: TDBEdit;
    GroupBox25: TGroupBox;
    DBEdit24: TDBEdit;
    tsbRetirada: TRzTabSheet;
    Label7: TLabel;
    GroupBox21: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit19: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit20: TDBEdit;
    GroupBox26: TGroupBox;
    DBEdit21: TDBEdit;
    GroupBox28: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox31: TGroupBox;
    DBEdit26: TDBEdit;
    GroupBox37: TGroupBox;
    DBEdit27: TDBEdit;
    GroupBox38: TGroupBox;
    frmPesquisaEndEntrega: TfrmPesquisa;
    GroupBox39: TGroupBox;
    DBEdit30: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsEndRetiradaREGLOG: TStringField;
    cdsEndRetiradaREG_ID: TIntegerField;
    cdsEndEntregaREGLOG: TStringField;
    cdsEndEntregaREG_ID: TIntegerField;
    sqlEndRetirada: TFDQuery;
    sqlEndRetiradaLANCIT: TIntegerField;
    sqlEndRetiradaLANC: TIntegerField;
    sqlEndRetiradaTIPO: TStringField;
    sqlEndRetiradaCPF: TStringField;
    sqlEndRetiradaDOC: TStringField;
    sqlEndRetiradaDESCRICAO: TStringField;
    sqlEndRetiradaENDERECO: TStringField;
    sqlEndRetiradaCOMPLEM: TStringField;
    sqlEndRetiradaNUMERO: TStringField;
    sqlEndRetiradaBAIRRO: TStringField;
    sqlEndRetiradaCEP: TStringField;
    sqlEndRetiradaCIDADEDES: TStringField;
    sqlEndRetiradaESTADO: TStringField;
    sqlEndRetiradaFONE: TStringField;
    sqlEndRetiradaEMAIL: TStringField;
    sqlEndRetiradaCIDADECOD: TIntegerField;
    sqlEndRetiradaEMPRECOD: TIntegerField;
    sqlEndRetiradaACESOCOD: TIntegerField;
    sqlEndRetiradaREGLOG: TStringField;
    sqlEndRetiradaREG_ID: TIntegerField;
    sqlEndEntrega: TFDQuery;
    sqlEndEntregaLANCIT: TIntegerField;
    sqlEndEntregaLANC: TIntegerField;
    sqlEndEntregaTIPO: TStringField;
    sqlEndEntregaCPF: TStringField;
    sqlEndEntregaDOC: TStringField;
    sqlEndEntregaDESCRICAO: TStringField;
    sqlEndEntregaENDERECO: TStringField;
    sqlEndEntregaCOMPLEM: TStringField;
    sqlEndEntregaNUMERO: TStringField;
    sqlEndEntregaBAIRRO: TStringField;
    sqlEndEntregaCEP: TStringField;
    sqlEndEntregaCIDADEDES: TStringField;
    sqlEndEntregaESTADO: TStringField;
    sqlEndEntregaFONE: TStringField;
    sqlEndEntregaEMAIL: TStringField;
    sqlEndEntregaCIDADECOD: TIntegerField;
    sqlEndEntregaEMPRECOD: TIntegerField;
    sqlEndEntregaACESOCOD: TIntegerField;
    sqlEndEntregaREGLOG: TStringField;
    sqlEndEntregaREG_ID: TIntegerField;
    GroupBox8: TGroupBox;
    DBEdit7: TDBEdit;
    sqlDadosALG_VLRPRECO: TFloatField;
    cdsDadosALG_VLRPRECO: TFloatField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDadoszCidadeChange(Sender: TField);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure spbCEPClick(Sender: TObject);
    procedure spbMapaClick(Sender: TObject);
    procedure spbMapaWebClick(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure btnCNPJClick(Sender: TObject);
    procedure frmPesquisaEndEntregaExit(Sender: TObject);
    procedure frmPesquisaEndRetiradaExit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
  private
    { Private declarations }
    vAnt_Cep, vAnt_Cep_Ret, vAnt_Cep_Ent: String;
    procedure pAbreEndRetirada;
    procedure pSalvaEndRetirada;
    procedure pAbreEndEntrega;
    procedure pSalvaEndEntrega;
    procedure pLeEndereco(vTrue: Boolean);

  public
    { Public declarations }
  end;

var
  FfrmCadProdutor: TFfrmCadProdutor;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmGerenciadorNFE, frmCadForneGrupo;

procedure TFfrmCadProdutor.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCidade.pInicia('ttCidade',TForm(Sender),7,147,GroupBox3,True);
  frmPesquisaGrupo.pInicia('ttForneGrupo',TForm(Sender),7,147,GroupBox11,True);
  frmPesquisaCTC.pInicia('ttPlano', TForm(Sender),7,147,gbPlano,true);
  frmPesquisaEndRetirada.pInicia('ttCidade',TForm(Sender),7,147,GroupBox35,True);
  frmPesquisaEndEntrega.pInicia('ttCidade',TForm(Sender),7,147,GroupBox38,True);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadProdutor.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadProdutor.frmPesquisaEndEntregaExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if sbSalvar.Visible then
    cdsEndEntregaEstado.AsString := frmPesquisaEndEntrega.vpCampo_1;
end;

procedure TFfrmCadProdutor.frmPesquisaEndRetiradaExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if sbSalvar.Visible then
    cdsEndRetiradaEstado.AsString := frmPesquisaEndRetirada.vpCampo_1;
end;

procedure TFfrmCadProdutor.GroupBox3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  cdsDadosEstado.AsString := frmPesquisaCidade.vpCampo_1;
end;

procedure TFfrmCadProdutor.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    pAbreEndRetirada;
    pAbreEndEntrega;
  end;
end;

procedure TFfrmCadProdutor.pLeEndereco(vTrue: Boolean);
begin

  tsbInformacao.Enabled := vTrue;
  tsbEntrega.Enabled := vTrue;
  tsbRetirada.Enabled := vTrue;

end;

procedure TFfrmCadProdutor.pAbreEndRetirada;
begin
  cdsEndRetirada.Close;
  sqlEndRetirada.ParamByName('pID').asInteger := cdsDadosCodigo.AsInteger;
  cdsEndRetirada.Open;

  if (sbSalvar.Visible) then
  begin
    if cdsEndRetirada.IsEmpty then
      cdsEndRetirada.Append
    else
      cdsEndRetirada.Edit;

    pLeEndereco(True);

  end;

  vAnt_Cep_Ret := cdsEndRetiradaCEP.AsString;
  frmPesquisaEndRetirada.pRetornaDados(cdsEndRetiradaCidadeCod.AsString);
  rzpcGrupo.ActivePageIndex := 0;

  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
    frmPesquisaGrupo.pRetornaDados(cdsDadosGrupoCod.AsString);
    frmPesquisaCtc.pRetornaDados(cdsDadosCTC.AsString);
  end;

end;

procedure TFfrmCadProdutor.pSalvaEndRetirada;
begin
  if cdsEndRetirada.State = dsBrowse then
    cdsEndRetirada.Edit;

  //Verifica se está preenchido e salva
  if (cdsEndRetiradaREG_ID.AsInteger = 0) then
    cdsEndRetiradaREG_ID.AsInteger := frGeneratorFB('GEN_CADENDERECO_ID');

  if (cdsEndRetiradaLancit.AsInteger = 0) then
    cdsEndRetiradaLancit.AsInteger := frGenerator('CADENDERECO','LANCIT',1);

  if (cdsEndRetiradaLanc.AsInteger = 0) then
    cdsEndRetiradaLanc.AsInteger := cdsDadosCodigo.AsInteger;

  cdsEndRetiradaCidadeCod.AsInteger:= frmPesquisaEndRetirada.vpCodPrincipal;
  cdsEndRetiradaCidadeDes.asString := frmPesquisaEndRetirada.vpDescricao;

  cdsEndRetiradaTipo.asString := 'D';

  cdsEndRetirada.Post;
  cdsEndRetirada.ApplyUpdates(-1);
  pLeEndereco(True);

end;

procedure TFfrmCadProdutor.pAbreEndEntrega;
begin
  cdsEndEntrega.Close;
  sqlEndEntrega.ParamByName('pID').asInteger := cdsDadosCodigo.AsInteger;
  cdsEndEntrega.Open;

  if (sbSalvar.Visible) then
  begin
    if cdsEndEntrega.IsEmpty then
      cdsEndEntrega.Append
    else
      cdsEndEntrega.Edit;

    pLeEndereco(True);

  end;

  vAnt_Cep_Ent := cdsEndEntregaCEP.AsString;
  frmPesquisaEndEntrega.pRetornaDados(cdsEndEntregaCidadeCod.AsString);
  rzpcGrupo.ActivePageIndex := 0;

end;

procedure TFfrmCadProdutor.pSalvaEndEntrega;
begin
  if cdsEndEntrega.State = dsBrowse then
    cdsEndEntrega.Edit;

  //Verifica se está preenchido e salva
  if (cdsEndEntregaREG_ID.AsInteger = 0) then
    cdsEndEntregaREG_ID.AsInteger := frGeneratorFB('GEN_CADENDERECO_ID');

  if (cdsEndEntregaLancit.AsInteger = 0) then
    cdsEndEntregaLancit.AsInteger := frGenerator('CADENDERECO','LANCIT',1);

  if (cdsEndEntregaLanc.AsInteger = 0) then
    cdsEndEntregaLanc.AsInteger := cdsDadosCodigo.AsInteger;

  cdsEndEntregaCidadeCod.AsInteger:= frmPesquisaEndEntrega.vpCodPrincipal;
  cdsEndEntregaCidadeDes.asString := frmPesquisaEndEntrega.vpDescricao;

  cdsEndEntregaTipo.asString := 'G';

  cdsEndEntrega.Post;
  cdsEndEntrega.ApplyUpdates(-1);
  pLeEndereco(True);

end;

procedure TFfrmCadProdutor.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadforne where Codigo > 0 and tipocod = ''P'' and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadforne where Codigo > 0 and tipocod = ''P'' and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadProdutor.btnCNPJClick(Sender: TObject);
var i, f: Integer;
    vtexto: String;
    vcnpj, vestado: String;

    function pXml(vopc,vstr:String):String;
    begin
      i := pos('<'+vopc+'>', vstr);
      f := pos('</'+vopc+'>', vstr);
      if (i > 0) and (f > 0) then
      begin
        i := i + Length(vopc)+2;
        result := Trim(Copy(vstr, i, (f - i)))
      end
      else
        result := '';
    end;

begin
  try
    //Somente para CNPJ
    DBEdit13.SetFocus;
    vcnpj := frSoNumero(cdsDadosCPF.AsString);
    if (trim(vcnpj) = '') or (trim(dbEdit6.Text) = '') then
      exit;

    vestado := trim(cdsDadosESTADO.AsString);

    if (vestado = '') then
      vestado := Uppercase(Trim(frImpu(2,'Informe um Estado: ','')));

    if not frUF(vestado) then
    begin
      frPerg('Estado inválido!', 'OK');
      Exit;
    end;

    if TForm(FfrmGerenciadorNFE)=nil then
      Application.CreateForm(TFfrmGerenciadorNFE,TForm(FfrmGerenciadorNFE));

    FfrmGerenciadorNFE.FormStyle := fsNormal;
    FfrmGerenciadorNFE.Visible := False;
    FfrmGerenciadorNFE.WindowState := wsMinimized;
    FfrmGerenciadorNFE.tbConfig.Open;
    dm.TEmpresa.Open;
    dm.TEmpresa.Edit;
    FfrmGerenciadorNFE.tbConfig.Edit;
    FfrmGerenciadorNFE.LerConfiguracao;

    vtexto  := FfrmGerenciadorNFE.pPesquisaCNPJ(vestado,vcnpj);

    if (Trim(pXml('xNome', vtexto)) = '') then
    begin
      if (pos('Rejeicao:', vtexto) > 0) then
      begin
        if (pos('invalido', vtexto) > 0) then
          vtexto := '';
      end;
      if (pos('Erro!', vtexto) > 0) then
        vtexto := '';
    end;

    if (trim(vtexto) <> '') then
    begin
      cdsDadosDOC.AsString       := pXml('IE', vtexto);
      cdsDadosDESCRICAO.AsString := pXml('xNome', vtexto);

      //CEP
      cdsDadosCEP.AsString       := pXml('CEP', vtexto);
      cdsDadosCEP.AsString := Copy(cdsDadosCEP.AsString, 1, 5) +'-'+ Copy(cdsDadosCEP.AsString, 6, 3);

      DBEdit2.SetFocus;
      Sleep(500);
      //Cidade
      spbCEP.onClick(spbCEP);

      //Complementa os dados
      if (trim(cdsDadosENDERECO.AsString) = '') then
        cdsDadosENDERECO.AsString  := pXml('xLgr', vtexto);
      if (trim(cdsDadosBAIRRO.AsString) = '') then
        cdsDadosBAIRRO.AsString    := pXml('xBairro', vtexto);
      if (trim(cdsDadosESTADO.AsString) = '') then
        cdsDadosESTADO.AsString    := vEstado;

    end;

  finally
//    Screen.Cursor:=crDefault;
    if TForm(FfrmGerenciadorNFE) <> nil then
    begin
      TForm(FfrmGerenciadorNFE).Close;
      TForm(FfrmGerenciadorNFE).Free;
    end;

    if (trim(vtexto) = '') then
      frPerg('Cerficado inválido ou não encontrado!', 'OK');
  end;

end;

procedure TFfrmCadProdutor.cdsDadoszCidadeChange(Sender: TField);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then
    frmPesquisaCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
end;

procedure TFfrmCadProdutor.DBEdit18Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsEndEntregaCPF.Text:= frCPFC(cdsEndEntregaCPF.Text);
end;

procedure TFfrmCadProdutor.DBEdit26Exit(Sender: TObject);
var vtrue: Boolean;
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  vtrue := False;
  if (Trim(Copy(DBEdit26.Text,1,5)) <> '') then
  begin
    if (Trim(cdsEndEntregaEstado.AsString)  ='') and
       (Trim(cdsEndEntregaBAIRRO.AsString)  ='') and
       (Trim(cdsEndEntregaENDERECO.AsString)='') then
      vtrue := true
    else begin
      if (vAnt_Cep_Ent <> cdsEndEntregaCEP.AsString) then
        vtrue := true
    end;

    if vTrue then
    begin
      try
        if dm.ACBrCEP1.BuscarPorCEP(Trim(DBEdit26.Text)) > 0 then
        begin
          cdsEndEntregaENDERECO.AsString   := dm.vCepENDERECO;
          cdsEndEntregaBAIRRO.AsString     := dm.vCepBAIRRO;
          cdsEndEntregaEstado.AsString     := dm.vCepESTADO;
          cdsEndEntregaCidadeCod.AsInteger := frStrToInt(dm.vCepCODIGO);
          frmPesquisaEndEntrega.pLimpaCampo;
          if cdsEndEntregaCidadeCod.AsInteger > 0 then
            frmPesquisaEndEntrega.pRetornaDados(cdsEndEntregaCidadeCod.AsString);
        end;
      except
      end;
    end;
    vAnt_Cep_Ent := cdsEndEntregaCEP.AsString;
    DBEdit22.SetFocus;
  end;
end;

procedure TFfrmCadProdutor.DBEdit28Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsEndRetiradaCPF.Text:= frCPFC(cdsEndRetiradaCPF.Text);
end;

procedure TFfrmCadProdutor.DBEdit33Exit(Sender: TObject);
var vtrue: Boolean;
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  vtrue := False;
  if (Trim(Copy(DBEdit33.Text,1,5)) <> '') then
  begin
    if (Trim(cdsEndretiradaEstado.AsString)  ='') and
       (Trim(cdsEndretiradaBAIRRO.AsString)  ='') and
       (Trim(cdsEndretiradaENDERECO.AsString)='') then
      vtrue := true
    else begin
      if (vAnt_Cep_Ret <> cdsEndretiradaCEP.AsString) then
        vtrue := true
    end;

    if vTrue then
    begin
      try
        if dm.ACBrCEP1.BuscarPorCEP(Trim(DBEdit33.Text)) > 0 then
        begin
          cdsEndretiradaENDERECO.AsString   := dm.vCepENDERECO;
          cdsEndretiradaBAIRRO.AsString     := dm.vCepBAIRRO;
          cdsEndretiradaEstado.AsString     := dm.vCepESTADO;
          cdsEndretiradaCidadeCod.AsInteger := frStrToInt(dm.vCepCODIGO);
          frmPesquisaEndRetirada.pLimpaCampo;
          if cdsEndretiradaCidadeCod.AsInteger > 0 then
            frmPesquisaEndRetirada.pRetornaDados(cdsEndretiradaCidadeCod.AsString);
        end;
      except
      end;
    end;
    vAnt_Cep_Ret := cdsEndretiradaCEP.AsString;
    DBEdit31.SetFocus;
  end;

end;

procedure TFfrmCadProdutor.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
end;

procedure TFfrmCadProdutor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadProdutor);
end;

procedure TFfrmCadProdutor.sbIncluirClick(Sender: TObject);
begin
  if (TComponent(Sender).Tag = 50) then
  begin
    frForm(TFfrmCadForneGrupo, FfrmCadForneGrupo);
    exit;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaCTC.pLimpaCampo;
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADFORNE','CODIGO',0,'PRODUTOR') + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADFORNE_ID');
          cdsDadosGrupoCod.AsInteger:= 1;
          frmPesquisaGrupo.pRetornaDados(cdsDadosGrupoCod.AsString);
          cdsDadosTipoCod.asString := 'P';
          cdsDadosATIVO.AsString   := 'S';
          cdsDadosCooper.AsString  := 'S';
          vAnt_Cep := '';
          vAnt_Cep_Ent := '';
          vAnt_Cep_Ret := '';

          pAbreEndRetirada;
          pAbreEndEntrega;

          DBEdit6.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          cdsDadosTipoCod.asString := 'P';
          vAnt_Cep := cdsDadosCEP.AsString;

          pAbreEndRetirada;
          pAbreEndEntrega;

          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
           end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosCodigo.AsInteger := frGenerator('CADFORNE','CODIGO',1,'PRODUTOR');

            cdsDadosCidadeCod.AsInteger:= frmPesquisaCidade.vpCodPrincipal;
            cdsDadosCidadeDes.AsString := frmPesquisaCidade.vpDescricao;
            cdsDadosCTC.AsInteger    := frmPesquisaCtc.vpCodPrincipal;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
            cdsDadosGrupoCod.AsInteger := frmPesquisaGrupo.vpCodPrincipal;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            pSalvaEndRetirada;
            pSalvaEndEntrega;
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Cancel;
             pLeEndereco(False);
           except
           end;
           pLiberar('Geral');
         end;
     91,92: begin
              pAbreEndRetirada;
              pAbreEndEntrega;
            end;

  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadProdutor.spbCEPClick(Sender: TObject);
var vtrue: Boolean;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  vtrue := False;
  if (Trim(Copy(DBEdit4.Text,1,5)) <> '') then
  begin
    if (Trim(cdsDadosEstado.AsString)  ='') and
       (Trim(cdsDadosBAIRRO.AsString)  ='') and
       (Trim(cdsDadosENDERECO.AsString)='') then
      vtrue := true
    else begin
      if (vAnt_Cep <> cdsDadosCEP.AsString) then
        vtrue := true
    end;

    if vTrue then
    begin
      try
        if dm.ACBrCEP1.BuscarPorCEP(Trim(DBEdit4.Text)) > 0 then
        begin
          cdsDadosENDERECO.AsString   := dm.vCepENDERECO;
          cdsDadosBAIRRO.AsString     := dm.vCepBAIRRO;
          cdsDadosEstado.AsString     := dm.vCepESTADO;
          cdsDadosCidadeCod.AsInteger := frStrToInt(dm.vCepCODIGO);
          frmPesquisaCidade.pLimpaCampo;
          if cdsDadosCidadeCod.AsInteger > 0 then
            frmPesquisaCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
        end;
      except
      end;
    end;
    vAnt_Cep := cdsDadosCEP.AsString;
    DBEdit5.SetFocus;
  end;

end;

procedure TFfrmCadProdutor.spbMapaClick(Sender: TObject);
var vret:String;
begin
  inherited;
  if (Trim(cdsDadosENDERECO.AsString) = '')  or
     (Trim(cdsDadosCIDADEDES.AsString) = '') or
     (Trim(cdsDadosESTADO.AsString) = '')    then
  begin
    frPerg('Obrigatório: Endereço, Cidade, Estado', 'OK');
    exit;
  end;

  vret := frMapaRetLocal('',
                         cdsDadosENDERECO.AsString,
                         cdsDadosBAIRRO.AsString,
                         cdsDadosCIDADEDES.AsString,
                         cdsDadosESTADO.AsString);
  //Se tiver erro
  if (pos('Erro:', vret) > 0) then
  begin
     frPerg(PChar(vret), 'OK');
  end
  else begin
    cdsDadosWEBLOCAL.AsString := Trim(vret);
  end;

end;

procedure TFfrmCadProdutor.spbMapaWebClick(Sender: TObject);
var varquivo: String;
begin
  inherited;

  //https://www.google.com/maps/dir//-28.292455,-49.9375873/@-28.2698639,-49.9950296,11z
  varquivo := 'https://www.google.com/maps/dir//'+cdsDadosWebLocal.AsString;

  ShellExecute(Handle, 'open', pchar(varquivo), '', '', 1);
end;

end.
