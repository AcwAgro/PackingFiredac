unit frmMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa;

type
  TFfrmMov = class(TFModelo)
    frmPesquisaMaq: TfrmPesquisa;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    frmPesquisaFor: TfrmPesquisa;
    sqlDadosLANC: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosNOME: TStringField;
    sqlDadosPLACA: TStringField;
    sqlDadosDATA: TDateTimeField;
    sqlDadosFORNECOD: TIntegerField;
    sqlDadosFORNEDES: TStringField;
    sqlDadosVALOR: TFloatField;
    sqlDadosOBS: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosPLACA: TStringField;
    cdsDadosDATA: TDateTimeField;
    cdsDadosFORNECOD: TIntegerField;
    cdsDadosFORNEDES: TStringField;
    cdsDadosVALOR: TFloatField;
    cdsDadosOBS: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    dtpData: TDateTimePicker;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure dtpDataChange(Sender: TObject);
    procedure frmPesquisaMaqExit(Sender: TObject);
    procedure frmPesquisaForExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmMov: TFfrmMov;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmMov.FormCreate(Sender: TObject);
begin
  inherited;
  dtInicial.Date := Date - 60;
  dtFinal.Date := Date +40;
  frmPesquisaMaq.pInicia('ttMaquina',True);
  frmPesquisaFor.pInicia('ttFornecedor',True);
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
end;

procedure TFfrmMov.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmMov.frmPesquisaForExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosForneCod.AsInteger := frmPesquisaFor.vpCodPrincipal;
    cdsDadosForneDes.AsString  := frmPesquisaFor.vpDescricao;
  end;
end;

procedure TFfrmMov.frmPesquisaMaqExit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosCodigo.AsInteger := frmPesquisaMaq.vpCodPrincipal;
    cdsDadosNome.AsString    := frmPesquisaMaq.vpDescricao;
    cdsDadosPlaca.AsString   := frmPesquisaMaq.vpCampo_1;
  end;
end;

procedure TFfrmMov.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaMaq.pRetornaDados(cdsDadosCodigo.AsString);
    frmPesquisaFor.pRetornaDados(cdsDadosForneCod.AsString);
  end;
end;

procedure TFfrmMov.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmMov.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (vkey = 13) then
  begin
    dtpData.Date := cdsDadosDATA.Value;
    Application.ProcessMessages;
    if (FormatDateTime('mm/yyyy', cdsDadosData.AsDateTime) <> FormatDateTime('mm/yyyy', Date))  then
      frPerg('Data mês e ano,'+#13+'diferente da atual!', 'OK');
  end;
end;

procedure TFfrmMov.dtpDataChange(Sender: TObject);
begin
  inherited;
  cdsDadosDATA.Value := dtpData.Date;
end;

procedure TFfrmMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmMov);
end;

procedure TFfrmMov.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaMaq.pLimpaCampo;
          frmPesquisaFor.pLimpaCampo;
          cdsDados.Append;
          cdsDadosLanc.AsInteger := frGenerator('MMVEICULO','LANC',0) + 1;
          cdsDadosData.Value := Date;
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
         end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosCodigo.AsInteger := frGenerator('MMVEICULO','LANC',1);

            cdsDadosNumero.AsInteger := cdsDadosLanc.AsInteger;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(0);
            cdsDados.Refresh;
          except
            frPerg('Erro salvando dados!', 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           cdsDados.Cancel;
           pLiberar('Geral');
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;

end.
