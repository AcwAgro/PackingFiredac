unit frmEstoqueAvulso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, zFrmPesquisa;

type
  TFfrmEstoqueAvulso = class(TForm)
    PDados: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    edQtde: TSpinEdit;
    Label9: TLabel;
    ME1: TMaskEdit;
    Label7: TLabel;
    SBP1: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgCateg: TDBGrid;
    sqlProduto: TQuery;
    dsProduto: TDataSource;
    edDesc: TLabel;
    edVariedade: TEdit;
    edVarie: TMaskEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edEmbal: TMaskEdit;
    SBP3: TSpeedButton;
    edEmbalador: TLabel;
    sqlProdutocodigo: TIntegerField;
    sqlProdutocalibredes: TStringField;
    sqlProdutodescricao: TStringField;
    procedure SBP1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ME1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgCategCellClick(Column: TColumn);
    procedure edVarieExit(Sender: TObject);
    procedure edEmbalExit(Sender: TObject);
    procedure SBP3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private

    procedure pImprimir(vDesign:Boolean);

  public
    { Public declarations }

    procedure pAbreDados;
    procedure pMontaCodigo;

  end;

var
  FfrmEstoqueAvulso: TFfrmEstoqueAvulso;
  vTag,vKey:Integer;

implementation

uses Data, Rotina, Esteira, zModeloRel, FrmMarca;

{$R *.DFM}

procedure TFfrmEstoqueAvulso.dbgCategCellClick(Column: TColumn);
begin

  pMontaCodigo;

end;

procedure TFfrmEstoqueAvulso.edEmbalExit(Sender: TObject);
begin

  if fTra(1,['Select Descricao From CadEmbal Where Codigo=0'+Trim(edEmbal.Text)],1) then
    edEmbalador.Caption := dm.qrSqlTra.Fields[0].Text
  else
    SBP3.OnClick(Sender);

end;

procedure TFfrmEstoqueAvulso.edVarieExit(Sender: TObject);
begin

  pAbreDados;

  if fTra(1,['Select Descricao From CadVarie Where Codigo=0'+Trim(edVarie.Text)],1) then
    edVariedade.Text := dm.qrSqlTra.Fields[0].Text;

  edEmbal.SetFocus;

end;

procedure TFfrmEstoqueAvulso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FEsteira.tmLeitor.Enabled := True;
//  FreeAndNil(FfrmImpEtiquetaFundo);
//  FEsteira.pExecutar;
end;

procedure TFfrmEstoqueAvulso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmEstoqueAvulso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmEstoqueAvulso.FormShow(Sender: TObject);
begin

  edVarie.Text   := Esteira.xvcod;
  edVarie.onExit(edVarie);

  me1.Text := '';
  edDesc.Caption := '';

end;

procedure TFfrmEstoqueAvulso.SBP1Click(Sender: TObject);
begin

  fPqProduto(Trim(edVarie.text));
  ME1.Text := xpqResul;
  ME1.OnExit(ME1);
  edEmbal.SetFocus;

end;

procedure TFfrmEstoqueAvulso.SBP3Click(Sender: TObject);
begin

  fPqEmbalador;
  edEmbal.Text := xpqResul;
  edEmbal.OnExit(edEmbal);

end;

procedure TFfrmEstoqueAvulso.SpeedButton1Click(Sender: TObject);
begin
  if (Trim(me1.Text) = '') then
  begin
    me1.SetFocus;
    ShowMessage('Informe um produto...');
    Exit;
  end;
  if (Trim(edEmbal.Text) = '') then
  begin
    edEmbal.SetFocus;
    ShowMessage('Informe um embalador...');
    Exit;
  end;

  if dm.TCadProdu.Locate('Codigo', me1.Text, []) then
  begin

    //Abrir para colocar a marca
    xmarca := 0;
    if FfrmMarca = nil then
      Application.CreateForm(TFfrmMarca, FfrmMarca);
    FfrmMarca.ShowModal;

    FEsteira.fLoteSalvaDados(True, Trim(me1.Text), Trim(me1.Text), StrToIntDef(Trim(me1.Text),0), StrToIntDef(Trim(edEmbal.Text),0), edQtde.Value, xmarca);
    Close;
  end
  else begin
    me1.SetFocus;
    ShowMessage('Informe um produto...');
  end;
end;

procedure TFfrmEstoqueAvulso.ME1Exit(Sender: TObject);
begin

  //Precisa saber o tamanho da variedade 2 ou 3 digitos
  if (copy(me1.text,1, Length(Trim(edVarie.text))) <> Trim(edVarie.text)) then
  begin

    //Inseri variedade + categoria + calibre
    if (length(me1.text) < 7) then
      me1.text := Trim(edVarie.text)+Copy(Trim(me1.text),1,5)
    else
      me1.text := Trim(edVarie.text)+Copy(Trim(me1.text), Length(Trim(edVarie.text))+1, 5);

  end;

  if fTra(1,['Select Descricao From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
    EdDesc.Caption := dm.qrSqlTra.Fields[0].Text
  else
    SBP1.OnClick(Sender);

end;

procedure TFfrmEstoqueAvulso.pAbreDados;
begin

  if (StrToIntDef(Trim(edVarie.Text),0) = 0) then
  begin
     edVarie.SetFocus;
     ShowMessage('Informe à variedade...');
     Exit;
  end;

  sqlProduto.Close;
  sqlProduto.Sql.Clear;
  sqlProduto.Sql.Add('Select  codigo, calibredes, descricao');
  sqlProduto.Sql.Add('  from cadprodu');
  sqlProduto.Sql.Add(' where variecod = 0' + Trim(edVarie.Text));
  sqlProduto.Sql.Add('   and ativo = ''S''');
  sqlProduto.Sql.Add(' order by codigo desc');
  sqlProduto.Open;

end;

procedure TFfrmEstoqueAvulso.pImprimir(vDesign:Boolean);
begin


end;

procedure TFfrmEstoqueAvulso.pMontaCodigo;
begin

  if (StrToIntDef(Trim(edVarie.Text),0) = 0) then
  begin
     edVarie.SetFocus;
     ShowMessage('Informe à variedade...');
     Exit;
  end;

  vkey := 13;

  me1.Text := sqlProdutoCodigo.asString;

  me1.OnExit(me1);

  if (Trim(edEmbal.Text) = '') then
    edEmbal.SetFocus
  else
    edQtde.SetFocus;

end;

end.
