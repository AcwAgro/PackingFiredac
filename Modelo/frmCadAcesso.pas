unit frmCadAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadAcesso = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosSENHA: TStringField;
    cdsRotina: TClientDataSet;
    cdsRotinaRotina: TStringField;
    cdsRotinaTipo: TStringField;
    cdsRotinaTag: TIntegerField;
    cdsRotinaEditar: TStringField;
    cdsRotinaExcluir: TStringField;
    cdsRotinaVisualizar: TStringField;
    dsRotina: TDataSource;
    dbDetalhe: TDBGrid;
    cdsRotinaGrupo: TIntegerField;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    cdsDadosPROG1: TStringField;
    cdsDadosPROG2: TStringField;
    Panel1: TPanel;
    cbEditar: TCheckBox;
    cbExcluir: TCheckBox;
    cbMostrar: TCheckBox;
    DBRadioGroup16: TDBRadioGroup;
    cdsDadosATIVO: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    TModulo: TFDQuery;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosSENHA: TStringField;
    sqlDadosPROG1: TStringField;
    sqlDadosPROG2: TStringField;
    sqlDadosATIVO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1SENHA: TcxGridDBColumn;
    dbDadosDBTableView1PROG1: TcxGridDBColumn;
    dbDadosDBTableView1PROG2: TcxGridDBColumn;
    dbDadosDBTableView1ATIVO: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    procedure DBEdit4Exit(Sender: TObject);
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
    procedure tsDadosEnter(Sender: TObject);
    procedure dbDetalheDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbDetalheCellClick(Column: TColumn);
    procedure cbEditarClick(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure dbDadosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure pRotina;
    procedure pRotinaSalvar;
  public
    { Public declarations }
  end;

var
  FfrmCadAcesso: TFfrmCadAcesso;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadAcesso.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadAcesso.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadAcesso);
end;

procedure TFfrmCadAcesso.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('ZACESSO','CODIGO',1);
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_ZACESSO_ID');

          cdsDadosProg1.AsString := 'N';
          cdsDadosProg2.AsString := 'N';
          cdsDadosATIVO.AsString := 'S';
          cbEditar.Checked  := False;
          cbExcluir.Checked := False;
          cbMostrar.Checked := False;
          pRotina;
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
          cbEditar.Checked  := False;
          cbExcluir.Checked := False;
          cbMostrar.Checked := False;
          pRotina;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            pRotinaSalvar;

            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Cancel;
           except
           end;
           pLiberar('Geral');
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadAcesso.tsDadosEnter(Sender: TObject);
begin
  inherited;
  pRotina;

end;

procedure TFfrmCadAcesso.cbEditarClick(Sender: TObject);
var vfield: String;
begin
  inherited;
  if (not sbSalvar.Enabled) then Exit;
  if TComponent(Sender).Tag = 1  then
    vfield := 'EDITAR'
  else if TComponent(Sender).Tag = 2  then
    vfield := 'EXCLUIR'
  else
    vfield := 'VISUALIZAR';
  cdsRotina.First;
  cdsRotina.DisableControls;
  while not cdsRotina.Eof do
  begin
    cdsRotina.Edit;
    if TCheckBox(Sender).checked then
      cdsRotina.FieldByName(vField).AsString := 'x'
    else
      cdsRotina.FieldByName(vField).AsString := '';
    cdsRotina.Post;
    cdsRotina.Next;
  end;
  cdsRotina.EnableControls;
  cdsRotina.First;
end;

procedure TFfrmCadAcesso.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (pcItem.ActivePageIndex = 1) then pRotina;
end;

procedure TFfrmCadAcesso.dbDadosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  pRotina;

end;

procedure TFfrmCadAcesso.dbDetalheCellClick(Column: TColumn);
var vi, vgrupo, vcl: Integer;
  procedure privSeleciona;
  begin
    if not (cdsRotina.State in [dsEdit]) then cdsRotina.Edit;
    case dbDetalhe.SelectedIndex of
      1: begin
           if cdsRotinaEditar.AsString = '' then cdsRotinaEditar.AsString := 'x'
           else cdsRotinaEditar.AsString := '';
         end;
      2: begin
           if cdsRotinaExcluir.AsString = '' then cdsRotinaExcluir.AsString := 'x'
           else cdsRotinaExcluir.AsString := '';
         end;
      3: begin
           if cdsRotinaVisualizar.AsString = '' then cdsRotinaVisualizar.AsString := 'x'
           else cdsRotinaVisualizar.AsString := '';
         end;
    end;
    if (cdsRotina.State in [dsEdit]) then cdsRotina.Post;
  end;
