unit frmVendaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ACBrBase, ACBrEnterTab, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmVendaProduto = class(TFModelo)
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
    sqlDadosTRCOD: TIntegerField;
    sqlDadosTRDES: TStringField;
    sqlDadosTRPLACA: TStringField;
    sqlDadosTRCIDADE: TStringField;
    sqlDadosTRESTADO: TStringField;
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
    cdsDadosTRCOD: TIntegerField;
    cdsDadosTRDES: TStringField;
    cdsDadosTRPLACA: TStringField;
    cdsDadosTRCIDADE: TStringField;
    cdsDadosTRESTADO: TStringField;
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
    cdsDetalhePESOLIQ: TBCDField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    PSPSquqntidade1: TMenuItem;
    PSPComvalordevenda1: TMenuItem;
    sbNotaFiscal: TSpeedButton;
    sbProducao: TSpeedButton;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox4: TGroupBox;
    frmPesquisaCli: TfrmPesquisa;
    GroupBox5: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox8: TGroupBox;
    frmPesquisaMot: TfrmPesquisa;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    GroupBox9: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox7: TGroupBox;
    pnlQtde: TPanel;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    dbDadosDBTableView1REGISTRO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VENDECOD: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1TOTAL: TcxGridDBColumn;
    dbDadosDBTableView1TRDES: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1FORMA: TcxGridDBColumn;
    dbDadosDBTableView1COMPRADOR: TcxGridDBColumn;
    dbDadosDBTableView1VLRDESC: TcxGridDBColumn;
    dbDadosDBTableView1EXPORT: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1TRCOD: TcxGridDBColumn;
    dbDadosDBTableView1TRPLACA: TcxGridDBColumn;
    dbDadosDBTableView1TRCIDADE: TcxGridDBColumn;
    dbDadosDBTableView1TRESTADO: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1Nota: TcxGridDBColumn;
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
    sqlDetalhePESOLIQ: TBCDField;
    sqlDetalheLOTEROMAN: TIntegerField;
    sqlDetalhePRODCOD: TIntegerField;
    sqlDetalhePALETNUM: TIntegerField;
    sqlDetalheREGLOG: TStringField;
    sqlDetalheREG_ID: TIntegerField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosNOTA: TIntegerField;
    sqlDadosBAIXADO: TStringField;
    cdsDadosNOTA: TIntegerField;
    cdsDadosBAIXADO: TStringField;
    dbDadosDBTableView1Baixado: TcxGridDBColumn;
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
    procedure GroupBox4Exit(Sender: TObject);
    procedure PSPSquqntidade1Click(Sender: TObject);
    procedure PSPComvalordevenda1Click(Sender: TObject);
    procedure sbNotaFiscalClick(Sender: TObject);
    procedure sbProducaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure fCalcPedi;
    procedure fSomaQtde;
    procedure fVerificaAtraso;
    procedure fMostraDetalhe;
  public
    { Public declarations }
    procedure pAbrirTela(vatLanc: String);

  end;

var
  FfrmVendaProduto: TFfrmVendaProduto;

implementation

{$R *.dfm}
uses RecError, Data, Rotina, Menu, zModeloRel, Pesq, rlPSPVenda, rlPSPVendaQtde, frmNotaFiscal;

