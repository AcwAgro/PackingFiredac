unit zModelo;

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
  TFModelo = class(TForm)
    Panel12: TPanel;
    PStatusHistorico: TPanel;
    PStatusResgistro: TPanel;
    dsDados: TDataSource;
    pnlTela: TPanel;
    pMenu: TRzPanel;
    rzpMenu: TRzPanel;
    sbEditar: TSpeedButton;
    sbIncluir: TSpeedButton;
    sbExcluir: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbProximo: TSpeedButton;
    RzPanel22: TRzPanel;
    rzpDados: TRzPanel;
    RzPanel2: TRzPanel;
    sbSalvar: TSpeedButton;
    sbCancelar: TSpeedButton;
    RzPanel1: TRzPanel;
    pcItem: TRzPageControl;
    tsLista: TRzTabSheet;
    dbDados: TDBGrid;
    tsDados: TRzTabSheet;
    pDados: TPanel;
    ImgOrdemDesc: TImage;
    ImgOrdemAsc: TImage;
    rzpUtil: TRzPanel;
    sbImprimir: TSpeedButton;
    PPeriodo: TPanel;
    rbPeriodo: TGroupBox;
    Label2: TLabel;
    sbPeriodo: TSpeedButton;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    Label5: TLabel;
    pPesquisa: TRzPanel;
    Label1: TLabel;
    Label4: TLabel;
    sbTiraFiltro: TSpeedButton;
    rbPesquisa: TRzPanel;
    edPesquisa: TMaskEdit;
    Panel2: TPanel;
    Label3: TLabel;
    spbSelecionar: TSpeedButton;
    cdsDados: TFDQuery;
    procedure sbIncluirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbDadosTitleClick(Column: TColumn);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edPesquisaChange(Sender: TObject);
    procedure dbDadosEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure dbDadosDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbDadosKeyPress(Sender: TObject; var Key: Char);
    procedure edPesquisaExit(Sender: TObject);
    procedure sbTiraFiltroClick(Sender: TObject);
    procedure spbSelecionarClick(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure cdsDadosAfterCancel(DataSet: TDataSet);
    procedure cdsDadosAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cdsDadosBeforeClose(DataSet: TDataSet);
    procedure cdsDadosReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
    procedure SetaFoco(Sender: TObject);
    procedure p_Imprimir;
  public
    { Public declarations }
    procedure p_Pesquisa(vTipo:Boolean);
    procedure p_IndexaGrid;
    procedure pLiberar(vbtn:String);
  end;

//Tamanho maximo da tela é height=560, width=800
var
  FModelo: TFModelo;
  vKey, vTag: Integer;
  vindex, vCampo, vCampoTemp: String;
  vindex_order_asc: Boolean;
  gMenu: TSpeedButton;
  gdsDetalhe: TDataSet;

implementation

{$R *.dfm}
uses RecError, Data, Rotina, zModeloRel, Esteira;

procedure TFModelo.SetaFoco(Sender: TObject);
var vi: integer; vdbt: TDBEdit;
begin
  for vi := 0 to ComponentCount - 1 do
  begin
    if Components[vi] is TDBEdit then
    begin
      vdbt := Components[vi] as TDBEdit;
      if not vdbt.ReadOnly then
      begin
        if vdbt.Focused then vdbt.Color := $00A1E9D0//$00CEF4E7
        else vdbt.Color := clWhite;
      end;
    end;
  end;
end;

procedure TFModelo.spbSelecionarClick(Sender: TObject);
var vl: Integer; vtrue:Boolean;
begin
  if spbSelecionar.Caption = '[Selecionar Todos]' then
  begin
    spbSelecionar.Caption := '[Desmarcar Todos]';
    vtrue := true;
  end
  else begin
    spbSelecionar.Caption := '[Selecionar Todos]';
    vtrue := false;
  end;
  with dbDados.DataSource.DataSet do
  begin
    DisableControls;
    First;
    for vl := 0 to RecordCount - 1 do
    begin
      dbDados.SelectedRows.CurrentRowSelected := vTrue;
      Next;
    end;
    First;
    EnableControls;
  end;
  dbDados.SelectedRows.Refresh;
end;

procedure TFModelo.sbTiraFiltroClick(Sender: TObject);
begin
  p_Pesquisa(False);
 (dsDados.DataSet As TFDQuery).Filtered := False;
 (dsDados.DataSet As TFDQuery).Filter   := '';
 cdsDados.Filter   := '';
 cdsDados.Filtered := False;
 dbDados.SetFocus;
 cdsDados.First;
end;

procedure TFModelo.pLiberar(vbtn:String);
var vUsuario: String;
begin
  if vbtn = 'Geral' then
  begin
    //Tela padrão
    pcItem.ActivePageIndex := 0;
    pDados.Enabled      := False;
    tsLista.Enabled     := True;
    sbIncluir.Enabled   := False;
    sbEditar.Enabled    := False;
    sbExcluir.Enabled   := False;
    sbSalvar.Enabled    := False;
    sbCancelar.Enabled  := False;
    rzpMenu.Visible     := True;
    rzpDados.Visible    := False;
    sbSalvar.Visible    := False;
    //Usuários Liberações
    vUsuario := frPree(xAcesso, 2, '0', 0) + ';';
    fSql(1,['Select Editar, Excluir From zModulo Where Tipo = '+QuotedStr('X')+' and Tag = ' +Copy(pnlTela.Caption,7,4)],1);
    if Pos(vUsuario, dm.qrSql1.Fields[0].asString) > 0 then
    begin
      sbIncluir.Enabled := True;
      sbEditar.Enabled  := True;
    end;
    if Pos(vUsuario, dm.qrSql1.Fields[1].asString) > 0 then
      sbExcluir.Enabled := True;

    sbImprimir.Enabled  := True;

    //Foca em dados
    try
      if dbDados.Focused then
        dbDados.SetFocus;
    except
    end;
  end;

  //Abre para salvamento
  if vbtn = 'Salvar' then
  begin
    pcItem.ActivePageIndex := 1;
    sbIncluir.Enabled   := False;
    rzpMenu.Visible     := False;
    rzpDados.Visible    := True;
    sbSalvar.Visible    := True;
    pDados.Enabled      := True;
    tsLista.Enabled     := False;
    sbSalvar.Enabled    := True;
    sbCancelar.Enabled  := True;
  end;
  if cdsDados.Active then
  begin
    PStatusResgistro.Caption := '  ' + IntToStr(cdsDados.RecordCount) + ' Registro';
    if cdsDados.RecordCount > 1 then
      PStatusResgistro.Caption := PStatusResgistro.Caption + '(s)';
  end;
end;

procedure TFModelo.FormCreate(Sender: TObject);
var vi: Integer;
begin

  gdsDetalhe := cdsDados;

  dtInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy',Now));
  dtFinal.Date   := StrToDate('31/12/'+FormatDateTime('yyyy',Now));

  Left := (FEsteira.Width - Width) div 2;
  Top  := (FEsteira.Height - Height) div 2;

  pnlTela.Caption := 'Tela: ' + frPree(xTagTela, 4, '0', 0);
  pLiberar('Geral');

  //Muda cor do foco
  for vi := 0 to ComponentCount - 1 do
    if Components[vi] is TDBEdit then  (Components[vi] as TDBEdit).OnEnter := SetaFoco;
end;

procedure TFModelo.sbIncluirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
{  if gMenu.Name <> TSpeedButton(Sender).Name then
  begin
    gMenu.Font.Color := clBlack;
    gMenu.Font.Size  := 8;
    gMenu.Font.Style := [];
    gMenu := TSpeedButton(Sender);
    TSpeedButton(Sender).Font.Color := $000080FF;
    TSpeedButton(Sender).Font.Style := [fsUnderline];
    TSpeedButton(Sender).Font.Size  := 8;
  end;}
end;

procedure TFModelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pcItem.ActivePageIndex = 1 then
  begin
     vKey := 0;
    //Se nao form pesquisa
    if not xpPesquisa then
    begin
      vKey := 13;
      if TComponent(Sender).ClassType = TDBGRID then
      begin
        if (key = VK_TAB) then
        begin
          key  := 0;
          vKey := 13;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end;
      end
      else begin
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
  end;
  //Atalhos
  if rzpDados.Visible then
  begin
    if key = vk_F5 then
      sbIncluir.onClick(sbSalvar);
    if key = vk_F6 then
      sbIncluir.onClick(sbCancelar);
  end
  else begin
    if (key = vk_F2) and (sbIncluir.Enabled) then
      sbIncluir.onClick(sbIncluir);
    if (key = vk_F3) and (sbEditar.Enabled) then
      sbIncluir.onClick(sbEditar);
    if (key = vk_F4) and (sbExcluir.Enabled) then
      sbIncluir.onClick(sbExcluir);
    if (key = vk_F8) then
      sbIncluir.onClick(sbImprimir);
  end;
end;

procedure TFModelo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if pDados.Enabled then
  begin
    if key = #13 then
    begin
      if (not pPesquisa.Visible) then
      begin
        key  := #0;
        vKey := 13;
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
    end;
  end;
end;

procedure TFModelo.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if (Msg.CharCode = VK_TAB) then
    vkey := 13;
end;

procedure TFModelo.FormShow(Sender: TObject);
begin
  PStatusResgistro.Caption := IntToStr(cdsDados.RecordCount) + ' Registro(s)';
  Application.ProcessMessages;
end;

procedure TFModelo.sbIncluirClick(Sender: TObject);
begin
  xRelTela := '';
  Case TComponent(Sender).Tag of
    12:if not sbIncluir.Enabled then Abort
        else pLiberar('Salvar');
    13: if not sbEditar.Enabled then Abort
        else begin
          if (cdsDados.RecordCount > 0) then
            pLiberar('Salvar')
          else Abort;
        end;
    14: begin
          if not sbExcluir.Enabled then Abort
          else begin
            if (cdsDados.RecordCount > 0) then
            begin
              if not fExcluir then Abort
            end
            else Abort;
          end;
        end;
    15: pLiberar('Nada');
    16: pLiberar('Nada');
    18: p_Imprimir;
    91: if (cdsDados.RecordCount > 0) then
        begin
          pcItem.ActivePageIndex := 1;
          cdsDados.Prior;
        end;
    92: if (cdsDados.RecordCount > 0) then
        begin
          pcItem.ActivePageIndex := 1;
          cdsDados.Next;
        end;
  else
    Abort;
  end;
end;

procedure TFModelo.p_Pesquisa(vTipo:Boolean);
begin
  try
    pcItem.ActivePageIndex := 0;
    pPesquisa.Visible := vTipo;
    if vTipo then
    begin
      p_IndexaGrid;
      if (Trim(vCampo)='') then
      begin
        vCampo := dbDados.Columns[0].FieldName;
        rbPesquisa.Caption    := 'Pesquisa por ->' + dbDados.Columns[0].Title.Caption;
      end;

      if cdsDados.FieldByName(vcampo).DataType in [ftDate, ftDateTime] then
        edPesquisa.EditMask := '!99/99/9999;1; '
      else if cdsDados.FieldByName(vcampo).DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency] then
        edPesquisa.EditMask := '99999999;1; '
      else edPesquisa.EditMask := '';
      if pPesquisa.Visible then
        edPesquisa.SetFocus;
    end;
  except
  end;
