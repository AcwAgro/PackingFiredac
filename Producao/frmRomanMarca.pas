unit frmRomanMarca;

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
  TFfrmRomanMarca = class(TFModelo)
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
    dsRomanMar: TDataSource;
    cdsRomanMar: TClientDataSet;
    dspRomanMar: TDataSetProvider;
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
    cdsRomanMarLANCIT: TIntegerField;
    cdsRomanMarLANC: TIntegerField;
    cdsRomanMarEMPRECOD: TIntegerField;
    cdsRomanMarACESOCOD: TIntegerField;
    cdsRomanMarDATA: TSQLTimeStampField;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    cdsRomanMarPRODCOD: TIntegerField;
    cdsRomanMarPRODDES: TStringField;
    cdsRomanMarQTDE: TIntegerField;
    cdsRomanMarvCATEGCOD: TIntegerField;
    cdsRomanMarvCATEGDES: TStringField;
    cdsRomanMarvCATEGCLC: TIntegerField;
    cdsRomanMarvCATEGCLD: TStringField;
    cdsRomanMarvPerc: TCurrencyField;
    cdsRomanMarMARCACOD: TIntegerField;
    cdsRomanMarMARCADES: TStringField;
    edSoma: TEdit;
    sqlDadosPRODUTORCOD: TIntegerField;
    sqlDadosQTDEMER: TBCDField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosPRODUTORCOD: TIntegerField;
    cdsDadosQTDEMER: TBCDField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsRomanMarREGLOG: TStringField;
    cdsRomanMarREG_ID: TIntegerField;
    sqlRomanMar: TFDQuery;
    sqlRomanMarLANCIT: TIntegerField;
    sqlRomanMarLANC: TIntegerField;
    sqlRomanMarMARCACOD: TIntegerField;
    sqlRomanMarMARCADES: TStringField;
    sqlRomanMarPRODCOD: TIntegerField;
    sqlRomanMarPRODDES: TStringField;
    sqlRomanMarQTDE: TIntegerField;
    sqlRomanMarDATA: TSQLTimeStampField;
    sqlRomanMarEMPRECOD: TIntegerField;
    sqlRomanMarACESOCOD: TIntegerField;
    sqlRomanMarREGLOG: TStringField;
    sqlRomanMarREG_ID: TIntegerField;
    sqlDadosPRODNOM: TStringField;
    cdsDadosPRODNOM: TStringField;
    dbDadosDBTableView1LOTE: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1DATAFIN: TcxGridDBColumn;
    dbDadosDBTableView1FECHA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1PRODNOM: TcxGridDBColumn;
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
    procedure cdsRomanMarBeforePost(DataSet: TDataSet);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure cdsRomanMarCalcFields(DataSet: TDataSet);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure pSomaQtde;

  public
    { Public declarations }
  end;

var
  FfrmRomanMarca: TFfrmRomanMarca;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlPSPLote, frmRomanRastrear;

var
  AverageSpeed: Double = 0;

procedure TFfrmRomanMarca.FormCreate(Sender: TObject);
begin
  inherited;

  frmPesquisaVarie.pInicia('ttVariedade', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);

end;

procedure TFfrmRomanMarca.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomanMarca.cdsRomanMarBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanMar.FieldByName('Lanc').asInteger = 0 then  cdsRomanMar.FieldByName('Lanc').asInteger:= cdsDadosLanc.asInteger;
  if cdsRomanMar.FieldByName('Lancit').asInteger = 0 then cdsRomanMar.FieldByName('Lancit').asInteger:= frGenerator('ROMANMER','LANCIT',1);
  if cdsRomanMarREG_ID.asInteger = 0 then cdsRomanMarREG_ID.asInteger := frGeneratorFB('GEN_ROMANMER_ID');
end;

