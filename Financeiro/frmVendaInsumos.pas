unit frmVendaInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmVendaInsumos = class(TFModelo)
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    dspDetalhe: TDataSetProvider;
    DBGrid1: TDBGrid;
    sqlDadosLANC: TIntegerField;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosVENDECOD: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosCOMPRADOR: TStringField;
    sqlDadosFORMA: TStringField;
    sqlDadosTOTAL: TBCDField;
    sqlDadosVALOR: TBCDField;
    sqlDadosVLRDESC: TBCDField;
    sqlDadosEXPORT: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosVENDECOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCOMPRADOR: TStringField;
    cdsDadosFORMA: TStringField;
    cdsDadosTOTAL: TBCDField;
    cdsDadosVALOR: TBCDField;
    cdsDadosVLRDESC: TBCDField;
    cdsDadosEXPORT: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheCODIGO: TIntegerField;
    cdsDetalheDESCRICAO: TStringField;
    cdsDetalheUNIDADE: TStringField;
    cdsDetalheQTDE: TBCDField;
    cdsDetalheUNIT: TBCDField;
    cdsDetalheVALOR: TBCDField;
    cdsDetalhePERDESC: TBCDField;
    cdsDetalheVLRDESC: TBCDField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheRUNIT: TBCDField;
    cdsDetalheEMPRECOD: TIntegerField;
    cdsDetalheACESOCOD: TIntegerField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Panel1: TPanel;
    GroupBox7: TGroupBox;
    pnlQtde: TPanel;
    GroupBox9: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit13: TDBEdit;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    frmPesquisaCli: TfrmPesquisa;
    GroupBox5: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    dbDadosDBTableView1REGISTRO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VENDECOD: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1COMPRADOR: TcxGridDBColumn;
    dbDadosDBTableView1FORMA: TcxGridDBColumn;
    dbDadosDBTableView1TOTAL: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1VLRDESC: TcxGridDBColumn;
    dbDadosDBTableView1EXPORT: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    DBEdit3: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheCODIGO: TIntegerField;
    sqlDetalheDESCRICAO: TStringField;
    sqlDetalheUNIDADE: TStringField;
    sqlDetalheQTDE: TBCDField;
    sqlDetalheUNIT: TBCDField;
    sqlDetalheVALOR: TBCDField;
    sqlDetalhePERDESC: TBCDField;
    sqlDetalheVLRDESC: TBCDField;
    sqlDetalheRUNIT: TBCDField;
    sqlDetalheEMPRECOD: TIntegerField;
    sqlDetalheACESOCOD: TIntegerField;
    sqlDetalheREGLOG: TStringField;
    sqlDetalheREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure fCalcPedi;
    procedure pAbreDetalhe;
  public
    { Public declarations }
  end;

var
  FfrmVendaInsumos: TFfrmVendaInsumos;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlPSPVenda;

