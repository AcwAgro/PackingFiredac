unit frmRomanEmbal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, ShellApi, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmRomanEmbal = class(TFModelo)
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosHORINI: TStringField;
    sqlDadosHORFIM: TStringField;
    sqlDadosQTDEBIN: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosDATAFIN: TSQLTimeStampField;
    sqlDadosLOTE: TIntegerField;
    sqlDadosPESOPRO: TBCDField;
    sqlDadosPERCA: TBCDField;
    sqlDadosPEREC: TBCDField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosFECHA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosHORINI: TStringField;
    cdsDadosHORFIM: TStringField;
    cdsDadosQTDEBIN: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosDATAFIN: TSQLTimeStampField;
    cdsDadosLOTE: TIntegerField;
    cdsDadosPESOPRO: TBCDField;
    cdsDadosPERCA: TBCDField;
    cdsDadosPEREC: TBCDField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosFECHA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    dsRomanEmb: TDataSource;
    cdsRomanEmb: TClientDataSet;
    dspRomanEmb: TDataSetProvider;
    GroupBox1: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit17: TDBEdit;
    sqlDadosCODLOTECLASS: TStringField;
    cdsDadosCODLOTECLASS: TStringField;
    frmPesquisaVarie: TfrmPesquisa;
    sqlDadosprodnom: TStringField;
    cdsDadosprodnom: TStringField;
    sqlDadosOBS: TStringField;
    cdsDadosOBS: TStringField;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosFGENVIAWEB: TStringField;
    cdsDadosFGENVIAWEB: TStringField;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    GroupBox9: TGroupBox;
    Sb: TStatusBar;
    pbBarra: TProgressBar;
    cdsRomanEmbLANCIT: TIntegerField;
    cdsRomanEmbLANC: TIntegerField;
    cdsRomanEmbEMBALCOD: TIntegerField;
    cdsRomanEmbEMPRECOD: TIntegerField;
    cdsRomanEmbACESOCOD: TIntegerField;
    cdsRomanEmbDATA: TSQLTimeStampField;
    cdsRomanEmbEMBALDES: TStringField;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    cdsRomanEmbPRODCOD: TIntegerField;
    cdsRomanEmbPRODDES: TStringField;
    cdsRomanEmbQTDE: TIntegerField;
    cdsRomanEmbvCATEGCOD: TIntegerField;
    cdsRomanEmbvCATEGDES: TStringField;
    cdsRomanEmbvCATEGCLC: TIntegerField;
    cdsRomanEmbvCATEGCLD: TStringField;
    cdsRomanEmbvPerc: TCurrencyField;
    edSoma: TEdit;
    dbDadosDBTableView1LOTE: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1DATAFIN: TcxGridDBColumn;
    dbDadosDBTableView1prodnom: TcxGridDBColumn;
    dbDadosDBTableView1FECHA: TcxGridDBColumn;
    dbDadosDBTableView1FGENVIAWEB: TcxGridDBColumn;
    dbDadosDBTableView1QTDEBIN: TcxGridDBColumn;
    dbDadosDBTableView1HORINI: TcxGridDBColumn;
    dbDadosDBTableView1HORFIM: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1PESOPRO: TcxGridDBColumn;
    dbDadosDBTableView1PERCA: TcxGridDBColumn;
    dbDadosDBTableView1PEREC: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn;
    dbDadosDBTableView1LOCALCOD: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    sqlDadosPRODUTORCOD: TIntegerField;
    sqlDadosQTDEMER: TBCDField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosPRODUTORCOD: TIntegerField;
    cdsDadosQTDEMER: TBCDField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsRomanEmbREGLOG: TStringField;
    cdsRomanEmbREG_ID: TIntegerField;
    sqlRomanEmb: TFDQuery;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure cdsRomanEmbBeforePost(DataSet: TDataSet);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure cdsRomanEmbCalcFields(DataSet: TDataSet);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure pSomaQtde;

  public
    { Public declarations }
  end;

var
  FfrmRomanEmbal: TFfrmRomanEmbal;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlPSPLote, frmRomanRastrear;

var
  AverageSpeed: Double = 0;

procedure TFfrmRomanEmbal.FormCreate(Sender: TObject);
begin
  inherited;

  frmPesquisaVarie.pInicia('ttVariedade', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);

end;

