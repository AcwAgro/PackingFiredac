unit frmCadEmpresa;

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
  TFfrmCadEmpresa = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit12: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit13: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosENDERECO: TStringField;
    sqlDadosCIDADECOD: TIntegerField;
    sqlDadosCIDADEDES: TStringField;
    sqlDadosBAIRRO: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosCEP: TStringField;
    sqlDadosCPF: TStringField;
    sqlDadosDOC: TStringField;
    sqlDadosFONE: TStringField;
    sqlDadosSENHA: TStringField;
    sqlDadosEMAIL: TStringField;
    sqlDadosENDGERAL: TStringField;
    sqlDadosFOLDER: TStringField;
    sqlDadosSENHADES: TStringField;
    sqlDadosANO: TStringField;
    sqlDadosMES: TStringField;
    sqlDadosLANC: TIntegerField;
    sqlDadosPROTECAO: TStringField;
    sqlDadosLANCIT: TIntegerField;
    sqlDadosBANINS: TStringField;
    sqlDadosBANAGE: TStringField;
    sqlDadosBANCTA: TStringField;
    sqlDadosBANDES: TStringField;
    sqlDadosBANCVE: TStringField;
    sqlDadosBANCTR: TStringField;
    sqlDadosSIMPLES: TStringField;
    sqlDadosNSU: TIntegerField;
    sqlDadosCNAE: TStringField;
    sqlDadosCONTADOR: TStringField;
    sqlDadosCONTADORCRC: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosENDERECO: TStringField;
    cdsDadosCIDADECOD: TIntegerField;
    cdsDadosCIDADEDES: TStringField;
    cdsDadosBAIRRO: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosDOC: TStringField;
    cdsDadosFONE: TStringField;
    cdsDadosSENHA: TStringField;
    cdsDadosEMAIL: TStringField;
    cdsDadosENDGERAL: TStringField;
    cdsDadosFOLDER: TStringField;
    cdsDadosSENHADES: TStringField;
    cdsDadosANO: TStringField;
    cdsDadosMES: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosPROTECAO: TStringField;
    cdsDadosLANCIT: TIntegerField;
    cdsDadosBANINS: TStringField;
    cdsDadosBANAGE: TStringField;
    cdsDadosBANCTA: TStringField;
    cdsDadosBANDES: TStringField;
    cdsDadosBANCVE: TStringField;
    cdsDadosBANCTR: TStringField;
    cdsDadosSIMPLES: TStringField;
    cdsDadosNSU: TIntegerField;
    cdsDadosCNAE: TStringField;
    cdsDadosCONTADOR: TStringField;
    cdsDadosCONTADORCRC: TStringField;
    frmCidade: TfrmPesquisa;
    sqlDadosTRIBUTO1: TBCDField;
    sqlDadosTRIBUTO2: TBCDField;
    sqlDadosTRIBUTO3: TBCDField;
    cdsDadosTRIBUTO1: TBCDField;
    cdsDadosTRIBUTO2: TBCDField;
    cdsDadosTRIBUTO3: TBCDField;
    sqlDadosICMS_CREDITO: TStringField;
    sqlDadosICMS_CREDPER: TBCDField;
    cdsDadosICMS_CREDITO: TStringField;
    cdsDadosICMS_CREDPER: TBCDField;
    sqlDadosSERVICOPER: TBCDField;
    cdsDadosSERVICOPER: TBCDField;
    GroupBox17: TGroupBox;
    DBEdit16: TDBEdit;
    sqlDadosIM: TStringField;
    cdsDadosIM: TStringField;
    dspEndereco: TDataSetProvider;
    cdsEndereco: TClientDataSet;
    dsEndereco: TDataSource;
    rzpcGrupo: TRzPageControl;
    tsbContador: TRzTabSheet;
    GroupBox9: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    tsbFiscal: TRzTabSheet;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox16: TGroupBox;
    DBEdit15: TDBEdit;
    tsbRetirada: TRzTabSheet;
    Label6: TLabel;
    GroupBox18: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit20: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit21: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox24: TGroupBox;
    frmEndereco: TfrmPesquisa;
    GroupBox25: TGroupBox;
    DBEdit23: TDBEdit;
    GroupBox26: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox27: TGroupBox;
    DBEdit25: TDBEdit;
    sqlDadosWEBLOCAL: TStringField;
    cdsDadosWEBLOCAL: TStringField;
    spbMapa: TSpeedButton;
    GroupBox20: TGroupBox;
    DBEdit19: TDBEdit;
    spbMapaWeb: TSpeedButton;
    GroupBox12: TGroupBox;
    DBEdit11: TDBEdit;
    tsbEntrega: TRzTabSheet;
    Label7: TLabel;
    GroupBox28: TGroupBox;
    DBEdit26: TDBEdit;
    GroupBox29: TGroupBox;
    DBEdit27: TDBEdit;
    GroupBox30: TGroupBox;
    DBEdit28: TDBEdit;
    GroupBox31: TGroupBox;
    DBEdit29: TDBEdit;
    GroupBox32: TGroupBox;
    frmEndEntrega: TfrmPesquisa;
    GroupBox33: TGroupBox;
    DBEdit30: TDBEdit;
    GroupBox34: TGroupBox;
    DBEdit31: TDBEdit;
    GroupBox35: TGroupBox;
    DBEdit32: TDBEdit;
    GroupBox36: TGroupBox;
    DBEdit33: TDBEdit;
    dspEndEntrega: TDataSetProvider;
    cdsEndEntrega: TClientDataSet;
    dsEndEntrega: TDataSource;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlEndereco: TFDQuery;
    sqlEndEntrega: TFDQuery;
    cdsEnderecoLANCIT: TIntegerField;
    cdsEnderecoLANC: TIntegerField;
    cdsEnderecoTIPO: TStringField;
    cdsEnderecoCPF: TStringField;
    cdsEnderecoDOC: TStringField;
    cdsEnderecoDESCRICAO: TStringField;
    cdsEnderecoENDERECO: TStringField;
    cdsEnderecoCOMPLEM: TStringField;
    cdsEnderecoNUMERO: TStringField;
    cdsEnderecoBAIRRO: TStringField;
    cdsEnderecoCEP: TStringField;
    cdsEnderecoCIDADEDES: TStringField;
    cdsEnderecoESTADO: TStringField;
    cdsEnderecoFONE: TStringField;
    cdsEnderecoEMAIL: TStringField;
    cdsEnderecoCIDADECOD: TIntegerField;
    cdsEnderecoEMPRECOD: TIntegerField;
    cdsEnderecoACESOCOD: TIntegerField;
    cdsEnderecoREGLOG: TStringField;
    cdsEnderecoREG_ID: TIntegerField;
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
    cdsEndEntregaREGLOG: TStringField;
    cdsEndEntregaREG_ID: TIntegerField;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1ENDERECO: TcxGridDBColumn;
    dbDadosDBTableView1CIDADECOD: TcxGridDBColumn;
    dbDadosDBTableView1CIDADEDES: TcxGridDBColumn;
    dbDadosDBTableView1BAIRRO: TcxGridDBColumn;
    dbDadosDBTableView1ESTADO: TcxGridDBColumn;
    dbDadosDBTableView1CEP: TcxGridDBColumn;
    dbDadosDBTableView1CPF: TcxGridDBColumn;
    dbDadosDBTableView1DOC: TcxGridDBColumn;
    dbDadosDBTableView1FONE: TcxGridDBColumn;
    dbDadosDBTableView1SENHA: TcxGridDBColumn;
    dbDadosDBTableView1EMAIL: TcxGridDBColumn;
    dbDadosDBTableView1ENDGERAL: TcxGridDBColumn;
    dbDadosDBTableView1FOLDER: TcxGridDBColumn;
    dbDadosDBTableView1SENHADES: TcxGridDBColumn;
    dbDadosDBTableView1ANO: TcxGridDBColumn;
    dbDadosDBTableView1MES: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1PROTECAO: TcxGridDBColumn;
    dbDadosDBTableView1LANCIT: TcxGridDBColumn;
    dbDadosDBTableView1BANINS: TcxGridDBColumn;
    dbDadosDBTableView1BANAGE: TcxGridDBColumn;
    dbDadosDBTableView1BANCTA: TcxGridDBColumn;
    dbDadosDBTableView1BANDES: TcxGridDBColumn;
    dbDadosDBTableView1BANCVE: TcxGridDBColumn;
    dbDadosDBTableView1BANCTR: TcxGridDBColumn;
    dbDadosDBTableView1SIMPLES: TcxGridDBColumn;
    dbDadosDBTableView1NSU: TcxGridDBColumn;
    dbDadosDBTableView1CNAE: TcxGridDBColumn;
    dbDadosDBTableView1CONTADOR: TcxGridDBColumn;
    dbDadosDBTableView1CONTADORCRC: TcxGridDBColumn;
    dbDadosDBTableView1TRIBUTO1: TcxGridDBColumn;
    dbDadosDBTableView1TRIBUTO2: TcxGridDBColumn;
    dbDadosDBTableView1TRIBUTO3: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_CREDITO: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_CREDPER: TcxGridDBColumn;
    dbDadosDBTableView1SERVICOPER: TcxGridDBColumn;
    dbDadosDBTableView1IM: TcxGridDBColumn;
    dbDadosDBTableView1WEBLOCAL: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    sqlEnderecoLANCIT: TIntegerField;
    sqlEnderecoLANC: TIntegerField;
    sqlEnderecoTIPO: TStringField;
    sqlEnderecoCPF: TStringField;
    sqlEnderecoDOC: TStringField;
    sqlEnderecoDESCRICAO: TStringField;
    sqlEnderecoENDERECO: TStringField;
    sqlEnderecoCOMPLEM: TStringField;
    sqlEnderecoNUMERO: TStringField;
    sqlEnderecoBAIRRO: TStringField;
    sqlEnderecoCEP: TStringField;
    sqlEnderecoCIDADEDES: TStringField;
    sqlEnderecoESTADO: TStringField;
    sqlEnderecoFONE: TStringField;
    sqlEnderecoEMAIL: TStringField;
    sqlEnderecoCIDADECOD: TIntegerField;
    sqlEnderecoEMPRECOD: TIntegerField;
    sqlEnderecoACESOCOD: TIntegerField;
    sqlEnderecoREGLOG: TStringField;
    sqlEnderecoREG_ID: TIntegerField;
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
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure GroupBox24Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure spbMapaClick(Sender: TObject);
    procedure spbMapaWebClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure GroupBox32Exit(Sender: TObject);
  private
    { Private declarations }
    procedure pAbreEndereco;
    procedure pSalvaEndereco;
    procedure pLeEndereco(vTrue: Boolean);
    procedure pAbreEntrega;
    procedure pSalvaEntrega;
  public
    { Public declarations }
  end;