procedure TFfrmVendaInsumos.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCli.pInicia('ttFornecedor', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmVendaInsumos.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmVendaInsumos.pAbreDetalhe;
begin

  if pcItem.ActivePageIndex = 0 then Exit;

  frmPesquisaCli.pRetornaDados(cdsDadosCodigo.AsString);

  cdsDetalhe.Close;
  sqlDetalhe.SQL.Text := 'select * from arvendco where lanc = 0'+cdsDadosLanc.AsString;
  cdsDetalhe.Open;

end;

procedure TFfrmVendaInsumos.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    pAbreDetalhe;
end;

procedure TFfrmVendaInsumos.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDetalheLanc.asInteger   = 0 then cdsDetalheLanc.asInteger := cdsDadosLanc.asInteger;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger :=frGenerator('ARVENDCO','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.AsInteger := frGeneratorFB('GEN_ARVENDCO_ID');
end;

procedure TFfrmVendaInsumos.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmVendaInsumos.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Edit;
  cdsDetalheEmpreCod.asInteger:=xEmp;
  cdsDetalheAcesoCod.asInteger:=xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsDetalheCodigo.Text,1,3)='999' then begin
            cdsDetalhe.Delete;
            fCalcPedi;
            if frSalv then sbIncluirClick(sbSalvar);
            exit;
         end;
         if fTra(1,['Select Descricao,Unidade,Venda1 From CadMerca Where GrupoCod > 1 and Codigo=0'+cdsDetalheCodigo.Text],1) then
         begin
            cdsDetalheDescricao.Text   :=dm.qrSqlTra.Fields[0].Text;
            cdsDetalheUnidade.Text     :=dm.qrSqlTra.Fields[1].Text;
            cdsDetalheUnit.AsFloat     :=dm.qrSqlTra.Fields[2].asFloat;
            DBGrid1.SelectedIndex:=3;
         end
         else begin
           FPQMercaInsumos;
           cdsDetalhe.Edit;
           cdsDetalheCodigo.asString := xpqResul;
           DBGrid1.SetFocus;
           DBGrid1.SelectedIndex:=0;
           Abort;
         end;
       end;
    4: if cdsDetalheUnit.AsFloat>0 then
          cdsDetalheValor.AsFloat := cdsDetalheQtde.AsFloat * cdsDetalheUnit.AsFloat;
    5: begin
         if cdsDetalhePerDesc.AsFloat>0 then
            cdsDetalheVlrDesc.AsFloat := cdsDetalhePerDesc.AsFloat * cdsDetalheUnit.AsFloat/100;
       end;
    6: begin
         if cdsDetalheVlrDesc.AsFloat>0 then begin
            if cdsDetalheUnit.AsFloat>0 then
               cdsDetalhePerDesc.AsFloat := cdsDetalheVlrDesc.AsFloat / cdsDetalheUnit.AsFloat*100;
         end;
         cdsDetalheRUnit.asFloat := cdsDetalheUnit.asFloat - cdsDetalheVlrDesc.asFloat;
         cdsDetalheValor.asFloat := cdsDetalheRUnit.asFloat * cdsDetalheQtde.asFloat;
       end;
    7: begin
         cdsDetalhe.Post; fCalcPedi; cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex:=0;
       end;
  end;
end;

procedure TFfrmVendaInsumos.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmVendaInsumos.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmVendaInsumos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>7 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmVendaInsumos.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmVendaInsumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmVendaInsumos);
end;

procedure TFfrmVendaInsumos.sbImprimirClick(Sender: TObject);
begin
  inherited;
  if qrPSPVenda<>Nil then qrPSPVenda.Destroy; Application.CreateForm(TqrPSPVenda, qrPSPVenda);
  with rlPSPVenda.qrPSPVenda do
  begin
    qrLabel16.Caption:='Venda/Saída de mercadoria';
    xRelTela := QRLabel16.Caption;
    qrPedi.Close;
    qrPediCom.Close;
    qrPedi.Sql.Strings[1]    := 'From ArVenda';
    qrPedi.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPediCom.Sql.Strings[1] := 'From ArVendCo EstoqCom';
    qrPediCom.Sql.Strings[2] := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPedi.Open;
    qrPediCom.Open;
    if qrPedi.RecordCount = 0 then
    begin
      Showmessage('Venda/Saída não Encontrado!');
      Exit;
    end;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    Preview;
  end;
end;

procedure TFfrmVendaInsumos.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime, 15) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaCli.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('GERAL','LANC',1);
           cdsDadosRegistro.AsInteger := frGenerator('ARVENDA','REGISTRO',10);
           cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_ARVENDA_ID');
           cdsDadosData.AsDateTime := date;
           pAbreDetalhe;
           dbEdit3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          dbEdit3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From ARVENDCO Where Lanc=0'+cdsDadosLanc.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            if vtag = 12 then
              cdsDadosRegistro.AsInteger := frGenerator('ARVENDA','REGISTRO',10);
            cdsDadosCodigo.AsInteger   := frmPesquisaCli.vpCodPrincipal;
            cdsDadosDescricao.AsString := frmPesquisaCli.vpDescricao;
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
     91,92: pAbreDetalhe;
  end;
  vTag := TComponent(Sender).Tag;
end;


procedure TFfrmVendaInsumos.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from arvenda where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmVendaInsumos.fCalcPedi;
var vval,vdes, vqtd:Real; vreg:Integer;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then exit;

  vreg := cdsDetalheLancit.AsInteger;
  vval := 0;
  vdes := 0;
  vqtd := 0;
  cdsDetalhe.First;
  while not cdsDetalhe.Eof do
  begin
    vqtd := vqtd + cdsDetalheQtde.asFloat;
    vval := vval + cdsDetalheValor.asFloat;
    vdes := vdes + (cdsDetalheVlrDesc.asFloat * cdsDetalheQtde.asFloat);
    cdsDetalhe.Next;
  end;
  cdsDetalhe.Locate('Lancit', vreg, []);
  cdsDadosValor.asFloat  := vval + vdes;
  cdsDadosVlrDesc.asFloat:= vdes;
  cdsDadosTotal.asFloat  := vval;
  pnlQtde.Caption := FormatFloat('#,0.###', vqtd) +'  ';
end;

end.

