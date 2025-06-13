unit frmManutenc;

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
  TFfrmManutenc = class(TFModelo)
    sqlDadosLANC: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosNOME: TStringField;
    sqlDadosPLACA: TStringField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosFORNECOD: TIntegerField;
    sqlDadosFORNEDES: TStringField;
    sqlDadosVALOR: TBCDField;
    sqlDadosOBS: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosPLACA: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosFORNECOD: TIntegerField;
    cdsDadosFORNEDES: TStringField;
    cdsDadosVALOR: TBCDField;
    cdsDadosOBS: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit4: TDBEdit;
    frmPesquisaFor: TfrmPesquisa;
    frmPesquisaMaq: TfrmPesquisa;
    DBEdit3: TcxDBDateEdit;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1NOME: TcxGridDBColumn;
    dbDadosDBTableView1PLACA: TcxGridDBColumn;
    dbDadosDBTableView1FORNEDES: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1NUMERO: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1FORNECOD: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmManutenc: TFfrmManutenc;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmManutenc.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaMaq.pInicia('ttMaquina',TForm(Sender),7,147,GroupBox4,True);
  frmPesquisaFor.pInicia('ttFornecedor',TForm(Sender),7,147,GroupBox5,True);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmManutenc.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmManutenc.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaMaq.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
    cdsDadosPlaca.AsString   := frmPesquisaMaq.vpCampo_1;
end;


procedure TFfrmManutenc.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaMaq.pRetornaDados(cdsDadosCodigo.AsString);
    frmPesquisaFor.pRetornaDados(cdsDadosForneCod.AsString);
  end;
end;

procedure TFfrmManutenc.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmManutenc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmManutenc);
end;

procedure TFfrmManutenc.sbIncluirClick(Sender: TObject);
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
          frmPesquisaMaq.pLimpaCampo;
          frmPesquisaFor.pLimpaCampo;
          cdsDados.Append;
          cdsDadosLanc.AsInteger := frGenerator('MMVEICULO','LANC',1);
          cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_MMVEICULO_ID');
          cdsDadosData.AsDateTime := Date;
          cdsDadosValor.AsFloat := 0;
          DBEdit3.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit3.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosForneCod.AsInteger := frmPesquisaFor.vpCodPrincipal;
            cdsDadosForneDes.AsString  := frmPesquisaFor.vpDescricao;
            cdsDadosCodigo.AsInteger   := frmPesquisaMaq.vpCodPrincipal;
            cdsDadosNome.AsString      := frmPesquisaMaq.vpDescricao;
            cdsDadosPlaca.AsString     := frmPesquisaMaq.vpCampo_1;
            cdsDadosNumero.AsInteger   := cdsDadosLanc.AsInteger;
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

procedure TFfrmManutenc.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from mmveiculo where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

end.
