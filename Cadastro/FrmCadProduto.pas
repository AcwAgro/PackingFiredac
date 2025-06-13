unit FrmCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, cxImageComboBox, System.ImageList, Vcl.ImgList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, cxContainer, cxTextEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadProduto = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox7: TGroupBox;
    dbDetalhe: TDBGrid;
    GroupBox5: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit6: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosCATEGCOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosCATEGDES: TStringField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosCOMPRA: TBCDField;
    sqlDadosVENDA1: TBCDField;
    sqlDadosVENDA2: TBCDField;
    sqlDadosCODVELHO: TIntegerField;
    sqlDadosCALIBRE: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosQTDECX: TBCDField;
    sqlDadosQTDEBA: TBCDField;
    sqlDadosETIQUETA: TStringField;
    sqlDadosOUTROS: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosCATEGCOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosCATEGDES: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosCOMPRA: TBCDField;
    cdsDadosVENDA1: TBCDField;
    cdsDadosVENDA2: TBCDField;
    cdsDadosCODVELHO: TIntegerField;
    cdsDadosCALIBRE: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosQTDECX: TBCDField;
    cdsDadosQTDEBA: TBCDField;
    cdsDadosETIQUETA: TStringField;
    cdsDadosOUTROS: TStringField;
    dspEstru: TDataSetProvider;
    cdsEstru: TClientDataSet;
    dsEstru: TDataSource;
    cdsEstruLANC: TIntegerField;
    cdsEstruCODIGO: TIntegerField;
    cdsEstruDESCRICAO: TStringField;
    cdsEstruQTDE: TBCDField;
    cdsEstruCOMPRA: TBCDField;
    cdsEstruLANCIT: TIntegerField;
    cdsEstruEMPRECOD: TIntegerField;
    cdsEstruACESOCOD: TIntegerField;
    cdsEstruPESOLIQ: TBCDField;
    cdsEstruUNIDADE: TStringField;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    sqlDadosNCM: TStringField;
    cdsDadosNCM: TStringField;
    frmPesquisaVarie: TfrmPesquisa;
    frmPesquisaCateg: TfrmPesquisa;
    GroupBox11: TGroupBox;
    DBEdit8: TDBEdit;
    sqlDadosICMS_ORI: TStringField;
    sqlDadosICMS_SIT: TStringField;
    cdsDadosICMS_ORI: TStringField;
    cdsDadosICMS_SIT: TStringField;
    GroupBox10: TGroupBox;
    GroupBox12: TGroupBox;
    DBEdit7: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    gbCSOSN: TGroupBox;
    btCSOSN: TButton;
    DBRadioGroup7: TDBRadioGroup;
    sqlDadosCALIBREDES: TStringField;
    cdsDadosCALIBREDES: TStringField;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    sqlDadosCUSTOFG: TStringField;
    sqlDadosCUSTOOPE: TBCDField;
    sqlDadosCUSTOEMB: TBCDField;
    sqlDadosCUSTOLUC: TBCDField;
    cdsDadosCUSTOFG: TStringField;
    cdsDadosCUSTOOPE: TBCDField;
    cdsDadosCUSTOEMB: TBCDField;
    cdsDadosCUSTOLUC: TBCDField;
    GroupBox17: TGroupBox;
    DBEdit12: TDBEdit;
    sqlDadosCEST: TStringField;
    cdsDadosCEST: TStringField;
    GroupBox18: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    sqlDadosIMPRIMEETIQ: TStringField;
    cdsDadosIMPRIMEETIQ: TStringField;
    GroupBox19: TGroupBox;
    DBEdit13: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosMOSTRAEST: TStringField;
    sqlDadosCODIGOID: TIntegerField;
    cdsDadosMOSTRAEST: TStringField;
    cdsDadosCODIGOID: TIntegerField;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox20: TGroupBox;
    sqlDadosMARCA: TStringField;
    cdsDadosMARCA: TStringField;
    cxMarca: TDBComboBox;
    GroupBox21: TGroupBox;
    DBEdit14: TDBEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsEstruREGLOG: TStringField;
    cdsEstruREG_ID: TIntegerField;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1UNIDADE: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1ATIVO: TcxGridDBColumn;
    dbDadosDBTableView1CODVELHO: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1CATEGCOD: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1CATEGDES: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1COMPRA: TcxGridDBColumn;
    dbDadosDBTableView1VENDA2: TcxGridDBColumn;
    dbDadosDBTableView1CALIBRE: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1QTDECX: TcxGridDBColumn;
    dbDadosDBTableView1QTDEBA: TcxGridDBColumn;
    dbDadosDBTableView1ETIQUETA: TcxGridDBColumn;
    dbDadosDBTableView1OUTROS: TcxGridDBColumn;
    dbDadosDBTableView1NCM: TcxGridDBColumn;
    dbDadosDBTableView1CALIBREDES: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_ORI: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_SIT: TcxGridDBColumn;
    dbDadosDBTableView1CUSTOFG: TcxGridDBColumn;
    dbDadosDBTableView1CUSTOOPE: TcxGridDBColumn;
    dbDadosDBTableView1CUSTOEMB: TcxGridDBColumn;
    dbDadosDBTableView1CUSTOLUC: TcxGridDBColumn;
    dbDadosDBTableView1CEST: TcxGridDBColumn;
    dbDadosDBTableView1VENDA1: TcxGridDBColumn;
    dbDadosDBTableView1IMPRIMEETIQ: TcxGridDBColumn;
    dbDadosDBTableView1MOSTRAEST: TcxGridDBColumn;
    dbDadosDBTableView1CODIGOID: TcxGridDBColumn;
    dbDadosDBTableView1MARCA: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    sqlEstru: TFDQuery;
    sqlEstruLANCIT: TIntegerField;
    sqlEstruLANC: TIntegerField;
    sqlEstruCODIGO: TIntegerField;
    sqlEstruDESCRICAO: TStringField;
    sqlEstruQTDE: TBCDField;
    sqlEstruCOMPRA: TBCDField;
    sqlEstruEMPRECOD: TIntegerField;
    sqlEstruACESOCOD: TIntegerField;
    sqlEstruPESOLIQ: TBCDField;
    sqlEstruUNIDADE: TStringField;
    sqlEstruREGLOG: TStringField;
    sqlEstruREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure dbDetalheColExit(Sender: TObject);
    procedure dbDetalheEnter(Sender: TObject);
    procedure dbDetalheKeyPress(Sender: TObject; var Key: Char);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure dbDetalheExit(Sender: TObject);
    procedure cdsEstruBeforePost(DataSet: TDataSet);
    procedure btCSOSNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure GroupBox9Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
  private
    { Private declarations }
    vLancit: Integer;
    procedure pMarca;
    procedure pIntegrarCodigoProducao;
  public
    { Public declarations }
  end;

