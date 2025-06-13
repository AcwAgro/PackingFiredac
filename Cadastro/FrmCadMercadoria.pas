unit FrmCadMercadoria;

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
  TFfrmCadMercadoria = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit6: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosBARRA: TStringField;
    sqlDadosGRUPOCOD: TIntegerField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosCOMPRA: TBCDField;
    sqlDadosVENDA1: TBCDField;
    sqlDadosQTDEENT: TBCDField;
    sqlDadosQTDESAI: TBCDField;
    sqlDadosQTDESAL: TBCDField;
    sqlDadosGRUPODES: TStringField;
    sqlDadosPERVEN: TBCDField;
    sqlDadosVENCTO: TSQLTimeStampField;
    sqlDadosDESC1: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosGRUPOCOD: TIntegerField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosCOMPRA: TBCDField;
    cdsDadosVENDA1: TBCDField;
    cdsDadosQTDEENT: TBCDField;
    cdsDadosQTDESAI: TBCDField;
    cdsDadosQTDESAL: TBCDField;
    cdsDadosGRUPODES: TStringField;
    cdsDadosPERVEN: TBCDField;
    cdsDadosVENCTO: TSQLTimeStampField;
    cdsDadosDESC1: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlDadosINFADCIONAL: TStringField;
    cdsDadosINFADCIONAL: TStringField;
    GroupBox8: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox9: TGroupBox;
    sqlDadosAGRUPADOR: TStringField;
    cdsDadosAGRUPADOR: TStringField;
    cxAgrupa: TDBComboBox;
    sqlDadosICMS_ORI: TStringField;
    sqlDadosICMS_SIT: TStringField;
    sqlDadosEHSERVICO: TStringField;
    cdsDadosICMS_ORI: TStringField;
    cdsDadosICMS_SIT: TStringField;
    cdsDadosEHSERVICO: TStringField;
    sqlDadosLISTASERVICO: TStringField;
    cdsDadosLISTASERVICO: TStringField;
    sqlDadosICMS_PER: TBCDField;
    sqlDadosIPI_SIT: TStringField;
    sqlDadosIPI_PER: TBCDField;
    sqlDadosPIS_SIT: TStringField;
    sqlDadosPIS_PER: TBCDField;
    sqlDadosCOFINS_SIT: TStringField;
    sqlDadosCOFINS_PER: TBCDField;
    sqlDadosIPI_CENQ: TStringField;
    cdsDadosICMS_PER: TBCDField;
    cdsDadosIPI_SIT: TStringField;
    cdsDadosIPI_PER: TBCDField;
    cdsDadosPIS_SIT: TStringField;
    cdsDadosPIS_PER: TBCDField;
    cdsDadosCOFINS_SIT: TStringField;
    cdsDadosCOFINS_PER: TBCDField;
    cdsDadosIPI_CENQ: TStringField;
    GroupBox7: TGroupBox;
    GroupBox10: TGroupBox;
    DBEdit7: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    gbCSOSN: TGroupBox;
    btCSOSN: TButton;
    DBRadioGroup7: TDBRadioGroup;
    GroupBox11: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox13: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit8: TDBEdit;
    GroupBox14: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit10: TDBEdit;
    gbServico: TDBRadioGroup;
    GroupBox12: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox15: TGroupBox;
    frmPesquisaGrupo: TfrmPesquisa;
    SpeedButton1: TSpeedButton;
    GroupBox16: TGroupBox;
    DBEdit12: TDBEdit;
    sqlDadosQTDE_DIV: TBCDField;
    cdsDadosQTDE_DIV: TBCDField;
    GroupBox17: TGroupBox;
    DBEdit13: TDBEdit;
    sqlDadosCEST: TStringField;
    cdsDadosCEST: TStringField;
    sqlDadosATIVO: TStringField;
    sqlDadosMOSTRAEST: TStringField;
    cdsDadosATIVO: TStringField;
    cdsDadosMOSTRAEST: TStringField;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox18: TGroupBox;
    DBEdit14: TDBEdit;
    sqlDadosFORNECOD: TStringField;
    cdsDadosFORNECOD: TStringField;
    GroupBox19: TGroupBox;
    sqlDadosMARCA: TStringField;
    cdsDadosMARCA: TStringField;
    cxMarca: TDBComboBox;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox9Enter(Sender: TObject);
    procedure GroupBox9Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure btCSOSNClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
    var vstradicional: String;
    procedure pAgrupador;
    procedure pObterPesquisa;
  public
    { Public declarations }
  end;

var
  FfrmCadMercadoria: TFfrmCadMercadoria;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, FrmCadMercaGrupo;

procedure TFfrmCadMercadoria.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaGrupo.pInicia('ttGrupo',TForm(Sender),7,147,GroupBox15,True);

  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadMercadoria.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadMercadoria.GroupBox1Enter(Sender: TObject);
