unit FrmCadMotorista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadMotorista = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosCIDADECOD: TIntegerField;
    sqlDadosCADASTRO: TSQLTimeStampField;
    sqlDadosTRPLACA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCIDADECOD: TIntegerField;
    cdsDadosCADASTRO: TSQLTimeStampField;
    cdsDadosTRPLACA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlDadosTRESTADO: TStringField;
    cdsDadosTRESTADO: TStringField;
    GroupBox5: TGroupBox;
    DBEdit3: TDBEdit;
    sqlDadosCIDADEDES: TStringField;
    cdsDadosCIDADEDES: TStringField;
    GroupBox13: TGroupBox;
    DBEdit12: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    sqlDadosENDERECO: TStringField;
    sqlDadosBAIRRO: TStringField;
    sqlDadosCEP: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosCPF: TStringField;
    sqlDadosDOC: TStringField;
    sqlDadosFONE: TStringField;
    sqlDadosMODELO: TStringField;
    sqlDadosANO: TStringField;
    sqlDadosFORMA: TStringField;
    cdsDadosENDERECO: TStringField;
    cdsDadosBAIRRO: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosDOC: TStringField;
    cdsDadosFONE: TStringField;
    cdsDadosMODELO: TStringField;
    cdsDadosANO: TStringField;
    cdsDadosFORMA: TStringField;
    frmPesquisa: TfrmPesquisa;
    spbCEP: TSpeedButton;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    sqlDadosEMAIL: TStringField;
    cdsDadosEMAIL: TStringField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosIMPORTEMP: TIntegerField;
    sqlDadosIMPORTLANC: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosIMPORTEMP: TIntegerField;
    cdsDadosIMPORTLANC: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure cdsDadoszCidadeChange(Sender: TField);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure spbCEPClick(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
    vAnt_Cep: String;
  public
    { Public declarations }
  end;

var
  FfrmCadMotorista: TFfrmCadMotorista;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadMotorista.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisa.pInicia('ttCidade',TForm(Sender),7,147,GroupBox3,True);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadMotorista.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadMotorista.GroupBox3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  cdsDadosEstado.AsString := frmPesquisa.vpCampo_1;
end;

procedure TFfrmCadMotorista.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
end;

procedure TFfrmCadMotorista.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadtrans where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadtrans where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadMotorista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadMotorista);
end;

procedure TFfrmCadMotorista.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisa.pLimpaCampo;
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADTRANS','CODIGO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADTRANS_ID');
          cdsDadosATIVO.AsString  := 'S';
          vAnt_Cep := '';
          DBEdit2.SetFocus;
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
              cdsDadosCodigo.AsInteger := frGenerator('CADTRANS','CODIGO',1);

            cdsDadosCidadeCod.AsInteger:= frmPesquisa.vpCodPrincipal;
            cdsDadosCidadeDes.AsString := frmPesquisa.vpDescricao;
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
     91,92: frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);

  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadMotorista.spbCEPClick(Sender: TObject);
var vtrue: Boolean;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  vtrue := False;
  if (Trim(Copy(DBEdit7.Text,1,5)) <> '') then
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
        if dm.ACBrCEP1.BuscarPorCEP(Trim(DBEdit7.Text)) > 0 then
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

procedure TFfrmCadMotorista.cdsDadoszCidadeChange(Sender: TField);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then
    frmPesquisa.pRetornaDados(cdsDadosCidadeCod.AsString);
end;

procedure TFfrmCadMotorista.DBEdit12Exit(Sender: TObject);
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

procedure TFfrmCadMotorista.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  if not frUF(cdsDadosTREstado.asString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit4.SetFocus;
    Exit;
  end;

//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmCadMotorista.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
    cdsDadosCPF.Text:= frCPFC(cdsDadosCPF.Text);
end;

end.
