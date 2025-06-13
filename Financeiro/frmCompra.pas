unit frmCompra;

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
  TFfrmCompra = class(TFModelo)
    dsFinan: TDataSource;
    cdsFinan: TClientDataSet;
    dspFinan: TDataSetProvider;
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    dspDetalhe: TDataSetProvider;
    GroupBox1: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox8: TGroupBox;
    sqlDadosLANC: TIntegerField;
    sqlDadosNOTA: TIntegerField;
    sqlDadosSERIE: TStringField;
    sqlDadosVENDECOD: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosENTREGA: TSQLTimeStampField;
    sqlDadosCANCELADA: TStringField;
    sqlDadosNATURCOD: TBCDField;
    sqlDadosDADOSCOD: TIntegerField;
    sqlDadosTRTIPO: TStringField;
    sqlDadosTRCOD: TIntegerField;
    sqlDadosTRDES: TStringField;
    sqlDadosFORMA: TStringField;
    sqlDadosPARCELA: TIntegerField;
    sqlDadosVLRENTRADA: TBCDField;
    sqlDadosDESCP: TBCDField;
    sqlDadosVLRDESC: TBCDField;
    sqlDadosVLRBASE: TBCDField;
    sqlDadosVLRICMS: TBCDField;
    sqlDadosVLRFRETE: TBCDField;
    sqlDadosVLRPRODUTO: TBCDField;
    sqlDadosVLRIPI: TBCDField;
    sqlDadosVLRNOTA: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosRECEITU: TIntegerField;
    sqlDadosQTDESP: TStringField;
    sqlDadosNIMPRE: TStringField;
    sqlDadosDIF: TStringField;
    sqlDadosVLRSEGURO: TBCDField;
    sqlDadosVLRICMSFRE: TBCDField;
    sqlDadosESTADO: TStringField;
    sqlDadosTIPONF: TStringField;
    sqlDadosOBS1: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosNOTA: TIntegerField;
    cdsDadosSERIE: TStringField;
    cdsDadosVENDECOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosENTREGA: TSQLTimeStampField;
    cdsDadosCANCELADA: TStringField;
    cdsDadosNATURCOD: TBCDField;
    cdsDadosDADOSCOD: TIntegerField;
    cdsDadosTRTIPO: TStringField;
    cdsDadosTRCOD: TIntegerField;
    cdsDadosTRDES: TStringField;
    cdsDadosFORMA: TStringField;
    cdsDadosPARCELA: TIntegerField;
    cdsDadosVLRENTRADA: TBCDField;
    cdsDadosDESCP: TBCDField;
    cdsDadosVLRDESC: TBCDField;
    cdsDadosVLRBASE: TBCDField;
    cdsDadosVLRICMS: TBCDField;
    cdsDadosVLRFRETE: TBCDField;
    cdsDadosVLRPRODUTO: TBCDField;
    cdsDadosVLRIPI: TBCDField;
    cdsDadosVLRNOTA: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosRECEITU: TIntegerField;
    cdsDadosQTDESP: TStringField;
    cdsDadosNIMPRE: TStringField;
    cdsDadosDIF: TStringField;
    cdsDadosVLRSEGURO: TBCDField;
    cdsDadosVLRICMSFRE: TBCDField;
    cdsDadosESTADO: TStringField;
    cdsDadosTIPONF: TStringField;
    cdsDadosOBS1: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheDATA: TSQLTimeStampField;
    cdsDetalheFORNECED: TIntegerField;
    cdsDetalheCODIGO: TIntegerField;
    cdsDetalheDESCRICAO: TStringField;
    cdsDetalheUNIDADE: TStringField;
    cdsDetalhePESOLIQ: TBCDField;
    cdsDetalhePESOBRU: TBCDField;
    cdsDetalheICMSP: TBCDField;
    cdsDetalheIPIP: TBCDField;
    cdsDetalheCST: TBCDField;
    cdsDetalheVLRICMS: TBCDField;
    cdsDetalheVLRIPI: TBCDField;
    cdsDetalheSUBST: TBCDField;
    cdsDetalheQTDE: TBCDField;
    cdsDetalheUNIT: TBCDField;
    cdsDetalheVALOR: TBCDField;
    cdsDetalheVENDA: TBCDField;
    cdsDetalheLOTE: TStringField;
    cdsDetalhePERVEN: TBCDField;
    cdsDetalheGRUPOCOD: TIntegerField;
    cdsDetalheCTCCOD: TIntegerField;
    cdsDetalheCTCDES: TStringField;
    cdsDetalheEMPRECOD: TIntegerField;
    cdsDetalheACESOCOD: TIntegerField;
    cdsFinanLANCIT: TIntegerField;
    cdsFinanLANC: TIntegerField;
    cdsFinanPARC: TIntegerField;
    cdsFinanVENCTO: TSQLTimeStampField;
    cdsFinanVALOR: TBCDField;
    cdsFinanPERC: TBCDField;
    cdsFinanVLR: TBCDField;
    cdsFinanCAR: TIntegerField;
    cdsFinanTIPO: TStringField;
    cdsFinanBANCOD: TIntegerField;
    cdsFinanBANDOC: TStringField;
    cdsFinanBANEMI: TStringField;
    cdsFinanEMPRECOD: TIntegerField;
    cdsFinanACESOCOD: TIntegerField;
    cdsFinanBANDES: TStringField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    frmPesquisa: TfrmPesquisa;
    GroupBox14: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox15: TGroupBox;
    GroupBox9: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox11: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit13: TDBEdit;
    DBGrid2: TDBGrid;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    cdsDetalheQTDE_DIV: TBCDField;
    cdsDetalheQTDE_REAL: TBCDField;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1NOTA: TcxGridDBColumn;
    dbDadosDBTableView1SERIE: TcxGridDBColumn;
    dbDadosDBTableView1ENTREGA: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1VLRNOTA: TcxGridDBColumn;
    dbDadosDBTableView1VENDECOD: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1CANCELADA: TcxGridDBColumn;
    dbDadosDBTableView1NATURCOD: TcxGridDBColumn;
    dbDadosDBTableView1DADOSCOD: TcxGridDBColumn;
    dbDadosDBTableView1TRTIPO: TcxGridDBColumn;
    dbDadosDBTableView1TRCOD: TcxGridDBColumn;
    dbDadosDBTableView1TRDES: TcxGridDBColumn;
    dbDadosDBTableView1FORMA: TcxGridDBColumn;
    dbDadosDBTableView1PARCELA: TcxGridDBColumn;
    dbDadosDBTableView1VLRENTRADA: TcxGridDBColumn;
    dbDadosDBTableView1DESCP: TcxGridDBColumn;
    dbDadosDBTableView1VLRDESC: TcxGridDBColumn;
    dbDadosDBTableView1VLRBASE: TcxGridDBColumn;
    dbDadosDBTableView1VLRICMS: TcxGridDBColumn;
    dbDadosDBTableView1VLRFRETE: TcxGridDBColumn;
    dbDadosDBTableView1VLRPRODUTO: TcxGridDBColumn;
    dbDadosDBTableView1VLRIPI: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1RECEITU: TcxGridDBColumn;
    dbDadosDBTableView1QTDESP: TcxGridDBColumn;
    dbDadosDBTableView1OBS1: TcxGridDBColumn;
    dbDadosDBTableView1NIMPRE: TcxGridDBColumn;
    dbDadosDBTableView1DIF: TcxGridDBColumn;
    dbDadosDBTableView1VLRSEGURO: TcxGridDBColumn;
    dbDadosDBTableView1VLRICMSFRE: TcxGridDBColumn;
    dbDadosDBTableView1ESTADO: TcxGridDBColumn;
    dbDadosDBTableView1TIPONF: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    DBEdit3: TcxDBDateEdit;
    DBEdit6: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    cdsFinanREGLOG: TStringField;
    cdsFinanREG_ID: TIntegerField;
    Panel4: TPanel;
    GroupBox16: TGroupBox;
    DBEdit12: TDBEdit;
    sqlDetalhe: TFDQuery;
    sqlFinan: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheDATA: TSQLTimeStampField;
    sqlDetalheFORNECED: TIntegerField;
    sqlDetalheCODIGO: TIntegerField;
    sqlDetalheDESCRICAO: TStringField;
    sqlDetalheUNIDADE: TStringField;
    sqlDetalhePESOLIQ: TBCDField;
    sqlDetalhePESOBRU: TBCDField;
    sqlDetalheICMSP: TBCDField;
    sqlDetalheIPIP: TBCDField;
    sqlDetalheCST: TBCDField;
    sqlDetalheVLRICMS: TBCDField;
    sqlDetalheVLRIPI: TBCDField;
    sqlDetalheSUBST: TBCDField;
    sqlDetalheQTDE: TBCDField;
    sqlDetalheUNIT: TBCDField;
    sqlDetalheVALOR: TBCDField;
    sqlDetalheVENDA: TBCDField;
    sqlDetalheLOTE: TStringField;
    sqlDetalhePERVEN: TBCDField;
    sqlDetalheGRUPOCOD: TIntegerField;
    sqlDetalheCTCCOD: TIntegerField;
    sqlDetalheCTCDES: TStringField;
    sqlDetalheEMPRECOD: TIntegerField;
    sqlDetalheACESOCOD: TIntegerField;
    sqlDetalheQTDE_DIV: TBCDField;
    sqlDetalheQTDE_REAL: TBCDField;
    sqlDetalheREGLOG: TStringField;
    sqlDetalheREG_ID: TIntegerField;
    sqlFinanLANCIT: TIntegerField;
    sqlFinanLANC: TIntegerField;
    sqlFinanPARC: TIntegerField;
    sqlFinanVENCTO: TSQLTimeStampField;
    sqlFinanVALOR: TBCDField;
    sqlFinanPERC: TBCDField;
    sqlFinanVLR: TBCDField;
    sqlFinanCAR: TIntegerField;
    sqlFinanTIPO: TStringField;
    sqlFinanBANCOD: TIntegerField;
    sqlFinanBANDOC: TStringField;
    sqlFinanBANEMI: TStringField;
    sqlFinanEMPRECOD: TIntegerField;
    sqlFinanACESOCOD: TIntegerField;
    sqlFinanBANDES: TStringField;
    sqlFinanREGLOG: TStringField;
    sqlFinanREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
    procedure cdsFinanBeforePost(DataSet: TDataSet);
    procedure GroupBox4Exit(Sender: TObject);
  private
    { Private declarations }
    vPesqGrid: Boolean;

    procedure fSomaValor;
    procedure fArrumaParc;
    procedure fSSalvar(vTipo: Boolean);
    procedure pAbreDetalhe;
  public
    { Public declarations }
  end;