var
  FfrmCadProduto: TFfrmCadProduto;


implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaVarie.pInicia('ttVariedade',TForm(Sender),7,147,GroupBox3,True);
  frmPesquisaCateg.pInicia('ttCategoria',TForm(Sender),7,147,GroupBox4,True);
  pcItem.ActivePageIndex := 0;

  rbgAtivo.Visible := True;
  cdsDados.Open;
  cdsEstru.Open;

end;

procedure TFfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadProduto.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsEstru.Append;
  dbDetalhe.SelectedIndex := 0;
end;

procedure TFfrmCadProduto.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaCateg.pRetornaDados(cdsDadosCategCod.AsString);
  end;
  gbCSOSN.Visible := dm.TEmpresa.FieldByName('simples').AsString = 'S';
end;

procedure TFfrmCadProduto.pMarca;
begin

  //marca
  cxMarca.Items.Clear;
  cxMarca.Items.Add('Frutas frescas');
  fsql(1,1,['select descricao from cadmarca where ativo = ''S'' group by descricao'],1);
  dm.qrSql1.First;
  while not dm.qrSql1.eof do
  begin
    if (dm.qrSql1.fields[0].asString <> 'Frutas frescas') and
       (Trim(dm.qrSql1.fields[0].asString) <> '') then
      cxMarca.Items.Add(dm.qrSql1.fields[0].asString);
    dm.qrSql1.Next;
  end;