procedure TFfrmRomanMarca.cdsRomanMarCalcFields(DataSet: TDataSet);
var vcateg: String;
    vtotal: Double;
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;

  vtotal := StrToFloatDef(edSoma.Text,0);

  if vtotal <> 0  then
    cdsRomanMarvPerc.asFloat := cdsRomanMarQtde.asFloat * 100 / vtotal;

  vcateg := cdsRomanMarPRODCOD.asString;

  if (StrToIntDef(vcateg,0) > 0) then
  begin
    vcateg := IntToStr(StrToIntDef(Copy(vcateg, length(vcateg)-4, 2),0));
    fSql(1,1,['Select descricao, variecod, variedes from cadcateg where codigo = 0'+vcateg],1);
    if (dm.qrSql1.RecordCount > 0) then
    begin
      cdsRomanMarvCATEGCOD.asInteger := StrToIntDef(vcateg,0);
      cdsRomanMarvCATEGDES.asString  := 'SubCategoria ('+dm.qrSql1.Fields[0].asString+')';
      cdsRomanMarvCATEGCLC.asInteger := dm.qrSql1.Fields[1].asInteger;
      cdsRomanMarvCATEGCLD.asString  := 'Categoria ('+dm.qrSql1.Fields[2].asString+')';;
    end;
  end;

end;

procedure TFfrmRomanMarca.dbDadosDrawColumnCell(Sender: TObject;
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

procedure TFfrmRomanMarca.DBGrid3ColExit(Sender: TObject);
var vcodigo: String;
begin
  if (not sbSalvar.Visible) then Exit;
  cdsRomanMar.Edit;
  Case DBGrid3.SelectedIndex of
    0: begin
         if Copy(cdsRomanMar.FieldByName('Qtde').Text,1,3)='999' then
         begin
           cdsRomanMar.Delete;
           pSomaQtde;
           Abort;
         end;
         if cdsRomanMar.FieldByName('Qtde').asFloat < 1 then
         begin
           ShowMessage('Opção Inválida!');
           Abort;
         end;
       end;
    1: begin
         if fTra(1,['Select Descricao From CadMarca Where Codigo=0'+cdsRomanMar.FieldByName('MarcaCod').Text],1) then begin
            cdsRomanMar.FieldByName('MarcaDes').Text:=dm.qrSqlTra.Fields[0].Text;
            DBGrid3.SelectedIndex := 3;
         end else begin
            FPQMarca;
            cdsRomanMar.Edit;
            cdsRomanMar.FieldByName('MarcaCod').asString := xpqResul;
            DBGrid3.SetFocus;
            DBGrid3.SelectedIndex:=0;
            Abort;
         end;
       end;
    3: begin
         //Verificar se digitou so categoria e calibre
         if (Length(Trim(cdsRomanMar.FieldByName('ProdCod').asString)) = 5) then
         begin
           vcodigo := cdsDadosVarieCod.AsString + Copy(cdsRomanMar.FieldByName('ProdCod').asString,1,5);
           cdsRomanMar.FieldByName('ProdCod').asInteger := StrToIntDef(vcodigo,0);
         end;
         //Verificar se é a variedade acima digitada
         if cdsDadosVarieCod.AsString <> Copy(cdsRomanMar.FieldByName('ProdCod').asString,1, Length(cdsDadosVarieCod.AsString)) then
         begin
           vcodigo := cdsDadosVarieCod.AsString + Copy(cdsRomanMar.FieldByName('ProdCod').asString,3,5);
           cdsRomanMar.FieldByName('ProdCod').asInteger := StrToIntDef(vcodigo,0);
         end;
         if fTra(1,['Select Descricao From CadProdu Where Codigo=0'+cdsRomanMar.FieldByName('ProdCod').Text],1) then
         begin
            cdsRomanMar.FieldByName('ProdDes').Text:=dm.qrSqlTra.Fields[0].Text;
            DBGrid3.SelectedIndex:=4;
         end else begin
            fPqProduto(cdsDadosVarieCod.AsString);
            cdsRomanMar.Edit;
            cdsRomanMar.FieldByName('ProdCod').asString := xpqResul;
            DBGrid3.SetFocus;
            DBGrid3.SelectedIndex:=3;
            Abort;
         end;
       end;
    4: begin
         cdsRomanMar.Post; cdsRomanMar.Next;
         if cdsRomanMar.Eof then cdsRomanMar.Append;
         DBGrid3.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmRomanMarca.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsRomanMar.Edit;
  DBGrid3.ReadOnly := False;
  DBGrid3.SelectedIndex:=0;

end;

procedure TFfrmRomanMarca.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;

end;

procedure TFfrmRomanMarca.DBGrid3KeyPress(Sender: TObject; var Key: Char);
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

procedure TFfrmRomanMarca.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsRomanMar.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsRomanMar.Delete;

end;

procedure TFfrmRomanMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomanMarca);
end;