end;

procedure TFModelo.p_Imprimir;
var vi:Integer; xvfilt, vcampo, vFilter:String;
begin
  if not cdsDados.IsEmpty then
  begin
    vcampo := '';
    for vi := 0 to cdsDados.Fields.Count - 1 do
    begin
      if cdsDados.Fields[vi].FieldName = 'LANC'     then vcampo := 'LANC'
      else begin
        if vcampo = '' then
        begin
          if cdsDados.Fields[vi].FieldName = 'LANCIT'   then vcampo := 'LANCIT'
          else begin
            if cdsDados.Fields[vi].FieldName = 'REGISTRO' then vcampo := 'REGISTRO'
            else begin
              if cdsDados.Fields[vi].FieldName = 'CODIGO'   then vcampo := 'CODIGO';
            end;
          end;
        end;
      end;
    end;
    if vcampo = '' then exit;

    dbDados.DataSource.DataSet.DisableControls;
    vFilter := cdsDados.Filter;
    xRelTela := UpperCase(Name);
    Application.CreateForm(TFModeloRel, FModeloRel);
    if dbDados.SelectedRows.Count > 0 then
    begin
      xvfilt := '';
      with dbDados.DataSource.DataSet do
      begin
        for vi := 0 to dbDados.SelectedRows.Count-1 do
        begin
          //GotoBookmark(dbDados.SelectedRows.Items[vi]);
          xvfilt := xvfilt + FieldByName(vcampo).asString + ', ';
        end;
      end;
      xvfilt := Trim(xvfilt);
      xvfilt := Copy(xvfilt,1,Length(xvfilt)-1);
    end
    else
      xvfilt := cdsDados.FieldByName(vcampo).asString;

    cdsDados.Filter := vcampo+' in (' + xvfilt + ')';
    cdsDados.Filtered := True;
    vi := cdsDados.FieldByName(vcampo).asInteger;

    FModeloRel.dsRelat.DataSet   := cdsDados;
    FModeloRel.dsDetalhe.DataSet := gdsDetalhe;
    if FModeloRel.dsRelat.DataSet = FModeloRel.dsDetalhe.DataSet then
      FModeloRel.ppDetalhe.Visible := False
    else
      FModeloRel.ppDetalhe.Visible := True;

    FModeloRel.ShowModal;

    cdsDados.Filtered := False;
