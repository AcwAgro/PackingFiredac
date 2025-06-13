Unit CustoCategoria;

interface

uses
  Windows, Forms, SysUtils, DBTables, ExtCtrls, StdCtrls, Dialogs, Db,
  Menus, DBCtrls, Buttons, Graphics, Controls, Classes, Mask, Grids,
  DBGrids;

type
  TFCustoCategoria = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Exclui1: TMenuItem;
    Excluir1: TMenuItem;
    Pesquisar1: TMenuItem;
    Table1CODIGO: TIntegerField;
    Table1DESCRICAO: TStringField;
    Table1VARIECOD: TIntegerField;
    Table1VARIEDES: TStringField;
    Table1EMPRECOD: TIntegerField;
    Table1ACESOCOD: TIntegerField;
    Table1VAL1: TFloatField;
    Table1VAL2: TFloatField;
    Table1VAL3: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    { Public declarations }
  end;

var
  FCustoCategoria: TFCustoCategoria;

implementation

uses Rotina, Data, Menu, Pesq;

{$R *.DFM}

procedure TFCustoCategoria.FormActivate(Sender: TObject);
begin
  if not Table1.Active then Table1.Open;
  if Table1.Filter<>xFiltro1 then Table1.Filter:=xFiltro1;
  DBGrid1.SelectedIndex:=2;
end;

procedure TFCustoCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FCustoCategoria);
end;

procedure TFCustoCategoria.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
    if DBGrid1.SelectedIndex>=DBGrid1.Columns.Count-1 then DBGrid1.SelectedIndex:=1
    else DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1;
  end;
end;

procedure TFCustoCategoria.DBGrid1Enter(Sender: TObject);
begin
  Table1.Edit;
end;

procedure TFCustoCategoria.DBGrid1ColExit(Sender: TObject);
begin
  Table1.Edit;  Table1.Post;
end;

end.