var
  FfrmCadEmpresa: TFfrmCadEmpresa;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  frmCidade.pInicia('ttCidade',TForm(Sender),7,147,GroupBox3,True);
  frmEndereco.pInicia('ttCidade',TForm(Sender),7,147,GroupBox24,True);
  frmEndEntrega.pInicia('ttCidade',TForm(Sender),7,147,GroupBox24,True);
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
end;

procedure TFfrmCadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
  pAbreEndereco;
  pAbreEntrega;
end;

procedure TFfrmCadEmpresa.GroupBox24Exit(Sender: TObject);
begin
  inherited;
  if sbSalvar.Visible then
    cdsEnderecoEstado.AsString := frmEndereco.vpCampo_1;
end;

procedure TFfrmCadEmpresa.GroupBox32Exit(Sender: TObject);
begin
  inherited;
  if sbSalvar.Visible then
    cdsEndEntregaEstado.AsString := frmEndEntrega.vpCampo_1;

end;

procedure TFfrmCadEmpresa.GroupBox3Exit(Sender: TObject);
begin
  inherited;
  if sbSalvar.Visible then
    cdsDadosEstado.AsString := frmCidade.vpCampo_1;
end;

procedure TFfrmCadEmpresa.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
    frmEndereco.pRetornaDados(cdsEnderecoCidadeCod.AsString);
  end;
