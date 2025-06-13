unit frmPalet;

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
  TFfrmPalet = class(TFModelo)
    dsPaletPro: TDataSource;
    cdsPaletPro: TClientDataSet;
    dspPaletPro: TDataSetProvider;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosBAIXA: TStringField;
    sqlDadosQTDE: TBCDField;
    sqlDadosSAFRA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosPALET: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosBAIXA: TStringField;
    cdsDadosQTDE: TBCDField;
    cdsDadosSAFRA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosPALET: TIntegerField;
    DBGrid1: TDBGrid;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit6: TDBEdit;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    sqlDadosPALQTDE: TIntegerField;
    sqlDadosPRODCOD: TIntegerField;
    cdsDadosPALQTDE: TIntegerField;
    cdsDadosPRODCOD: TIntegerField;
    sqlDadoszVarieDes: TStringField;
    cdsDadoszVarieDes: TStringField;
    sbBaixar: TSpeedButton;
    DBEdit3: TcxDBDateEdit;
    dbDadosDBTableView1PALET: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1BAIXA: TcxGridDBColumn;
    dbDadosDBTableView1QTDE: TcxGridDBColumn;
    dbDadosDBTableView1zVarieDes: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1PALQTDE: TcxGridDBColumn;
    dbDadosDBTableView1NUMERO: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlPaletPro: TFDQuery;
    sqlPaletProLANCIT: TIntegerField;
    sqlPaletProNUMERO: TIntegerField;
    sqlPaletProQTDE: TBCDField;
    sqlPaletProCODIGO: TIntegerField;
    sqlPaletProDESCRICAO: TStringField;
    sqlPaletProUNIDADE: TStringField;
    sqlPaletProLOTELANC: TIntegerField;
    sqlPaletProLOTE: TIntegerField;
    sqlPaletProREGLOG: TStringField;
    sqlPaletProREG_ID: TIntegerField;
    sqlPaletProPRODCOD: TIntegerField;
    sqlPaletProPRODDES: TStringField;
    cdsPaletProLANCIT: TIntegerField;
    cdsPaletProNUMERO: TIntegerField;
    cdsPaletProQTDE: TBCDField;
    cdsPaletProCODIGO: TIntegerField;
    cdsPaletProDESCRICAO: TStringField;
    cdsPaletProUNIDADE: TStringField;
    cdsPaletProLOTELANC: TIntegerField;
    cdsPaletProLOTE: TIntegerField;
    cdsPaletProREGLOG: TStringField;
    cdsPaletProREG_ID: TIntegerField;
    cdsPaletProPRODCOD: TIntegerField;
    cdsPaletProPRODDES: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsPaletProBeforePost(DataSet: TDataSet);
    procedure sbBaixarClick(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
  private
    { Private declarations }
    procedure fSomaQtde;
  public
    { Public declarations }
  end;

var
  FfrmPalet: TFfrmPalet;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmPalet.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmPalet.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmPalet.cdsPaletProBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsPaletProNumero.asInteger = 0 then cdsPaletProNumero.asInteger := cdsDadosNumero.asInteger;
  if cdsPaletProLancit.asInteger = 0 then cdsPaletProLancit.asInteger := frGenerator('PALETPRO','LANCIT',1);
  if cdsPaletProREG_ID.asInteger = 0 then cdsPaletProREG_ID.asInteger := frGeneratorFB('GEN_PALETPRO_ID');
end;

procedure TFfrmPalet.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmPalet.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsPaletPro.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if cdsPaletPro.FieldByName('Qtde').asFloat<0.01 then begin
            ShowMessage('Qtde. Inválida!');
            DBGrid1.SelectedIndex:=0;
            Abort;
         end;
         if Copy(cdsPaletPro.FieldByName('Qtde').Text,1,3)='999' then begin
           cdsPaletPro.Delete; fSomaQtde; DBEdit5.SetFocus;
           Abort;
         end;
       end;
    1: begin
{         if fTra(1,['Select Lanc From Roman Where Lote=0'+cdsPaletPro.FieldByName('Lote').Text '+ ],1) then
         begin
            cdsPaletPro.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[0].Text;
            DBGrid1.SelectedIndex:=3;
         end else begin
            fPqProduto;
            cdsPaletPro.FieldByName('Codigo').asString := xpqResul;
            Abort;
         end;
         cdsPaletPro.Post; cdsPaletPro.Next;
         if cdsPaletPro.Eof then cdsPaletPro.Append;
         DBGrid1.SelectedIndex := 0;}
       end;
    2: begin
         if fTra(1,['Select Descricao,Unidade From CadProdu Where Codigo=0'+cdsPaletPro.FieldByName('Codigo').Text],1) then
         begin
            cdsPaletPro.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[0].Text;
            cdsPaletPro.FieldByName('Unidade').Text:=dm.qrSqlTra.Fields[1].Text;
            DBGrid1.SelectedIndex:=3;
         end else begin
            fPqProduto;
            cdsPaletPro.Edit;
            cdsPaletPro.FieldByName('Codigo').asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex:=2;
            Abort;
         end;
         cdsPaletPro.Post; cdsPaletPro.Next;
         if cdsPaletPro.Eof then cdsPaletPro.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmPalet.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  cdsPaletPro.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmPalet.DBGrid1Exit(Sender: TObject);
begin
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if cdsPaletPro.State in [dsInsert, dsEdit] then exit;
  if (sbSalvar.Visible) then fSomaQtde;
  inherited;
end;

procedure TFfrmPalet.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>3 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmPalet.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsPaletPro.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsPaletPro.Delete;
end;

procedure TFfrmPalet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmPalet);
end;

procedure TFfrmPalet.sbBaixarClick(Sender: TObject);
begin
  inherited;
  if cdsDados.IsEmpty then exit;

  pcItem.ActivePageIndex := 1;
  if cdsDadosBaixa.asString = 'S' then
    ShowMessage('Lançamento já baixado')
  else begin

    fSql(1,1,['UPDATE PALETCAB SET BAIXA = ''S'' Where NUMERO = 0'+cdsDadosNumero.Text],1);
    cdsDados.Edit;
    cdsDadosBaixa.AsString := 'S';
    cdsDados.Post;

  end;

end;

procedure TFfrmPalet.sbIncluirClick(Sender: TObject);
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
          cdsDados.Append;
          cdsDadosNumero.AsInteger  := frGenerator('PALETCAB','NUMERO',1);
          cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_PALETCAB_ID');
          cdsDadosPalet.AsInteger   := 0;
          cdsDadosSafra.AsString    := xAno;
          cdsDadosData.AsDateTime   := Date;
          cdsDadosBaixa.asString    := 'N';
          pcItem.OnChange(pcItem);
          cdsDadosPALQTDE.AsInteger := 1;
          DBEdit3.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit3.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From PALETPRO Where Numero=0'+cdsDadosNumero.asString],1);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try

             cdsDadosPRODCOD.asInteger := StrToIntDef(Copy(cdsPaletProCODIGO.AsString,1,2),0);
             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);
             cdsPaletPro.ApplyUpdates(-1);
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

procedure TFfrmPalet.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select pp.*, vv.descricao as zVarieDes');
  sqlDados.SQL.Add('from paletcab pp, cadvarie vv');
  sqlDados.SQL.Add('where pp.prodcod = vv.codigo');
  sqlDados.SQL.Add('  and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmPalet.fSomaQtde;
var vqtd: Double;
begin
  vqtd := 0;
  cdsPaletPro.First;
  while not cdsPaletPro.Eof do
  begin
   vqtd := vqtd + cdsPaletProQtde.AsFloat;
   cdsPaletPro.Next;
  end;
  cdsPaletPro.First;
  cdsDadosQtde.asFloat := vqtd;
end;

procedure TFfrmPalet.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsPaletPro.Append;
  dbGrid1.SelectedIndex := 0;
end;

procedure TFfrmPalet.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin

    cdsPaletPro.close;
    sqlPaletPro.SQL.Clear;
    sqlPaletPro.SQL.Add('select pp.*, rr.ProdCod, rr.ProdDes');
    sqlPaletPro.SQL.Add('  from paletpro pp');
    sqlPaletPro.SQL.Add('  left join RomanPro rr on rr.lanc = pp.lotelanc');
    sqlPaletPro.SQL.Add('  where pp.Numero = 0'+cdsDadosNumero.asString);
    sqlPaletPro.SQL.Add(' Order by pp.codigo, pp.LoteLanc');
    cdsPaletPro.Open;

  end;

end;

end.