var
  FfrmCompra: TFfrmCompra;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmCompra.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisa.pInicia('ttFornecedor', TForm(Sender),7,147,GroupBox4,true);
  sbPeriodo.OnClick(sbPeriodo);
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmCompra.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCompra.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsDetalheData.asDateTime    := cdsDadosData.asDateTime;
  if cdsDetalheLanc.asInteger   = 0 then cdsDetalheLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger:= frGenerator('NFCOMPCO','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.asInteger := frGeneratorFB('GEN_NFCOMPCO_ID');
end;

procedure TFfrmCompra.cdsFinanBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFinanLanc.asInteger   = 0 then cdsFinanLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsFinanLancit.asInteger = 0 then cdsFinanLancit.asInteger:= frGenerator('NFCOMPFI','LANCIT',1);
  if cdsFinanREG_ID.asInteger = 0 then cdsFinanREG_ID.asInteger := frGeneratorFB('GEN_NFCOMPFI_ID');
end;

procedure TFfrmCompra.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if vkey=13 then
  begin
    vkey:=0;
    cdsDadosVlrNota.Value := cdsDadosVlrProduto.Value + cdsDadosVlrIPI.Value +
                             cdsDadosVlrSeguro.Value - cdsDadosVlrDesc.Value;
//    DBEdit13.Setfocus;
  end;
end;

procedure TFfrmCompra.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  dbEdit9.SetFocus;
end;

procedure TFfrmCompra.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if cdsFinan.RecordCount < 1 then
  begin
    cdsFinan.Append;
    cdsFinanVencto.AsDateTime := IncMonth(cdsDadosData.asDateTime,1);
    cdsFinanParc.Value   := 1;
    cdsFinanBanCod.Value := 0;
    cdsFinanValor.asFloat:= cdsDadosVlrNota.asFloat;
    cdsFinan.Post;
  end;
  DBGrid2.SelectedIndex:=0;
  DBGrid2.SetFocus;
end;

procedure TFfrmCompra.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmCompra.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if vkey=13 then
  begin
    vkey:=0;
    cdsDadosVlrDesc.Value:= cdsDadosVlrProduto.Value *cdsDadosDescp.Value/100;
  end;
end;

procedure TFfrmCompra.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  vPesqGrid := False;
  cdsDetalhe.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsDetalheCodigo.Text,1,3)='999' then
         begin
           cdsDetalhe.Delete;
           fSomaValor;
           dbEdit9.Setfocus;
           Exit;
         end;
         if fTra(3,['Select Descricao, Unidade, Compra, GrupoCod, Qtde_div From CadMerca Where Codigo=0'+cdsDetalheCodigo.Text],1) then
         begin
           cdsDetalheDescricao.asString := dm.qrSqlTra.Fields[0].Text;
           cdsDetalheUnidade.asString   := dm.qrSqlTra.Fields[1].Text;
           cdsDetalheUnit.asFloat       := dm.qrSqlTra.Fields[2].asFloat;
           cdsDetalheGrupoCod.asInteger := dm.qrSqlTra.Fields[3].asInteger;
           cdsDetalheQtde_Div.asFloat   := dm.qrSqlTra.Fields[4].asFloat;
           DBGrid1.SelectedIndex:=3;
         end else begin
            vPesqGrid := True;
            fPqMercadoria;
            if cdsDetalhe.State in [dsBrowse] then
              cdsDetalhe.Append;
            cdsDetalheCodigo.asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex:=0;
            Abort;
         end;
       end;
    4: begin
         if cdsDetalheUnit.AsFloat>0 then
           cdsDetalheValor.AsFloat:= cdsDetalheQtde.AsFloat * cdsDetalheUnit.AsFloat;
       end;
    6: begin

         cdsDetalheVlrIcms.AsFloat := cdsDetalheICMSP.AsFloat * cdsDetalheValor.AsFloat/100;

         if cdsDetalheQtde_Div.asFloat = 0 then
           cdsDetalheQtde_Div.asFloat := 1;

         cdsDetalheQtde_Real.asFloat   := cdsDetalheQtde.asFloat * cdsDetalheQtde_Div.asFloat;

         cdsDetalhe.Post;
         cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmCompra.DBGrid1Enter(Sender: TObject);