//    if vFilter = '' then cdsDados.Filtered := False
//    else cdsDados.Filter := vFilter;

    dbDados.DataSource.DataSet.EnableControls;
    cdsDados.Locate(vcampo, vi, []);
  end;
end;

procedure TFModelo.p_IndexaGrid;
var vcln, vc: Integer;
begin
  if cdsDados.Eof then exit;
  if pcItem.ActivePageIndex > 0 then exit;

  vcln := 0;
  if dbDados.SelectedIndex >= 0 then
    vcln := dbDados.SelectedIndex;

  try
    vCampo := dbDados.Columns[vcln].FieldName;
    vCampoTemp := vCampo;
    Try
      if (dsDados.DataSet As TFDQuery).IndexName <> '' then
      begin
        (dsDados.DataSet As TFDQuery).IndexName := '';
        (dsDados.DataSet As TFDQuery).DeleteIndex('iIndice');
      end;
    Except
    end;
    try
      if vindex <> dbDados.Columns[vcln].FieldName then
      begin
        vindex := dbDados.Columns[vcln].FieldName;
        //vindex_order_asc := false;
        for vc := 0 to dbDados.Columns.Count - 1 do
        begin
          if vindex = dbDados.Columns[vc].FieldName then
          begin
            vcampo := dbDados.Columns[vc].FieldName;
            dbDados.SelectedIndex := vc;
            vcln := vc;
          end;
        end;
      end;

      if vindex_order_asc then
      begin
        (dsDados.DataSet As TFDQuery).AddIndex('iIndice', vCampo, '', [soDescending]);
        pStatusHistorico.Caption := 'Ordenado por ->' + dbDados.Columns[vcln].Title.Caption +' Decrescente ';
        if (not pPesquisa.Visible) then  vindex_order_asc := False;
      end
      else begin
        (dsDados.DataSet As TFDQuery).AddIndex('iIndice', vCampo, '', []);
        pStatusHistorico.Caption := 'Ordenado por ->' + dbDados.Columns[vcln].Title.Caption +' Crescente ';
        if (not pPesquisa.Visible) then  vindex_order_asc := True;
      end;
    except
    end;

    (dsDados.DataSet As TFDQuery).IndexName := 'iIndice';
    (dsDados.DataSet As TFDQuery).First;

    rbPesquisa.Caption    := 'Pesquisa por ->' + dbDados.Columns[vcln].Title.Caption;
    if dbDados.Columns[vcln].Field.DataType in [ftDate, ftDateTime] then
      edPesquisa.EditMask := '!99/99/9999;1; '

    else if dbDados.Columns[vcln].Field.DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency] then
      edPesquisa.EditMask := '!99999999;1; '

    else edPesquisa.EditMask := '';

    if pPesquisa.Visible then  edPesquisa.SetFocus;
  finally
    Screen.Cursor := crDefault;
    cdsDados.First;
  end;
