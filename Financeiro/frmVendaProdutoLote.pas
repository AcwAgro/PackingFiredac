unit frmVendaProdutoLote;

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
  TFfrmVendaProdutoLote = class(TFModelo)
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
    cdsDetalheLOTEROMAN: TIntegerField;
    cdsDetalhePRODCOD: TIntegerField;
    cdsDetalhexProdDes: TStringField;
    sbNotaFiscal: TSpeedButton;
    dspFinan: TDataSetProvider;
    cdsFinan: TClientDataSet;
    cdsFinanLANCIT: TIntegerField;
    cdsFinanLANC: TIntegerField;
    cdsFinanPARC: TIntegerField;
    cdsFinanVENCTO: TSQLTimeStampField;
    cdsFinanVALOR: TBCDField;
    cdsFinanBANCOD: TIntegerField;
    cdsFinanACESOCOD: TIntegerField;
    dsFinan: TDataSource;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    MontaCarga1: TMenuItem;
    btnPalet: TSpeedButton;
    cdsDetalhePALETNUM: TIntegerField;
    sbProducao: TSpeedButton;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox9: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox7: TGroupBox;
    pnlQtde: TPanel;
    DBGrid2: TDBGrid;
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
    DBEdit3: TcxDBDateEdit;
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
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    cdsFinanREGLOG: TStringField;
    cdsFinanREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlFinan: TFDQuery;
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
    sqlFinanLANCIT: TIntegerField;
    sqlFinanLANC: TIntegerField;
    sqlFinanPARC: TIntegerField;
    sqlFinanBANCOD: TIntegerField;
    sqlFinanVENCTO: TSQLTimeStampField;
    sqlFinanVALOR: TBCDField;
    sqlFinanACESOCOD: TIntegerField;
    sqlFinanREGLOG: TStringField;
    sqlFinanREG_ID: TIntegerField;
    sqlDadosNOTA: TIntegerField;
    sqlDadosBAIXADO: TStringField;
    cdsDadosNOTA: TIntegerField;
    cdsDadosBAIXADO: TStringField;
    dbDadosDBTableView1Baixado: TcxGridDBColumn;
    DBRadioGroup4: TDBRadioGroup;
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
    procedure cdsDetalheNewRecord(DataSet: TDataSet);
    procedure cdsDetalheCalcFields(DataSet: TDataSet);
    procedure sbNotaFiscalClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure cdsFinanBeforePost(DataSet: TDataSet);
    procedure MenuItem2Click(Sender: TObject);
    procedure MontaCarga1Click(Sender: TObject);
    procedure btnPaletClick(Sender: TObject);
    procedure cdsDetalheUNITChange(Sender: TField);
    procedure sbProducaoClick(Sender: TObject);
  private
    { Private declarations }
    vpLote, vpProd: Integer;

    procedure fCalcPedi;
    procedure fSomaQtde;
    procedure fVerificaAtraso;
    procedure fFinanceiro;
    procedure pBaixaPalets;

  public
    { Public declarations }
    procedure pAbrirTela(vatLanc: String);

  end;

var
  FfrmVendaProdutoLote: TFfrmVendaProdutoLote;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlPSPVendaQtdeLote, frmNotaFiscal,
  rlPSPVendaLote, rlPSPVendaMonta, frmPaletConsulta, frmRoman;

