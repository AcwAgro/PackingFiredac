unit FrmMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa;

type
  TFfrmMarca = class(TForm)
    dsDados: TDataSource;
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosATIVO: TStringField;
    cdsDadosLIBERAR: TStringField;
    dspDados: TDataSetProvider;
    sqlDados: TQuery;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosATIVO: TStringField;
    sqlDadosLIBERAR: TStringField;
    dbDados: TDBGrid;
    sbCancelar: TSpeedButton;
    timerCancelar: TTimer;
    procedure sbCancelarClick(Sender: TObject);
    procedure dbDadosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure timerCancelarTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmMarca: TFfrmMarca;

implementation

{$R *.dfm}
uses Data, Esteira;

procedure TFfrmMarca.dbDadosCellClick(Column: TColumn);
begin
  xmarca := cdsDadosCODIGO.AsInteger;
  Application.ProcessMessages;

  if xmarca > 0 then
    Close;
end;

procedure TFfrmMarca.FormShow(Sender: TObject);
begin

  if cdsDados.Active then
    cdsDados.Refresh
  else begin
    cdsDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Text := 'select * from cadmarca where ativo = ''S'' and liberar = ''S''';
    cdsDados.Open;
  end;
  if cdsDados.IsEmpty then
    timerCancelar.Enabled := True;

end;

procedure TFfrmMarca.sbCancelarClick(Sender: TObject);
begin
  if cdsDados.IsEmpty then
    xmarca := 999
  else
    xmarca := 0;
  Close;
end;

procedure TFfrmMarca.timerCancelarTimer(Sender: TObject);
begin

  timerCancelar.Enabled := False;
  xmarca := 999;
  Application.ProcessMessages;
  Close;
end;

end.
