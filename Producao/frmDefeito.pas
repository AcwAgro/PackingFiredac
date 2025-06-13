unit frmDefeito;

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
  TFfrmDefeito = class(TFModelo)
    dsSegmento: TDataSource;
    cdsSegmento: TClientDataSet;
    dspSegmento: TDataSetProvider;
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    dspDetalhe: TDataSetProvider;
    PageControl1: TPageControl;
    tab_entrada: TTabSheet;
    tab_Classi: TTabSheet;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    Panel1: TPanel;
    Label14: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    sqlDadosLANC: TIntegerField;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosTIPO: TStringField;
    sqlDadosFORCOD: TIntegerField;
    sqlDadosFORDES: TStringField;
    sqlDadosVARCOD: TIntegerField;
    sqlDadosVARDES: TStringField;
    sqlDadosQTDE: TBCDField;
    sqlDadosAMIDO: TBCDField;
    sqlDadosSST: TBCDField;
    sqlDadosFIRME: TBCDField;
    sqlDadosGRANDE: TBCDField;
    sqlDadosGRAUDA: TBCDField;
    sqlDadosMEDIA: TBCDField;
    sqlDadosMIUDA: TBCDField;
    sqlDadosPEQUENA: TBCDField;
    sqlDadosTIPOCOD: TIntegerField;
    sqlDadosTIPODES: TStringField;
    sqlDadosACIDEZ: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosTIPO: TStringField;
    cdsDadosFORCOD: TIntegerField;
    cdsDadosFORDES: TStringField;
    cdsDadosVARCOD: TIntegerField;
    cdsDadosVARDES: TStringField;
    cdsDadosQTDE: TBCDField;
    cdsDadosAMIDO: TBCDField;
    cdsDadosSST: TBCDField;
    cdsDadosFIRME: TBCDField;
    cdsDadosGRANDE: TBCDField;
    cdsDadosGRAUDA: TBCDField;
    cdsDadosMEDIA: TBCDField;
    cdsDadosMIUDA: TBCDField;
    cdsDadosPEQUENA: TBCDField;
    cdsDadosTIPOCOD: TIntegerField;
    cdsDadosTIPODES: TStringField;
    cdsDadosACIDEZ: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheDEFCOD: TIntegerField;
    cdsDetalheDEFDES: TStringField;
    cdsDetalheQTDE: TBCDField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheSAFRA: TStringField;
    cdsSegmentoLANC: TIntegerField;
    cdsSegmentoIODO: TBCDField;
    cdsSegmentoAMIDO: TBCDField;
    cdsSegmentoSST: TBCDField;
    cdsSegmentoFIRME: TBCDField;
    cdsSegmentoTIPO: TStringField;
    cdsSegmentoFORCOD: TIntegerField;
    cdsSegmentoDATA: TSQLTimeStampField;
    cdsSegmentoVARCOD: TIntegerField;
    cdsSegmentoACIDEZ: TBCDField;
    cdsSegmentoLANCIT: TIntegerField;
    cdsSegmentoSAFRA: TStringField;
    DBGrid2: TDBGrid;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    frmPesquisaVar: TfrmPesquisa;
    frmPesquisaPro: TfrmPesquisa;
    DBEdit3: TcxDBDateEdit;
    dbDadosDBTableView1REGISTRO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1TIPO: TcxGridDBColumn;
    dbDadosDBTableView1FORCOD: TcxGridDBColumn;
    dbDadosDBTableView1FORDES: TcxGridDBColumn;
    dbDadosDBTableView1VARCOD: TcxGridDBColumn;
    dbDadosDBTableView1VARDES: TcxGridDBColumn;
    dbDadosDBTableView1QTDE: TcxGridDBColumn;
    dbDadosDBTableView1AMIDO: TcxGridDBColumn;
    dbDadosDBTableView1SST: TcxGridDBColumn;
    dbDadosDBTableView1FIRME: TcxGridDBColumn;
    dbDadosDBTableView1GRANDE: TcxGridDBColumn;
    dbDadosDBTableView1GRAUDA: TcxGridDBColumn;
    dbDadosDBTableView1MEDIA: TcxGridDBColumn;
    dbDadosDBTableView1MIUDA: TcxGridDBColumn;
    dbDadosDBTableView1PEQUENA: TcxGridDBColumn;
    dbDadosDBTableView1TIPOCOD: TcxGridDBColumn;
    dbDadosDBTableView1TIPODES: TcxGridDBColumn;
    dbDadosDBTableView1ACIDEZ: TcxGridDBColumn;
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
    cdsSegmentoREGLOG: TStringField;
    cdsSegmentoREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlSegmento: TFDQuery;
    sqlSegmentoLANCIT: TIntegerField;
    sqlSegmentoLANC: TIntegerField;
    sqlSegmentoIODO: TBCDField;
    sqlSegmentoAMIDO: TBCDField;
    sqlSegmentoSST: TBCDField;
    sqlSegmentoFIRME: TBCDField;
    sqlSegmentoTIPO: TStringField;
    sqlSegmentoFORCOD: TIntegerField;
    sqlSegmentoDATA: TSQLTimeStampField;
    sqlSegmentoVARCOD: TIntegerField;
    sqlSegmentoACIDEZ: TBCDField;
    sqlSegmentoSAFRA: TStringField;
    sqlSegmentoREGLOG: TStringField;
    sqlSegmentoREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
    procedure cdsSegmentoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure fSomaAna;
  public
    { Public declarations }
  end;