end;

procedure TFModelo.FormActivate(Sender: TObject);
begin
  SetaFoco(nil);
end;

procedure TFModelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (sbSalvar.Visible) then Exit;
 (dsDados.DataSet As TFDQuery).Active := False;
end;

procedure TFModelo.dbDadosTitleClick(Column: TColumn);
begin
  if Column.Field.DataType in [ftBlob, ftMemo] then
  begin
    Application.MessageBox('Não é permitido a pesquisa por este campo.','Informação',mb_Ok + MB_ICONINFORMATION + mb_DefButton1 + mb_applmodal);
    exit;
  end
  else if Column.Field.FieldKind = fkCalculated then
  begin
    Application.MessageBox('Não é permitido a pesquisa por este campo.','Informação',mb_Ok + MB_ICONINFORMATION + mb_DefButton1 + mb_applmodal);
    exit;
  end;
  if vindex <> Column.Field.FieldName then
  begin
    dbDados.SelectedIndex := Column.Index;
    vindex_order_asc := False;
    vindex := Column.Field.FieldName;
  end;
  Application.ProcessMessages;
  Screen.Cursor := crSQLWait;
  p_IndexaGrid;
  Screen.Cursor := crDefault;
end;

procedure TFModelo.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if pcItem.ActivePageIndex <> 0 then exit;

  if Column.FieldName = vindex then
  begin
    if (dsDados.DataSet <> nil) then
    begin
      if (dsDados.DataSet.Active) and
         ((dsDados.DataSet As TFDQuery).IndexName <> '') then
      begin
       if vindex_order_asc then
         dbDados.Canvas.Draw(Rect.Right-8, 1, ImgOrdemAsc.Picture.Graphic)
       else
         dbDados.Canvas.Draw(Rect.Right-8, 1, ImgOrdemDesc.Picture.Graphic);
      end;
    end;
  end;

  if odd(cdsDados.RecNo) then
  begin
    dbDados.Canvas.Font.Color:= clBlack;
    dbDados.Canvas.Brush.Color:= $00F4F4F4;
  end
  else begin
    dbDados.Canvas.Font.Color:= clBlack;
    dbDados.Canvas.Brush.Color:= clWhite;
  end;

  if dbDados.SelectedRows.CurrentRowSelected then
    dbDados.Canvas.Font.Color:= clRed;
{
   begin
      xvfilt := '';
      with dbDados.DataSource.DataSet do
      begin
        for vi := 0 to dbDados.SelectedRows.Count-1 do
        begin
          GotoBookmark(dbDados.SelectedRows.Items[vi]);
          xvfilt := xvfilt + FieldByName(vcampo).asString + ', ';
        end;
      end;
}

  dbDados.Canvas.FillRect(Rect);
  dbDados.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFModelo.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if cdsDados.FieldByName(vCampo).DataType in [ftDate, ftDateTime] then
    begin
      try
        edPesquisa.Text := DateToStr(StrToDate(edPesquisa.Text));
        (dsDados.DataSet As TFDQuery).Filtered := False;
        (dsDados.DataSet As TFDQuery).Filter := vCampo + '=' + QuotedStr(edPesquisa.Text);
        (dsDados.DataSet As TFDQuery).Filtered := True;
      except
        ShowMessage('Informe uma data válida!');
        Abort;
      end;
    end;
    dbDados.SetFocus;
  end;
  if key = #27 then
  begin
    p_Pesquisa(False);
    (dsDados.DataSet As TFDQuery).Filtered := False;
    dbDados.SetFocus;
  end;
