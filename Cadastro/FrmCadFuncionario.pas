unit FrmCadFuncionario;

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
  TFfrmCadFuncionario = class(TFModelo)
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
    GroupBox8: TGroupBox;
    DBEdit7: TDBEdit;
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
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    sqlDadosEMAIL: TStringField;
    cdsDadosEMAIL: TStringField;
    sqlDadosFUNRURALPER: TBCDField;
    cdsDadosFUNRURALPER: TBCDField;
    sqlDadosGRUPOCOD: TIntegerField;
    cdsDadosGRUPOCOD: TIntegerField;
    sqlDadosTIPOCOD: TStringField;
    cdsDadosTIPOCOD: TStringField;
    spbCEP: TSpeedButton;
    GroupBox12: TGroupBox;
    DBEdit10: TDBEdit;
    sqlDadosWEBLOCAL: TStringField;
    cdsDadosWEBLOCAL: TStringField;
    gbPlano: TGroupBox;
    frmPesquisaCtc: TfrmPesquisa;
    sqlDadosCTC: TIntegerField;
    cdsDadosCTC: TIntegerField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDadoszCidadeChange(Sender: TField);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure spbCEPClick(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
    vAnt_Cep: String;
    procedure pObtemPesquisa;
  public
    { Public declarations }
  end;

var
  FfrmCadFuncionario: TFfrmCadFuncionario;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmCadForneGrupo;

procedure TFfrmCadFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCidade.pInicia('ttCidade',TForm(Sender),7,147,GroupBox3,True);
  frmPesquisaCTC.pInicia('ttPlano', TForm(Sender),7,147,gbPlano,true);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadFuncionario.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadFuncionario.GroupBox3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  cdsDadosEstado.AsString := frmPesquisaCidade.vpCampo_1;
end;

procedure TFfrmCadFuncionario.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
    frmPesquisaCtc.pRetornaDados(cdsDadosCTC.AsString);
  end;
end;

procedure TFfrmCadFuncionario.pObtemPesquisa;
begin
  frmPesquisaCidade.pRetornaDados(cdsDadosCidadeCod.AsString);
  frmPesquisaCtc.pRetornaDados(cdsDadosCTC.AsString);
end;

procedure TFfrmCadFuncionario.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadforne where tipocod = ''U'' and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadforne where tipocod = ''U'' and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadFuncionario.cdsDadoszCidadeChange(Sender: TField);
begin
  inherited;
  pObtemPesquisa;
end;

procedure TFfrmCadFuncionario.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
end;

procedure TFfrmCadFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadFuncionario);
end;

procedure TFfrmCadFuncionario.sbIncluirClick(Sender: TObject);
begin

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaCTC.pLimpaCampo;
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADFORNE','CODIGO',0,'FORNECEDOR') + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADFORNE_ID');
          cdsDadosGrupoCod.AsInteger:= 1;
          cdsDadosTipoCod.asString := 'U';
          cdsDadosATIVO.AsString  := 'S';
          vAnt_Cep := '';
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          cdsDadosTipoCod.asString := 'U';
          vAnt_Cep := cdsDadosCEP.AsString;
          pObtemPesquisa;
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
              cdsDadosCodigo.AsInteger := frGenerator('CADFORNE','CODIGO',1,'FORNECEDOR');

            cdsDadosCooper.AsString    := 'N';
            cdsDadosCidadeCod.AsInteger:= frmPesquisaCidade.vpCodPrincipal;
            cdsDadosCidadeDes.AsString := frmPesquisaCidade.vpDescricao;
            cdsDadosCTC.AsInteger    := frmPesquisaCtc.vpCodPrincipal;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Cancel;
           except
           end;
           pLiberar('Geral');
         end;
     91,92: pObtemPesquisa;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadFuncionario.spbCEPClick(Sender: TObject);
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

end.