var
  FfrmDefeito: TFfrmDefeito;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmDefeito.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaPro.pInicia('ttProdutor', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaVar.pInicia('ttVariedade', TForm(Sender),7,147,GroupBox5,true);
  pcItem.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmDefeito.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmDefeito.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsDetalheLanc.asInteger   = 0) then cdsDetalheLanc.asInteger := cdsDadosLanc.asInteger;
  if (cdsDetalheLancit.asInteger = 0) then cdsDetalheLancit.Value := frGenerator('CONTCOM','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.asInteger := frGeneratorFB('GEN_CONTCOM_ID');
end;

procedure TFfrmDefeito.cdsSegmentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsSegmentoLancit.asInteger = 0 then cdsSegmentoLancit.asInteger := frGenerator('CONTANA','LANCIT',1);
  if cdsSegmentoREG_ID.asInteger = 0 then cdsSegmentoREG_ID.asInteger := frGeneratorFB('CONTANA_ID');
end;

procedure TFfrmDefeito.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 1;
  DBGrid2.SetFocus;
end;

procedure TFfrmDefeito.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (vkey=13) and (cdsDadosRegistro.asInteger > 0) then
  begin
    vkey:=0;
    if cdsDadosForCod.AsInteger = 0 then
    begin
      if fTra(1,['Select ProdCod, Lanc From EntRE Where Safra='+QuotedStr(xAno)+' and Recibo=0'+cdsDadosRegistro.Text],1) then
      begin
        frmPesquisaPro.pRetornaDados(dm.qrSqlTra.Fields[0].AsString);
        if cdsDadosVarCod.AsInteger = 0 then
        begin
          if fTra(1,['Select VarieCod From EntREVar Where Lanc=0'+dm.qrSqlTra.Fields[1].asString+' order by lancit'],1) then
            frmPesquisaVar.pRetornaDados(dm.qrSqlTra.Fields[0].asString);
        end;
        frmPesquisaPro.edtPesquisa.SetFocus;
      end;
    end;
//    else begin
//      ShowMessage('Recibo não encontrado!'+#13+'Informar Zero ou nº do romaneio de entrada.');
//      DBEdit1.SetFocus;
//    end;
  end;
end;

procedure TFfrmDefeito.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State in [dsInsert, dsEdit] then
    cdsDadosQTDE.asFloat := cdsDadosGrauda.asFloat + cdsDadosMedia.asFloat + cdsDadosMiuda.asFloat;
end;

procedure TFfrmDefeito.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsDetalhe.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsDetalheQtde.Text,1,3)='999' then begin
           cdsDetalhe.Delete; DBEdit6.SetFocus; Abort;
         end;
         if cdsDetalheQtde.asInteger=0 then
         begin
           ShowMessage('Opção Inválida!');
           Abort;
         end;
       end;
    1: begin
         if fTra(1,['Select Descricao From CadDefei Where Codigo=0'+cdsDetalheDefCod.Text],1) then
           cdsDetalheDefDes.Text:=dm.qrSqlTra.Fields[0].Text
         else begin
            FPQDefeito;
            cdsDetalhe.Edit;
            cdsDetalheDefCod.asString := xpqResul;
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

procedure TFfrmDefeito.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmDefeito.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmDefeito.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>2 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmDefeito.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if cdsSegmento.State = dsInsert then
  begin
    cdsSegmento.Cancel;
    cdsSegmento.First;
    Abort;
  end;

  Case DBGrid2.SelectedIndex of
    1: begin
         if Copy(cdsSegmento.FieldByName('Amido').Text,1,3)='999' then
         begin
           cdsSegmento.Cancel; fSomaAna;
           PageControl1.ActivePageIndex := 0;
           DBEdit6.SetFocus;
           Abort;
         end;
       end;
    3: begin
         fSomaAna;
         cdsSegmento.Next;
         if cdsSegmento.Eof then cdsSegmento.Last;
         DBGrid2.SelectedIndex := 1;
       end;
  end;