procedure TFfrmVendaProdutoLote.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCli.pInicia('ttCliente', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista', TForm(Sender),7,147,GroupBox8,true);
  pcItem.ActivePageIndex := 0;

  sbProducao.Visible := (fBus(1,['Select valor From zGenerator Where Tabela = ''MONTA CARGA'' and Campo = ''PRODUCAO'''],1) = 1);

  sbPeriodo.onClick(sbPeriodo);
end;

procedure TFfrmVendaProdutoLote.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from esvenda where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmVendaProdutoLote.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmVendaProdutoLote.fVerificaAtraso;
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
      begin
        ShowMessage('Pac.Aberto: '+FormatFloat('#,0.00', vaberto)+#13+
                    'Nº de parcelas Vencidas '+dm.qrSql1.Fields[0].Text+#13+
                    'Valor: '+FormatFloat('#,0.00', dm.qrSql1.Fields[1].asFloat)+#13+
                    'Limite Crédito: '+FormatFloat('#,0.00', dm.qrSqlTra.Fields[2].asFloat));
      end;

      dbEdit4.SetFocus;

    end;
  end;
end;

procedure TFfrmVendaProdutoLote.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  fVerificaAtraso;
end;

procedure TFfrmVendaProdutoLote.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if cdsFinan.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsFinan.Delete;
end;

procedure TFfrmVendaProdutoLote.pAbrirTela(vatLanc: String);
begin
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from esvenda where lanc = 0'+vatLanc);
  cdsDados.Open;
  pcItem.ActivePageIndex := 1;
end;

procedure TFfrmVendaProdutoLote.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin

    cdsDetalhe.close;
    sqlDetalhe.SQL.Clear;
    sqlDetalhe.SQL.Add('select * from esvendco');
    sqlDetalhe.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlDetalhe.SQL.Add('order by lancit');
    cdsDetalhe.Open;

    cdsFinan.close;
    sqlFinan.SQL.Clear;
    sqlFinan.SQL.Add('select * from esvendfi');
    sqlFinan.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlFinan.SQL.Add('order by lancit');
    cdsFinan.Open;

    frmPesquisaCli.pRetornaDados(cdsDadosCodigo.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosTRCod.AsString);
    fSomaQtde;

  end;
end;

procedure TFfrmVendaProdutoLote.btnPaletClick(Sender: TObject);
begin
  inherited;

  if FfrmPaletConsulta=nil then Application.CreateForm(TFfrmPaletConsulta, FfrmPaletConsulta);
  FfrmPaletConsulta.ShowModal;

  fCalcPedi;

  if DBGrid1.CanFocus then
    DBGrid1.SetFocus;

  DBGrid1.SelectedIndex:=0;
  cdsDetalhe.First;

end;

procedure TFfrmVendaProdutoLote.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDetalheLanc.asInteger   = 0 then  cdsDetalheLanc.asInteger := cdsDadosLanc.asInteger;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger :=frGenerator('ESVENDCO','LANCIT',1);
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

procedure TFfrmVendaProdutoLote.cdsDetalheCalcFields(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if (cdsDetalhePRODCOD.asInteger > 0) then
    cdsDetalhexPRODDES.asString := fBus(1,['select descricao from cadforne',
                                           ' where codigo = 0'+cdsDetalhePRODCOD.asString],2);
end;

procedure TFfrmVendaProdutoLote.cdsDetalheNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (vpLote > 0) then
    cdsDetalheLOTEROMAN.asInteger := vpLote;
  if (vpProd > 0) then
    cdsDetalhePRODCOD.asInteger := vpProd;
end;

procedure TFfrmVendaProdutoLote.cdsDetalheUNITChange(Sender: TField);
begin
  inherited;

  if cdsDetalhe.State in [dsInsert, dsEdit] then
  begin
    if cdsDetalheUnit.AsFloat > 0 then
      cdsDetalheValor.AsFloat := cdsDetalheQtde.AsFloat * cdsDetalheUnit.AsFloat;
  end;

end;

procedure TFfrmVendaProdutoLote.cdsFinanBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFinanLanc.asInteger = 0   then cdsFinanLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsFinanLancit.asInteger = 0 then cdsFinanLancit.asInteger:= frGenerator('FIPAVE','LANCIT',1);
  if cdsFinanREG_ID.asInteger = 0 then cdsFinanREG_ID.asInteger := frGeneratorFB('GEN_FIPAVE_ID');
end;

procedure TFfrmVendaProdutoLote.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmVendaProdutoLote.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Edit;
  cdsDetalheEmpreCod.asInteger:=xEmp;
  cdsDetalheAcesoCod.asInteger:=xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if (Copy(cdsDetalheCodigo.Text,1,3)='999') then
         begin
            cdsDetalhe.Delete;
            fCalcPedi;
            fFinanceiro;
            dbGrid2.SetFocus;
            Exit;
         end;
         if fTra(1,['Select Descricao,Unidade,Venda1,PesoLiq From CadProdu Where Ativo = ''S'' and Codigo=0'+cdsDetalheCodigo.Text],1) then
         begin
            cdsDetalheDescricao.Text   :=dm.qrSqlTra.Fields[0].Text;
            cdsDetalheUnidade.Text     :=dm.qrSqlTra.Fields[1].Text;
            if cdsDetalheUnit.AsFloat = 0 then
              cdsDetalheUnit.AsFloat   :=dm.qrSqlTra.Fields[2].asFloat;
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
         DBGrid1.SelectedIndex:=8;
       end;
    8: begin
         if (vpLote <> cdsDetalheLOTEROMAN.asInteger) and (cdsDetalheLOTEROMAN.asInteger > 0) then
         begin
           if fTra(1,['select rp.prodcod from roman rm',
                      ' inner join romanpro rp on rp.lanc = rm.lanc',
                      ' where rm.lote = 0'+cdsDetalheLOTEROMAN.asString+
                      '   and rm.safra = '+QuotedStr(FormatDateTime('yyyy',cdsDadosData.AsDateTime))+
                      '   and rm.variecod = 0'+Copy(cdsDetalheCodigo.Text,1,2),
                      ' order by rm.safra desc'],4) then
           begin
             cdsDetalhePRODCOD.asInteger := dm.qrSqlTra.Fields[0].AsInteger;
           end
           else begin
             fPQRomanAno(FormatDateTime('yyyy',cdsDadosData.AsDateTime));
             cdsDetalhe.Edit;
             cdsDetalheLOTEROMAN.asString := xpqResul;
             DBGrid1.SetFocus;
             DBGrid1.SelectedIndex:=8;
             Abort;
           end;

           vpLote := cdsDetalheLOTEROMAN.asInteger;
           vpProd := cdsDetalhePRODCOD.asInteger;

         end;
       end;
    9: begin
         cdsDetalhexPRODDES.asString := fBus(1,['select descricao from cadforne',
                                                ' where codigo = 0'+cdsDetalhePRODCOD.asString],2);
         vpProd := cdsDetalhePRODCOD.asInteger;
       end;

   10: begin
         cdsDetalhe.Post;
         fCalcPedi;
         cdsDetalhe.Last;
         cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex:=0;
       end;
  end;
end;

procedure TFfrmVendaProdutoLote.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.IndexName := '';
  cdsDetalhe.Last;
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
  vpLote := 0;
  vpProd := 0;
  if cdsDetalhe.RecordCount > 0 then
  begin
    vpLote := cdsDetalheLOTEROMAN.asInteger;
    vpProd := cdsDetalhePRODCOD.asInteger;
  end;

end;

procedure TFfrmVendaProdutoLote.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.IndexName := 'Index1';
end;

procedure TFfrmVendaProdutoLote.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>10 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmVendaProdutoLote.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsFinan.Edit;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(cdsFinanParc.Text,1,3)='999' then begin
           cdsFinan.Delete;
           if frSalv then sbIncluirClick(sbSalvar);
         end;
       end;
    2: begin
         cdsFinan.Post;
         cdsFinan.Next;
         if cdsFinan.Eof then cdsFinan.Append;
         DBGrid2.SelectedIndex := 0;
       end;
  end;

end;

procedure TFfrmVendaProdutoLote.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  dbGrid2.ReadOnly := (not sbSalvar.Visible);
  cdsFinan.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFfrmVendaProdutoLote.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmVendaProdutoLote.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>2 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmVendaProdutoLote.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmVendaProdutoLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmVendaProdutoLote);
end;

procedure TFfrmVendaProdutoLote.sbImprimirClick(Sender: TObject);
begin
  inherited;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFfrmVendaProdutoLote.sbIncluirClick(Sender: TObject);
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
           cdsDadosLanc.AsInteger     := frGenerator('GERAL','LANC',1);
           cdsDadosRegistro.AsInteger := frGenerator('ESVENDA','REGISTRO',10);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ESVENDA_ID');
           cdsDadosData.AsDateTime := date;
           cdsDadosBaixado.asString := 'N';
           pcItem.OnChange(pcItem);

           dbEdit3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          dbEdit3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From ESVENDCO Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From ESVENDFI Where Lanc=0'+cdsDadosLanc.asString],1);
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
             cdsFinan.ApplyUpdates(-1);
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



procedure TFfrmVendaProdutoLote.fCalcPedi;
var vval,vdes, vqtd:Real; vreg:Integer;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then exit;

  vreg := cdsDetalheLancit.AsInteger;
  cdsDetalhe.DisableControls;
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
  cdsDetalhe.EnableControls;
  cdsDetalhe.Locate('Lancit', vreg, []);
  cdsDadosValor.asFloat  := vval + vdes;
  cdsDadosVlrDesc.asFloat:= vdes;
  cdsDadosTotal.asFloat  := vval;
  pnlQtde.Caption := FormatFloat('#,0.###', vqtd) +'  ';

end;

procedure TFfrmVendaProdutoLote.fFinanceiro;
var vfor: String; vi, vp, vt:Integer;
    vvlrnota, vvlrfin: Double;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;

  vfor := Trim(cdsDadosForma.asString);
  if vfor = '' then vfor := '000';

  cdsFinan.First;
  while not cdsFinan.Eof do cdsFinan.Delete;

  vvlrnota := cdsDadosTotal.asFloat;

  vi := -3;
  vp := 0;
  vt := 0;
  while not (vt > 0) do
  begin
    vi := vi + 4;
    inc(vp);
    if (Trim(Copy(vfor, vi, 3)) <> '') then
    begin
      cdsFinan.Append;
      cdsFinanLanc.Value   := cdsDadosLanc.Value;
      cdsFinanLancit.Value := frGenerator('FIPAVE','LANCIT',1);
      cdsFinanParc.Value   := vp;
      cdsFinanVencto.AsDateTime := cdsDadosData.AsDateTime +  StrToInt(Trim(Copy(vfor,vi,3)));
      cdsFinanValor.Value  := vvlrnota;
      cdsFinanBanCod.Value := 0;
      cdsFinanAcesoCod.asInteger := xAce;
      cdsFinan.Post;
    end;
    if vp > 10 then vt := 1
  end;
  cdsFinan.First;
  if cdsFinan.RecordCount > 1 then
  begin
    while not cdsFinan.Eof do
    begin
      cdsFinan.Edit;
      cdsFinanValor.asFloat := frDeci(vvlrnota / cdsFinan.RecordCount,2);
      vvlrfin := vvlrfin + cdsFinanValor.asFloat;
      cdsFinan.Post;
      cdsFinan.Next;
    end;
    cdsFinan.First;

    //Se tiver diferença de centavos joga na primeira parcela
    if frDeci(vvlrfin,2) <> frDeci(cdsDadosTotal.asFloat,2) then
    begin
      cdsFinan.Edit;
      cdsFinanValor.asFloat :=  cdsFinanValor.asFloat + (frDeci(vvlrnota,2) - frDeci(vvlrfin,2));
      cdsFinan.post;
    end;
  end;
end;

procedure TFfrmVendaProdutoLote.fSomaQtde;
var vqtd:Real; vreg: Integer;
begin
  vqtd := 0;
  vreg := cdsDetalheLancit.AsInteger;
  cdsDetalhe.DisableControls;
  cdsDetalhe.First;
  while not cdsDetalhe.Eof do
  begin
    vqtd := vqtd + cdsDetalheQtde.asFloat;
    cdsDetalhe.Next;
  end;
  cdsDetalhe.EnableControls;
  cdsDetalhe.Locate('Lancit', vreg, []);
  pnlQtde.Caption := FormatFloat('#,0.###', vqtd) +'  ';
end;

procedure TFfrmVendaProdutoLote.PSPComvalordevenda1Click(Sender: TObject);
var vtxtp: String;
begin
  inherited;
  if qrPSPVendaLote<>Nil then qrPSPVendaLote.Destroy; Application.CreateForm(TqrPSPVendaLote, qrPSPVendaLote);
  with rlPSPVendaLote.qrPSPVendaLote do
  begin
    qrLabel16.Caption:='Monta Carga - Venda de produto por lote';
    xRelTela  := QRLabel16.Caption;
    xRelemail := fBus(1,['Select email from cadclien where codigo = 0'+cdsDadosCodigo.AsString],1);
    qrPedi.Close;
    qrPediCom.Close;
    qrPediFin.Close;
    qrCadastro.Close;
    qrPedi.Sql.Strings[1]    := 'From EsVenda';
    qrPedi.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPediCom.Sql.Strings[1] := 'From EsVendCo EstoqCom';
    qrPediCom.Sql.Strings[3] := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrCadastro.Sql.Strings[2]:= 'Where Codigo = '+cdsDadosCodigo.AsString;
    qrPediFin.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPedi.Open;
    qrPediCom.Open;
    qrPediFin.Open;
    qrCadastro.Open;
    if qrPedi.RecordCount = 0 then
    begin
      Showmessage('Monta Carga não Encontrado!');
      Exit;
    end;
    //Financeiro
    vtxtp := '';
    qrPediFin.First;
    while not qrPediFin.Eof do
    begin
      vtxtp := vtxtp + ' P.'+qrPediFin.FieldByName('parc').asString+
                       ' - '+qrPediFin.FieldByName('vencto').asString+
                       ' ('+FormatFloat('#,0.00', qrPediFin.FieldByName('valor').asFloat)+
                       ')  '+slinebreak;
      qrPediFin.Next;
    end;
    qrlblFinan.Caption := vtxtp;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    Preview;
    xRelemail :='';
  end;
end;

procedure TFfrmVendaProdutoLote.PSPSquqntidade1Click(Sender: TObject);
begin
  inherited;
  if qrPSPVendaQtdeLote<>Nil then qrPSPVendaQtdeLote.Destroy; Application.CreateForm(TqrPSPVendaQtdeLote, qrPSPVendaQtdeLote);
  with rlPSPVendaQtdeLote.qrPSPVendaQtdeLote do
  begin
    qrLabel16.Caption:='Monta Carga - Venda de produto por lote';
    xRelTela  := QRLabel16.Caption;
    xRelemail := fBus(1,['Select email from cadclien where codigo = 0'+cdsDadosCodigo.AsString],1);
    qrPedi.Close;
    qrPediCom.Close;
    qrPedi.Sql.Strings[1]    := 'From EsVenda';
    qrPedi.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPediCom.Sql.Strings[1] := 'From EsVendCo EstoqCom';
    qrPediCom.Sql.Strings[3] := 'Where Lanc = '+cdsDadosLanc.AsString;
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

procedure TFfrmVendaProdutoLote.sbNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if not frPerg('Deseja Importa dados para NFe?') then
    exit;

  //Abre tela nota fiscal
  if TForm(FfrmNotaFiscal) <> nil then FfrmNotaFiscal.Close;

  frForm(TFfrmNotaFiscal, FfrmNotaFiscal);
  FfrmNotaFiscal.cdsDados.First;
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

  FfrmNotaFiscal.vveioPSP := False;

end;

procedure TFfrmVendaProdutoLote.MontaCarga1Click(Sender: TObject);
var vtxtp: String;
begin
  inherited;
  if qrPSPVendaMonta<>Nil then qrPSPVendaMonta.Destroy; Application.CreateForm(TqrPSPVendaMonta, qrPSPVendaMonta);
  with rlPSPVendaMonta.qrPSPVendaMonta do
  begin
    xRelTela  := 'Monta Carga';
    xRelemail := fBus(1,['Select email from cadclien where codigo = 0'+cdsDadosCodigo.AsString],1);
    qrPedi.Close;
    qrPediCom.Close;
    qrPediFin.Close;
    qrCadastro.Close;
    qrPedi.Sql.Strings[1]    := 'From EsVenda';
    qrPedi.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPediCom.Sql.Strings[1] := 'From EsVendCo EstoqCom';
    qrPediCom.Sql.Strings[2] := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrCadastro.Sql.Strings[2]:= 'Where Codigo = '+cdsDadosCodigo.AsString;
    qrPediFin.Sql.Strings[2]    := 'Where Lanc = '+cdsDadosLanc.AsString;
    qrPedi.Open;
    qrPediCom.Open;
    qrPediFin.Open;
    qrCadastro.Open;
    if qrPedi.RecordCount = 0 then
    begin
      Showmessage('Monta Carga não Encontrado!');
      Exit;
    end;
    //Financeiro
    vtxtp := '';
    qrPediFin.First;
    while not qrPediFin.Eof do
    begin
      vtxtp := vtxtp + ' '+qrPediFin.FieldByName('vencto').asString+'  ';
//                       ' ('+FormatFloat('#,0.00', qrPediFin.FieldByName('valor').asFloat)+
//                       ')  ';
      qrPediFin.Next;
    end;
    qrlblFinan.Caption := vtxtp;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    if FileExists(xdirsi+'logo.bmp') then
      QRImage1.Picture.LoadFromFile(xdirsi+'logo.bmp');
    Preview;
    xRelemail :='';
  end;
end;

procedure TFfrmVendaProdutoLote.pBaixaPalets;
begin

  cdsDetalhe.DisableControls;
  cdsDetalhe.First;
  while not cdsDetalhe.Eof do
  begin

    if (cdsDetalhePALETNUM.AsInteger > 0) then
    begin

      fSql(1,3,['Update PaletCab '+
                ' Set Baixa = ''S'''+
                ' Where Palet = 0'+cdsDetalhePALETNUM.asString],1);

    end;

    cdsDetalhe.Next;

  end;
  cdsDetalhe.EnableControls;
  cdsDetalhe.First;

end;

procedure TFfrmVendaProdutoLote.sbProducaoClick(Sender: TObject);
var vTotalQtde: Double;
    vid: Integer;
begin
  inherited;

  if cdsDados.IsEmpty then exit;

  if not frPerg(PChar('Exportar dados classifição?')) then
    exit;

  try
    try
      if FfrmRoman=nil then
        Application.CreateForm(TFfrmRoman, FfrmRoman);

      FfrmRoman.Show;
      vid := 0;
      //Inserir por variedade
      if fTra(1,['select esv.prodcod, prd.variecod, count(prd.variecod) as vcc',
                 '  from esvendco esv',
                 ' inner join cadprodu prd  on prd.codigo = esv.codigo',
                 ' where esv.lanc = 0'+cdsDadosLANC.asString,
                 ' group by esv.prodcod, prd.variecod'],5) then
      dm.qrSqlTra.First;
      while not dm.qrSqlTra.Eof do
      begin

        FfrmRoman.sbIncluir.OnClick(FfrmRoman.sbIncluir);
        //FfrmRoman.cdsDadosLanc.AsInteger  := frGenerator('ROMAN','LANC',1); Obtem da inclusão
        FfrmRoman.cdsDadosData.AsDateTime      := cdsDadosData.AsDateTime;
        FfrmRoman.cdsDadosDataFin.AsDateTime   := cdsDadosData.AsDateTime;
        FfrmRoman.cdsDadosHorIni.asString := FormatDateTime('HH:MM', Time);
        FfrmRoman.cdsDadosHorFim.asString := FormatDateTime('HH:MM', Time);
        FfrmRoman.cdsDadosSafra.AsString  := xAno;
        FfrmRoman.cdsDadosEmpreCod.asInteger := xEmp;
        FfrmRoman.cdsDadosAcesoCod.asInteger := xAcesso;
        FfrmRoman.cdsDadosFecha.AsString     := 'S';
        FfrmRoman.cdsDadosLocalCod.AsInteger := 1;
        FfrmRoman.cdsDadosVarieCod.AsInteger := dm.qrSqlTra.Fields[1].AsInteger;
        FfrmRoman.frmPesquisaVarie.pRetornaDados(FfrmRoman.cdsDadosVarieCod.AsString);
        FfrmRoman.frmPesquisaLocal.pRetornaDados(FfrmRoman.cdsDadosLocalCod.AsString);
        FfrmRoman.cdsDadosObs.AsString     := 'Monta carga nº: '+cdsDadosRegistro.AsString;

        //Informar produtos
        vTotalQtde := 0;
        if vid = 0 then
          vid := FfrmRoman.cdsDadosLanc.AsInteger;

        fSql(1,4,['select esv.codigo, esv.descricao, esv.unidade, esv.qtde, prd.variecod, prd.pesoliq, prd.calibre',
                  '  from esvendco esv',
                  ' inner join cadprodu prd  on prd.codigo = esv.codigo',
                  ' where esv.lanc     = 0'+cdsDadosLANC.asString,
                  '   and prd.variecod = 0'+dm.qrSqlTra.Fields[1].asString,
                  '   and esv.prodcod  = 0'+dm.qrSqlTra.Fields[0].asString,
                  ' order by esv.codigo, esv.lancit'],7);
        dm.qrSql4.First;
        while not dm.qrSql4.Eof do
        begin
          FfrmRoman.cdsRomanMer.Append;
          FfrmRoman.cdsRomanMer.FieldByName('Lanc').asInteger   := FfrmRoman.cdsDados.FieldByName('Lanc').asInteger;
          FfrmRoman.cdsRomanMer.FieldByName('Lancit').asInteger := frGenerator('ROMANMER','LANCIT',1);
          FfrmRoman.cdsRomanMer.FieldByName('ProdCod').asInteger:= dm.qrSql4.FieldByName('Codigo').AsInteger;
          FfrmRoman.cdsRomanMer.FieldByName('ProdDes').asString := dm.qrSql4.FieldByName('Descricao').AsString;
          FfrmRoman.cdsRomanMer.FieldByName('Unidade').asString := dm.qrSql4.FieldByName('Descricao').AsString;
          FfrmRoman.cdsRomanMer.FieldByName('Calibre').asString := dm.qrSql4.FieldByName('Calibre').AsString;
          FfrmRoman.cdsRomanMer.FieldByName('Qtde').asFloat     := dm.qrSql4.FieldByName('Qtde').AsFloat;
          FfrmRoman.cdsRomanMer.FieldByName('PesoLiq').asFloat  := dm.qrSql4.FieldByName('PesoLiq').AsFloat;
          FfrmRoman.cdsRomanMer.FieldByName('PesoReal').asFloat := dm.qrSql4.FieldByName('Qtde').AsFloat * dm.qrSql4.FieldByName('Pesoliq').AsFloat;

          vTotalQtde := vTotalQtde + (FfrmRoman.cdsRomanMer.FieldByName('PesoReal').AsFloat);
          FfrmRoman.cdsRomanMer.Post;
          dm.qrSql4.Next;
        end;

        //Informar Produtor - caso exista
        if (dm.qrSqlTra.Fields[1].AsInteger > 0) then
        begin
          FfrmRoman.cdsRomanPro.Append;
          FfrmRoman.cdsRomanPro.FieldByName('Lanc').asInteger   := FfrmRoman.cdsDados.FieldByName('Lanc').asInteger;
          FfrmRoman.cdsRomanPro.FieldByName('Lancit').asInteger := frGenerator('ROMANPRO','LANCIT',1);
          FfrmRoman.cdsRomanPro.FieldByName('ProdCod').Value    := dm.qrSqlTra.Fields[0].Value;
          FfrmRoman.cdsRomanPro.FieldByName('ProdDes').Text     := fBus(1,['Select Descricao From CadForne Where Codigo=0'+dm.qrSqlTra.Fields[0].Text],1);
          FfrmRoman.cdsRomanPro.FieldByName('PesoBru').asFloat  := StrToFloatDef(FfrmRoman.frmPesquisaVarie.vpCampo_1,0);
          FfrmRoman.cdsRomanPro.FieldByName('PesoLiq').asFloat  := vTotalQtde;
          if FfrmRoman.cdsRomanPro.FieldByName('PesoBru').asFloat <> 0 then
            FfrmRoman.cdsRomanPro.FieldByName('QtdeBin').asFloat  := vTotalQtde / FfrmRoman.cdsRomanPro.FieldByName('PesoBru').asFloat;
          FfrmRoman.cdsRomanPro.Post;
        end;

        FfrmRoman.cdsDadosQTDEBIN.asFloat := FfrmRoman.cdsRomanPro.FieldByName('QtdeBin').asFloat;
        FfrmRoman.sbSalvar.OnClick(FfrmRoman.sbSalvar);
        //Próximo
        dm.qrSqlTra.Next;
      end;

    except
      //

    end;


  finally

    FfrmRoman.cdsDados.Locate('LANC', vid, []);
    FfrmRoman.pcItem.ActivePageIndex := 1;

  end;

end;

end.

