unit frmRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmRecibo = class(TFModelo)
    DBRadioGroup1: TDBRadioGroup;
    GroupBox9: TGroupBox;
    DBEdit46: TDBEdit;
    GroupBox8: TGroupBox;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DBEdit44: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit43: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit47: TDBEdit;
    GroupBox2: TGroupBox;
    DBRichEdit1: TDBRichEdit;
    sqlDadosLANC: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosVALOR: TBCDField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosFORMA: TStringField;
    sqlDadosTERCEIRO: TStringField;
    sqlDadosCONFORME: TStringField;
    sqlDadosCPF: TStringField;
    sqlDadosDOC: TStringField;
    sqlDadosTIPO: TStringField;
    sqlDadosPROV1: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosVALOR: TBCDField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosFORMA: TStringField;
    cdsDadosTERCEIRO: TStringField;
    cdsDadosCONFORME: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosDOC: TStringField;
    cdsDadosTIPO: TStringField;
    cdsDadosPROV1: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosvlrExtenso: TStringField;
    frmPesquisaCFP: TfrmPesquisa;
    dbDadosDBTableView1NUMERO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1TERCEIRO: TcxGridDBColumn;
    dbDadosDBTableView1CONFORME: TcxGridDBColumn;
    dbDadosDBTableView1FORMA: TcxGridDBColumn;
    dbDadosDBTableView1CPF: TcxGridDBColumn;
    dbDadosDBTableView1DOC: TcxGridDBColumn;
    dbDadosDBTableView1TIPO: TcxGridDBColumn;
    dbDadosDBTableView1PROV1: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1vlrExtenso: TcxGridDBColumn;
    DBEdit45: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRichEdit1Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure GroupBox6Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure GroupBox6Enter(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure pIniciaPesquisa;
  public
    { Public declarations }
  end;

var
  FfrmRecibo: TFfrmRecibo;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlFIRecibo;


procedure TFfrmRecibo.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
  pIniciaPesquisa;
end;

procedure TFfrmRecibo.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRecibo.GroupBox6Enter(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

end;

procedure TFfrmRecibo.GroupBox6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaCFP.dbgLista.Visible then exit;

  cdsDadosTerceiro.AsString := frmPesquisaCFP.vpDescricao;
  if (Trim(cdsDadosCPF.AsString) = '') then
    cdsDadosCPF.AsString := frmPesquisaCFP.vpCampo_2;
end;

procedure TFfrmRecibo.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    pIniciaPesquisa;
    frmPesquisaCFP.edtPesquisa.Text := cdsDadosTerceiro.AsString;
  end;
end;

procedure TFfrmRecibo.pIniciaPesquisa;
begin
  if cdsDadosTipo.Text = '1' then frmPesquisaCFP.pInicia('ttCliente', FfrmRecibo,7,147,GroupBox6,true)
  else frmPesquisaCFP.pInicia('ttFornecedor', FfrmRecibo,7,147,GroupBox6,true);
end;

procedure TFfrmRecibo.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDadosVlrExtenso.AsString := frPree('('+frExte(cdsDadosValor.asFloat)+')',200,'x. ',1);
end;

procedure TFfrmRecibo.DBEdit44Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  cdsDadosCPF.AsString := frCPFC(cdsDadosCPF.asString);
end;

procedure TFfrmRecibo.DBRadioGroup1Exit(Sender: TObject);
begin
  inherited;
  pIniciaPesquisa;
end;

procedure TFfrmRecibo.DBRichEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit45.SetFocus;
end;

procedure TFfrmRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRecibo);
end;

procedure TFfrmRecibo.sbIncluirClick(Sender: TObject);
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
           frmPesquisaCFP.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('CXRECIBO','LANC',1);
           cdsDadosNumero.AsInteger := frGenerator('CXRECIBO','NUMERO',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CXRECIBO_ID');
           cdsDadosTipo.AsString := '2';
           pIniciaPesquisa;
           cdsDadosData.asDateTime := date;
           DBEdit45.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit45.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
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

procedure TFfrmRecibo.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from cxrecibo where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

end.

