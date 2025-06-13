unit frmPrevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmPrevisao = class(TFModelo)
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    dspDetalhe: TDataSetProvider;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    sqlDadosLANC: TIntegerField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosTOTAL: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosTOTAL: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheQTDE: TBCDField;
    cdsDetalheVARIECOD: TIntegerField;
    cdsDetalheVARIEDES: TStringField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheSAFRA: TStringField;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    sqlDadosLOTE_CFO: TStringField;
    cdsDadosLOTE_CFO: TStringField;
    cdsDetalheLOTE_PRO: TStringField;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    frmPesquisa: TfrmPesquisa;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1TOTAL: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1LOTE_CFO: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheQTDE: TBCDField;
    sqlDetalheVARIECOD: TIntegerField;
    sqlDetalheVARIEDES: TStringField;
    sqlDetalheSAFRA: TStringField;
    sqlDetalheLOTE_PRO: TStringField;
    sqlDetalheREGLOG: TStringField;
    sqlDetalheREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure fSoma;
    procedure pAbreDetalhe;
  public
    { Public declarations }
  end;

var
  FfrmPrevisao: TFfrmPrevisao;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmPrevisao.FormCreate(Sender: TObject);
begin
  inherited;
  dtInicial.DateTime := Now;
  frmPesquisa.pInicia('ttProdutor', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmPrevisao.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmPrevisao.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDetalheLanc.asInteger = 0 then cdsDetalheLanc.asInteger := cdsDados.FieldByName('Lanc').asInteger;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger := frGenerator('PREVISCO','LANCIT',1);
  if cdsDetalheReg_ID.asInteger = 0 then cdsDetalheReg_ID.asInteger := frGeneratorFB('GEN_PREVISCO_ID');
end;

procedure TFfrmPrevisao.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit11.SetFocus;
end;

procedure TFfrmPrevisao.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsDetalhe.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(frSoNumero(cdsDetalhe.FieldByName('Qtde').Text),1,3)='999' then
         begin
           cdsDetalhe.Delete; DBEdit2.SetFocus; fSoma; Abort;
         end;
         if cdsDetalhe.FieldByName('Qtde').asInteger=0 then begin ShowMessage('Opção Inválida!'); Abort; end;
       end;
    1: begin
         if fTra(1,['Select Descricao From CadVarie Where Codigo=0'+cdsDetalhe.FieldByName('VarieCod').Text],1) then
         begin
            cdsDetalhe.FieldByName('VarieDes').Text:=dm.qrSqlTra.Fields[0].Text;
         end else begin
            FPQVariedade;
            cdsDetalhe.Edit;
            cdsDetalhe.FieldByName('VarieCod').asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex := 0;
         end;
       end;
    3: begin
         cdsDetalhe.Post; cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmPrevisao.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmPrevisao.DBGrid1Exit(Sender: TObject);
begin
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if cdsDetalhe.State in [dsInsert, dsEdit] then exit;
  if (sbSalvar.Visible) then fSoma;
  inherited;
end;

procedure TFfrmPrevisao.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex <> 3 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmPrevisao.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmPrevisao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmPrevisao);
end;

procedure TFfrmPrevisao.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisa.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('PREVIS','LANC',1);
           cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADFORNE_ID');
           cdsDadosSafra.AsString := xAno;
           frmPesquisa.edtPesquisa.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          frmPesquisa.edtPesquisa.SetFocus;
        end;
     14: begin

           fSql(1,2,['Delete From PREVISCO Where Integra=0'+cdsDadosLanc.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
            cdsDadosProdCod.AsInteger := frmPesquisa.vpCodPrincipal;
            cdsDadosProdDes.AsString := frmPesquisa.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            cdsDetalhe.ApplyUpdates(-1);
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
    91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmPrevisao.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from previs where Safra = '+QuotedStr(Copy(DateToStr(dtInicial.Date),7,4)));
  cdsDados.Open;
end;

procedure TFfrmPrevisao.fSoma;
var vqtd: Double;
begin
  vqtd := 0;
  cdsDetalhe.First;
  while not cdsDetalhe.Eof do
  begin
    vqtd := vqtd + cdsDetalheQtde.AsFloat;
    cdsDetalhe.Next;
  end;
  cdsDetalhe.First;
  cdsDadosTotal.asFloat := vqtd;
end;

procedure TFfrmPrevisao.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Append;
  dbGrid1.SetFocus;
end;

procedure TFfrmPrevisao.pAbreDetalhe;
begin

  cdsDetalhe.Close;
  sqlDetalhe.Sql.Text := 'select * from previsco where Lanc = 0'+cdsDadosLanc.AsString;
  cdsDetalhe.Open;
  frmPesquisa.pRetornaDados(cdsDadosProdCod.AsString);

end;

procedure TFfrmPrevisao.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    pAbreDetalhe;
end;

end.