procedure TFfrmRomanEmbal.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomanEmbal.cdsRomanEmbBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanEmb.FieldByName('Lanc').asInteger = 0 then  cdsRomanEmb.FieldByName('Lanc').asInteger:= cdsDadosLanc.asInteger;
  if cdsRomanEmb.FieldByName('Lancit').asInteger = 0 then  cdsRomanEmb.FieldByName('Lancit').asInteger:= frGenerator('ROMANMER','LANCIT',1);
  if cdsRomanEmbREG_ID.asInteger = 0 then cdsRomanEmbREG_ID.asInteger := frGeneratorFB('GEN_ROMANEMBAL_ID');
end;

procedure TFfrmRomanEmbal.cdsRomanEmbCalcFields(DataSet: TDataSet);
var vcateg: String;
    vtotal: Double;
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;

  vtotal := StrToFloatDef(edSoma.Text,0);

  if vtotal <> 0  then
    cdsRomanEmbvPerc.asFloat := cdsRomanEmbQtde.asFloat * 100 / vtotal;

  vcateg := cdsRomanEmbPRODCOD.asString;

  if (StrToIntDef(vcateg,0) > 0) then
  begin
    vcateg := IntToStr(StrToIntDef(Copy(vcateg, length(vcateg)-4, 2),0));
    fSql(1,1,['Select descricao, variecod, variedes from cadcateg where codigo = 0'+vcateg],1);
    if (dm.qrSql1.RecordCount > 0) then
    begin
      cdsRomanEmbvCATEGCOD.asInteger := StrToIntDef(vcateg,0);
      cdsRomanEmbvCATEGDES.asString  := 'SubCategoria ('+dm.qrSql1.Fields[0].asString+')';
      cdsRomanEmbvCATEGCLC.asInteger := dm.qrSql1.Fields[1].asInteger;
      cdsRomanEmbvCATEGCLD.asString  := 'Categoria ('+dm.qrSql1.Fields[2].asString+')';;
    end;
  end;

end;

procedure TFfrmRomanEmbal.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
{  if (cdsDadosFECHA.asString <> 'S') then
  begin
    With dbDados do
    begin
      Canvas.Font.Color := clRed;
      Canvas.Brush.Color := clBtnFace;
      DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
    end;
  end;}
end;

procedure TFfrmRomanEmbal.DBGrid3ColExit(Sender: TObject);
var vcodigo: String;
begin
  if (not sbSalvar.Visible) then Exit;
  cdsRomanEmb.Edit;
  Case DBGrid3.SelectedIndex of
    0: begin
         if Copy(cdsRomanEmb.FieldByName('Qtde').Text,1,3)='999' then
         begin
           cdsRomanEmb.Delete;
           pSomaQtde;
           Abort;
         end;
         if cdsRomanEmb.FieldByName('Qtde').asFloat < 1 then
         begin
           ShowMessage('Opção Inválida!');
           Abort;
         end;
       end;
    1: begin
         if fTra(1,['Select Descricao From CadEmbal Where BarraCod=0'+cdsRomanEmb.FieldByName('EmbalCod').Text],1) then begin
            cdsRomanEmb.FieldByName('EmbalDes').Text:=dm.qrSqlTra.Fields[0].Text;
            DBGrid3.SelectedIndex := 3;
         end else begin
            FPQEmbalador;
            cdsRomanEmb.Edit;
            cdsRomanEmb.FieldByName('EmbalCod').asString := xpqResul;
            DBGrid3.SetFocus;
            DBGrid3.SelectedIndex:=1;
            Abort;
         end;
       end;
    3: begin
         //Verificar se digitou so categoria e calibre
         if (Length(Trim(cdsRomanEmb.FieldByName('ProdCod').asString)) = 5) then
         begin
           vcodigo := cdsDadosVarieCod.AsString + Copy(cdsRomanEmb.FieldByName('ProdCod').asString,1,5);
           cdsRomanEmb.FieldByName('ProdCod').asInteger := StrToIntDef(vcodigo,0);
         end;
         //Verificar se é a variedade acima digitada
         if cdsDadosVarieCod.AsString <> Copy(cdsRomanEmb.FieldByName('ProdCod').asString,1, Length(cdsDadosVarieCod.AsString)) then
         begin
           vcodigo := cdsDadosVarieCod.AsString + Copy(cdsRomanEmb.FieldByName('ProdCod').asString,3,5);
           cdsRomanEmb.FieldByName('ProdCod').asInteger := StrToIntDef(vcodigo,0);
         end;
         if fTra(1,['Select Descricao From CadProdu Where Codigo=0'+cdsRomanEmb.FieldByName('ProdCod').Text],1) then
         begin
            cdsRomanEmb.FieldByName('ProdDes').Text:=dm.qrSqlTra.Fields[0].Text;
            DBGrid3.SelectedIndex:=4;
         end else begin
            fPqProduto(cdsDadosVarieCod.AsString);
            cdsRomanEmb.Edit;
            cdsRomanEmb.FieldByName('ProdCod').asString := xpqResul;
            DBGrid3.SetFocus;
            DBGrid3.SelectedIndex:=3;
            Abort;
         end;
       end;
    4: begin
         cdsRomanEmb.Post; cdsRomanEmb.Next;
         if cdsRomanEmb.Eof then cdsRomanEmb.Append;
         DBGrid3.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmRomanEmbal.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsRomanEmb.Edit;
  DBGrid3.ReadOnly := False;
  DBGrid3.SelectedIndex:=0;

