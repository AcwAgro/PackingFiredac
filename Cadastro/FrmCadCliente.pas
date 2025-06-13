unit FrmCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  ACBrBase, ACBrSocket, ACBrCEP, ShellApi, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadCliente = class(TFModelo)
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
    GroupBox9: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    DBEdit12: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit14: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosENDERECO: TStringField;
    sqlDadosBAIRRO: TStringField;
    sqlDadosCEP: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosCIDADECOD: TIntegerField;
    sqlDadosCPF: TStringField;
    sqlDadosDOC: TStringField;
    sqlDadosFONE: TStringField;
    sqlDadosCADASTRO: TSQLTimeStampField;
    sqlDadosCTC: TIntegerField;
    sqlDadosCTCDES: TStringField;
    sqlDadosCIDADEDES: TStringField;
    sqlDadosCOOPER: TStringField;
    sqlDadosCTCCON: TIntegerField;
    sqlDadosAREA: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosMARCA: TStringField;
    sqlDadosEMAIL: TStringField;
    sqlDadosCONTATO: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosENDERECO: TStringField;
    cdsDadosBAIRRO: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosCIDADECOD: TIntegerField;
    cdsDadosCPF: TStringField;
    cdsDadosDOC: TStringField;
    cdsDadosFONE: TStringField;
    cdsDadosCADASTRO: TSQLTimeStampField;
    cdsDadosCTC: TIntegerField;
    cdsDadosCTCDES: TStringField;
    cdsDadosCIDADEDES: TStringField;
    cdsDadosCOOPER: TStringField;
    cdsDadosCTCCON: TIntegerField;
    cdsDadosAREA: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosMARCA: TStringField;
    cdsDadosEMAIL: TStringField;
    cdsDadosCONTATO: TStringField;
    sqlDadosSITE: TStringField;
    cdsDadosSITE: TStringField;
    sqlDadosLIMITE: TBCDField;
    sqlDadosFINAN: TBCDField;
    sqlDadosMENSAGEM: TStringField;
    sqlDadosFORMA: TStringField;
    sqlDadosFUNSIM: TStringField;
    sqlDadosFUNPER: TBCDField;
    cdsDadosLIMITE: TBCDField;
    cdsDadosFINAN: TBCDField;
    cdsDadosMENSAGEM: TStringField;
    cdsDadosFORMA: TStringField;
    cdsDadosFUNSIM: TStringField;
    cdsDadosFUNPER: TBCDField;
    sqlDadosCOMISPER: TBCDField;
    sqlDadosADIANTCX: TBCDField;
    cdsDadosCOMISPER: TBCDField;
    cdsDadosADIANTCX: TBCDField;
    frmCidade: TfrmPesquisa;
    dspEndereco: TDataSetProvider;
    cdsEndereco: TClientDataSet;
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
    dsEndereco: TDataSource;
    rzpcGrupo: TRzPageControl;
    tsbFinanceiro: TRzTabSheet;
    GroupBox18: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit16: TDBEdit;
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
    frmEndereco: TfrmPesquisa;
    GroupBox36: TGroupBox;
    DBEdit34: TDBEdit;
    GroupBox37: TGroupBox;
    DBEdit35: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox27: TGroupBox;
    DBEdit25: TDBEdit;
    btnCNPJ: TBitBtn;
    sqlDadosFG_DESC_PRECO: TStringField;
    cdsDadosFG_DESC_PRECO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    spbCEP: TSpeedButton;
    GroupBox24: TGroupBox;
    DBEdit23: TDBEdit;
    spbMapa: TSpeedButton;
    sqlDadosWEBLOCAL: TStringField;
    cdsDadosWEBLOCAL: TStringField;
    gbPlano: TGroupBox;
    frmPesquisaCtc: TfrmPesquisa;
    spbMapaWeb: TSpeedButton;
    GroupBox25: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox16: TGroupBox;
    GroupBox19: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox20: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit19: TDBEdit;
    GroupBox26: TGroupBox;
    DBEdit20: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    sqlDadosNFDESCPARC: TStringField;
    cdsDadosNFDESCPARC: TStringField;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    DBEdit11: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsEnderecoREGLOG: TStringField;
    cdsEnderecoREG_ID: TIntegerField;
    sqlEndereco: TFDQuery;
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
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDadoszCidadeChange(Sender: TField);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure frmCidadeExit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure frmEnderecoExit(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure btnCNPJClick(Sender: TObject);
    procedure spbCEPClick(Sender: TObject);
    procedure spbMapaClick(Sender: TObject);
    procedure spbMapaWebClick(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
    vAnt_Cep, vAnt_Cep_End: String;
    procedure pAbreEndereco;
    procedure pSalvaEndereco;
    procedure pLeEndereco(vTrue: Boolean);
  public
    { Public declarations }
  end;

var
  FfrmCadCliente: TFfrmCadCliente;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmGerenciadorNFE;

procedure TFfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  frmCidade.pInicia('ttCidade',TForm(Sender),7,147,GroupBox3,True);
  frmEndereco.pInicia('ttCidade',TForm(Sender),7,147,GroupBox35,True);
  frmPesquisaCTC.pInicia('ttPlano', TForm(Sender),7,147,gbPlano,true);
  pcItem.ActivePageIndex := 0;
  rzpcGrupo.ActivePageIndex := 0;

  rbgAtivo.Visible := True;
  cdsDados.Open;

end;

procedure TFfrmCadCliente.FormShow(Sender: TObject);
begin
  inherited;

  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadCliente.frmCidadeExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if sbSalvar.Visible then
    cdsDadosEstado.AsString := frmCidade.vpCampo_1;
end;

procedure TFfrmCadCliente.frmEnderecoExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if sbSalvar.Visible then
    cdsEnderecoEstado.AsString := frmEndereco.vpCampo_1;
end;

procedure TFfrmCadCliente.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    pAbreEndereco;
end;

procedure TFfrmCadCliente.cdsDadoszCidadeChange(Sender: TField);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then
  begin
    frmCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
    frmEndereco.pRetornaDados(cdsEnderecoCidadeCod.AsString);
  end;
end;

procedure TFfrmCadCliente.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadCliente.DBEdit12Exit(Sender: TObject);
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

procedure TFfrmCadCliente.DBEdit21Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
end;

procedure TFfrmCadCliente.DBEdit28Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsEnderecoCPF.Text:= frCPFC(cdsEnderecoCPF.Text);
end;

procedure TFfrmCadCliente.DBEdit33Exit(Sender: TObject);
var vtrue: Boolean;
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  vtrue := False;
  if (Trim(Copy(DBEdit33.Text,1,5)) <> '') then
  begin
    if (Trim(cdsEnderecoEstado.AsString)  ='') and
       (Trim(cdsEnderecoBAIRRO.AsString)  ='') and
       (Trim(cdsEnderecoENDERECO.AsString)='') then
      vtrue := true
    else begin
      if (vAnt_Cep_End <> cdsEnderecoCEP.AsString) then
        vtrue := true
    end;

    if vTrue then
    begin
      try
        if dm.ACBrCEP1.BuscarPorCEP(Trim(DBEdit33.Text)) > 0 then
        begin
          cdsEnderecoENDERECO.AsString   := dm.vCepENDERECO;
          cdsEnderecoBAIRRO.AsString     := dm.vCepBAIRRO;
          cdsEnderecoEstado.AsString     := dm.vCepESTADO;
          cdsEnderecoCidadeCod.AsInteger := frStrToInt(dm.vCepCODIGO);
          frmEndereco.pLimpaCampo;
          if cdsEnderecoCidadeCod.AsInteger > 0 then
            frmEndereco.pRetornaDados(cdsEnderecoCidadeCod.AsString);
        end;
      except
      end;
    end;
    vAnt_Cep_End := cdsEnderecoCEP.AsString;
    DBEdit31.SetFocus;
  end;
end;

procedure TFfrmCadCliente.DBEdit34Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  if not frUF(cdsEnderecoEstado.asString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit34.SetFocus;
    Exit;
  end;

end;

procedure TFfrmCadCliente.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
end;

procedure TFfrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadCliente);
end;

procedure TFfrmCadCliente.sbIncluirClick(Sender: TObject);
begin

  inherited;
  vRelEmail := cdsDadosEMAIL.AsString;

  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaCTC.pLimpaCampo;
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADCLIEN','CODIGO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADCLIEN_ID');
          cdsDadosCadastro.AsDateTime := Date;
          cdsDadosFUNSIM.AsString := 'N';
          cdsDadosATIVO.AsString  := 'S';
          vAnt_Cep := '';
          vAnt_Cep_End := '';
          pAbreEndereco;
          DBEdit11.SetFocus;

        end;
     13: begin
          pAbreEndereco;
          cdsDados.Edit;
          vAnt_Cep := cdsDadosCEP.AsString;
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
              cdsDadosCodigo.AsInteger := frGenerator('CADCLIEN','CODIGO',1);

            cdsDadosCooper.AsString    := 'N';
            cdsDadosCidadeCod.AsInteger:= frmCidade.vpCodPrincipal;
            cdsDadosCidadeDes.AsString := frmCidade.vpDescricao;
            cdsDadosCTC.AsInteger      := frmPesquisaCtc.vpCodPrincipal;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);

            pSalvaEndereco;

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
     91,92: pAbreEndereco;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadCliente.spbCEPClick(Sender: TObject);
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
          frmCidade.pLimpaCampo;
          if cdsDadosCidadeCod.AsInteger > 0 then
            frmCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
        end;
      except
      end;
    end;
    vAnt_Cep := cdsDadosCEP.AsString;
    DBEdit5.SetFocus;
  end;

end;


procedure TFfrmCadCliente.pAbreEndereco;
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

  vAnt_Cep_end := cdsEnderecoCEP.AsString;
  frmEndereco.pRetornaDados(cdsEnderecoCidadeCod.AsString);
  rzpcGrupo.ActivePageIndex := 0;

  frmCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
  frmEndereco.pRetornaDados(cdsEnderecoCidadeCod.AsString);
  frmPesquisaCtc.pRetornaDados(cdsDadosCTC.AsString);

end;

procedure TFfrmCadCliente.pSalvaEndereco;
begin
  if cdsEndereco.State = dsBrowse then
    cdsEndereco.Edit;

  if (cdsEnderecoREG_ID.AsInteger = 0) then
    cdsEnderecoREG_ID.AsInteger := frGeneratorFB('GEN_CADENDERECO_ID');

  //Verifica se está preenchido e salva
  if (cdsEnderecoLancit.AsInteger = 0) then
    cdsEnderecoLancit.AsInteger := frGenerator('CADENDERECO','LANCIT',1);

  if (cdsEnderecoLanc.AsInteger = 0) then
    cdsEnderecoLanc.AsInteger := cdsDadosCodigo.AsInteger;

  cdsEnderecoCidadeCod.AsInteger:= frmEndereco.vpCodPrincipal;
  cdsEnderecoCidadeDes.asString := frmEndereco.vpDescricao;

  cdsEnderecoTipo.asString := 'C';

  cdsEndereco.Post;
  cdsEndereco.ApplyUpdates(-1);

  pLeEndereco(False);

end;

procedure TFfrmCadCliente.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadclien where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadclien where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadCliente.pLeEndereco(vTrue: Boolean);
begin
  tsbFinanceiro.Enabled := vTrue;
  tsbEntrega.Enabled := vTrue;
end;

procedure TFfrmCadCliente.btnCNPJClick(Sender: TObject);
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
      cdsDadosCEP.AsString := pXml('CEP', vtexto);
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
      frPerg('Certificado inválido ou não encontrado!', 'OK');
  end;
end;

procedure TFfrmCadCliente.spbMapaClick(Sender: TObject);
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

procedure TFfrmCadCliente.spbMapaWebClick(Sender: TObject);
var varquivo: String;
begin
  inherited;

  //https://www.google.com/maps/dir//-28.292455,-49.9375873/@-28.2698639,-49.9950296,11z
  varquivo := 'https://www.google.com/maps/dir//'+cdsDadosWebLocal.AsString;

  ShellExecute(Handle, 'open', pchar(varquivo), '', '', 1);
end;

end.