procedure TFfrmVendaProduto.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCli.pInicia('ttCliente', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista', TForm(Sender),7,147,GroupBox8,true);
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmVendaProduto.sbPeriodoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from esvenda where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;

end;

procedure TFfrmVendaProduto.fMostraDetalhe;
begin
  if pcItem.ActivePageIndex = 0 then Exit;

  cdsDetalhe.close;
  sqlDetalhe.SQL.Clear;
  sqlDetalhe.SQL.Add('select * from esvendco');
  sqlDetalhe.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
  sqlDetalhe.SQL.Add('order by lanc');
  cdsDetalhe.Open;


  frmPesquisaCli.pRetornaDados(cdsDadosCodigo.AsString);
  frmPesquisaMot.pRetornaDados(cdsDadosTRCod.AsString);
  fSomaQtde;


end;

procedure TFfrmVendaProduto.sbProducaoClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFfrmVendaProduto.FormShow(Sender: TObject);
begin

  sbPeriodo.onClick(sbPeriodo);

  inherited;

  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmVendaProduto.fVerificaAtraso;
var vesens,veseng:String; vaberto:Real;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaCli.dbgLista.Visible then exit;

  cdsDadosCodigo.AsInteger   := frmPesquisaCli.vpCodPrincipal;
  cdsDadosDescricao.AsString := frmPesquisaCli.vpDescricao;
  if fTra(1,['Select Forma,Mensagem,Limite From CadClien Where Codigo=0'+cdsDadosCodigo.Text],1) then
  begin
    cdsDadosForma.Text := dm.qrSqlTra.Fields[0].Text;

    if (vTag=12) then
    begin
      //mensagem
      dbEdit1.SetFocus;

      //mensagem
      if (Trim(dm.qrSqlTra.Fields[1].Text)<>'') then
        ShowMessage('Mensagem: '+Trim(dm.qrSqlTra.Fields[1].Text));

      ///procura parcelas em atraso
      fSql(1,1,['Select Sum(Valor) From FiBaiRec',
                 'Where Valor>0 and Pago='+QuotedStr('N')+
                 ' and Codigo='+cdsDadosCodigo.Text],2);
       vaberto := dm.qrSql1.Fields[0].asFloat;

       fSql(1,1,['Select Count(Vencto), Sum(Valor) From FiBaiRec',
                 'Where Valor>0 and Pago='+QuotedStr('N')+
                 ' and Codigo='+cdsDadosCodigo.Text+
                 ' and Vencto<'+frInvD(cdsDadosData.AsDateTime)],2);

      if (dm.qrSql1.Fields[0].asFloat > 0) or (dm.qrSqlTra.Fields[2].asFloat > 0) then
        ShowMessage('Pac.Aberto: '+FormatFloat('#,0.00', vaberto)+#13+
                    'Nº de parcelas Vencidas '+dm.qrSql1.Fields[0].Text+#13+
                    'Valor: '+FormatFloat('#,0.00', dm.qrSql1.Fields[1].asFloat)+#13+
                    'Limite Crédito: '+FormatFloat('#,0.00', dm.qrSqlTra.Fields[2].asFloat));
     end;

     dbEdit4.SetFocus;

  end;
end;

procedure TFfrmVendaProduto.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  fVerificaAtraso;
end;

procedure TFfrmVendaProduto.pAbrirTela(vatLanc: String);
begin
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from esvenda where lanc = 0'+vatLanc);
  cdsDados.Open;
  pcItem.ActivePageIndex := 1;
end;

procedure TFfrmVendaProduto.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    fMostraDetalhe;
end;

procedure TFfrmVendaProduto.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDetalheLanc.asInteger   = 0 then cdsDetalheLanc.asInteger   := cdsDadosLanc.asInteger;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger := frGenerator('ESVENDCO','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.asInteger := frGeneratorFB('GEN_ESVENDCO_ID');

  //Quando altera só a quantidade não está recalculando
  if cdsDetalheUnit.AsFloat>0 then
    cdsDetalheValor.AsFloat := cdsDetalheQtde.AsFloat * cdsDetalheUnit.AsFloat;

  if cdsDetalhePerDesc.AsFloat>0 then
    cdsDetalheVlrDesc.AsFloat := cdsDetalhePerDesc.AsFloat * cdsDetalheUnit.AsFloat/100;

  if (cdsDetalheVlrDesc.AsFloat>0) and (cdsDetalheUnit.AsFloat>0) then
    cdsDetalhePerDesc.AsFloat := cdsDetalheVlrDesc.AsFloat / cdsDetalheUnit.AsFloat*100;

  cdsDetalheRUnit.asFloat := cdsDetalheUnit.asFloat - cdsDetalheVlrDesc.asFloat;
  cdsDetalheValor.asFloat := cdsDetalheRUnit.asFloat * cdsDetalheQtde.asFloat;

end;

procedure TFfrmVendaProduto.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmVendaProduto.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Edit;
  cdsDetalheEmpreCod.asInteger:=xEmp;
  cdsDetalheAcesoCod.asInteger:=xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if (Copy(cdsDetalheCodigo.Text,1,3)='999') then
         begin
            cdsDetalhe.Delete; fCalcPedi;
            if frSalv then sbIncluirClick(sbSalvar);
            Exit;
         end;
         if fTra(1,['Select Descricao,Unidade,Venda1,PesoLiq From CadProdu Where Ativo = ''S'' and Codigo=0'+cdsDetalheCodigo.Text],1) then
         begin
            cdsDetalheDescricao.Text   :=dm.qrSqlTra.Fields[0].Text;
            cdsDetalheUnidade.Text     :=dm.qrSqlTra.Fields[1].Text;
            if cdsDetalheUnit.AsFloat = 0 then            
              cdsDetalheUnit.AsFloat     :=dm.qrSqlTra.Fields[2].asFloat;
            cdsDetalhePesoLiq.AsFloat  :=dm.qrSqlTra.Fields[3].asFloat;
            DBGrid1.SelectedIndex:=3;
         end
         else begin
           fPQProduto;
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
         cdsDetalhe.Post;
         fCalcPedi;
         cdsDetalhe.Last;
         cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex:=0;
       end;
  end;
end;

procedure TFfrmVendaProduto.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.IndexName := '';
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmVendaProduto.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.IndexName := 'cdsDetalheIndex2';
end;

procedure TFfrmVendaProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
    if DBGrid1.SelectedIndex<>7 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
    else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmVendaProduto.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmVendaProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmVendaProduto);
end;

procedure TFfrmVendaProduto.sbImprimirClick(Sender: TObject);
begin
  inherited;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFfrmVendaProduto.sbIncluirClick(Sender: TObject);
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
           frmPesquisaMot.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('GERAL','LANC',1);
           cdsDadosRegistro.AsInteger := frGenerator('ESVENDA','REGISTRO',10);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ESVENDA_ID');
           cdsDadosData.AsDateTime := date;
           cdsDadosBaixado.asString := 'N';
           fMostraDetalhe;
           dbEdit3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          dbEdit3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From ESVENDCO Where Lanc=0'+cdsDadosLanc.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             if vtag = 12 then
               cdsDadosRegistro.AsInteger := frGenerator('ESVENDA','REGISTRO',10);

             fCalcPedi;

             cdsDadosCodigo.AsInteger   := frmPesquisaCli.vpCodPrincipal;
             cdsDadosDescricao.AsString := frmPesquisaCli.vpDescricao;
             cdsDadosTRCod.AsInteger    := frmPesquisaMot.vpCodPrincipal;
             cdsDadosTRDes.AsString     := frmPesquisaMot.vpDescricao;
             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             cdsDados.Edit;
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
  91,92: fMostraDetalhe;
  end;
  vTag := TComponent(Sender).Tag;
end;



procedure TFfrmVendaProduto.fCalcPedi;
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

procedure TFfrmVendaProduto.fSomaQtde;
var vqtd:Real; vreg: Integer;
begin
  vqtd := 0;
  vreg := cdsDetalheLancit.AsInteger;
  cdsDetalhe.First;
  while not cdsDetalhe.Eof do
  begin
    vqtd := vqtd + cdsDetalheQtde.asFloat;
    cdsDetalhe.Next;
  end;
  cdsDetalhe.Locate('Lancit', vreg, []);
  pnlQtde.Caption := FormatFloat('#,0.###', vqtd) +'  ';
end;

procedure TFfrmVendaProduto.PSPComvalordevenda1Click(Sender: TObject);
begin
  inherited;
  if qrPSPVenda<>Nil then qrPSPVenda.Destroy; Application.CreateForm(TqrPSPVenda, qrPSPVenda);
  with rlPSPVenda.qrPSPVenda do
  begin
    qrLabel16.Caption:='Monta Carga - Venda de produto';
    xRelTela  := QRLabel16.Caption;
    xRelemail := fBus(1,['Select email from cadclien where codigo = 0'+cdsDadosCodigo.AsString],1);
    qrPedi.Close;
    qrPediCom.Close;
    qrPedi.Sql.Strings[1]    := 'From EsVenda';
    qrPedi.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPediCom.Sql.Strings[1] := 'From EsVendCo EstoqCom';
    qrPediCom.Sql.Strings[2] := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPedi.Open;
    qrPediCom.Open;
    if qrPedi.RecordCount = 0 then
    begin
      Showmessage('Monta Carga não Encontrado!');
      Exit;
    end;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    Preview;
    xRelemail :='';
  end;
end;

procedure TFfrmVendaProduto.PSPSquqntidade1Click(Sender: TObject);
begin
  inherited;
  if qrPSPVendaQtde<>Nil then qrPSPVendaQtde.Destroy; Application.CreateForm(TqrPSPVendaQtde, qrPSPVendaQtde);
  with rlPSPVendaQtde.qrPSPVendaQtde do
  begin
    qrLabel16.Caption:='Monta Carga - Venda de produto';
    xRelTela  := QRLabel16.Caption;
    xRelemail := fBus(1,['Select email from cadclien where codigo = 0'+cdsDadosCodigo.AsString],1);
    qrPedi.Close;
    qrPediCom.Close;
    qrPedi.Sql.Strings[1]    := 'From EsVenda';
    qrPedi.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPediCom.Sql.Strings[1] := 'From EsVendCo EstoqCom';
    qrPediCom.Sql.Strings[2] := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPedi.Open;
    qrPediCom.Open;
    if qrPedi.RecordCount = 0 then
    begin
      Showmessage('Monta Carga não Encontrado!');
      Exit;
    end;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    Preview;
    xRelemail :='';
  end;
end;

procedure TFfrmVendaProduto.sbNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if not frPerg('Deseja Importa dados para NFe?') then
    exit;

  //Abre tela nota fiscal
  if TForm(FfrmNotaFiscal) <> nil then FfrmNotaFiscal.Close;

  frForm(TFfrmNotaFiscal, FfrmNotaFiscal);
  FfrmNotaFiscal.cdsDados.Last;
  FfrmNotaFiscal.vveioPSP := True;

  //Clica no novo
  FfrmNotaFiscal.sbIncluir.OnClick(FfrmNotaFiscal.sbIncluir);

  //Venda normal
  FfrmNotaFiscal.cdsDadosDifCod.Value := 1;

  //Passa numero do romaneio
  FfrmNotaFiscal.cdsDadosPSP.asInteger := cdsDadosREGISTRO.asInteger;

  //Atualiza os dados
  FfrmNotaFiscal.DBLCBox.OnExit(FfrmNotaFiscal.DBLCBox);
  FfrmNotaFiscal.DBEPSP.OnExit(FfrmNotaFiscal.DBEPSP);
  FfrmNotaFiscal.DBLCBox.SetFocus;

  FfrmNotaFiscal.vveioPSP := False;

end;

end.

