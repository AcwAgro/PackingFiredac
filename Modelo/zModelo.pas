unit zModelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,
  Provider, DBClient, DBTables, Menus, Mask, DBCtrls, RzDBNav, RzTabs, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  System.ImageList, Vcl.ImgList, cxTextEdit, RzButton, cxCurrencyEdit, ACBrBase,
  ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer;

type
  THabilita = (thFonteAlta, thFonteBaixa, thVisivel, thNaoVisivel);

  TFModelo = class(TForm)
    Panel12: TPanel;
    PStatusHistorico: TPanel;
    PStatusResgistro: TPanel;
    cdsDados: TClientDataSet;
    dspDados: TDataSetProvider;
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
    tsDados: TRzTabSheet;
    pDados: TPanel;
    rzpUtil: TRzPanel;
    sbImprimir: TSpeedButton;
    pPesquisa: TRzPanel;
    Label1: TLabel;
    sbTiraFiltro: TSpeedButton;
    rbPesquisa: TRzPanel;
    edPesquisa: TMaskEdit;
    Panel2: TPanel;
    Label3: TLabel;
    spbSelecionar: TSpeedButton;
    ImageList1: TImageList;
    dbDados: TcxGrid;
    dbDadosDBTableView1: TcxGridDBTableView;
    dbDadosLevel1: TcxGridLevel;
    rbgAtivo: TRadioGroup;
    PPeriodo: TPanel;
    sbPeriodo: TSpeedButton;
    rbPeriodo: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    cxtEdSalvar: TcxTextEdit;
    sqlDados: TFDQuery;
    procedure sbIncluirMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure sbIncluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure edPesquisaExit(Sender: TObject);
    procedure sbTiraFiltroClick(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cdsDadosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDadosBeforeClose(DataSet: TDataSet);
    procedure cdsDadosAfterCancel(DataSet: TDataSet);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure dtInicialChange(Sender: TObject);
    procedure dtFinalChange(Sender: TObject);
    procedure dbDadosDBTableView1oldKeyPress(Sender: TObject; var Key: Char);
    procedure dbDadosDBTableView1oldDblClick(Sender: TObject);
    procedure dbDadosDBTableView1oldCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbDadosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbDadosDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure SetaFoco(Sender: TObject);
    procedure p_Imprimir;
  public
    { Public declarations }
    procedure p_Pesquisa(vTipo: Boolean);
    procedure p_IndexaGrid;
    procedure pLiberar(vbtn: String);
  end;

  // Tamanho maximo da tela é height=560, width=800
var
  FModelo: TFModelo;
  vKey, vTag, vCampoID: Integer;
  vindex, vCampo, vCampoTemp, vRelEmail: String;
  vindex_order_asc: Boolean;
  gMenu: TSpeedButton;
  gdsDetalhe: TDataSet;
  gdsSubDetalhe: TDataSet;

implementation

{$R *.dfm}

uses RecError, Data, Rotina, Menu, zModeloRel;

procedure TFModelo.SetaFoco(Sender: TObject);
var
  vi: Integer;
  vdbt: TDBEdit;
begin
  for vi := 0 to ComponentCount - 1 do
  begin
    if Components[vi] is TDBEdit then
    begin
      vdbt := Components[vi] as TDBEdit;
      if not vdbt.ReadOnly then
      begin
        if vdbt.Focused then
          vdbt.Color := $00A1E9D0 // $00CEF4E7
        else
          vdbt.Color := clWhite;
      end;
    end;
  end;
end;

procedure TFModelo.sbTiraFiltroClick(Sender: TObject);
begin
  p_Pesquisa(false);
  (dsDados.DataSet As TClientDataSet).Filtered := false;
  (dsDados.DataSet As TClientDataSet).Filter := '';
  cdsDados.Filter := '';
  cdsDados.Filtered := false;

  if dbDados.Focused then
    dbDados.SetFocus;

  cdsDados.First;

end;

procedure TFModelo.pLiberar(vbtn: String);
var
  vUsuario: String;
begin
  if vbtn = 'Geral' then
  begin
    // Tela padrão
    tsLista.TabVisible := true;
    pcItem.ActivePageIndex := 0;
    pDados.Enabled := false;
    tsLista.Enabled := true;
    sbIncluir.Enabled := false;
    sbEditar.Enabled := false;
    sbExcluir.Enabled := false;
    sbSalvar.Enabled := false;
    sbCancelar.Enabled := false;
    rzpMenu.Visible := true;
    rzpDados.Visible := false;
    sbSalvar.Visible := false;
    // Usuários Liberações
    vUsuario := frPree(xAcesso, 2, '0', 0) + ';';
    fSql(1, 1, ['Select Editar, Excluir From zModulo Where Tipo = ' +
      QuotedStr('X') + ' and Tag = ' + Copy(pnlTela.Caption, 7, 4)], 1);
    if Pos(vUsuario, dm.qrSql1.Fields[0].asString) > 0 then
    begin
      sbIncluir.Enabled := true;
      sbEditar.Enabled := true;
    end;
    if Pos(vUsuario, dm.qrSql1.Fields[1].asString) > 0 then
      sbExcluir.Enabled := true;

    sbImprimir.Enabled := true;

    Application.ProcessMessages;
    // Foca em dados
{    if dbDados.Focused then
      dbDados.SetFocus;}
  end;

  // Abre para salvamento
  if vbtn = 'Salvar' then
  begin
    pcItem.ActivePageIndex := 1;
    sbIncluir.Enabled := false;
    rzpMenu.Visible := false;
    rzpDados.Visible := true;
    sbSalvar.Visible := true;
    pDados.Enabled := true;
    tsLista.Enabled := false;
    sbSalvar.Enabled := true;
    sbCancelar.Enabled := true;
    tsLista.TabVisible := false;
  end;
end;

procedure TFModelo.FormCreate(Sender: TObject);
var
  vi, vdialanc: Integer;
begin
  vdialanc := fBus(1,['Select valor From zGenerator Where Tabela = ''FILTRO'' and Campo = ''PERIODO'''],1);

  gdsDetalhe := cdsDados;
  gdsSubDetalhe := cdsDados;

  if (vdialanc = 0) then
  begin
    dtInicial.Date := StrToDate('01/01/' + xAno);
    dtFinal.Date   := StrToDate('31/12/' + xAno);
  end
  else begin
    dtInicial.Date := Date - vdialanc;
    dtFinal.Date   := Date + vdialanc;
  end;

  Left := (FMenu.Width - Width) div 2;
  Top := FMenu.rzpgMenu.Top + 5;

  xpPesquisa := False;
  gMenu := sbIncluir;

  pnlTela.Caption := 'Tela: ' + frPree(zTagTela, 4, '0', 0);
  pLiberar('Geral');

  rbgAtivo.Visible := false;

  // Muda cor do foco
  for vi := 0 to ComponentCount - 1 do
    if Components[vi] is TDBEdit then
      (Components[vi] as TDBEdit).OnEnter := SetaFoco;

end;

procedure TFModelo.sbIncluirMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  { if gMenu.Name <> TSpeedButton(Sender).Name then
    begin
    gMenu.Font.Color := clBlack;
    gMenu.Font.Size  := 8;
    gMenu.Font.Style := [];
    gMenu := TSpeedButton(Sender);
    TSpeedButton(Sender).Font.Color := $000080FF;
    TSpeedButton(Sender).Font.Style := [fsUnderline];
    TSpeedButton(Sender).Font.Size  := 8;
    end; }
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
      if TComponent(Sender).ClassType = TCXGRID then
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
    end
    else begin
      if pDados.Enabled then
      begin
        if (Key = 13) then
        begin
          if (not pPesquisa.Visible) then
          begin
            Key := 0;
            vKey := 13;
            xpPesquisa := False;
            //Perform(WM_NEXTDLGCTL, 0, 0);
          end;
        end;
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
  vKey := 0;
{  if pDados.Enabled then
  begin
    if Key = #13 then
    begin
      if (not pPesquisa.Visible) then
      begin
        Key := #0;
        vKey := 13;
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
    end;
  end;
}
end;

procedure TFModelo.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if (Msg.CharCode = VK_TAB) then
    vKey := 13;
end;

procedure TFModelo.FormShow(Sender: TObject);
var
  vi: Integer;
  vColumn: TcxGridDBColumn;
  vTextEP: TcxTextEditProperties;
  vCurrEP: TcxCurrencyEditProperties;
begin

  if dbDadosDBTableView1.ColumnCount = 0 then
  begin

    dbDadosDBTableView1.ClearItems;
    for vi := 0 to cdsDados.FieldCount - 1 do
    begin
      if cdsDados.Fields[vi].Visible then
      begin
        vColumn := dbDadosDBTableView1.CreateColumn;
        vColumn.DataBinding.FieldName := cdsDados.Fields[vi].FieldName;

        vColumn.PropertiesClass       := TcxTextEditProperties;

        vTextEP := vColumn.Properties as TcxTextEditProperties;
        vTextEP.Nullstring    := '';
        vTextEP.UseNullString := True;
        vTextEP.MaxLength     := (cdsDados.Fields[vi].DataSize * 10) + 10;

        if cdsDados.Fields[vi].DataType in [ftFloat, ftCurrency, ftBCD, ftFMTBcd] then
        begin
          //vColumn.DataBinding.ValueType := 'Float';
          //vColumn.Summary.FooterFormat  := '0.00';
          //vColumn.Summary.GroupFormat   := '0.00';
          vColumn.PropertiesClass       := TcxCurrencyEditProperties;
          vCurrEP := vColumn.Properties as TcxCurrencyEditProperties;
          vCurrEP.DisplayFormat := '#,0.00';
          vCurrEP.DecimalPlaces := 2;
        end;

      end;
    end;
    dbDadosDBTableView1.ApplyBestFit;
  end;

  PStatusResgistro.Caption := IntToStr(cdsDados.RecordCount) + ' Registro(s)';
  Application.ProcessMessages;
end;

procedure TFModelo.sbIncluirClick(Sender: TObject);
begin
  xRelTela := '';
  Case TComponent(Sender).Tag of
    12:
      if not sbIncluir.Enabled then
        Abort
      else
        pLiberar('Salvar');
    13:
      if not sbEditar.Enabled then
        Abort
      else
      begin
        if (cdsDados.RecordCount > 0) then
          pLiberar('Salvar')
        else
          Abort;
      end;
    14:
      begin
        pcItem.ActivePageIndex := 0;
        if not sbExcluir.Enabled then
          Abort
        else
        begin
          if (cdsDados.RecordCount > 0) then
          begin

            if not rbgAtivo.Visible then
            begin
              // Opção excluir
              if not frExcl then
                Abort

            end
            else
            begin
              // Opção inativar
              if not frAtivo then
                Abort;

            end;

          end
          else
            Abort;
        end;
      end;
    15:
      begin
        vKey := 0;
        try
          cxtEdSalvar.SetFocus;
        except
          vKey := 0;
        end;
        pLiberar('Nada');
      end;
    16:
      begin
        vKey := 0;
        pLiberar('Nada');
      end;
    // 16: pLiberar('Nada');
    18:
      p_Imprimir;
    91:
      if (cdsDados.RecordCount > 0) then
      begin
        pcItem.ActivePageIndex := 1;
{       try
          cdsDados.Refresh;
        except
        end;}
       cdsDados.Prior;
      end;
    92:
      if (cdsDados.RecordCount > 0) then
      begin
        pcItem.ActivePageIndex := 1;
{       try
          cdsDados.Refresh;
        except
        end;}
        cdsDados.Next;
      end;
  else
    Abort;
  end;
end;

procedure TFModelo.p_Pesquisa(vTipo: Boolean);
begin

  try
    pcItem.ActivePageIndex := 0;
    pPesquisa.Visible := vTipo;

    if vTipo then
    begin
      if (Trim(vCampo) = '') then
      begin
        vCampo   := cdsDados.Fields[0].FieldName;
        vCampoID := 0;
      end;

      p_IndexaGrid;

      if cdsDados.FieldByName(vCampo).DataType in [ftDate, ftDateTime] then
        edPesquisa.EditMask := '!99/99/9999;1; '
      else if cdsDados.FieldByName(vCampo).DataType
        in [ftSmallint, ftInteger, ftFloat, ftCurrency] then
        edPesquisa.EditMask := '99999999;1; '
      else
        edPesquisa.EditMask := '';
      if pPesquisa.Visible then
        edPesquisa.SetFocus;
    end;
  except
  end;

end;

procedure TFModelo.p_Imprimir;
var
  vi, vf, vFieldCol: Integer;
  vtxt, vfilt, vCampo, vFilter: String;
begin
  if not cdsDados.IsEmpty then
  begin
    vCampo := '';
    for vi := 0 to dbDadosDBTableView1.ItemCount -1 do
    begin
      if (vCampo = '') then
      begin
        vtxt := dbDadosDBTableView1.Items[vi].DataBinding.FilterFieldName;
        if  (vtxt = 'LANC')     or
            (vtxt = 'LANCIT')   or
            (vtxt = 'REGISTRO') or
            (vtxt = 'CODIGO')   or
            (vtxt = 'NUMERO')   then
        begin
          vCampo := vtxt;
          vFieldCol := vi;
        end;
      end;
    end;

    if vCampo = '' then
      exit;

    vf := dbDadosDBTableView1.ViewData.DataController.GetSelectedCount;
    vfilt := '';
    if vf > 0 then
    begin
      for vi := 0 to vf -1 do
      begin
        var row := dbDadosDBTableView1.ViewData.DataController.GetSelectedRowIndex(vi);
        vtxt := dbDadosDBTableView1.ViewData.Records[row].Values[vFieldCol];
        //vtxt := dbDadosDBTableView1.ViewData.Records[row].Values[dbDadosDBTableView1.GetColumnByFieldName(vCampo).Index];
        vfilt := vfilt + vtxt + ', ';
      end
    end
    else
      vfilt := cdsDados.FieldByName(vCampo).asString+', ';
    vfilt := Trim(vfilt);
    vfilt := Copy(vfilt, 1, Length(vfilt) - 1);

    cdsDados.DisableControls;
    vFilter := cdsDados.Filter;
    xRelTela := UpperCase(Name);
    Application.CreateForm(TFModeloRel, FModeloRel);

    cdsDados.Filter := vCampo + ' in (' + vfilt + ')';
    cdsDados.Filtered := true;
    vi := cdsDados.FieldByName(vCampo).asInteger;

    FModeloRel.dsRelat.DataSet := cdsDados;
    FModeloRel.dsDetalhe.DataSet := gdsDetalhe;
    FModeloRel.dsSubDetalhe.DataSet := gdsSubDetalhe;
    FModeloRel.varEmail := vRelEmail;

    if FModeloRel.dsRelat.DataSet = FModeloRel.dsDetalhe.DataSet then
      FModeloRel.ppDetalhe.Visible := false
    else
      FModeloRel.ppDetalhe.Visible := true;

    FModeloRel.Caption := Caption;

    FModeloRel.ShowModal;

    cdsDados.Filtered := false;
    if vFilter = '' then cdsDados.Filtered := False
    else cdsDados.Filter := vFilter;

    cdsDados.EnableControls;
    cdsDados.Locate(vCampo, vi, []);

  end;

end;

procedure TFModelo.p_IndexaGrid;
var vc: Integer;
begin
  if cdsDados.Eof then
    exit;
  if pcItem.ActivePageIndex > 0 then
    exit;

  try
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
      if vindex <> (dsDados.DataSet As TClientDataSet).IndexName then
      begin
        vindex := vCampo;
        //vindex_order_asc := false;
      end;

      if vindex_order_asc then
      begin
        (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vCampo, [ixDescending], '', '', 0);
        PStatusHistorico.Caption := 'Ordenado por ->' + vCampo + ' Decrescente ';
        if (not pPesquisa.Visible) then
          vindex_order_asc := false;
      end
      else
      begin
        (dsDados.DataSet As TClientDataSet).AddIndex('iIndice', vCampo, [], '', '', 0);
        PStatusHistorico.Caption := 'Ordenado por ->' + vCampo + ' Crescente ';
        if (not pPesquisa.Visible) then
          vindex_order_asc := true;
      end;
    except

    end;

    (dsDados.DataSet As TClientDataSet).IndexName := 'iIndice';
    (dsDados.DataSet As TClientDataSet).First;

    if cdsDados.FieldByName(vCampo).DataType in [ftDate, ftDateTime] then
      edPesquisa.EditMask := '!99/99/9999;1; '

    else if cdsDados.FieldByName(vCampo).DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency] then
      edPesquisa.EditMask := '!99999999;1; '

    else
      edPesquisa.EditMask := '';

    if pPesquisa.Visible then
      edPesquisa.SetFocus;
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
  if (sbSalvar.Visible) then
    exit;
  (dsDados.DataSet As TClientDataSet).Active := false;
