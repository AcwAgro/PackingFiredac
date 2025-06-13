Unit CustoGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables, Grids,
  DBGrids;

type
  TFCustoGrupo = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Exclui1: TMenuItem;
    Excluir1: TMenuItem;
    Pesquisar1: TMenuItem;
    Table1CODIGO: TIntegerField;
    Table1DESCRICAO: TStringField;
    Table1EMPRECOD: TIntegerField;
    Table1ACESOCOD: TIntegerField;
    Table1PESOLIQ: TFloatField;
    Table1VAL1: TFloatField;
    Table1VAL2: TFloatField;
    Table1VAL3: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    { Public declarations }
  end;

var
  FCustoGrupo: TFCustoGrupo;

implementation

uses Rotina, Data, Pesq;

{$R *.DFM}

procedure TFCustoGrupo.FormActivate(Sender: TObject);
begin
  if not Table1.Active then Table1.Open;
  if Table1.Filter<>xFiltro1 then Table1.Filter:=xFiltro1;
  DBGrid1.SelectedIndex:=2;
end;

procedure TFCustoGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FCustoGrupo);
end;

procedure TFCustoGrupo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
    if DBGrid1.SelectedIndex>=DBGrid1.Columns.Count-1 then DBGrid1.SelectedIndex:=2
    else DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1;
  end;
end;

procedure TFCustoGrupo.DBGrid1ColExit(Sender: TObject);
begin
  Table1.Edit;
  Table1.FieldByName('EmpreCod').asInteger:=xEmp;
  if DBGrid1.SelectedIndex=DBGrid1.Columns.Count-1 then begin
     Table1.Post; Table1.Next;
  end;
end;

end.
