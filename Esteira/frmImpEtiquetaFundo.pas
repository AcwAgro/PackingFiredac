unit frmImpEtiquetaFundo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, zFrmPesquisa,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmImpEtiquetaFundo = class(TForm)
    PDados: TPanel;
    dsDados: TDataSource;
    Panel1: TPanel;
    sb10: TSpeedButton;
    Label5: TLabel;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    sb7: TSpeedButton;
    edLinha2: TEdit;
    Label1: TLabel;
    edLinha1: TEdit;
    Label9: TLabel;
    edBarra: TEdit;
    ME1: TMaskEdit;
    Label7: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgCateg: TDBGrid;
    dsCategoria: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    dbgCalib: TDBGrid;
    dsTamanho: TDataSource;
    edDesc: TLabel;
    edVariedade: TEdit;
    SBP2: TSpeedButton;
    edVarie: TMaskEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Configuraretiqueta1: TMenuItem;
    SBP1: TSpeedButton;
    cdsDados: TFDQuery;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosPESO: TStringField;
    cdsDadosLOTE: TStringField;
    cdsDadosLINHA1: TStringField;
    cdsDadosLINHA2: TStringField;
    cdsDadosLINHA3: TStringField;
    cdsDadosLINHA4: TStringField;
    cdsDadosLINHA5: TStringField;
    cdsDadosQTDE: TIntegerField;
    cdsDadosCONTADOR: TIntegerField;
    cdsDadosVARIEDADE: TStringField;
    cdsDadosCATEGORIA: TStringField;
    cdsDadosCALIBRE: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlTamanho: TFDQuery;
    sqlCategoria: TFDQuery;
    sqlCategoriaCATEGCOD: TIntegerField;
    sqlCategoriaCATEGDES: TStringField;
    sqlCategoriaTOTAL: TIntegerField;
    sqlTamanhoCALIBRE: TIntegerField;
    sqlTamanhoCALIBREDES: TStringField;
    sqlTamanhoTOTAL: TIntegerField;
    procedure SBP1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ME1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgCategCellClick(Column: TColumn);
    procedure dbgCalibCellClick(Column: TColumn);
    procedure edVarieExit(Sender: TObject);
    procedure SBP2Click(Sender: TObject);
    procedure sb7Click(Sender: TObject);
    procedure Configuraretiqueta1Click(Sender: TObject);
    procedure dbgCategDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgCalibDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private

    procedure pImprimir(vDesign:Boolean);

  public
    { Public declarations }

    procedure pAbreDados;
    procedure pMontaCodigo;

  end;

var
  FfrmImpEtiquetaFundo: TFfrmImpEtiquetaFundo;
  vTag,vKey:Integer;

implementation

uses Data, Rotina, Esteira, zModeloRel;

{$R *.DFM}

procedure TFfrmImpEtiquetaFundo.Configuraretiqueta1Click(Sender: TObject);
begin

  pImprimir(True);
  
end;

procedure TFfrmImpEtiquetaFundo.dbgCategCellClick(Column: TColumn);
begin

  sqlTamanho.Close;
  sqlTamanho.Sql.Clear;
  sqlTamanho.Sql.Add('Select calibre, calibredes, count(*)');
  sqlTamanho.Sql.Add('  from cadprodu');
  sqlTamanho.Sql.Add(' where variecod = 0' + Trim(edVarie.Text));
  sqlTamanho.Sql.Add('   and categcod = 0' + Trim(sqlCategoriacategcod.asString));
  sqlTamanho.Sql.Add('   and ativo = ''S''');
  sqlTamanho.Sql.Add(' group by calibre, calibredes');
  sqlTamanho.Sql.Add(' order by calibre');
  sqlTamanho.Open;

  pMontaCodigo;

end;

