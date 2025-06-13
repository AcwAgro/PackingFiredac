Unit frmCustoCategoria;

interface

uses
  Windows, Forms, SysUtils, DBTables, ExtCtrls, StdCtrls, Dialogs, Db,
  Menus, DBCtrls, Buttons, Graphics, Controls, Classes, Mask, Grids,
  DBGrids, DBClient, Provider, RzPanel;

type
  TFfrmCustoCategoria = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Exclui1: TMenuItem;
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    sbEditar: TSpeedButton;
    RzPanel2: TRzPanel;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosVAL1: TFloatField;
    sqlDadosVAL2: TFloatField;
    sqlDadosVAL3: TFloatField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosVAL1: TFloatField;
    cdsDadosVAL2: TFloatField;
    cdsDadosVAL3: TFloatField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbEditarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure Exclui1Click(Sender: TObject);
    procedure cdsDadosBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FfrmCustoCategoria: TFfrmCustoCategoria;

implementation

uses Rotina, Data, Menu, Pesq;

{$R *.DFM}

procedure TFfrmCustoCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmCustoCategoria);
end;

procedure TFfrmCustoCategoria.FormCreate(Sender: TObject);
begin
  cdsDados.Open;
end;

procedure TFfrmCustoCategoria.sbEditarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := False;
  sbEditar.Enabled := False;
  sbSalvar.Enabled := True;
  cdsDados.Edit;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := 2;
end;

procedure TFfrmCustoCategoria.sbSalvarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := True;
  sbEditar.Enabled := True;
  sbSalvar.Enabled := False;
  if cdsDados.State = dsEdit then
    cdsDados.Post;
  cdsDados.ApplyUpdates(0);
end;

procedure TFfrmCustoCategoria.DBGrid1Enter(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := False;

end;

procedure TFfrmCustoCategoria.DBGrid1Exit(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := True;

end;

procedure TFfrmCustoCategoria.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
    if DBGrid1.SelectedIndex>=DBGrid1.Columns.Count-1 then 
    begin
      DBGrid1.SelectedIndex:=2;
      cdsDados.Next;
    end
    else DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1;
  end;
end;

procedure TFfrmCustoCategoria.Exclui1Click(Sender: TObject);
begin
  cdsDados.Cancel;
end;

procedure TFfrmCustoCategoria.cdsDadosBeforeInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
end;

end.
