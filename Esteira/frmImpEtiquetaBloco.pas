unit frmImpEtiquetaBloco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, zFrmPesquisa,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmImpEtiquetaBloco = class(TForm)
    PDados: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    edTempo: TSpinEdit;
    sb7: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgCateg: TDBGrid;
    dsProduto: TDataSource;
    Label1: TLabel;
    edQtde: TSpinEdit;
    sbSalvar: TSpeedButton;
    Panel4: TPanel;
    Label2: TLabel;
    edQtdeParcial: TSpinEdit;
    sb8: TSpeedButton;
    lblProduto: TLabel;
    cdsProduto: TFDQuery;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoVQTDE: TFMTBCDField;
    cdsProdutomostra: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sb7Click(Sender: TObject);
    procedure cdsProdutoxCalcFields(DataSet: TDataSet);
    procedure sb8Click(Sender: TObject);
    procedure dbgCategCellClick(Column: TColumn);
  private

    procedure pAbreSql;
    
  public
    { Public declarations }

  end;

var
  FfrmImpEtiquetaBloco: TFfrmImpEtiquetaBloco;
  vTag,vKey:Integer;

implementation

uses Data, Rotina, Esteira;

{$R *.DFM}

procedure TFfrmImpEtiquetaBloco.dbgCategCellClick(Column: TColumn);
begin

  lblProduto.Caption  := cdsProdutocodigo.asString;
  edQtdeParcial.Value := cdsProdutovqtde.asInteger;

end;

procedure TFfrmImpEtiquetaBloco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(FfrmImpEtiquetaBloco);
end;

procedure TFfrmImpEtiquetaBloco.FormCreate(Sender: TObject);
begin

  pAbreSql;

  edTempo.Value := xBlocoTempo;
  edQtde.Value  := xBlocoQtde;

end;

procedure TFfrmImpEtiquetaBloco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiquetaBloco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;


procedure TFfrmImpEtiquetaBloco.pAbreSql;
begin

  cdsProduto.Close;
  cdsProduto.Filtered := False;
  cdsProduto.Sql.Clear;
  cdsProduto.Sql.Add('Select codigo, descricao, sum(qtde) as vqtde');
  cdsProduto.Sql.Add('  from '+xEsteiraTabela);
  cdsProduto.Sql.Add(' where ((qtdeant is null) or (qtdeant = 0))');
  cdsProduto.Sql.Add('   and Lote = 0'+Trim(xvLot));
  cdsProduto.Sql.Add(' group by codigo, descricao');
  cdsProduto.Sql.Add(' order by codigo');
  cdsProduto.Open;
  cdsProduto.Filter := 'mostra = ''S''';
  cdsProduto.Filtered := True;
  cdsProduto.First;
  
end;

procedure TFfrmImpEtiquetaBloco.cdsProdutoxCalcFields(DataSet: TDataSet);
begin

  if dm.TCadProdu.Locate('Codigo', cdsProdutocodigo.asInteger, []) then
  begin

    if (dm.TCadProdu.FieldByName('ImprimeEtiq').asString = 'S') then
      cdsProdutomostra.AsString := 'S'
    else
      cdsProdutomostra.AsString := 'N';

  end;


end;

procedure TFfrmImpEtiquetaBloco.sb7Click(Sender: TObject);
begin

  if frPerg(PChar('Imprimir etiquetas da lista?')) then
  begin

    FEsteira.pImprimeEtiquetaBloco(1);
    pAbreSql;

  end;

end;

procedure TFfrmImpEtiquetaBloco.sbSalvarClick(Sender: TObject);
var varq: TextFile;
    vtxt, vstr: String;
    vtrue: Boolean;
begin
{
Imprimir = B    05   10
Uma vez  = D
Local    = S    E    L
}


  vtrue := false;
  //Primeiro verifica local
  vtxt := 'C:\ACWebFruits\Packing\Leitorbarra.ini';
  if fileexists(vtxt) then
    vtrue := true
  else begin
    vtxt := xdirini+'Dados\Leitorbarra.ini';
    if fileexists(vtxt) then
      vtrue := true;
  end;

  if not vtrue then
    exit;

  xBlocoTempo := edTempo.Value;
  xBlocoQtde  := edQtde.Value;

  AssignFile(varq, vtxt);
  Rewrite(varq);

  vstr := 'Imprimir = '+ximpetiq+
          '    '+fPreencher(xBlocoTempo,2,'0',0)+
          '   '+fPreencher(xBlocoQtde,2,'0',0);
  Writeln(varq,vstr);

  vstr := 'Uma vez  = '+ximpunica;
  Writeln(varq,vstr);

  vstr := 'Local    = '+ximplocal+
          '    '+ximpestoq+
          '    '+ximplote;
  Writeln(varq,vstr);

  CloseFile(varq);

  ShowMessage('OK, tempo salvo!');

  FEsteira.tmpImprimeBloco.Enabled := False;
  FEsteira.tmpImprimeBloco.Interval := (60000 * xBlocoTempo);
  FEsteira.tmpImprimeBloco.Enabled := True;


end;

procedure TFfrmImpEtiquetaBloco.sb8Click(Sender: TObject);
begin

  edQtde.SetFocus;

  if frPerg(PChar('Imprimir etiquetas código: '+ cdsProdutocodigo.asString)) then
  begin

    FEsteira.pImprimeBloco(xvLan, xEsteiraTabela, cdsProdutocodigo.AsInteger, edQtdeParcial.Value);

    pAbreSql;

  end;

  edQtde.SetFocus;

end;
end.