procedure TFfrmImpEtiquetaFundo.dbgCategDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var vcatd :String;
begin

  With dbgCateg do
  begin
    vcatd := Copy(Trim(sqlCategoriacategcod.AsString),1,1);

    if (vcatd = '0') then
      Canvas.Brush.Color := $00DDDDDD
    else if (vcatd = '1') then
      Canvas.Brush.Color := $00FFEAD5
    else if (vcatd = '2') then
      Canvas.Brush.Color := $00D9FFD9
    else if (vcatd = '3') then
      Canvas.Brush.Color := $00DDFFFF
    else if (vcatd = '4') then
      Canvas.Brush.Color := $00EAD7E2
    else if (vcatd = '5') then
      Canvas.Brush.Color := $00FFD7FF
    else if (vcatd = '6') then
      Canvas.Brush.Color := $00C4C4E1
    else if (vcatd = '7') then
      Canvas.Brush.Color := $00AAC6FF
    else if (vcatd = '8') then
      Canvas.Brush.Color := $00CECE00
    else
      Canvas.Brush.Color := $00F0F0F0;

    if (gdSelected in State) then
    begin
      Canvas.Font.Style := Canvas.Font.Style +[fsBold];
      Canvas.Brush.Color := $00D5D5FF;
    end;
    DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
  end;

end;

procedure TFfrmImpEtiquetaFundo.dbgCalibCellClick(Column: TColumn);
begin

  pMontaCodigo;

end;

procedure TFfrmImpEtiquetaFundo.dbgCalibDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  With dbgCalib do
  begin
    if (gdSelected in State) then
    begin
      Canvas.Font.Style := Canvas.Font.Style +[fsBold];
      Canvas.Brush.Color := $00D5D5FF;
    end;
    DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
  end;

end;

procedure TFfrmImpEtiquetaFundo.edVarieExit(Sender: TObject);
begin

  pAbreDados;

  if fTra(1,['Select Descricao From CadVarie Where Codigo=0'+Trim(edVarie.Text)],1) then
    edVariedade.Text := dm.qrSqlTra.Fields[0].Text
  else
    SBP2.OnClick(Sender);

  if (Copy(Trim(ME1.Text), 1, Length(Trim(edVarie.text))) <> Trim(edVarie.Text)) then
  begin

    ME1.Text       := '';
    edDesc.Caption := '';
    edBarra.Text   := '';

  end
  else begin

    edDesc.Caption := cdsDadosDescricao.Text;
    edBarra.Text   := cdsDadosPeso.Text;

  end;

end;

procedure TFfrmImpEtiquetaFundo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(FfrmImpEtiquetaFundo);
end;

procedure TFfrmImpEtiquetaFundo.FormCreate(Sender: TObject);
begin

  cdsDados.Close;
  cdsDados.Open;

  edVarie.Text   := Esteira.xVarie;

  me1.Text       := '';//cdsDadosCodigo.Text;
  edLinha1.Text  := '';//cdsDadosLinha1.Text;
  edLinha2.Text  := '';//cdsDadosLinha2.Text;
  edQtde.Value   := 0;//cdsDadosQtde.Value;
  edContador.Value  := cdsDadosContador.Value;

end;

procedure TFfrmImpEtiquetaFundo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiquetaFundo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmImpEtiquetaFundo.FormShow(Sender: TObject);
begin

  edVarie.onExit(edVarie);

end;

procedure TFfrmImpEtiquetaFundo.SBP1Click(Sender: TObject);
begin

  fPqProduto(Trim(edVarie.text));
  ME1.Text := xpqResul;
  ME1.SetFocus;

end;

procedure TFfrmImpEtiquetaFundo.SBP2Click(Sender: TObject);
begin

  fPqVariedade;
  edVarie.Text := xpqResul;
  edVarie.OnExit(edVarie);

end;

procedure TFfrmImpEtiquetaFundo.ME1Exit(Sender: TObject);
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
  begin
    EdDesc.Caption := dm.qrSqlTra.Fields[0].Text;
    if (Length(Trim(ME1.Text)) = 8) then
      edBarra.Text := Copy(ME1.Text,4,5)
    else
      edBarra.Text := Copy(ME1.Text,3,5);
  end
  else SBP1.OnClick(Sender);
end;