end;

procedure TFfrmCadProduto.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsEstru.Close;
  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadprodu where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadprodu where ativo = ''N''';
  cdsDados.Open;
  cdsEstru.Open;

end;

procedure TFfrmCadProduto.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  if (Trim(cdsDadosDescricao.AsString) = '') then
    cdsDadosDescricao.AsString := Trim(frmPesquisaVarie.vpDescricao)+' ' //Variedade
                                + Trim(frmPesquisaCateg.vpDescricao)+' - ' //Categoria
                                + cdsDadosCalibreDes.asString+' ' //CalibreDes
                                + cdsDadosUnidade.asString+' ' //Unidade
                                + FormatFloat('0.###', cdsDadosPesoLiq.asFloat)+'kg'; //PesoLiquido

end;

procedure TFfrmCadProduto.DBEdit5Change(Sender: TObject);
begin
  inherited;

  if (not sbSalvar.Visible) or (vkey = 13) then Exit;
  cdsDadosCodigo.AsString := '';

end;

procedure TFfrmCadProduto.DBEdit5Exit(Sender: TObject);
var vvarie:String;
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  vvarie := IntToStr(frmPesquisaVarie.vpCodPrincipal);
  vvarie := frPree(vvarie, Length(vvarie),'0',0);

  if (cdsDadosCalibreDes.AsString = '') then
    cdsDadosCalibreDes.asString := IntToStr(cdsDadosCalibre.AsInteger);

  if (Trim(cdsDadosCodigo.AsString) = '') then
    cdsDadosCodigo.AsString := vvarie //Variedade
                             + frPree(frmPesquisaCateg.vpCodPrincipal,2,'0',0) //Categoria
                             + frPree(cdsDadosCalibre.asInteger,3,'0',0); //Calibre
  if (Trim(cdsDadosNCM.AsString) = '') then
    cdsDadosNCM.AsString := fBus(1,['Select NCM From CadVarie Where Codigo=0'+IntToStr(frmPesquisaVarie.vpCodPrincipal)],1);

end;

procedure TFfrmCadProduto.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsEstru.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsEstru.Delete;
end;

procedure TFfrmCadProduto.FormActivate(Sender: TObject);
begin
  inherited;
  cdsEstru.Close;
  cdsEstru.Open;
end;

procedure TFfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadProduto);
end;

procedure TFfrmCadProduto.sbIncluirClick(Sender: TObject);
var vcount: Integer;
begin
  inherited;

  if (vTag = 12) then
  begin
    vcount := fBus(1,['Select count(*) From CADPRODU Where CODIGO = 0'+cdsDadosCodigo.AsString +' and CODIGOID <> 0'+cdsDadosCodigoID.AsString],1);
    if (vcount > 0) then
    begin
      frPerg('Já existe esse código cadastrado, informar outro!', 'OK');
      dbEdit6.SetFocus;
      Exit;
    end;
  end;

  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          frmPesquisaVarie.pLimpaCampo;
          frmPesquisaCateg.pLimpaCampo;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADPRODU_ID');
          cdsDadosCodigoID.AsInteger := frGenerator('CADPRODU','CODIGOID',10);
          cdsDadosATIVO.AsString       := 'S';
          cdsDadosIMPRIMEETIQ.AsString := 'S';
          cdsDadosMOSTRAEST.AsString   := 'S';
          cdsDadosMARCA.AsString       := 'Frutas frescas';
          pMarca;
          frmPesquisaVarie.edtPesquisa.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          pMarca;
          frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
          frmPesquisaCateg.pRetornaDados(cdsDadosCategCod.AsString);
          frmPesquisaVarie.edtPesquisa.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosVarieCod.AsInteger:= frmPesquisaVarie.vpCodPrincipal;
            cdsDadosVarieDes.AsString := frmPesquisaVarie.vpDescricao;
            cdsDadosCategCod.AsInteger:= frmPesquisaCateg.vpCodPrincipal;
            cdsDadosCategDes.AsString := frmPesquisaCateg.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);

            pIntegrarCodigoProducao;

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
  91,92 :begin
           frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
           frmPesquisaCateg.pRetornaDados(cdsDadosCategCod.AsString);
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadProduto.btCSOSNClick(Sender: TObject);
begin
  inherited;
  FPQCSOSN;
end;

procedure TFfrmCadProduto.cdsEstruBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsEstruLanc.asInteger   = 0) then cdsEstruLanc.asInteger := cdsDadosCodigo.asInteger;
  if (cdsEstruLancit.asInteger = 0) then cdsEstruLancit.asInteger := frGenerator('CADPROBX','LANCIT',1);
end;

procedure TFfrmCadProduto.dbDetalheColExit(Sender: TObject);
begin
  inherited;
  cdsEstru.Edit;
  if dbDetalhe.SelectedIndex = 0 then
  begin
    if Copy(cdsEstruQtde.Text,1,3)='999' then begin
      cdsEstru.Delete; Abort;
    end;

     if (cdsEstruQtde.asInteger < 1) then
     begin
        ShowMessage('Opção Inválida!');
        Abort;
     end;
  end;

  if dbDetalhe.SelectedIndex = 1 then
  begin
    if fTra(1,['Select Descricao,PesoLiq,Compra,Unidade From CadMerca Where Codigo=0'+cdsEstruCodigo.Text],1) then
    begin
       cdsEstruDescricao.Text := dm.qrSqlTra.Fields[0].Text;
       cdsEstruPesoLiq.asFloat:= dm.qrSqlTra.Fields[1].asFloat;
       cdsEstruCompra.asFloat := dm.qrSqlTra.Fields[2].asFloat;
       cdsEstruUnidade.Text   := dm.qrSqlTra.Fields[3].Text;
    end
    else begin
       FPQMercaEmbalagem;
       cdsEstru.Edit;
       cdsEstruCodigo.asString := xpqResul;
       dbDetalhe.SetFocus;
       dbDetalhe.SelectedIndex:=0;
       Abort;
    end
  end;

  if dbDetalhe.SelectedIndex = dbDetalhe.Columns.Count-1 then
  begin
     cdsEstru.Post; cdsEstru.Next;
     if cdsEstru.Eof then cdsEstru.Append;
     dbDetalhe.SelectedIndex:=0;
  end;
end;

procedure TFfrmCadProduto.dbDetalheEnter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsEstru.Edit;
  dbDetalhe.SelectedIndex := 0;
end;

procedure TFfrmCadProduto.dbDetalheExit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
end;

procedure TFfrmCadProduto.dbDetalheKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 then begin key:=#0;
    if dbDetalhe.SelectedIndex <> dbDetalhe.Columns.Count-1 then
      dbDetalhe.SelectedIndex   := dbDetalhe.SelectedIndex+1
    else dbDetalhe.SelectedIndex:= 0;
  end;
end;

procedure TFfrmCadProduto.GroupBox9Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  if fBus(1,['Select Count(*) From CadProdu Where Codigo = 0'+cdsDadosCodigo.Text + ' and CodigoID <> 0'+cdsDadosCodigoID.Text],1) > 0 then
  begin
    ShowMessage('Código já existe, só permite alterações!');
    cdsDadosCodigo.AsString := '';
    dbEdit5.Setfocus;
    Exit;
  end;

end;

procedure TFfrmCadProduto.pIntegrarCodigoProducao;
begin
  if (cdsDadosCodVelho.AsInteger > 0) then
  begin
    fSql(1,2,['Update ROMANMER SET CODIAUX = 0'+Trim(cdsDadosCodVelho.asString),
              ' Where PRODCOD=0'+Trim(cdsDadosCodigo.asString)],2);
  end;
end;

end.