end;

procedure TFfrmCadEmpresa.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  if not frUF(cdsDadosEstado.asString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit12.SetFocus;
    Exit;
  end;
end;

procedure TFfrmCadEmpresa.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
end;

procedure TFfrmCadEmpresa.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadEmpresa.DBEdit17Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsEnderecoCPF.Text:= frCPFC(cdsEnderecoCPF.Text);
end;

procedure TFfrmCadEmpresa.DBEdit23Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  if not frUF(cdsEnderecoEstado.asString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit23.SetFocus;
    Exit;
  end;
end;

procedure TFfrmCadEmpresa.DBEdit26Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsEndEntregaCPF.Text:= frCPFC(cdsEndEntregaCPF.Text);
end;

procedure TFfrmCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadEmpresa);
end;

procedure TFfrmCadEmpresa.sbIncluirClick(Sender: TObject);
begin
  if TComponent(Sender).Tag in [12,14] then exit;

  inherited;
  Case TComponent(Sender).Tag of
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;

          pAbreEndereco;
          pAbreEntrega;

        end;
     15: begin
          try
            cdsDadosCidadeCod.AsInteger:= frmCidade.vpCodPrincipal;
            cdsDadosCidadeDes.asString := frmCidade.vpDescricao;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            pSalvaEndereco;
            pSalvaEntrega;
            dm.TEmpresa.Close;
            dm.TEmpresa.Open;
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Cancel;
             cdsEndereco.Cancel;
             pLeEndereco(False);

           except
           end;
           pLiberar('Geral');
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;


procedure TFfrmCadEmpresa.pAbreEndereco;
begin
  cdsEndereco.Close;
  sqlEndereco.ParamByName('pID').asInteger := cdsDadosCodigo.AsInteger;
  cdsEndereco.Open;

  if (sbSalvar.Visible) then
  begin
    if cdsEndereco.IsEmpty then
      cdsEndereco.Append
    else
      cdsEndereco.Edit;

    pLeEndereco(True);

  end;

  frmEndereco.pRetornaDados(cdsEnderecoCidadeCod.AsString);
  rzpcGrupo.ActivePageIndex := 0;

end;

procedure TFfrmCadEmpresa.pAbreEntrega;
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

  frmEndEntrega.pRetornaDados(cdsEndEntregaCidadeCod.AsString);
  rzpcGrupo.ActivePageIndex := 0;

end;

procedure TFfrmCadEmpresa.pSalvaEndereco;
begin
  if cdsEndereco.State = dsBrowse then
    cdsEndereco.Edit;

  //Verifica se está preenchido e salva
  if (cdsEnderecoREG_ID.AsInteger = 0) then
    cdsEnderecoREG_ID.AsInteger := frGeneratorFB('GEN_CADENDERECO_ID');

  if (cdsEnderecoLancit.AsInteger = 0) then
    cdsEnderecoLancit.AsInteger := frGenerator('CADENDERECO','LANCIT',1);

  if (cdsEnderecoLanc.AsInteger = 0) then
    cdsEnderecoLanc.AsInteger := cdsDadosCodigo.AsInteger;

  cdsEnderecoCidadeCod.AsInteger:= frmEndereco.vpCodPrincipal;
  cdsEnderecoCidadeDes.asString := frmEndereco.vpDescricao;

  cdsEnderecoTipo.asString := 'E';

  cdsEndereco.Post;
  cdsEndereco.ApplyUpdates(0);
  pLeEndereco(False);

end;

procedure TFfrmCadEmpresa.pSalvaEntrega;
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

  cdsEndEntregaCidadeCod.AsInteger:= frmEndEntrega.vpCodPrincipal;
  cdsEndEntregaCidadeDes.asString := frmEndEntrega.vpDescricao;

  cdsEndEntregaTipo.asString := 'T';

  cdsEndEntrega.Post;
  cdsEndEntrega.ApplyUpdates(0);
  pLeEndereco(False);

end;

procedure TFfrmCadEmpresa.pLeEndereco(vTrue: Boolean);
begin
  tsbContador.Enabled := vTrue;
  tsbFiscal.Enabled   := vTrue;
  tsbRetirada.Enabled := vTrue;
  tsbEntrega.Enabled := vTrue;
end;

procedure TFfrmCadEmpresa.spbMapaClick(Sender: TObject);
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

procedure TFfrmCadEmpresa.spbMapaWebClick(Sender: TObject);
var varquivo: String;
begin
  inherited;

  //https://www.google.com/maps/dir//-28.292455,-49.9375873/@-28.2698639,-49.9950296,11z
  varquivo := 'https://www.google.com/maps/dir/'+cdsDadosWebLocal.AsString;

  ShellExecute(Handle, 'open', pchar(varquivo), '', '', 1);

end;

end.
