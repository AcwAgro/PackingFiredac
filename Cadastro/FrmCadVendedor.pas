unit FrmCadVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadVendedor = class(TFModelo)
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
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    DBEdit12: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit13: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosENDERECO: TStringField;
    sqlDadosBAIRRO: TStringField;
    sqlDadosCEP: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosCIDADECOD: TIntegerField;
    sqlDadosDOC: TStringField;
    sqlDadosCADASTRO: TSQLTimeStampField;
    sqlDadosCTC: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
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
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosEMAIL: TStringField;
    frmPesquisa: TfrmPesquisa;
    sqlDadosCOMISSAOCOD: TIntegerField;
    sqlDadosCOMISSAOVLR: TBCDField;
    sqlDadosCPF: TStringField;
    sqlDadosFONE: TStringField;
    sqlDadosEMAIL: TStringField;
    cdsDadosCOMISSAOCOD: TIntegerField;
    cdsDadosCOMISSAOVLR: TBCDField;
    GroupBox11: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox9: TGroupBox;
    DBEdit8: TDBEdit;
    sqlDadosCIDADEDES: TStringField;
    cdsDadosCIDADEDES: TStringField;
    sqlDadosCOOPER: TStringField;
    sqlDadosTIPOCOD: TStringField;
    cdsDadosCOOPER: TStringField;
    cdsDadosTIPOCOD: TStringField;
    spbCEP: TSpeedButton;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    DBEdit11: TcxDBDateEdit;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDadoszCidadeChange(Sender: TField);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure spbCEPClick(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
    vAnt_Cep: String;
  public
    { Public declarations }
  end;

var
  FfrmCadVendedor: TFfrmCadVendedor;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadVendedor.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisa.pInicia('ttCidade',TForm(Sender),7,147,GroupBox3,True);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadVendedor.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadVendedor.GroupBox3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  cdsDadosEstado.AsString := frmPesquisa.vpCampo_1;
end;

procedure TFfrmCadVendedor.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
end;

procedure TFfrmCadVendedor.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadforne where tipocod = ''V'' and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadforne where tipocod = ''V'' and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadVendedor.cdsDadoszCidadeChange(Sender: TField);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then
    frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
end;

procedure TFfrmCadVendedor.DBEdit12Exit(Sender: TObject);
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

procedure TFfrmCadVendedor.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
end;

procedure TFfrmCadVendedor.DBEdit8Enter(Sender: TObject);
begin
  inherited;

  if cdsDadosComissaoCod.asInteger = 0 then
  begin
    dbEdit8.Enabled := False;
    cdsDadosComissaoVlr.asFloat := 0;
  end
  else
    dbEdit8.Enabled := True;

end;

procedure TFfrmCadVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadVendedor);
end;

procedure TFfrmCadVendedor.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADFORNE','CODIGO',0,'FORNECEDOR') + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADFORNE_ID');
          cdsDadosCadastro.AsDateTime   := Date;
          cdsDadosComissaoCod.asInteger := 0;
          cdsDadosComissaoVlr.asFloat   := 0;
          cdsDadosTipoCod.asString := 'V';
          cdsDadosATIVO.AsString  := 'S';
          vAnt_Cep := '';
          DBEdit11.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          vAnt_Cep := cdsDadosCEP.AsString;
          frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
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
            begin
              cdsDadosCodigo.AsInteger := frGenerator('CADFORNE','CODIGO',1,'FORNECEDOR');
              if cdsDadosCodigo.AsInteger < 1000  then cdsDadosCodigo.AsInteger := 1000;
            end;

            cdsDadosCooper.AsString    := 'N';
            cdsDadosCidadeCod.AsInteger:= frmPesquisa.vpCodPrincipal;
            cdsDadosCidadeDes.AsString := frmPesquisa.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);

            if cdsDadosComissaoCod.asInteger = 0 then
              cdsDadosComissaoVlr.asFloat   := 0;

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
     91,92: frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadVendedor.spbCEPClick(Sender: TObject);
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
          frmPesquisa.pLimpaCampo;
          if cdsDadosCidadeCod.AsInteger > 0 then
            frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
        end;
      except
      end;
    end;
    vAnt_Cep := cdsDadosCEP.AsString;
    DBEdit5.SetFocus;
  end;

end;

end.
