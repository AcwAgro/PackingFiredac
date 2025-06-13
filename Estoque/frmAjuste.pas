unit frmAjuste;

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
  TFfrmAjuste = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    dbrg1: TDBRadioGroup;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox9: TGroupBox;
    spb1: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit16: TcxDBDateEdit;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1ENTRADA: TcxGridDBColumn;
    dbDadosDBTableView1SAIDA: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1UNIDADE: TcxGridDBColumn;
    dbDadosDBTableView1LANCIT: TcxGridDBColumn;
    dbDadosDBTableView1ANTERIOR: TcxGridDBColumn;
    dbDadosDBTableView1SALDO: TcxGridDBColumn;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosLANCIT: TIntegerField;
    cdsDadosANTERIOR: TBCDField;
    cdsDadosENTRADA: TBCDField;
    cdsDadosSAIDA: TBCDField;
    cdsDadosSALDO: TBCDField;
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosLANCIT: TIntegerField;
    sqlDadosANTERIOR: TBCDField;
    sqlDadosENTRADA: TBCDField;
    sqlDadosSAIDA: TBCDField;
    sqlDadosSALDO: TBCDField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosOBS: TStringField;
    cdsDadosOBS: TStringField;
    sqlProduto: TFDQuery;
    sqlProdutoCODIGO: TIntegerField;
    sqlProdutoDESCRICAO: TStringField;
    sqlProdutoTIPO: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbPeriodoClick(Sender: TObject);
    procedure spb1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure dbrg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pAbrirTela(vatLanc: String);
  end;

var
  FfrmAjuste: TFfrmAjuste;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmAjuste.FormCreate(Sender: TObject);
begin
  inherited;
  sqlProduto.Close;
  sqlProduto.Open;
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmAjuste.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmAjuste.pAbrirTela(vatLanc: String);
begin
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from ajustecom where lanc = 0'+vatLanc);
  cdsDados.Open;
  pcItem.ActivePageIndex := 1;

end;

procedure TFfrmAjuste.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmAjuste);
end;

procedure TFfrmAjuste.sbIncluirClick(Sender: TObject);
var vtp, vobs: String;
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
          vtp  := cdsDadosUnidade.AsString;
          vobs := cdsDadosDescricao.AsString;
          cdsDados.Append;
          cdsDadosLanc.AsInteger := frGenerator('AJUSTECOM','LANC',1);
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_AJUSTECOM_ID');
          cdsDadosData.AsDateTime := Date;
          cdsDadosLancit.AsInteger := cdsDadosLanc.AsInteger;
          if vtp <> '' then cdsDadosUnidade.AsString := vtp
          else cdsDadosUnidade.AsString := 'M';
          //cdsDadosDescricao.AsString := vobs;
          cdsDadosEntrada.AsFloat := 0;
          cdsDadosSaida.AsFloat := 0;
          DBEdit16.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit16.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
         end;
     15: begin
          try
            if cdsDadosEntrada.AsFloat = 0 then
              cdsDadosEntrada.AsFloat := 0;
            if cdsDadosSaida.AsFloat = 0 then
              cdsDadosSaida.AsFloat := 0;
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
  end;
  vTag := TComponent(Sender).Tag;
end;
procedure TFfrmAjuste.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from ajustecom where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmAjuste.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if cdsDadosUnidade.AsString = 'P' then
  begin
    if sqlProduto.Locate('Codigo;Tipo', VarArrayOf([cdsDadosCodigo.asInteger, 'P']),[]) then
      cdsDadosDescricao.asString := sqlProdutoDescricao.AsString
    else begin
      sqlProduto.Close;
      sqlProduto.Open;
      spb1.onClick(spb1);
      DBEdit3.SetFocus;
    end;
  end
  else begin
    if sqlProduto.Locate('Codigo;Tipo', VarArrayOf([cdsDadosCodigo.asInteger, 'M']),[]) then
      cdsDadosDescricao.asString := sqlProdutoDescricao.AsString
    else begin
      sqlProduto.Close;
      sqlProduto.Open;
      spb1.onClick(spb1);
      DBEdit3.SetFocus;
    end;
  end;
end;

procedure TFfrmAjuste.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit16.SetFocus;
end;

procedure TFfrmAjuste.dbrg1Click(Sender: TObject);
begin
  if (not sbSalvar.Visible) then Exit;
  DBEdit8.SetFocus;

  if (dbrg1.ItemIndex = 0) then
    cdsDadosUnidade.AsString := 'P'
  else
    cdsDadosUnidade.AsString := 'M';

  Application.ProcessMessages;
  inherited;
  DBEdit3.SetFocus;
end;

procedure TFfrmAjuste.spb1Click(Sender: TObject);
begin
  if (not sbSalvar.Visible) then Exit;
  inherited;
  if cdsDadosUnidade.AsString = 'P' then
    fPqProduto
  else
    fPqMercadoria;
  if Trim(xpqResul) <> '' then
  begin
    cdsDadosCodigo.AsString := xpqResul;
    DBEdit3.SetFocus;
  end;
  xpqResul := '';
end;

end.

