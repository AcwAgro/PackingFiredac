unit zFrmPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, RzButton, DB, DBTables, Mask,
  DBCtrls, ExtCtrls, AppEvnts, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPesquisa = class(TFrame)
    edtPesquisa: TEdit;
    dbgLista: TDBGrid;
    sbFechar: TSpeedButton;
    dsPesquisa: TDataSource;
    SpeedButton1: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    sqlPesquisa: TFDQuery;
    procedure edtPesquisaChange(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbFecharClick(Sender: TObject);
    procedure dbgListaDblClick(Sender: TObject);
    procedure dbgListaExit(Sender: TObject);
    procedure dbgListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgListaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
    { Private declarations }
    procedure pSqlParametro(vSql:String);
    procedure pMostraGrid(vTrue: Boolean);
    procedure pEditaCampo;
  public
    { Public declarations }
    vpKey, vpCodPrincipal, vpQtdLetra: Integer;
    vpTabela, vpCodAuxiliar, vpDescricao, vpFiltro: String;
    vpCampo_1, vpCampo_2, inpWhere, pOpcao, pTexto: String;
    vpCodigo, vpTecla: Boolean;
    procedure pInicia(vTabela:String; vpForm: TForm; vpTop, vpLeft:Integer; vpGB: TGroupBox; vCodigo:Boolean=True; vQtdLetra:Integer=3);
    procedure pSql(pInd, pAux, pC1, pC2, pC3, pTabela, pOrdem, pWhere:String);
    procedure pLimpaCampo;
    procedure pRetornaDados(vtexto: String; vOpcao: String = 'I');
  end;

implementation

{$R *.dfm}
uses Data, Rotina;

procedure TfrmPesquisa.pInicia(vTabela:String; vpForm: TForm; vpTop, vpLeft:Integer; vpGB: TGroupBox; vCodigo:Boolean=True; vQtdLetra:Integer=3);
begin
  dbgLista.Parent := vpForm;
  dbgLista.Top    := vpTop + (vpGB.Top + vpGB.Height);
  dbgLista.Left   := vpLeft + vpGB.Left;
  //Limpa a tela
  Color := clWhite;
  vpTecla := false;
  pOpcao := 'I';
  pTexto := '0';
  edtPesquisa.Text := '';
  pMostraGrid(False);
  inpWhere   := '';
  vpCodigo   := vCodigo;
  vpTabela   := vTabela;
  vpQtdLetra := vQtdLetra;
end;

procedure TfrmPesquisa.pSql(pInd, pAux, pC1, pC2, pC3, pTabela, pOrdem, pWhere:String);
var pCampo: String;
begin
 //Cria SQL
  if (pOpcao = 'I') and (vpCodigo) then
  begin
    if not frENum(pTexto) then
    begin
      frPerg('Código inválido!','OK');
      edtPesquisa.SetFocus;
      Exit;
    end
    else
      pCampo := pInd + ' = '+pTexto
  end
  else if (pOpcao = 'P') and (vpCodigo) then
  begin
    if not frENum(pTexto) then
    begin
      //Verifica se tem hifem é porque já formou o código pegar apenas os números.
      if pos('-', ptexto) > 0 then
      begin
        ptexto := Trim(Copy(ptexto, 1, pos('-', ptexto)-1));
        pCampo := pAux + ' like '+pTexto
      end
      else begin
        frPerg('Código inválido!','OK');
        edtPesquisa.SetFocus;
        Exit;
      end;
    end
    else
      pCampo := pAux + ' like '+pTexto
  end
  else
    pCampo :=  pC1 + ' like '+QuotedStr(pTexto);
//    pCampo :=  '(  (('+pC1 + ') like '+QuotedStr(pTexto) +') or ('+  pC1 + ' like '+QuotedStr(pTexto)+')  )';

  // Verifica se tem Where indicado pelo sistema
  if (inpWhere <> '') then
  begin
    if (pWhere <> '') then
      pWhere := pWhere +' and '+ inpWhere
    else
      pWhere := inpWhere;
  end;

  sqlPesquisa.Close;
  sqlPesquisa.Sql.Text := ''+
                ' select distinct '+pInd+' as id_Indice,'+
                '        '+pAux+' as id_Auxiliar,'+
                '        '+pC1+'  as Campo_1,'+
                '        '+pC2+'  as Campo_2,'+
                '        '+pC3+'  as Campo_3 '+
                '   from '+pTabela+
                '  where '+pWhere+
                '    and '+pCampo+
                '   order by '+pOrdem;
end;

procedure TfrmPesquisa.pLimpaCampo;
begin
  //Limpa os campos
  edtPesquisa.Text := '';
  vpCodPrincipal := 0;
  vpCodAuxiliar  := '';
  vpDescricao    := '';
  vpCampo_1      := '';
  vpCampo_2      := '';
  sqlPesquisa.Close;
end;

procedure TfrmPesquisa.pMostraGrid(vTrue: Boolean);
begin
  if (vtrue) and (vpTecla) then
  begin
    Height := 130;
//    vgrid.Visible := True;
    dbgLista.Visible := True;
  end
  else begin
    Height := 16;
    dbgLista.Visible := False;
  end;
end;

procedure TfrmPesquisa.pEditaCampo;
begin
  vpCodPrincipal := sqlPesquisa.FieldByName('id_indice').AsInteger;
  vpCodAuxiliar  := sqlPesquisa.FieldByName('id_auxiliar').AsString;
  vpDescricao    := sqlPesquisa.FieldByName('campo_1').AsString;
  vpCampo_1      := sqlPesquisa.FieldByName('campo_2').AsString;
  vpCampo_2      := sqlPesquisa.FieldByName('campo_3').AsString;
  if vpCodigo then
    edtPesquisa.Text := vpCodAuxiliar +' - '+ vpDescricao
  else
    edtPesquisa.Text := vpDescricao;
end;

procedure TfrmPesquisa.pRetornaDados(vtexto: String; vOpcao: String = 'I');
begin
  try
    edtPesquisa.Clear;
    vpTecla := false;
    if not vpCodigo then
      edtPesquisa.Text := vtexto
    else begin
      vtexto := Trim(vtexto);
      if (vtexto = '') then
        pLimpaCampo
      else begin
        pSqlParametro(vOpcao+vtexto);
        if (sqlPesquisa.IsEmpty) then
        begin
          if vOpcao = 'P' then
          begin
            if vpCodigo then
            begin
              frPerg('Código inválido!','OK');
              edtPesquisa.SetFocus;
            end;
            Exit;
          end
          else
            pLimpaCampo
        end
        else
          pEditaCampo;
        sqlPesquisa.Close;
      end;
    end;
    vpTecla := false;
    pMostraGrid(False);
  except
  end;
end;

procedure TfrmPesquisa.edtPesquisaChange(Sender: TObject);
var vtexto, vsqlt: String;
    vi: Integer;
begin
  if not vpTecla then exit;

  try
    vtexto := Trim(edtPesquisa.Text);
    if (vtexto = '') then
    begin
      pMostraGrid(false);
      Abort;
    end;
    if Length(edtPesquisa.Text) > 0 then
    begin
      vsqlt := '';
      if vtexto = '&&&&&' then
        edtPesquisa.Text := '';
      //Pesquis a Padrao
      if (Length(vtexto) > 2) then
      begin
        if vtexto = '&&&&&' then
          vsqlt := 'D %%';

        //vtexto := xSubsAcentos(uppercase(vtexto));
        for vi := 1 to 5 do
        begin
          if vtexto[vi] in ['A'..'Z'] then
            vsqlt := 'D %'+ vtexto +'%'
        end;
      end;
      //Abre a consulta
      if (trim(vsqlt) <> '') then
      begin
        pSqlParametro(vsqlt);
        if (sqlPesquisa.IsEmpty) then
          pMostraGrid(False)
        else
          pMostraGrid(True);
      end;
    end;
  except
  end;
end;

procedure TfrmPesquisa.edtPesquisaEnter(Sender: TObject);
begin
  edtPesquisa.Color := $00CEF4E7;
  xpPesquisa := True;
  vpkey := 0;
end;

procedure TfrmPesquisa.edtPesquisaExit(Sender: TObject);
begin
  edtPesquisa.Color := clWhite;
  if (vpkey = 13) then
  begin
    pMostraGrid(false);
    if (Trim(edtPesquisa.Text) = '') then
      pLimpaCampo
    else begin
      if vpTecla then
        pRetornaDados(edtPesquisa.Text, 'P');
    end;
    sqlPesquisa.Close;
    xpPesquisa := True;
    vpTecla := False;
  end;
end;

procedure TfrmPesquisa.sbFecharClick(Sender: TObject);
begin
  vpDescricao := '';
  edtPesquisa.Text := '';
  pSqlParametro('P%');
  edtPesquisa.SetFocus;
end;

procedure TfrmPesquisa.SpeedButton1Click(Sender: TObject);
begin
  vpTecla := True;
  edtPesquisa.Text := '&&&&&';
//  edtPesquisa.onChange(edtPesquisa);
  if dbgLista.Visible then
  begin
    dbgLista.SetFocus;
    Abort;
  end;
end;

procedure TfrmPesquisa.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Verifica tecla F7 e para baixo
  if (key = VK_RETURN) then vpkey := 13;

  if ((key = VK_DOWN) and (not sqlPesquisa.IsEmpty)) then
    if dbgLista.Visible then
    begin
      Application.ProcessMessages;
      dbgLista.SetFocus;
      Abort;
    end;
  if (key = vk_F7) then
  begin
    vpTecla := True;
    edtPesquisa.Text := '&&&&&';
    if dbgLista.Visible then
    begin
      dbgLista.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfrmPesquisa.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9', 'A'..'Z', 'a'..'z']) then
    vpTecla := True;

  if (key = #13) then vpkey := 13;

  //Seta para baixo
  if ((key = #40) and (not sqlPesquisa.IsEmpty)) then
    if dbgLista.Visible then
    begin
      Application.ProcessMessages;
      dbgLista.SetFocus;
      Abort;
    end;
end;

procedure TfrmPesquisa.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.wParam = VK_TAB) then
    vpkey := 13;
end;

procedure TfrmPesquisa.dbgListaDblClick(Sender: TObject);
begin
  pEditaCampo;
  pMostraGrid(false);
  edtPesquisa.SetFocus;
end;

procedure TfrmPesquisa.dbgListaExit(Sender: TObject);
begin
  if dbgLista.Visible then
    dbgLista.onDblClick(dbgLista);
end;

procedure TfrmPesquisa.dbgListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    dbgLista.onDblClick(dbgLista);
end;

procedure TfrmPesquisa.dbgListaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9', 'A'..'Z', 'a'..'z']) then
  begin
    edtPesquisa.SetFocus;
    edtPesquisa.Text := key;
    edtPesquisa.SelStart := 2;
  end;
end;

procedure TfrmPesquisa.pSqlParametro(vSql:String);
var i: Integer;
begin
  try
    sqlPesquisa.Close;
    pOpcao  := Copy(vsql,1,1);
    pTexto  := Trim(Copy(vsql,2,100));

    //Inserir o filtro
    if (vpTabela = 'ttCidade') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', ''' ''', 'CadCidad', '2', 'Codigo > 0');
    if (vpTabela = 'ttClasse') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadClass', '2', 'Codigo > 0');
    if (vpTabela = 'ttVariedade') then
      pSql('Codigo', 'Codigo', 'Descricao', 'PesoLiq', ''' ''', 'CadVarie', '2', 'Codigo > 0');
    if (vpTabela = 'ttCategoria') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadCateg', '2', 'Codigo > 0');
    if (vpTabela = 'ttProdutor') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'Codigo < 1000');
    if (vpTabela = 'ttLocal') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadLocal', '2', 'Codigo > 0');
    if (vpTabela = 'ttMotorista') then
      pSql('Codigo', 'Codigo', 'Descricao', 'TREstado', 'TRPlaca', 'CadTrans', '2', 'Codigo > 0');
    if (vpTabela = 'ttTipoBins') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadBins', '2', 'Codigo > 0');


    //Acesso aos dados
    sqlPesquisa.Open;
    if (pOpcao <> 'P') then
    begin
      //Arruma Grid
      dbgLista.Columns[0].Visible := False;
      for i := 0 to dbgLista.Columns.Count - 1 do
      begin
        if (dbgLista.Columns[i].Field.DataType in [ftSmallint, ftInteger]) then dbgLista.Columns[i].Width := 50;
        if (dbgLista.Columns[i].Field.DataType in [ftFloat, ftCurrency])   then dbgLista.Columns[i].Width := 100;
        if (dbgLista.Columns[i].Field.DataType in [ftDate])                then dbgLista.Columns[i].Width := 100;

        if ((dbgLista.Columns.Count-1) < 3) then
        begin
          if (dbgLista.Columns[i].Width > 250) then dbgLista.Columns[i].Width := 250
        end
        else begin
          if (dbgLista.Columns[i].Width > 200) then dbgLista.Columns[i].Width := 200;
        end;
{        if (i > 0) then
        begin
          dbgLista.Columns[i].Visible := False;
          if (dbgLista.Columns[i].Title.Caption <> '') then
            dbgLista.Columns[i].Visible := True;
        end;}
      end;
    end;
  except
    On E: Exception do
    begin
      frPerg(PChar('Erro ao abrir tabela: '+#13+ e.message),'OK');
      Abort;
    end;
  end;
end;

end.