begin
  if vPesqGrid then exit;
  if cdsDetalhe.State in [dsInsert, dsEdit] then exit;

  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  dbGrid1.ReadOnly := (not sbSalvar.Visible);
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmCompra.DBGrid1Exit(Sender: TObject);
begin
  if vPesqGrid then exit;
  if cdsDetalhe.State in [dsInsert, dsEdit] then exit;

  inherited;

  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;


  if sbSalvar.Visible then fSomaValor;
end;

procedure TFfrmCompra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>6 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmCompra.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  vPesqGrid := False;
  cdsFinan.Edit;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(cdsFinanParc.Text,1,3)='999' then
         begin
           vPesqGrid := False;
           cdsFinan.Delete;
           fArrumaParc;
           DBEdit12.SetFocus;
           //if frSalv then sbIncluirClick(sbSalvar);
           Exit;
         end
         else begin
           if (cdsFinanVALOR.AsFloat = 0) then
           begin
             cdsFinanVALOR.AsFloat := cdsDadosVLRNOTA.AsFloat - cdsDadosVLRBASE.AsFloat;
             cdsFinanVENCTO.AsDateTime  := cdsDadosDATA.asDateTime + ((cdsFinan.RecordCount + 1) * 30);
           end;
         end;
       end;
    3: begin
         cdsFinanBanCod.Text := '0'+trim(cdsFinanBanCod.Text);
         if fTra(3,['Select Descricao From CadBanco Where Codigo=0'+cdsFinanBanCod.Text],1) then
         begin
           cdsFinanBanDes.Text:= dm.qrSqlTra.Fields[0].Text;
           DBGrid2.SelectedIndex:=5;
         end else begin
            vPesqGrid := True;
            fPqBanco;
            if cdsFinan.State in [dsBrowse] then
              cdsFinan.Append;

            cdsFinanBanCod.asString := xpqResul;
            DBGrid2.SetFocus;
            DBGrid2.SelectedIndex:=3;
            Abort;
         end;
       end;
    6: begin
         cdsFinan.Post;
         fArrumaParc;
         cdsFinan.Next;
         if cdsFinan.Eof then cdsFinan.Append;
         DBGrid2.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmCompra.DBGrid2Enter(Sender: TObject);
