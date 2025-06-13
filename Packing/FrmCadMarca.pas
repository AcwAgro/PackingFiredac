unit FrmCadMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa;

type
  TFfrmCadMarca = class(TFModelo)
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
    DBRadioGroup1: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosLIBERAR: TStringField;
    cdsDadosLIBERAR: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    rbLiberar: TRadioGroup;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
    procedure rbLiberarClick(Sender: TObject);
    procedure dbDadosCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadMarca: TFfrmCadMarca;

implementation

{$R *.dfm}
uses Data, Rotina, Esteira, zModeloRel;

procedure TFfrmCadMarca.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;

  cdsDados.Close;
  sqlDados.SQL.Text := 'select * from cadmarca where ativo = ''S''';
  cdsDados.Open;

  rzpMenu.Visible := False;
end;

procedure TFfrmCadMarca.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadMarca.rbLiberarClick(Sender: TObject);
begin
  inherited;

  if cdsDados.isEmpty then exit;

  cdsDados.Edit;

  if rbLiberar.ItemIndex = 0 then
    cdsDadosLIBERAR.AsString := 'S'
  else
    cdsDadosLIBERAR.AsString := 'N';

  cdsDados.ApplyUpdates(0);
  cdsDados.Refresh;

end;

procedure TFfrmCadMarca.dbDadosCellClick(Column: TColumn);
begin
  inherited;
  if (cdsDadosLIBERAR.AsString = 'S') then
    rbLiberar.ItemIndex := 0
  else
    rbLiberar.ItemIndex := 1
end;

procedure TFfrmCadMarca.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

end;

procedure TFfrmCadMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadMarca);

  FEsteira.tmLeitor.Enabled := True;

end;

procedure TFfrmCadMarca.sbIncluirClick(Sender: TObject);
begin
  inherited;
  try
    cdsDados.Cancel;
  except
  end;
  pLiberar('Geral');
  vTag := TComponent(Sender).Tag;

end;

end.