end;

procedure TFfrmDefeito.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  DBGrid2.ReadOnly := cdsDados.State = dsBrowse;
  keyPreview := False;
  cdsSegmento.Edit;
  DBGrid2.SelectedIndex:=1;
end;

procedure TFfrmDefeito.DBGrid2Exit(Sender: TObject);
begin
  if (sbSalvar.Visible) then fSomaAna;
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmDefeito.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>3 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmDefeito.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmDefeito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmDefeito);
end;

procedure TFfrmDefeito.sbIncluirClick(Sender: TObject);
var vana: Integer;
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
           cdsDadosLanc.AsInteger := frGenerator('CONT','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CONT_ID');
           cdsDadosData.AsDateTime := date;
           cdsDadosSafra.AsString := xAno;
           for vana := 1 to 5 do
           begin
             cdsSegmento.Append;
             cdsSegmentoLanc.asInteger   := cdsDadosLanc.asInteger;
             cdsSegmentoLancit.asInteger := frGenerator('CONTANA','LANCIT',1);
             cdsSegmentoIODO.asInteger   := vana;
             cdsSegmento.Post;
           end;
           DBEdit3.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From CONTCOM Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From CONTANA Where Lanc=0'+cdsDadosLanc.asString],1);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             cdsDadosForCod.AsInteger := frmPesquisaPro.vpCodPrincipal;
             cdsDadosForDes.AsString  := frmPesquisaPro.vpDescricao;
             cdsDadosVarCod.AsInteger := frmPesquisaVar.vpCodPrincipal;
             cdsDadosVarDes.AsString  := frmPesquisaVar.vpDescricao;
             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsDetalhe.ApplyUpdates(-1);
             cdsSegmento.ApplyUpdates(-1);
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

procedure TFfrmDefeito.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from cont where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmDefeito.fSomaAna;
var vreg: Integer; vami, vsst, vfir: Double;
begin
  if not rzpDados.Visible then Exit;

  if cdsSegmento.State in [dsInsert, dsEdit] then
    cdsSegmento.Post;

  vreg := cdsSegmentoLancit.AsInteger;
  cdsSegmento.First;
  vami := 0;
  vsst := 0;
  vfir := 0;
  while not cdsSegmento.eof do
  begin
    vami := vami + cdsSegmentoAmido.asFloat;
    vsst := vsst + cdsSegmentoSST.asFloat;
    vfir := vfir + cdsSegmentoFirme.asFloat;
    cdsSegmento.Next;
  end;
  if cdsDados.State in [dsInsert, dsEdit] then
  begin
    cdsDadosAmido.asFloat := StrToFloat(FloatToStrF(vami/5,ffFixed,8,1));
    cdsDadosSST.asFloat   := StrToFloat(FloatToStrF(vsst/5,ffFixed,8,1));
    cdsDadosFirme.asFloat := StrToFloat(FloatToStrF(vfir/5,ffFixed,8,1));
    cdsSegmento.Locate('Lancit', vreg, []);
  end;
end;

procedure TFfrmDefeito.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Append;
  dbGrid1.SelectedIndex := 0;
end;

procedure TFfrmDefeito.MenuItem1Click(Sender: TObject);
begin
  inherited;
  cdsSegmento.Cancel;
  cdsSegmento.First;
end;

procedure TFfrmDefeito.MenuItem2Click(Sender: TObject);
begin
  inherited;
  cdsSegmento.Cancel;
  cdsSegmento.First;
end;

procedure TFfrmDefeito.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDetalhe.close;
    sqlDetalhe.SQL.Clear;
    sqlDetalhe.SQL.Add('select * from contcom ');
    sqlDetalhe.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlDetalhe.SQL.Add('order by lancit');
    cdsDetalhe.Open;

    cdsSegmento.close;
    sqlSegmento.SQL.Clear;
    sqlSegmento.SQL.Add('select * from contana ');
    sqlSegmento.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlSegmento.SQL.Add('order by lancit');
    cdsSegmento.Open;

    frmPesquisaPro.pRetornaDados(cdsDadosForCod.AsString);
    frmPesquisaVar.pRetornaDados(cdsDadosVarCod.AsString);

  end;
end;

end.

