unit EstoqChamaTela;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, AppEvnts, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmEstoqChamaTela = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    dsDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    RzPanel1: TRzPanel;
    PDados: TPanel;
    Panel1: TPanel;
    sbAtualizar: TSpeedButton;
    GroupBox7: TGroupBox;
    dbDetalhe: TDBGrid;
    sqlDados: TFDQuery;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosVALOR: TBCDField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosLANC: TIntegerField;
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure dbDetalheDblClick(Sender: TObject);
  private
    xctTela: String;

  public
    { Public declarations }
    procedure cttSql(ctTela, ctValor: String; ctIni, ctFim:TDate);

  end;

var
  FfrmEstoqChamaTela: TFfrmEstoqChamaTela;
  vTag,vKey:Integer;

implementation

uses Menu, Data, Rotina, frmVendaProduto, frmVendaProdutoLote, frmNotaFiscal, frmRoman,
  frmAjuste;

{$R *.DFM}

procedure TFfrmEstoqChamaTela.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.wParam = VK_TAB) then
    vkey := 13;
end;


procedure TFfrmEstoqChamaTela.cttSql(ctTela, ctValor: String; ctIni, ctFim:TDate);
begin

  xctTela := ctTela;

  sqlDados.Close;
  sqlDados.Sql.Clear;

  if ctTela = 'CLA' then
  begin

    sqlDados.Sql.Add('Select distinct cc.lote as registro, cc.data, co.qtde as valor, cc.variedes as descricao, cc.lanc');
    sqlDados.Sql.Add('  From roman cc, romanmer co');
    sqlDados.Sql.Add(' Where (cc.lanc = co.lanc) and co.prodcod = 0'+ctValor);
    sqlDados.Sql.Add('   and  '+frWhereD('cc.Data', ctIni, ctFim));

  end
  else if ctTela = 'EST' then
  begin
    Exit;
  end
  else if ctTela = 'AJU' then
  begin
    sqlDados.Sql.Add('Select distinct cc.lanc as registro, cc.data, (cc.entrada + cc.saida) as valor, cc.descricao as descricao, cc.lanc');
    sqlDados.Sql.Add('  From ajustecom cc');
    sqlDados.Sql.Add(' Where (cc.codigo = 0'+ctValor+')');
    sqlDados.Sql.Add('   and  '+frWhereD('cc.Data', ctIni, ctFim));
  end
  else if ctTela = 'NFE' then
  begin

    sqlDados.Sql.Add('Select distinct cc.nota as registro, cc.data, co.qtde as valor, cc.descricao, cc.lanc');
    sqlDados.Sql.Add('  From nfvenda cc, nfvendco co');
    sqlDados.Sql.Add(' Where (cc.lanc = co.lanc) and (cc.DIF = ''S'') and (cc.DIFCOD > 0)');
    sqlDados.Sql.Add('   and co.codigo = 0'+ctValor);
    sqlDados.Sql.Add('   and '+frWhereD('cc.Data', ctIni, ctFim));

  end
  else if ctTela = 'PED' then
  begin

    sqlDados.Sql.Add('Select distinct cc.registro, cc.data, co.qtde as valor, cc.descricao, cc.lanc');
    sqlDados.Sql.Add('  From esvenda cc, esvendco co');
    sqlDados.Sql.Add(' Where (cc.lanc = co.lanc) and co.codigo = 0'+ctValor);
    sqlDados.Sql.Add('   and  '+frWhereD('cc.Data', ctIni, ctFim));
    sqlDados.Sql.Add('   and ((select first 1 ev.nota from nfvenda ev where ev.psp = cc.registro) is null)');

  end;
  sqlDados.Sql.Add(' Order by cc.lanc desc');
  sqlDados.Open;

end;

procedure TFfrmEstoqChamaTela.dbDetalheDblClick(Sender: TObject);
begin

  if xctTela = 'PED' then
  begin

    FMenu.fProg(1004);

    if (fBus(1,['Select valor From zGenerator Where Tabela = ''ESVENDA'' and Campo = ''LOTE_PROD'''],1) = 0) then
    begin
      FfrmVendaProduto.pAbrirTela(sqlDadoslanc.asString);
    end
    else begin
      FfrmVendaProdutoLote.pAbrirTela(sqlDadoslanc.asString);
    end;

    Close;

  end;

  if xctTela = 'NFE' then
  begin

    FMenu.fProg(1001);

    FfrmNotaFiscal.pAbrirTela(sqlDadoslanc.asString);

    Close;

  end;

  if xctTela = 'CLA' then
  begin

    FMenu.fProg(3006);

    FfrmRoman.pAbrirTela(sqlDadoslanc.asString);

    Close;

  end;

  if xctTela = 'AJU' then
  begin

    FMenu.fProg(8007);

    FfrmAjuste.pAbrirTela(sqlDadoslanc.asString);

    Close;

  end;
end;

end.