end;

procedure TFModelo.edPesquisaChange(Sender: TObject);
var vTexto:String;
begin
  if cdsDados.FieldByName(vCampo).DataType in [ftString] then
  begin
    (dsDados.DataSet As TFDQuery).Filtered := False;
    (dsDados.DataSet As TFDQuery).Filter   := 'UPPER(' + vCampo + ') LIKE ' + QuotedStr('%' + Trim(UpperCase(edPesquisa.Text)) + '%');
    (dsDados.DataSet As TClientDataSet).Filtered := True;
  end
  else begin
    Try
      vTexto := Trim(edPesquisa.Text);
      if (vTexto = '')     or
         (vTexto = '0')    or
         (vTexto = '/  /') then
        exit;

      if (Copy(vTexto,3,1) + Copy(vTexto,6,1) = '//') then
        if (Length(Trim(Copy(vTexto,1,2))) <> 2) or
           (Length(Trim(Copy(vTexto,4,2))) <> 2) or
           (Length(Trim(Copy(vTexto,7,2))) <> 2) then
          exit;

      if (edPesquisa.EditMask <> '!99/99/9999;1; ') and
         (Copy(vTexto,3,1) + Copy(vTexto,6,1) <> '//') then
        (dsDados.DataSet As TFDQuery).FindNearest([vTexto])
    except
    end;
  end;