end;

procedure TFfrmRomanEmbal.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;

end;

procedure TFfrmRomanEmbal.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
    if DBGrid3.SelectedIndex <> 4 then
      DBGrid3.SelectedIndex := DBGrid3.SelectedIndex+1
    else
      DBGrid3.SelectedIndex:=0;
  end;

end;

procedure TFfrmRomanEmbal.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsRomanEmb.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsRomanEmb.Delete;

end;

procedure TFfrmRomanEmbal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomanEmbal);
end;

procedure TFfrmRomanEmbal.sbIncluirClick(Sender: TObject);
var vlot,vlanc:Integer;
begin

  GroupBox9.Enabled := False;

  Case TComponent(Sender).Tag of
    12,14: Exit;
  End;

  if TComponent(Sender).Tag = 18 then
  begin
    pcItem.ActivePageIndex := 1;
    gdsDetalhe := cdsRomanEmb;
  end;

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime) then
    exit;

  inherited;

  Case TComponent(Sender).Tag of
     13: begin
          GroupBox9.Enabled := True;
          cdsDados.Edit;
          cdsRomanEmb.Edit;
          DBGrid3.SetFocus;
          DBGrid3.SelectedIndex:=0;
         end;
     15: begin
           try
             pSomaQtde;
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsRomanEmb.ApplyUpdates(-1);
           except
             on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
           end;
           pLiberar('Geral');
         end;
     16: begin
           pLiberar('Geral');
         end;
    91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmRomanEmbal.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;

  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select roman.*, '
                  +' Cast(SubString((SELECT LIST(romanpro.proddes, '', '') from romanpro where romanpro.lanc = ROMAN.LANC) from 1 for 50) as varchar(50)) AS PRODNOM'
                  +' from roman where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)
                  + ' Order by data desc');
  cdsDados.Open;
  cdsDados.First
end;

procedure TFfrmRomanEmbal.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsRomanEmb.Append;
  dbGrid3.SetFocus;
end;

procedure TFfrmRomanEmbal.pcItemChange(Sender: TObject);
begin
  inherited;
  edSoma.Text := '';
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsRomanEmb.Close;
    sqlRomanEmb.Sql.Clear;
    sqlRomanEmb.Sql.Add('select * from romanembal');
    sqlRomanEmb.Sql.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlRomanEmb.Sql.Add('order by embalcod, prodcod');
    cdsRomanEmb.Open;
    frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
    pSomaQtde;
  end;
end;

procedure TFfrmRomanEmbal.pSomaQtde;
var vqtde: Integer;
begin
  vqtde := 0;
  cdsRomanEmb.DisableControls;

  cdsRomanEmb.First;
  while not cdsRomanEmb.eof do
  begin
    if (cdsRomanEmb.FieldByName('Qtde').asInteger = 0) or
       (cdsRomanEmb.FieldByName('EmbalCod').asInteger = 0) then
      cdsRomanEmb.Delete;
    cdsRomanEmb.Next;
  end;

  cdsRomanEmb.First;
  while not cdsRomanEmb.Eof do
  begin
    vqtde := vqtde + cdsRomanEmbQTDE.asInteger;
    cdsRomanEmb.Next;
  end;
  edSoma.Text := IntToStr(vqtde);
  cdsRomanEmb.First;
  cdsRomanEmb.EnableControls;

end;

end.