begin
  if vPesqGrid then exit;

  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  dbGrid2.ReadOnly := (not sbSalvar.Visible);
  cdsFinan.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFfrmCompra.DBGrid2Exit(Sender: TObject);
begin
  if vPesqGrid then exit;
  if cdsFinan.State in [dsInsert, dsEdit] then exit;

  inherited;

  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if sbSalvar.Visible then fSomaValor;
end;

procedure TFfrmCompra.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>6 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmCompra.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCompra);
end;

procedure TFfrmCompra.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisa.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('GERAL','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_NFCOMPR_ID');
           cdsDadosData.asDateTime := date;
           cdsDadosEntrega.asDateTime := date;
           pcItem.OnChange(pcItem);
           dbEdit3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          dbEdit3.SetFocus;
        end;
     14: begin
           fSSalvar(False);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosCodigo.AsInteger   := frmPesquisa.vpCodPrincipal;
            cdsDadosDescricao.AsString := frmPesquisa.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            fSSalvar(True);
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

procedure TFfrmCompra.sbPeriodoClick(Sender: TObject);
begin
//  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from nfcompr where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmCompra.pAbreDetalhe;
begin
  cdsDetalhe.Close;
  sqlDetalhe.Sql.Clear;
  sqlDetalhe.SQL.Add('select * from nfcompco where lanc = 0'+cdsDadosLanc.asString);
  cdsDetalhe.Open;

  cdsFinan.Close;
  sqlFinan.Sql.Clear;
  sqlFinan.SQL.Add('select * from nfcompfi where lanc = 0'+cdsDadosLanc.asString);
  cdsFinan.Open;