end;

procedure TFModelo.dtFinalChange(Sender: TObject);
begin
  if not(dtFinal.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFModelo.dtInicialChange(Sender: TObject);
begin
  if not(dtInicial.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFModelo.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if cdsDados.FieldByName(vCampo).DataType in [ftDate, ftDateTime] then
    begin
      try
        edPesquisa.Text := DateToStr(StrToDate(edPesquisa.Text));
        (dsDados.DataSet As TClientDataSet).Filtered := false;
        (dsDados.DataSet As TClientDataSet).Filter := vCampo + '=' +
          QuotedStr(edPesquisa.Text);
        (dsDados.DataSet As TClientDataSet).Filtered := true;
      except
        ShowMessage('Informe uma data válida!');
        Abort;
      end;
    end;

    if dbDados.Focused then
      dbDados.SetFocus;
  end;
  if Key = #27 then
  begin
    p_Pesquisa(false);
    (dsDados.DataSet As TClientDataSet).Filtered := false;

    if dbDados.Focused then
      dbDados.SetFocus;
  end;

end;

procedure TFModelo.edPesquisaChange(Sender: TObject);
var
  vTexto: String;
begin
  if cdsDados.FieldByName(vCampo).DataType in [ftString] then
  begin
    vTexto := '(UPPER(' + vCampo + ') LIKE ' +
      QuotedStr('%' + Trim(UpperCase(edPesquisa.Text)) + '%') + ')';
    (dsDados.DataSet As TClientDataSet).Filtered := false;
    (dsDados.DataSet As TClientDataSet).Filter := vTexto;
    (dsDados.DataSet As TClientDataSet).Filtered := true;

  end
  else
  begin
    Try
      vTexto := Trim(edPesquisa.Text);
      if (vTexto = '') or (vTexto = '0') or (vTexto = '/  /') then
        exit;

      if (Copy(vTexto, 3, 1) + Copy(vTexto, 6, 1) = '//') then
        if (Length(Trim(Copy(vTexto, 1, 2))) <> 2) or
          (Length(Trim(Copy(vTexto, 4, 2))) <> 2) or
          (Length(Trim(Copy(vTexto, 7, 2))) <> 2) then
          exit;

      if (edPesquisa.EditMask <> '!99/99/9999;1; ') and
         (Copy(vTexto, 3, 1) + Copy(vTexto, 6, 1) <> '//') then
        (dsDados.DataSet As TClientDataSet).Locate(vCampo, vTexto, []);

    except

    end;
  end;
end;

procedure TFModelo.edPesquisaExit(Sender: TObject);
begin
  p_Pesquisa(false);
end;

procedure TFModelo.cdsDadosAfterCancel(DataSet: TDataSet);
begin
//  cdsDados.First;
end;

procedure TFModelo.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  vCampo := cdsDados.Fields[0].FieldName;
  vindex := vCampo;
  vCampoID := 0;
//  dbDados.SelectedIndex := 0;

  if UpperCase(Copy(Caption, 1, 3)) = 'CAD' then
    vindex_order_asc := false
  else
    vindex_order_asc := true;

  p_IndexaGrid;

  if cdsDados.Active then
  begin
    PStatusResgistro.Caption := '  ' + IntToStr(cdsDados.RecordCount) + ' Registro';
    if cdsDados.RecordCount > 1 then
      PStatusResgistro.Caption := PStatusResgistro.Caption + '(s)';
  end;

end;

procedure TFModelo.cdsDadosBeforeClose(DataSet: TDataSet);
begin
  try
    if (dsDados.DataSet As TClientDataSet).IndexName <> '' then
    begin
      (dsDados.DataSet As TClientDataSet).IndexName := '';
      (dsDados.DataSet As TClientDataSet).DeleteIndex('iIndice');
    end;
  except
  end;
end;

procedure TFModelo.cdsDadosReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TFModelo.dbDadosDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ni: Integer;
  ns: String;
begin

  if (dsDados.DataSet.IsEmpty) then
    Exit;

  inherited;

  ni := ACellViewInfo.GridView.Controller.FocusedItemIndex;
  ns := Sender.Items[ni].DataBinding.FilterFieldName;
  vCampo := ns;
  vCampoID := ni;
  rbPesquisa.Caption := 'Pesquisa por ->' + ACellViewInfo.GridView.Controller.FocusedItem.Name;
  rbPesquisa.Visible := False;

end;

procedure TFModelo.dbDadosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  pcItem.ActivePageIndex := 1;

end;

procedure TFModelo.dbDadosDBTableView1oldCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if AViewInfo.GridRecord.Selected then
  begin

    ACanvas.Brush.Color       := $00E8D6B7;
    ACanvas.Canvas.Font.Color := clBlack;
    ACanvas.Canvas.Font.Style :=[fsBold];

  end
  else
  begin

    if AViewInfo.GridRecord.RecordIndex mod 2 = 0 then
      ACanvas.Brush.Color := clWindow
    else
      ACanvas.Brush.Color := $00F3F3F3;

  end;

end;

procedure TFModelo.dbDadosDBTableView1oldDblClick(Sender: TObject);
begin
{
  if (dsLista.DataSet.IsEmpty) then exit;

  pcItem.ActivePageIndex := 1;
}
end;

procedure TFModelo.dbDadosDBTableView1oldKeyPress(Sender: TObject; var Key: Char);
begin

  if (Key in ['0' .. '9', 'A' .. 'Z', 'a' .. 'z']) then
  begin

    if pcItem.ActivePageIndex = 1 then
      exit;

    p_Pesquisa(True);

    edPesquisa.Text := Key;

    if edPesquisa.CanFocus then
      edPesquisa.SetFocus;

    edPesquisa.SelStart := 1;

  end;

end;

end.
