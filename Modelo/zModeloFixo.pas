unit zModeloFixo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,
  Provider, DBClient, DBTables, Menus, Mask, DBCtrls, RzDBNav, RzTabs, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  THabilita = (thFonteAlta, thFonteBaixa, thVisivel, thNaoVisivel);
  TFModeloFixo = class(TForm)
    Panel12: TPanel;
    PStatusHistorico: TPanel;
    PStatusResgistro: TPanel;
    cdsDados: TClientDataSet;
    dspDados: TDataSetProvider;
    dsDados: TDataSource;
    pcItem: TRzPageControl;
    tsLista: TRzTabSheet;
    rzpUtilitario: TRzPanel;
    sbItem5: TSpeedButton;
    RzPanel4: TRzPanel;
    RzPanel2: TRzPanel;
    dbDados: TDBGrid;
    ImgOrdemDesc: TImage;
    ImgOrdemAsc: TImage;
    sbItem4: TSpeedButton;
    sbItem3: TSpeedButton;
    sbItem2: TSpeedButton;
    sbItem1: TSpeedButton;
    sqlDados: TFDQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbDadosTitleClick(Column: TColumn);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbDadosEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDadosAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pOrdemCrescente;
    procedure pOrdemDecrescente;
  end;


//Tamanho maximo da tela é height=560, width=800
var
  FModeloFixo: TFModeloFixo;
  vKey, vTag, vBotaoMenu: Integer;
  vindex, vCampo, vCampoTemp: String;
  vindex_order_asc: Boolean;

implementation

{$R *.dfm}
uses Data, Rotina, Menu;

procedure TFModeloFixo.pOrdemCrescente;
begin
  if not cdsDados.Active then
    Exit;
  try
    vindex_order_asc := True;
    vindex := cdsDados.Fields[0].FieldName;
    (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vindex,[],'','',0);
    (dsDados.DataSet As TClientDataSet).IndexName := 'iIndice';
    (dsDados.DataSet As TClientDataSet).First;
  except
//    ShowMessage('Clique no titulo novamente!');
  end;
end;

procedure TFModeloFixo.pOrdemDecrescente;
begin
  if not cdsDados.Active then
    Exit;
  try
    vindex_order_asc := False;
    vindex := cdsDados.Fields[0].FieldName;
    (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vindex,[ixDescending],'','',0);
    (dsDados.DataSet As TClientDataSet).IndexName := 'iIndice';
    (dsDados.DataSet As TClientDataSet).First;
  except
//    ShowMessage('Clique no titulo novamente!');
  end;
end;

procedure TFModeloFixo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pcItem.ActivePageIndex = 1 then
  begin
    vKey := 0;
    if (key = 40) or (key = VK_TAB) then
    begin
      key  := 0;
      vKey := 13;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else if key = 38 then
      Selectnext((Sender As TWinControl),False,True);
  end;
end;

procedure TFModeloFixo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key = #13 then
  begin
    key  := #0;
    vKey := 13;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFModeloFixo.FormShow(Sender: TObject);
begin
  if not cdsDados.Active then
    Exit;
  PStatusResgistro.Caption := IntToStr(cdsDados.RecordCount) + ' Registro(s)';
  Application.ProcessMessages;
end;

procedure TFModeloFixo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 (dsDados.DataSet As TClientDataSet).Active := False;
end;

procedure TFModeloFixo.FormCreate(Sender: TObject);
begin
  Left := (FMenu.Width - Width ) div 2;
  Top  := FMenu.rzpgMenu.Top+5;
end;

procedure TFModeloFixo.dbDadosTitleClick(Column: TColumn);
begin
 if not cdsDados.Active then
   Exit;

 Screen.Cursor := crSQLWait;
 try
  vCampo := Column.FieldName;
  vCampoTemp := vCampo;
  Try
    if (dsDados.DataSet As TClientDataSet).IndexName <> '' then
    begin
      (dsDados.DataSet As TClientDataSet).IndexName := '';
      (dsDados.DataSet As TClientDataSet).DeleteIndex('iIndice');
    end;
  Except
  end;
  try
    if vindex <> Column.FieldName then
      vindex_order_asc := false;
    if vindex_order_asc then
    begin
      (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vcampo,[ixDescending], '','',0);
       pStatusHistorico.Caption := 'Ordenado por ->' + Column.Title.Caption +' Decrescente ';
    end
    else begin
      (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vCampo,[],'','',0);
      pStatusHistorico.Caption := 'Ordenado por ->' + Column.Title.Caption +' Crescente ';
    end;
    vindex_order_asc := not vindex_order_asc;
  except
  end;
  (dsDados.DataSet As TClientDataSet).IndexName := 'iIndice';
  (dsDados.DataSet As TClientDataSet).First;

  vindex := Column.FieldName;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TFModeloFixo.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not cdsDados.Active then
    Exit;
  if Column.FieldName = vindex then
  if (dsDados.DataSet <> nil) then
  if (dsDados.DataSet.Active) and
     ((dsDados.DataSet As TClientDataSet).IndexName <> '') then
  begin
    if vindex_order_asc then
       dbDados.Canvas.Draw(Rect.Right-8, 1, ImgOrdemAsc.Picture.Graphic)
    else
       dbDados.Canvas.Draw(Rect.Right-8, 1, ImgOrdemDesc.Picture.Graphic);
  end;
end;

procedure TFModeloFixo.dbDadosEnter(Sender: TObject);
begin
  if cdsDados.Active then
    PStatusResgistro.Caption := IntToStr(cdsDados.RecordCount) + ' Registro(s)';
end;

procedure TFModeloFixo.cdsDadosAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
var vCampo: String;
    vRegis, vcc: Integer;
    vTrue: Boolean;
begin
  vTrue := False;
  for vcc := 0 to 3 do
  begin
    if (cdsDados.Fields[vcc].DataType in [ftSmallint, ftInteger]) and
       (not vTrue) then
    begin
      vCampo := cdsDados.Fields[vcc].FieldName;
      vRegis := cdsDados.Fields[vcc].asInteger;
      vTrue  := True;
    end;
  end;
  if (dsDados.DataSet As TClientDataSet).IndexName = '' then
    dbDados.onTitleClick(dbDados.Columns[0]);
  cdsDados.Locate(vCampo, vRegis, []);
end;

end.