end;

procedure TFfrmCompra.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisa.pRetornaDados(cdsDadosCodigo.AsString);
  pAbreDetalhe;
end;

procedure TFfrmCompra.fSSalvar(vTipo: Boolean);
var vlanc:Integer;
    vlrbx, vobservacao, vContaDes, vContaCTC, vdtper:String;
    vproduto: Integer;
    vpreco: Double;
begin
  try
    fSql(1,1,['Delete From FiBaiPag Where Lanc='+cdsDadosLanc.Text],1);
    fSql(1,1,['Delete From CxBanco Where LancCom='+cdsDadosLanc.Text],1);
    if vTipo then
    begin
      cdsFinan.First;
      while not cdsFinan.Eof do
      begin
        if cdsFinan.FieldByName('BanCod').Value=0 then
        begin
           fIntContas('FiBaiPag',cdsDadosLanc.Text,
                       cdsDadosNota.Text,
                       cdsDadosCodigo.Text,
                       cdsDadosDescricao.Text,
                       frInvD(cdsDadosData.asDateTime),
                       frInvV(cdsFinan.FieldByName('Valor').Value),
                       frInvD(cdsFinan.FieldByName('Vencto').Value),
                       cdsFinan.FieldByName('Parc').Text);
        end
        else begin
           vLanc:=frGenerator('GERAL','LANC',1);
           fIntCaixa('0',cdsDadosLanc.Text,IntToStr(vLanc),
                     frInvD(cdsDadosData.asDateTime),'S',
                     cdsFinan.FieldByName('BanCod').Text,
                     cdsFinan.FieldByName('BanDes').Text,
                     frInvD(cdsFinan.FieldByName('Vencto').Value),
                     frInvV(cdsFinan.FieldByName('Valor').Value),
                     frInvV(cdsFinan.FieldByName('Valor').Value*-1),
                     cdsDadosDescricao.Text,'0','A',
                     'Compra diversas, '+cdsDadosNota.Text+' '+
                     Trim(cdsFinan.FieldByName('BanDoc').Text)+' '+Trim(cdsFinan.FieldByName('BanEmi').Text),
                     cdsFinan.FieldByName('BanDoc').Text,'N','Null',
                     cdsDadosCodigo.Text,'0',frInvV(cdsFinan.FieldByName('Valor').Value));
        end;
        cdsFinan.Next;
      end;

      //Atualiza preço de compra no cadastro do produto
      vdtper:='(cc.Data >='+frInvD(dtInicial.Date)+' and cc.Data < '+frInvD(dtFinal.Date+1)+')';

      cdsDetalhe.First;
      while not cdsDetalhe.Eof do
      begin
        vproduto := cdsDetalheCODIGO.AsInteger;
        vpreco   := 0;

        fSql(1,1,['Select Sum(ee.Qtde_Real), Sum(ee.Valor) From nfCompr cc, nfCompCo ee',
                  ' Where (cc.Lanc=ee.Lanc) '+
                  '   and ee.Codigo = 0'+IntToStr(vproduto)+
                  '   and '+vdtper],2);

        if (dm.qrSql1.Fields[0].asFloat <> 0) then
          vpreco := frDeci(dm.qrSql1.Fields[1].asFloat / dm.qrSql1.Fields[0].asFloat, 2);

        if (vpreco <> 0) then
          fSql(1,4,['Update cadmerca set compra = ' +frInvV(vpreco)+ ' Where codigo = 0'+IntToStr(vproduto)],1);

        cdsDetalhe.Next;
      end;
      cdsDetalhe.First;

    end else begin
       fSql(1,1,['Delete From NFCOMPFI Where Lanc='+cdsDadosLanc.Text],1);
       fSql(1,1,['Delete From NFCOMPCO Where Lanc='+cdsDadosLanc.Text],1);
       //cdsDados.Delete;
    end;
  except
  end;