end;

procedure TFModelo.edPesquisaExit(Sender: TObject);
begin
  p_Pesquisa(False);
end;

procedure TFModelo.dbDadosEnter(Sender: TObject);
begin
  PStatusResgistro.Caption := IntToStr(cdsDados.RecordCount) + ' Registro(s)';
end;

procedure TFModelo.dbDadosKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9', 'A'..'Z', 'a'..'z']) then
  begin
    p_Pesquisa(True);
    edPesquisa.Text := key;
    edPesquisa.SetFocus;
    edPesquisa.SelStart := 1;
  end;
end;

procedure TFModelo.cdsDadosReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
//  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TFModelo.dbDadosDblClick(Sender: TObject);
begin
  pcItem.ActivePageIndex := 1;
end;

procedure TFModelo.cdsDadosAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
//var vCampo: String;
//    vRegis, vcc, vfim: Integer;
//    vTrue: Boolean;
begin
{  vTrue := False;
  vfim := cdsDados.FieldCount;
  if vfim > 3 then vfim := 3;

  for vcc := 0 to vfim do
  begin
    if (cdsDados.Fields[vcc].DataType in [ftSmallint, ftInteger]) and
       (not vTrue) then
    begin
      vCampo := cdsDados.Fields[vcc].FieldName;
      vRegis := cdsDados.Fields[vcc].asInteger;
      vTrue  := True;
    end;
  end;
  cdsDados.Locate(vCampo, vRegis, []);
}
end;

procedure TFModelo.cdsDadosAfterCancel(DataSet: TDataSet);
begin
  cdsDados.First;
end;

procedure TFModelo.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  vCampo := dbDados.Columns[0].FieldName;
  vIndex := vCampo;
  dbDados.SelectedIndex := 0;
  if UpperCase(Copy(Caption,1,3))='CAD' then
    vindex_order_asc := false
  else
    vindex_order_asc := true;
  p_IndexaGrid;
end;

procedure TFModelo.cdsDadosBeforeClose(DataSet: TDataSet);
begin
  try
    if (dsDados.DataSet As TFDQuery).IndexName <> '' then
    begin
      (dsDados.DataSet As TFDQuery).IndexName := '';
      (dsDados.DataSet As TFDQuery).DeleteIndex('iIndice');
    end;
  except
  end;
end;

end.