var vprox: Integer;
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then exit;
  if cdsDados.State = dsBrowse then Exit;

  if (frmPesquisaGrupo.vpCodPrincipal = 0) then
    frmPesquisaGrupo.edtPesquisa.SetFocus
  else begin
    if (cdsDadosCodigo.AsInteger = 0) then
    begin
      vprox := fBus(1,['Select Max(codigo) From cadmerca where grupocod = 0'+IntToStr(frmPesquisaGrupo.vpCodPrincipal)],1);
      if (vprox < (frmPesquisaGrupo.vpCodPrincipal * 1000)) then
        vprox := (frmPesquisaGrupo.vpCodPrincipal * 1000);

      cdsDadosCodigo.AsInteger := vprox + 1;
    end;
  end;
end;

procedure TFfrmCadMercadoria.GroupBox9Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
end;

procedure TFfrmCadMercadoria.GroupBox9Exit(Sender: TObject);
begin
  inherited;
  keyPreview := True;
end;

procedure TFfrmCadMercadoria.pAgrupador;
begin
  cxAgrupa.Items.Clear;
  cxAgrupa.Items.Add('NENHUM');

  fsql(1,1,['select agrupador, count(*) from cadmerca where ativo = ''S'' group by agrupador'],1);
  dm.qrSql1.First;
  while not dm.qrSql1.eof do
  begin
    if (dm.qrSql1.fields[0].asString <> 'NENHUM') and
       (Trim(dm.qrSql1.fields[0].asString) <> '') then
      cxAgrupa.Items.Add(dm.qrSql1.fields[0].asString);
    dm.qrSql1.Next;
  end;

  //marca
  cxMarca.Items.Clear;
  cxMarca.Items.Add('Diversos');
  fsql(1,1,['select descricao from cadmarca where ativo = ''S'' group by descricao'],1);
  dm.qrSql1.First;
  while not dm.qrSql1.eof do
  begin
    if (dm.qrSql1.fields[0].asString <> 'Diversos') and
       (Trim(dm.qrSql1.fields[0].asString) <> '') then
      cxMarca.Items.Add(dm.qrSql1.fields[0].asString);
    dm.qrSql1.Next;
  end;
end;

procedure TFfrmCadMercadoria.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then exit;
  pObterPesquisa;

end;

procedure TFfrmCadMercadoria.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadmerca where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadmerca where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadMercadoria.btCSOSNClick(Sender: TObject);
begin
  inherited;
  FPQCSOSN;
end;

procedure TFfrmCadMercadoria.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TFfrmCadMercadoria.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  // inherited;
end;

procedure TFfrmCadMercadoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadMercadoria);
end;

procedure TFfrmCadMercadoria.sbIncluirClick(Sender: TObject);
var vcount: Integer;
begin

  if (vTag = 15) then
  begin
    vcount := fBus(1,['Select count(*) From CADMERCA Where CODIGO = 0'+cdsDadosCodigo.AsString],1);
    if (vTag = 12) and (vcount > 0) then
    begin
      frPerg('Já existe esse código cadastrado, informar outro!', 'OK');
      dbEdit1.SetFocus;
      Exit;
    end;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          DBEdit1.ReadOnly := False;
          frmPesquisaGrupo.pLimpaCampo;
          cdsDados.Append;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADMERCA_ID');
          cdsDadosCodigo.AsInteger := 0;
          cdsDadosqtde_div.AsFloat := 1;
          cdsDadosATIVO.AsString       := 'S';
          cdsDadosMOSTRAEST.AsString   := 'S';
          cdsDadosMARCA.AsString       := 'Diversos';
          pAgrupador;
          frmPesquisaGrupo.edtPesquisa.SetFocus;
        end;
     13: begin
          DBEdit1.ReadOnly := True;
          cdsDados.Edit;
          pObterPesquisa;
          pAgrupador;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try

            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosGrupoCod.AsInteger := frmPesquisaGrupo.vpCodPrincipal;
            cdsDadosGrupoDes.AsString  := frmPesquisaGrupo.vpDescricao;

            if cdsDadosqtde_div.AsFloat = 0 then
              cdsDadosqtde_div.AsFloat := 1;

            vstradicional := cdsDadosINFADCIONAL.asString;
            cdsDadosINFADCIONAL.Clear;

            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            if (trim(vstradicional) <> '') then
              fsql(1,1,['Update cadmerca set infadcional = '+QuotedStr(vstradicional)+' where codigo = 0'+cdsDadosCODIGO.asString],1);
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
     91,92: pObterPesquisa;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadMercadoria.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frForm(TFfrmCadMercaGrupo, FfrmCadMercaGrupo);

end;

procedure TFfrmCadMercadoria.pObterPesquisa;
begin
  inherited;
  frmPesquisaGrupo.pRetornaDados(cdsDadosGrupoCod.AsString);
  //gbServico.Visible := dm.TEmpresa.FieldByName('simples').AsString = 'S';
  gbCSOSN.Visible   := dm.TEmpresa.FieldByName('simples').AsString = 'S';
end;

end.