begin
  inherited;
  if (not sbSalvar.Enabled) then Exit;

  //Seleciona o grupo
  if (cdsRotinaTag.asInteger < 999) then
  begin
    vcl := cdsRotinaTag.asInteger;
    vgrupo := cdsRotinaTag.asInteger;
    for vi := 1 to 50 do
    begin
      if (vgrupo = cdsRotinaGrupo.asInteger) then
      begin
        if (cdsRotinaTag.asInteger > 999) then privSeleciona;
        cdsRotina.Next;
      end;
    end;
    cdsRotina.Locate('Tag', vcl, []);
  end
  else begin
    privSeleciona;
    cdsRotina.Prior;
  end;
end;

procedure TFfrmCadAcesso.dbDetalheDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (cdsRotinaTag.asInteger < 999) then
  begin
    dbDetalhe.Canvas.Brush.Color:=$00D8D8D8;
    dbDetalhe.Canvas.Font.Color:=clNavy;
  end;
  dbDetalhe.DefaultDrawColumnCell(rect,datacol,column,state);
end;

procedure TFfrmCadAcesso.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadAcesso.pRotina;
var vuser: String;
begin
  vuser := frPree(cdsDadosCodigo.AsString,2,'0',0)+';';
  fSql(1,1,['Select * From zModulo Where Tipo ='+QuotedStr('X')+' Order By Grupo,Tag'],1);
  cdsRotina.Close;
  cdsRotina.CreateDataSet;
  dm.qrSql1.First;
  dm.qrSql1.DisableControls;
  cdsRotina.DisableControls;
  while not dm.qrSql1.Eof do
  begin
    cdsRotina.Append;
    cdsRotinaRotina.asString     := dm.qrSql1.FieldByName('Descricao').asString;
    cdsRotinaTag.asInteger       := dm.qrSql1.FieldByName('Tag').asInteger;
    cdsRotinaGrupo.asInteger     := dm.qrSql1.FieldByName('Grupo').asInteger;
    cdsRotinaEditar.AsString     := '';
    cdsRotinaExcluir.AsString    := '';
    cdsRotinaVisualizar.AsString := '';
    if (cdsRotinaTag.asInteger > 999) then
    begin
      if (Pos(vuser,dm.qrSql1.FieldByName('Editar').asString) > 0)     then cdsRotinaEditar.AsString    := 'x';
      if (Pos(vuser,dm.qrSql1.FieldByName('Excluir').asString) > 0)    then cdsRotinaExcluir.AsString   := 'x';
      if (Pos(vuser,dm.qrSql1.FieldByName('Visualizar').asString) > 0) then cdsRotinaVisualizar.AsString:= 'x';
    end;
    cdsRotina.Post;
    dm.qrSql1.Next;
  end;
  dm.qrSql1.EnableControls;
  cdsRotina.EnableControls;
  cdsRotina.First;
end;

procedure TFfrmCadAcesso.pRotinaSalvar;
var vuser, vEdi, vExc, vVis: String; vini: Integer;
begin
  vuser := frPree(cdsDadosCodigo.AsString,2,'0',0)+';';
  TModulo.Close;
  TModulo.Open;
  cdsRotina.First;
//  cdsRotina.DisableControls;
  while not cdsRotina.Eof do
  begin
    TModulo.Locate('TAG', cdsRotinaTag.AsInteger, []);
    //fSql(1,1,['Select Editar, Excluir, Visualizar From zModulo Where Tag = '+cdsRotinaTag.asString],1);
    vEdi := Trim(TModulo.FieldByName('Editar').asString);
    vExc := Trim(TModulo.FieldByName('Excluir').asString);
    vVis := Trim(TModulo.FieldByName('Visualizar').asString);
    //Tira o Usuario
    if Pos(vuser,vEdi) > 0 then
    begin
      vini := Pos(vuser,vEdi);
      vEdi := Copy(vEdi, 0, vini-1) + Copy(vEdi, vini+3, 120);
    end;
    if Pos(vuser,vExc) > 0 then
    begin
      vini := Pos(vuser,vExc);
      vExc := Copy(vExc, 0, vini-1) + Copy(vExc, vini+3, 120);
    end;
    if Pos(vuser,vVis) > 0 then
    begin
      vini := Pos(vuser,vVis);
      vVis := Copy(vVis, 0, vini-1) + Copy(vVis, vini+3, 120);
    end;
    //Salva Itens;
    if cdsRotinaEditar.AsString = 'x' then
      vEdi := vEdi + vuser;
    if cdsRotinaExcluir.AsString = 'x' then
      vExc := vExc + vuser;
    if cdsRotinaVisualizar.AsString = 'x' then
      vVis := vVis + vuser;

    fSql(1,2,['Update zModulo '+
              '   Set Editar = '+ QuotedStr(vEdi),
              ',     Excluir = '+ QuotedStr(vExc),
              ',  Visualizar = '+ QuotedStr(vVis),
              ' Where Tag = '+cdsRotinaTag.asString],4);

    cdsRotina.Next;
  end;
  cdsRotina.EnableControls;
  cdsRotina.First;
  TModulo.Close;
end;

procedure TFfrmCadAcesso.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from zacesso where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from zacesso where ativo = ''N''';
  cdsDados.Open;

end;

end.
