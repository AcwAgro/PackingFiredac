unit FrmCadNcmIBPT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  ACBrBase, ACBrSocket, ACBrIBPTax, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, System.ImageList,
  Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadNcmIBPT = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
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
    sqlDadosID: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosNACIONAL: TBCDField;
    sqlDadosNCM: TStringField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosCHAVE: TStringField;
    sqlDadosVERSAO: TStringField;
    sqlDadosFONTE: TStringField;
    sqlDadosUF: TStringField;
    sqlDadosIMPORTADO: TBCDField;
    sqlDadosESTADUAL: TBCDField;
    sqlDadosMUNICIPAL: TBCDField;
    cdsDadosID: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosNACIONAL: TBCDField;
    cdsDadosNCM: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCHAVE: TStringField;
    cdsDadosVERSAO: TStringField;
    cdsDadosFONTE: TStringField;
    cdsDadosUF: TStringField;
    cdsDadosIMPORTADO: TBCDField;
    cdsDadosESTADUAL: TBCDField;
    cdsDadosMUNICIPAL: TBCDField;
    GroupBox3: TGroupBox;
    DBEdit12: TDBEdit;
    sbAtualizar: TSpeedButton;
    ACBrIBPTax1: TACBrIBPTax;
    Label6: TLabel;
    pnlCBenef: TPanel;
    DBGrid2: TDBGrid;
    dspCBenef: TDataSetProvider;
    cdsCBenef: TClientDataSet;
    dsCBenef: TDataSource;
    cdsCBenefID: TIntegerField;
    cdsCBenefNCM: TStringField;
    cdsCBenefCST: TStringField;
    cdsCBenefCBENEF: TStringField;
    cdsCBenefEMPRECOD: TIntegerField;
    cdsCBenefACESOCOD: TIntegerField;
    DBEdit11: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlCBenef: TFDQuery;
    sqlCBenefID: TIntegerField;
    sqlCBenefNCM: TStringField;
    sqlCBenefCST: TStringField;
    sqlCBenefCBENEF: TStringField;
    sqlCBenefEMPRECOD: TIntegerField;
    sqlCBenefACESOCOD: TIntegerField;
    sqlCBenefREGLOG: TStringField;
    sqlCBenefREG_ID: TIntegerField;
    cdsCBenefREGLOG: TStringField;
    cdsCBenefREG_ID: TIntegerField;
    sqlDadosDTFIM: TSQLTimeStampField;
    cdsDadosDTFIM: TSQLTimeStampField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit6Exit(Sender: TObject);
    procedure sbAtualizarClick(Sender: TObject);
    procedure tsDadosShow(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure cdsCBenefBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure pAbreDetalhe;
  public
    { Public declarations }
    procedure pTabelaIBPTAtualizar;
  end;

var
  FfrmCadNcmIBPT: TFfrmCadNcmIBPT;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadNcmIBPT.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := False;
  cdsDados.Open;
end;

procedure TFfrmCadNcmIBPT.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then
    dbDados.SetFocus;
end;

procedure TFfrmCadNcmIBPT.cdsCBenefBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsCBenefNCM.AsString    := cdsDadosNCM.AsString;
  cdsCBenefCBENEF.AsString := UpperCase(cdsCBenefCBENEF.AsString);

  if cdsCBenef.FieldByName('ID').asInteger     = 0 then cdsCBenef.FieldByName('ID').asInteger := frGenerator('CADCBENEF','ID',1);
  if cdsCBenef.FieldByName('REG_ID').asInteger = 0 then cdsCBenef.FieldByName('REG_ID').asInteger := frGeneratorFB('GEN_CADCBENEF_ID');
end;

procedure TFfrmCadNcmIBPT.DBEdit12Exit(Sender: TObject);
begin
  inherited;

  if (cdsCBenef.Filter <> ('NCM = '+QuotedStr(cdsDadosNCM.AsString))) then
    pAbreDetalhe;

end;

procedure TFfrmCadNcmIBPT.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then
    Exit;
  if not frUF(cdsDadosUF.AsString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit6.SetFocus;
    Exit;
  end;
end;

procedure TFfrmCadNcmIBPT.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsCBenef.Edit;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(cdsCBenef.FieldByName('CST').Text,1,3)='999' then
         begin
           cdsCBenef.Delete;
           DBEdit2.SetFocus;
           Abort;
         end;
       end;
    1: begin
         cdsCBenefNCM.AsString    := cdsDadosNCM.AsString;
         cdsCBenefCBENEF.AsString := UpperCase(cdsCBenefCBENEF.AsString);
         cdsCBenef.Post;
         cdsCBenef.Next;
         if cdsCBenef.Eof then cdsCBenef.Append;
         DBGrid2.SelectedIndex := 0;
       end;
  end;

end;

procedure TFfrmCadNcmIBPT.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  DBGrid2.ReadOnly := cdsDados.State = dsBrowse;
  cdsCBenef.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFfrmCadNcmIBPT.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmCadNcmIBPT.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
     if DBGrid2.SelectedIndex <> 1 then
       DBGrid2.SelectedIndex := DBGrid2.SelectedIndex + 1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmCadNcmIBPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadNcmIBPT);
end;

procedure TFfrmCadNcmIBPT.sbAtualizarClick(Sender: TObject);
begin
  inherited;

  if frPerg('Deseja atualizar dados?') then
    pTabelaIBPTAtualizar;

end;

procedure TFfrmCadNcmIBPT.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
    12:
      begin
        cdsDados.Append;
        cdsDadosID.AsInteger := frGenerator('CADNCM', 'ID', 1);
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADNCM_ID');
        cdsDadosDTFIM.AsDateTime  := Date;
        DBEdit12.SetFocus;
      end;
    13:
      begin
        cdsDados.Edit;
        pAbreDetalhe;
        DBEdit2.SetFocus;
      end;
    14:
      begin
        cdsDados.Delete;
        cdsDados.ApplyUpdates(-1);
      end;
    15:
      begin
        try
          if vTag = 12 then
            cdsDadosCODIGO.AsInteger := frGenerator('CADNCM', 'ID', 1);

          cdsCBenef.Edit;
          cdsCBenefEmpreCod.asInteger := xEmp;
          cdsCBenefAcesoCod.asInteger := xAcesso;
          cdsCBenef.Post;
          cdsCBenef.ApplyUpdates(-1);

          cdsDados.Post;
          cdsDados.ApplyUpdates(-1);
        except
          on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
        end;
        pLiberar('Geral');
      end;
    16:
      begin
        try
          cdsDados.Cancel;
        except
        end;
        pLiberar('Geral');
      end;
    91, 92: pAbreDetalhe;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadNcmIBPT.tsDadosShow(Sender: TObject);
begin
  inherited;

  pAbreDetalhe;

end;

procedure TFfrmCadNcmIBPT.pAbreDetalhe;
begin

  cdsCBenef.Close;
  cdsCBenef.Filtered := False;
  cdsCBenef.Filter   := 'NCM = '+QuotedStr(cdsDadosNCM.AsString);
  cdsCBenef.Filtered := True;
  cdsCBenef.Open;

end;

procedure TFfrmCadNcmIBPT.pTabelaIBPTAtualizar;
var
  Retorno: TACBrIBPTaxProdutoDTO;
  v_Uf, v_NCM :string;
  vIncluir: Boolean;
begin

  //Deve Abrir cadastro de produtos e verificar quais NCN Cadastrada
  //Caso não esteja cadastrada deve inserir.

  ACBrIBPTax1.CNPJEmpresa := '08294176000105';
  ACBrIBPTax1.Token       := 'lDlHuPkGxn5CpYosAJARUJjIYuALp916gR6RmiV2nX_ptK6gHvBS8_wtPTRw_SfS';

  v_Uf := dm.TEmpresaESTADO.AsString;

  fSql(1,1,['Select distinct NCM from cadprodu'],1);

  fBar(0,dm.qrSql1.RecordCount, 'Atualizar IBPT');

  dm.qrSql1.First;
  while not dm.qrSql1.Eof do
  begin

    if (trim(dm.qrSql1.Fields[0].AsString) <> '')  then
    begin
      fBar(1, dm.qrSql1.RecordCount, 'Atualizando NCM: '+dm.qrSql1.Fields[0].AsString);

      if (Length(Trim(dm.qrSql1.Fields[0].AsString)) < 8) then
        v_NCM := frStrZero(dm.qrSql1.Fields[0].AsString,8)
      else
        v_NCM := dm.qrSql1.Fields[0].AsString;

      vIncluir := True;
      if cdsDados.Locate('NCM', v_NCM,[]) then
        vIncluir := False;

      try
        try
          Retorno := ACBrIBPTax1.API_ConsultarProduto(v_NCM, v_Uf, 0, '', dm.qrSql1.Fields[0].AsString);

         if (Retorno.Codigo <> EmptyStr) and (Retorno.Codigo <> 'null' ) then
         begin
           if vIncluir then
           begin
             cdsDados.Append;
             cdsDadosID.AsInteger     := frGenerator('CADNCM', 'ID', 1);
             cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADNCM_ID');
           end
           else
              cdsDados.Edit;

           cdsDados.FieldByName('CODIGO').AsString    := Copy(Retorno.Codigo, 1, 10);
           cdsDados.FieldByName('NCM').AsString       := Retorno.Codigo;
           cdsDados.FieldByName('UF').AsString        := Retorno.UF;
           cdsDados.FieldByName('DESCRICAO').AsString := Retorno.Descricao;
           cdsDados.FieldByName('NACIONAL').AsFloat   := Retorno.Nacional;
           cdsDados.FieldByName('IMPORTADO').AsFloat  := Retorno.Importado;
           cdsDados.FieldByName('ESTADUAL').AsFloat   := Retorno.Estadual;
           cdsDados.FieldByName('MUNICIPAL').AsFloat  := Retorno.Municipal;
           cdsDados.FieldByName('CHAVE').AsString     := Retorno.Chave;
           cdsDados.FieldByName('VERSAO').AsString    := Retorno.Versao;
           cdsDados.FieldByName('FONTE').AsString     := Retorno.Fonte;

           if Length(Trim(DateToStr(Retorno.VigenciaFim))) > 6 then
             cdsDados.FieldByName('DTFIM').AsDateTime   := StrToDateDef(DateToStr(Retorno.VigenciaFim), Now)
           else
            cdsDados.FieldByName('DTFIM').AsDateTime    := Date + 365;

           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);

         end
         else begin
           //Caso não encontre e seja pra cadstrar
           if vIncluir then
           begin
             cdsDados.Append;
             cdsDadosID.AsInteger := frGenerator('CADNCM', 'ID', 1);
             cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADNCM_ID');
             cdsDados.FieldByName('CODIGO').AsString    := Copy(v_NCM, 1, 10);
             cdsDados.FieldByName('NCM').AsString       := v_NCM;
             cdsDados.FieldByName('UF').AsString        := v_UF;
             cdsDados.FieldByName('DESCRICAO').AsString := 'Não encontrado';
             cdsDados.FieldByName('NACIONAL').AsFloat   := 13.45;
             cdsDados.FieldByName('IMPORTADO').AsFloat  := 0;
             cdsDados.FieldByName('ESTADUAL').AsFloat   := 17;
             cdsDados.FieldByName('MUNICIPAL').AsFloat  := 0;
             cdsDados.FieldByName('CHAVE').AsString     := '316341';
             cdsDados.FieldByName('VERSAO').AsString    := '22.2.F';
             cdsDados.FieldByName('FONTE').AsString     := 'Fonte:IBPT/empresometro.com.br';
             cdsDados.FieldByName('DTFIM').Value        := StrToDateDef(DateToStr(Date+30), Now);
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
           end;
         end;
        except
           //Caso não encontre e seja pra cadstrar
           if vIncluir then
           begin
             cdsDados.Append;
             cdsDadosID.AsInteger := frGenerator('CADNCM', 'ID', 1);
             cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADNCM_ID');
             cdsDados.FieldByName('CODIGO').AsString    := Copy(v_NCM, 1, 10);
             cdsDados.FieldByName('NCM').AsString       := v_NCM;
             cdsDados.FieldByName('UF').AsString        := v_UF;
             cdsDados.FieldByName('DESCRICAO').AsString := 'Não encontrado';
             cdsDados.FieldByName('NACIONAL').AsFloat   := 13.45;
             cdsDados.FieldByName('IMPORTADO').AsFloat  := 0;
             cdsDados.FieldByName('ESTADUAL').AsFloat   := 17;
             cdsDados.FieldByName('MUNICIPAL').AsFloat  := 0;
             cdsDados.FieldByName('CHAVE').AsString     := '316341';
             cdsDados.FieldByName('VERSAO').AsString    := '22.2.F';
             cdsDados.FieldByName('FONTE').AsString     := 'Fonte:IBPT/empresometro.com.br';
             cdsDados.FieldByName('DTFIM').Value        := StrToDateDef(DateToStr(Date+30), Now);
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
           end;
        end;
      finally

      end;
    end;
    dm.qrSql1.Next;
  end;
  dm.qrSql1.First;

  frPerg('Processo finalizado!', 'OK');

end;

end.
