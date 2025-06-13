unit FrmCadBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadBanco = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosCONTA: TStringField;
    sqlDadosLIMITE: TBCDField;
    sqlDadosCTC: TIntegerField;
    sqlDadosCTCDES: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCONTA: TStringField;
    cdsDadosLIMITE: TBCDField;
    cdsDadosCTC: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    frmPesquisaPlano: TfrmPesquisa;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    btnCobranca: TSpeedButton;
    GroupBox5: TGroupBox;
    frmPesquisaCob: TfrmPesquisa;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1LIMITE: TcxGridDBColumn;
    dbDadosDBTableView1CTC: TcxGridDBColumn;
    dbDadosDBTableView1CONTA: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1ATIVO: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure DBEdit4Exit(Sender: TObject);
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure btnCobrancaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadBanco: TFfrmCadBanco;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmCadBancocob;

procedure TFfrmCadBanco.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaPlano.pInicia('ttPlano',TForm(Sender),7,147,GroupBox4,True);
  frmPesquisaCob.pInicia('ttSoBanco',TForm(Sender),7,147,GroupBox5,True);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadBanco.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadBanco.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisaPlano.pRetornaDados(cdsDadosCTC.AsString);
end;

procedure TFfrmCadBanco.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadbanco where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadbanco where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadBanco);
end;

procedure TFfrmCadBanco.sbIncluirClick(Sender: TObject);
begin
  //Não pode deixar excluir contas 0,1,2
  if TComponent(Sender).Tag = 14 then
  begin
    if cdsDadosCodigo.asInteger < 3 then
    begin
      frPerg('Não pode excluir contas 0, 1 e 2!', 'OK');
      exit;
    end;
  end;
  if TComponent(Sender).Tag = 13 then
  begin
    if cdsDadosCodigo.asInteger = 0 then
    begin
      frPerg('Não pode alterar contas 0 - Contas a pagar!', 'OK');
      exit;
    end;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaPlano.pLimpaCampo;
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADBANCO','CODIGO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADBANCO_ID');
          cdsDadosATIVO.AsString  := 'S';
          DBEdit2.SetFocus;
        end;
     13: begin
          frmPesquisaPlano.pRetornaDados(cdsDadosCTC.AsString);
          cdsDados.Edit;
          DBEdit2.SetFocus;
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
            if vTag = 12 then
              cdsDadosCodigo.AsInteger := frGenerator('CADBANCO','CODIGO',1);

            cdsDadosCTC.AsInteger      := frmPesquisaPlano.vpCodPrincipal;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            //sDados.Refresh;
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
     91,92: frmPesquisaPlano.pRetornaDados(cdsDadosCTC.AsString);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadBanco.btnCobrancaClick(Sender: TObject);
begin
  inherited;
  frForm(TFfrmCadBancocob, FfrmCadBancocob);
end;

procedure TFfrmCadBanco.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

end.