procedure TFfrmImpEtiquetaFundo.pAbreDados;
begin

  if (StrToIntDef(Trim(edVarie.Text),0) = 0) then
  begin
     edVarie.SetFocus;
     //ShowMessage('Informe à variedade...');
     Exit;
  end;

  sqlCategoria.Close;
  sqlCategoria.Sql.Clear;
  sqlCategoria.Sql.Add('Select categcod, categdes, count(*) as total');
  sqlCategoria.Sql.Add('  from cadprodu');
  sqlCategoria.Sql.Add(' where variecod = 0' + Trim(edVarie.Text));
  sqlCategoria.Sql.Add('   and ativo = ''S''');
  sqlCategoria.Sql.Add(' group by categcod, categdes');
  sqlCategoria.Sql.Add(' order by categcod');
  sqlCategoria.Open;

  sqlTamanho.Close;
  sqlTamanho.Sql.Clear;
  sqlTamanho.Sql.Add('Select calibre, calibredes, count(*) as total');
  sqlTamanho.Sql.Add('  from cadprodu');
  sqlTamanho.Sql.Add(' where variecod = 0' + Trim(edVarie.Text));
  sqlTamanho.Sql.Add('   and categcod = 0' + Trim(sqlCategoriacategcod.asString));
  sqlTamanho.Sql.Add('   and ativo = ''S''');
  sqlTamanho.Sql.Add(' group by calibre, calibredes');
  sqlTamanho.Sql.Add(' order by calibre');
  sqlTamanho.Open;

  edQtde.SetFocus;

end;

procedure TFfrmImpEtiquetaFundo.pImprimir(vDesign:Boolean);
var vinicio, vqtde: Integer;
begin

  cdsDados.Last;
  if cdsDadosContador.AsInteger > 0 then
     vinicio := cdsDadosContador.AsInteger
  else
     vinicio := edContador.Value + edQtde.Value;

  if vinicio > 10000 then vinicio := 10;

  //Apaga tudo
  fSql(1,['Delete from EtiqFundo'],1);
  cdsDados.Close;
  cdsDados.Open;

  if fTra(1,['Select VarieDes, CategDes, Calibre From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
  begin
    for vqtde := 1 to (edQtde.Value) do
    begin

      vinicio := vinicio + 1;

      cdsDados.Append;
      cdsDadosCodigo.Text    := Trim(me1.Text);
      cdsDadosDescricao.Text := edDesc.Caption;
      cdsDadosPeso.Text      := edBarra.Text;
      cdsDadosLinha1.Text    := edLinha1.Text;
      cdsDadosLinha2.Text    := edLinha2.Text;
      cdsDadosQtde.Value     := edQtde.Value;
      cdsDadosContador.Value := vinicio;
      cdsDadosVariedade.Text := dm.qrSqlTra.Fields[0].Text;
      cdsDadosCategoria.Text := dm.qrSqlTra.Fields[1].Text;
      cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[2].Text;

      if (Length(Trim(ME1.Text)) = 8) then
        cdsDadosLinha5.Text := Copy(cdsDadosCodigo.Text,4,5)+frPree(vinicio,7,'0',0)
      else
        cdsDadosLinha5.Text := Copy(cdsDadosCodigo.Text,3,5)+frPree(vinicio,7,'0',0);

      cdsDadosLinha4.Text := sqlTamanhocalibredes.AsString;

      cdsDadosBarra.Text  := Copy(cdsDadosLinha5.Text,1,12);

      cdsDados.Post;

    end;
  end;

  if not cdsDados.IsEmpty then
  begin

    //cdsDados.ApplyUpdates(0);
    xRelTela := UpperCase(Name);
    Application.CreateForm(TFModeloRel, FModeloRel);
    FModeloRel.dsRelat.DataSet := cdsDados;

    if not vDesign then
    begin

      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir);
      Sleep(1000);

    end
    else
      FModeloRel.ShowModal;

    cdsDados.Filtered := False;
  end;
end;

procedure TFfrmImpEtiquetaFundo.pMontaCodigo;
begin

  if (StrToIntDef(Trim(edVarie.Text),0) = 0) then
  begin
     edVarie.SetFocus;
     ShowMessage('Informe à variedade...');
     Exit;
  end;

  vkey := 13;

  me1.Text := Trim(edVarie.Text)
            + frPree(sqlCategoriacategcod.asString,2,'0',0)
            + frPree(sqlTamanhocalibre.asString,3,'0',0);

  me1.OnExit(me1);

  edQtde.SetFocus;

end;

procedure TFfrmImpEtiquetaFundo.sb7Click(Sender: TObject);
begin

  if (Trim(me1.Text) = '') then
  begin
     ShowMessage('Código inválido...');
     Exit;
  end;

  pimprimir(False);

end;

end.