end;

procedure TFfrmCompra.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisa.dbgLista.Visible then exit;

  dbGrid1.SetFocus;
end;

procedure TFfrmCompra.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if cdsFinan.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsFinan.Delete;
end;

procedure TFfrmCompra.fSomaValor;
var vsoma: Double;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;

  cdsDetalhe.First;
  vsoma := 0;
  while not cdsDetalhe.Eof do
  begin
    vsoma := vsoma + cdsDetalheValor.asFloat;
    cdsDetalhe.Edit;

    if cdsDetalheQtde_Div.asFloat = 0 then
      cdsDetalheQtde_Div.asFloat := 1;
    cdsDetalheQtde_Real.asFloat   := cdsDetalheQtde.asFloat * cdsDetalheQtde_Div.asFloat;

    cdsDetalhe.Post;

    cdsDetalhe.Next;
  end;
  cdsDetalhe.First;
  cdsDadosVlrProduto.asFloat := vsoma;
end;

procedure TFfrmCompra.fArrumaParc;
var vint, vpar: Integer; vvlr: Double;
begin
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then Exit;
  vint := cdsFinanLancit.AsInteger;
  vpar := 0;
  vvlr := 0;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    Inc(vpar);
    cdsFinan.Edit;
    cdsFinanParc.AsInteger := vpar;
    cdsFinan.Post;
    vvlr := vvlr + cdsFinanValor.asFloat;
    cdsFinan.Next;
  end;
  cdsFinan.Locate('Lancit', vint, []);
  cdsDadosVlrBase.asFloat := vvlr;
end;
end.

