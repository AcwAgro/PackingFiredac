unit FrmCadForneGrupo;

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
  TFfrmCadForneGrupo = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlDadosID: TIntegerField;
    cdsDadosID: TIntegerField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadForneGrupo: TFfrmCadForneGrupo;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadForneGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadForneGrupo.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadForneGrupo.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadforne_grupo where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadforne_grupo where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadForneGrupo.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadForneGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadForneGrupo);
end;

procedure TFfrmCadForneGrupo.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADFORNEGRUPO_ID');
          cdsDadosID.AsInteger := frGenerator('GERAL','CADASTRO',1);
          cdsDadosCodigo.AsInteger := frGenerator('CADFORNEGRUPO','CODIGO',0) + 1;
          cdsDadosATIVO.AsString  := 'S';
          DBEdit2.SetFocus;
        end;
     13: begin
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
              cdsDadosCodigo.AsInteger := frGenerator('CADFORNEGRUPO','CODIGO',1);

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
  end;
  vTag := TComponent(Sender).Tag;
end;

end.