procedure TFfrmRomanMarca.sbIncluirClick(Sender: TObject);
var vlot,vlanc:Integer;
begin

  GroupBox9.Enabled := False;

  Case TComponent(Sender).Tag of
    12,14: Exit;
  End;

  if TComponent(Sender).Tag = 18 then
  begin
    pcItem.ActivePageIndex := 1;
    gdsDetalhe := cdsRomanMar;
  end;

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime) then
    exit;

  inherited;

  Case TComponent(Sender).Tag of
     13: begin
          GroupBox9.Enabled := True;
          cdsDados.Edit;
          cdsRomanMar.Edit;
          DBGrid3.SetFocus;
          DBGrid3.SelectedIndex:=0;
        end;
     15: begin
           try

             pSomaQtde;
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsRomanMar.ApplyUpdates(-1);
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

procedure TFfrmRomanMarca.sbPeriodoClick(Sender: TObject);
var vlanc: Integer;
begin
  inherited;
  if cdsDados.Active  then vlanc := cdsDadosLanc.asInteger
  else vlanc := 0;
  pcItem.ActivePageIndex := 0;

  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select *'
                  +' Cast(SubString((SELECT LIST(romanpro.proddes, '', '') from romanpro where romanpro.lanc = ROMAN.LANC) from 1 for 50) as varchar(50)) AS PRODNOM'
                  +' from roman where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)
                  + ' Order by data desc');
  cdsDados.Open;

//  cdsDados.EnableControls;
  if vlanc = 0 then cdsDados.First
  else cdsDados.Locate('Lanc', vlanc, []);
end;

procedure TFfrmRomanMarca.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsRomanMar.Append;
  dbGrid3.SetFocus;
end;

procedure TFfrmRomanMarca.pcItemChange(Sender: TObject);
begin
  inherited;
  edSoma.Text := '';
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsRomanMar.Close;
    sqlRomanMar.Sql.Clear;
    sqlRomanMar.Sql.Add('select * from romanmarca');
    sqlRomanMar.Sql.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlRomanMar.Sql.Add('order by marcacod, prodcod');
    cdsRomanMar.Open;
    frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
    pSomaQtde;
  end;
end;

procedure TFfrmRomanMarca.pSomaQtde;
var vqtde: Integer;
begin
  vqtde := 0;
  cdsRomanMar.DisableControls;

  cdsRomanMar.First;
  while not cdsRomanMar.eof do
  begin
    if (cdsRomanMar.FieldByName('Qtde').asInteger = 0) or
       (cdsRomanMar.FieldByName('MarcaCod').asInteger = 0) then
      cdsRomanMar.Delete;
    cdsRomanMar.Next;
  end;

  cdsRomanMar.First;
  while not cdsRomanMar.Eof do
  begin
    vqtde := vqtde + cdsRomanMarQTDE.asInteger;
    cdsRomanMar.Next;
  end;
  edSoma.Text := IntToStr(vqtde);
  cdsRomanMar.First;
  cdsRomanMar.EnableControls;

end;

end.

