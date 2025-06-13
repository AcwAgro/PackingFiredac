unit frmCadChamaTela;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, AppEvnts;

type
  TFfrmChamaTela = class(TForm)
    PDados: TPanel;
    ApplicationEvents1: TApplicationEvents;
    Panel1: TPanel;
    sbAtualizar: TSpeedButton;
    sqlDados: TQuery;
    dsDados: TDataSource;
    GroupBox7: TGroupBox;
    dbDetalhe: TDBGrid;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
  public
    { Public declarations }
    procedure cttSql(ctTela, ctValor: String);
  end;

var
  FfrmChamaTela: TFfrmChamaTela;
  vTag,vKey:Integer;

implementation

uses Menu, Data;

{$R *.DFM}

procedure TFfrmChamaTela.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.wParam = VK_TAB) then
    vkey := 13;
end;


procedure TFfrmChamaTela.cttSql(ctTela, ctValor: String);
begin

  sqlDados.Close;
  sqlDados.Sql.Clear;

  if ctTela = 'CLA' then
  begin
{    sqlDados.Sql.Add('Select registro, data, valor, descricao, lanc');
    sqlDados.Sql.Add('  From esvenda');
    sqlDados.Sql.Add(' Where lanc = 0'+ctValor);
}
  end
  else if ctTela = 'EST' then
  begin
{    sqlDados.Sql.Add('Select registro, data, valor, descricao, lanc');
    sqlDados.Sql.Add('  From esvenda');
    sqlDados.Sql.Add(' Where lanc = 0'+ctValor);
}
  end
  else if ctTela = 'AJU' then
  begin
{    sqlDados.Sql.Add('Select registro, data, valor, descricao, lanc');
    sqlDados.Sql.Add('  From esvenda');
    sqlDados.Sql.Add(' Where lanc = 0'+ctValor);
}
  end
  else if ctTela = 'NFE' then
  begin
{    sqlDados.Sql.Add('Select registro, data, valor, descricao, lanc');
    sqlDados.Sql.Add('  From esvenda');
    sqlDados.Sql.Add(' Where lanc = 0'+ctValor);
}
  end
  else if ctTela = 'PED' then
  begin
    sqlDados.Sql.Add('Select cc.registro, cc.data, cc.valor, cc.descricao, cc.lanc');
    sqlDados.Sql.Add('  From esvenda cc, esvendco co');
    sqlDados.Sql.Add(' Where where (cc.lanc = co.lanc) and co.codigo > 0'+ctValor);
    sqlDados.Sql.Add('   and ((select top 1 ev.nota from nfvenda ev where ev.psp = cc.registro) is null)');
  end;
  sqlDados.Sql.Add(' Order by cc.lanc desc');
  sqlDados.Open;

end;

end.
