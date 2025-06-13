unit frmAmostra;

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
  TFfrmAmostra = class(TFModelo)
    DBGrid1: TDBGrid;
    dspDetalhe: TDataSetProvider;
    cdsDetalhe: TClientDataSet;
    dsDetalhe: TDataSource;
    sqlDadosLANC: TIntegerField;
    sqlDadosRECIBO: TIntegerField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosQUALID: TStringField;
    sqlDadosPESO: TBCDField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosRECIBO: TIntegerField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosPESO: TBCDField;
    cdsDadosQUALID: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheCLASSECOD: TIntegerField;
    cdsDetalheCLASSEDES: TStringField;
    cdsDetalhePESO: TBCDField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheSAFRA: TStringField;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    frmPesquisaPro: TfrmPesquisa;
    GroupBox5: TGroupBox;
    frmPesquisaVar: TfrmPesquisa;
    Panel4: TPanel;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TcxDBDateEdit;
    dbDadosDBTableView1RECIBO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1PESO: TcxGridDBColumn;
    dbDadosDBTableView1QUALID: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheCLASSECOD: TIntegerField;
    sqlDetalheCLASSEDES: TStringField;
    sqlDetalhePESO: TBCDField;
    sqlDetalheSAFRA: TStringField;
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
    procedure DBEdit1Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure fSoma;
  public
    { Public declarations }
  end;

var
  FfrmAmostra: TFfrmAmostra;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmAmostra.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaPro.pInicia('ttProdutor', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaVar.pInicia('ttVariedade', TForm(Sender),7,147,GroupBox5,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmAmostra.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmAmostra.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsDetalheLanc.asInteger   = 0) then cdsDetalheLanc.asInteger   := cdsDadosLanc.asInteger;
  if (cdsDetalheLancit.asInteger = 0) then cdsDetalheLancit.asInteger := frGenerator('AMOSTCOM','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.asInteger := frGeneratorFB('GEN_AMOSTCOM_ID');
end;

procedure TFfrmAmostra.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if vkey=13 then
  begin
     vkey:=0;
     if cdsDadosRecibo.asInteger > 0 then
     begin
       if cdsDadosProdCod.AsInteger = 0 then
       begin
         if fTra(1,['Select ProdCod, Lanc From EntRE Where Safra='+QuotedStr(xAno)+' and Recibo=0'+cdsDadosRecibo.Text],1) then
         begin
           frmPesquisaPro.pRetornaDados(dm.qrSqlTra.Fields[0].asString);
           if cdsDadosVarieCod.AsInteger = 0 then
           begin
             if fTra(1,['Select VarieCod From EntREVar Where Lanc=0'+dm.qrSqlTra.Fields[1].asString+' order by lancit'],1) then
               frmPesquisaVar.pRetornaDados(dm.qrSqlTra.Fields[0].asString);
           end;
           frmPesquisaPro.edtPesquisa.SetFocus;
         end;
       end;
//       else begin
//          ShowMessage('Recibo não encontrado!'+#13+'Informar Zero ou nº do romaneio de entrada.');
//          DBEdit1.SetFocus;
//       end;
     end;
  end;
end;

procedure TFfrmAmostra.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmAmostra.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsDetalhe.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsDetalhePeso.Text,1,3)='999' then begin
           cdsDetalhe.Delete; DBEdit2.SetFocus; fSoma; Abort;
         end;
         if cdsDetalhePeso.asInteger=0 then begin ShowMessage('Opção Inválida!'); Abort; end;
       end;
    1: begin
         if fTra(1,['Select Descricao From CadClass Where Codigo=0'+cdsDetalheClasseCod.Text],1) then
            cdsDetalheClasseDes.Text:=dm.qrSqlTra.Fields[0].Text
         else begin
            FPQClasse;
            cdsDetalhe.Edit;
            cdsDetalheClasseCod.asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex := 1;
            Abort;
         end;
         cdsDetalhe.Post; cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmAmostra.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmAmostra.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if cdsDetalhe.State in [dsInsert, dsEdit] then exit;
  if (sbSalvar.Visible) then fSoma;
end;

procedure TFfrmAmostra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>5 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmAmostra.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmAmostra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmAmostra);
end;

procedure TFfrmAmostra.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaPro.pLimpaCampo;
           frmPesquisaVar.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('AMOSTRA','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_AMOSTRA_ID');
           cdsDadosData.AsDateTime := date;
           cdsDadosSafra.AsString := xAno;
           DBEdit3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From AMOSTCOM Where Lanc=0'+cdsDadosLanc.asString],1);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
             cdsDadosProdDes.AsString   := frmPesquisaPro.vpDescricao;
             cdsDadosVarieCod.AsInteger := frmPesquisaVar.vpCodPrincipal;
             cdsDadosVarieDes.AsString  := frmPesquisaVar.vpDescricao;
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

procedure TFfrmAmostra.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from amostra where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmAmostra.fSoma;
var vsoma:Double;
begin
  cdsDetalhe.First;
  vsoma := 0;
  while not cdsDetalhe.Eof do
  begin
    vsoma := vsoma + cdsDetalhePeso.AsFloat;
    cdsDetalhe.Next;
  end;
  cdsDetalhe.First;
  cdsDados.Edit;
  cdsDadosPeso.asFloat := vsoma;
end;

procedure TFfrmAmostra.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Append;
  dbGrid1.SelectedIndex := 0;
end;

procedure TFfrmAmostra.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDetalhe.close;
    sqlDetalhe.SQL.Clear;
    sqlDetalhe.SQL.Add('select * from AmostCom  ');
    sqlDetalhe.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlDetalhe.SQL.Add('order by lancit');
    cdsDetalhe.Open;

    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaVar.pRetornaDados(cdsDadosVarieCod.AsString);
  end;
end;

end.

