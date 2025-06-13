unit frmCompraDiversa;

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
  TFfrmCompraDiversa = class(TFModelo)
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
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosDOC: TStringField;
    sqlDadosSERIE: TStringField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVALOR: TBCDField;
    sqlDadosOBS: TStringField;
    sqlDadosHISTCOD: TIntegerField;
    sqlDadosHISTDES: TStringField;
    sqlDadosBAIXA: TStringField;
    sqlDadosFORMAR: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosDOC: TStringField;
    cdsDadosSERIE: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVALOR: TBCDField;
    cdsDadosOBS: TStringField;
    cdsDadosHISTCOD: TIntegerField;
    cdsDadosHISTDES: TStringField;
    cdsDadosBAIXA: TStringField;
    cdsDadosFORMAR: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheCTC: TIntegerField;
    cdsDetalheDESCRICAO: TStringField;
    cdsDetalheQTDE: TBCDField;
    cdsDetalhePRECO: TBCDField;
    cdsDetalheVALOR: TBCDField;
    cdsDetalheCONTA: TStringField;
    cdsDetalheEMPRECOD: TIntegerField;
    cdsDetalheACESOCOD: TIntegerField;
    cdsFinanLANC: TIntegerField;
    cdsFinanLANCIT: TIntegerField;
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
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox7: TGroupBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    DBEdit12: TDBEdit;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1DOC: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1SERIE: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1HISTCOD: TcxGridDBColumn;
    dbDadosDBTableView1HISTDES: TcxGridDBColumn;
    dbDadosDBTableView1BAIXA: TcxGridDBColumn;
    dbDadosDBTableView1FORMAR: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    DBEdit3: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    cdsFinanREGLOG: TStringField;
    cdsFinanREG_ID: TIntegerField;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox5: TGroupBox;
    DBEdit10: TDBEdit;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    cdsDadosZZTotal: TBCDField;
    sqlDetalhe: TFDQuery;
    sqlFinan: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheCTC: TIntegerField;
    sqlDetalheDESCRICAO: TStringField;
    sqlDetalheQTDE: TBCDField;
    sqlDetalhePRECO: TBCDField;
    sqlDetalheVALOR: TBCDField;
    sqlDetalheCONTA: TStringField;
    sqlDetalheEMPRECOD: TIntegerField;
    sqlDetalheACESOCOD: TIntegerField;
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
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsFinanBeforePost(DataSet: TDataSet);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
    procedure GroupBox4Exit(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vPesqGrid: Boolean;

    procedure fSomaValor;
    procedure fArrumaParc;
    procedure fSSalvar(vTipo:Boolean);
    procedure pAbreDetalhe;
  public
    { Public declarations }
  end;

var
  FfrmCompraDiversa: TFfrmCompraDiversa;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmCompraDiversa.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisa.pInicia('ttFornecedor', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmCompraDiversa.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCompraDiversa.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  //Ajustar Indices
  inherited;
end;

procedure TFfrmCompraDiversa.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDadosZZTotal.AsFloat := cdsDadosVALOR.AsFloat;
end;

procedure TFfrmCompraDiversa.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDetalheLanc.asInteger   = 0 then cdsDetalheLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsDetalheLancit.asInteger = 0 then cdsDetalheLancit.asInteger:= frGenerator('FIPAGACO','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.asInteger := frGeneratorFB('GEN_FIPAGACO_ID');
end;

procedure TFfrmCompraDiversa.cdsFinanBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFinanLanc.asInteger   = 0 then cdsFinanLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsFinanLancit.asInteger = 0 then cdsFinanLancit.asInteger := frGenerator('FIPACO','LANCIT',1);
  if cdsFinanREG_ID.asInteger = 0 then cdsFinanREG_ID.asInteger := frGeneratorFB('GEN_FIPACO_ID');
end;

procedure TFfrmCompraDiversa.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  dbGrid1.SetFocus;
end;

procedure TFfrmCompraDiversa.DBEdit12Exit(Sender: TObject);
begin
  inherited;

  if cdsFinan.RecordCount = 0 then
  begin
    cdsFinan.Append;
    cdsFinanVencto.AsDateTime := IncMonth(cdsDadosData.asDateTime,1);
    cdsFinanParc.Value   := 1;
    cdsFinanBanCod.Value := 0;
    cdsFinanValor.asFloat:= cdsDadosValor.asFloat;
    cdsFinan.Post;
  end;

  dbGrid2.SetFocus;
end;

procedure TFfrmCompraDiversa.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  frmPesquisa.edtPesquisa.SetFocus;
end;

procedure TFfrmCompraDiversa.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmCompraDiversa.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  vPesqGrid := False;
  cdsDetalhe.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsDetalheCTC.Text,1,3)='999' then begin
           cdsDetalhe.Delete; fSomaValor;
           dbEdit12.Setfocus;
           Exit;
         end;
         if fTra(3,['Select Codigo,Descricao From CadPlano Where Nivel=3 and Reduz=0'+cdsDetalheCTC.Text],1) then
         begin
           cdsDetalheConta.Text:= dm.qrSqlTra.Fields[0].Text+' - '+Trim(dm.qrSqlTra.Fields[1].Text);
           DBGrid1.SelectedIndex:=1;
         end else begin
            vPesqGrid := True;
            fPqPlano;
            if cdsDetalhe.State in [dsBrowse] then
              cdsDetalhe.Append;
            cdsDetalheCTC.asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex:=0;
            Abort;
         end;
       end;
    3: begin
         cdsDetalhe.Post;
         cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmCompraDiversa.DBGrid1Enter(Sender: TObject);
begin
  if vPesqGrid then exit;

  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  dbGrid1.ReadOnly := (not sbSalvar.Visible);
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmCompraDiversa.DBGrid1Exit(Sender: TObject);
begin
  if vPesqGrid then exit;

  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if cdsDetalhe.State in [dsInsert, dsEdit] then exit;
  if sbSalvar.Visible then fSomaValor;
end;

procedure TFfrmCompraDiversa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>3 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmCompraDiversa.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  vPesqGrid := False;
  cdsFinan.Edit;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(cdsFinanParc.Text,1,3)='999' then
         begin
           cdsFinan.Delete;
           fArrumaParc;
           //if frSalv then sbIncluirClick(sbSalvar);
           DBEdit10.SetFocus;
           Exit;
         end
         else begin
           if (cdsFinanVALOR.AsFloat = 0) then
           begin
             cdsFinanVALOR.AsFloat := cdsDadosVALOR.AsFloat - cdsDadosZZTotal.AsFloat;
             cdsFinanVENCTO.AsDateTime  := IncMonth(cdsDadosDATA.asDateTime, (cdsFinan.RecordCount + 1));
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
            if cdsDetalhe.State in [dsBrowse] then
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

procedure TFfrmCompraDiversa.DBGrid2Enter(Sender: TObject);
begin
  if vPesqGrid then exit;

  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  dbGrid2.ReadOnly := (not sbSalvar.Visible);
  cdsFinan.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFfrmCompraDiversa.DBGrid2Exit(Sender: TObject);
begin
  if vPesqGrid then exit;

  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmCompraDiversa.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>6 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmCompraDiversa.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmCompraDiversa.fArrumaParc;
var vint, vpar: Integer;
    vtotal: Double;
begin
  vint := cdsFinanLancit.AsInteger;
  vpar := 0;
  vtotal := 0;
  cdsFinan.First;
  while not cdsFinan.Eof do
  begin
    Inc(vpar);
    cdsFinan.Edit;
    cdsFinanParc.AsInteger := vpar;
    vtotal := vtotal + cdsFinanValor.AsFloat;
    cdsFinan.Post;
    cdsFinan.Next;
  end;
  cdsDadosZZTotal.AsFloat := vtotal;
  cdsFinan.Locate('Lancit', vint, []);
end;

procedure TFfrmCompraDiversa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCompraDiversa);
end;

procedure TFfrmCompraDiversa.sbIncluirClick(Sender: TObject);
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
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_FIPAGA_ID');
           cdsDadosData.asDateTime := date;
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
             cdsDadosCodigo.AsInteger := frmPesquisa.vpCodPrincipal;
             cdsDadosDescricao.AsString  := frmPesquisa.vpDescricao;
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

procedure TFfrmCompraDiversa.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from fipaga where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
  cdsDetalhe.Open;
  cdsFinan.Open;
end;

procedure TFfrmCompraDiversa.fSomaValor;
var vsoma: Double;
begin
  cdsDetalhe.First;
  vsoma := 0;
  while not cdsDetalhe.Eof do
  begin
    vsoma := vsoma + cdsDetalheValor.asFloat;
    cdsDetalhe.Next;
  end;
  cdsDetalhe.First;
  cdsDados.Edit;
  cdsDadosValor.asFloat := vsoma;
end;

procedure TFfrmCompraDiversa.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if cdsFinan.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsFinan.Delete;
end;

procedure TFfrmCompraDiversa.pAbreDetalhe;
begin
  cdsDetalhe.Close;
  sqlDetalhe.Sql.Clear;
  sqlDetalhe.SQL.Add('select * from fipagaco where lanc = 0'+cdsDadosLanc.asString);
  cdsDetalhe.Open;

  cdsFinan.Close;
  sqlFinan.Sql.Clear;
  sqlFinan.SQL.Add('select * from fipaco where lanc = 0'+cdsDadosLanc.asString);
  cdsFinan.Open;
end;

procedure TFfrmCompraDiversa.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisa.pRetornaDados(cdsDadosCodigo.AsString);
  pAbreDetalhe;
end;

procedure TFfrmCompraDiversa.fSSalvar(vTipo: Boolean);
var vlanc:Integer;
    vlrbx, vobservacao:String;
begin
  fSql(1,1,['Delete From FiBaiPag Where Lanc='+cdsDadosLanc.Text],1);
  fSql(1,1,['Delete From CxBanco Where LancCom='+cdsDadosLanc.Text],1);
  if vTipo then begin
    cdsFinan.First;
    while not cdsFinan.Eof do
    begin
      if cdsFinan.FieldByName('BanCod').Value=0 then
      begin
         fIntContas('FiBaiPag',cdsDadosLanc.Text,
                     cdsDadosDoc.Text,
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
                   'Compra diversas, '+cdsDadosDoc.Text+' '+
                   Trim(cdsFinan.FieldByName('BanDoc').Text)+' '+Trim(cdsFinan.FieldByName('BanEmi').Text),
                   cdsFinan.FieldByName('BanDoc').Text,'N','Null',
                   cdsDadosCodigo.Text,'0',frInvV(cdsFinan.FieldByName('Valor').Value));
      end;
      cdsFinan.Next;
    end;
  end else begin
     fSql(1,1,['Delete From FiPaCo Where Lanc='+cdsDadosLanc.Text],1);
     fSql(1,1,['Delete From fiPagaCo Where Lanc='+cdsDadosLanc.Text],1);
  end;
end;

procedure TFfrmCompraDiversa.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisa.dbgLista.Visible then exit;

  dbGrid1.SetFocus;

end;

end.

