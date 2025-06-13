unit zFrmPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, RzButton, DB, DBTables, Mask,
  DBCtrls, ExtCtrls, AppEvnts, ACBrBase, ACBrEnterTab, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisa = class(TFrame)
    edtPesquisa: TEdit;
    sbFechar: TSpeedButton;
    dsPesquisa: TDataSource;
    SpeedButton1: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    dbgLista: TDBGrid;
    sqlPesquisa: TFDQuery;
    tmpGrid: TTimer;
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
    procedure tmpGridTimer(Sender: TObject);
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
uses Menu, Data, Rotina;

procedure TfrmPesquisa.pInicia(vTabela:String; vpForm: TForm; vpTop, vpLeft:Integer; vpGB: TGroupBox; vCodigo:Boolean=True; vQtdLetra:Integer=3);
begin
  Height := 16;
//  Width  := 300;
  dbgLista.Parent := vpForm;
  dbgLista.Top    := vpTop + (vpGB.Top + vpGB.Height);
  dbgLista.Left   := vpLeft + vpGB.Left;
  dbgLista.Width  := Width;
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
    vtrue: Boolean;
    vWidth: Integer;
begin
 //Cria SQL
  vtrue := true;
  if (pOpcao = 'I') and (vpCodigo) then
  begin
    if not frENum(pTexto) then
    begin
      if pos('-', ptexto) > 0 then
      begin
        ptexto := Trim(Copy(ptexto, 1, pos('-', ptexto)-1));
        if not frENum(pTexto) then
        begin
          frPerg('Código inválido!','OK');
          edtPesquisa.Text := '';
          ptexto := '';
          edtPesquisa.SetFocus;
          vtrue := False;
        end
        else
          pCampo := pInd + ' = '+pTexto
      end
      else begin
        frPerg('Código inválido!','OK');
        edtPesquisa.Text := '';
        ptexto := '';
        edtPesquisa.SetFocus;
        vtrue := False;
      end;
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
        if not dbgLista.Visible then
        begin
          frPerg('Código inválido!','OK');
          edtPesquisa.Text := '';
          ptexto := '';
          edtPesquisa.SetFocus;
          vtrue := False;
        end;
      end;
    end
    else
      pCampo := pAux + ' like '+pTexto
  end
  else
    pCampo :=  'upper('+pC1 + ') like '+QuotedStr(pTexto);
//    pCampo :=  '(  (('+pC1 + ') like '+QuotedStr(pTexto) +') or ('+  pC1 + ' like '+QuotedStr(pTexto)+')  )';

  // Verifica se tem Where indicado pelo sistema
  if (inpWhere <> '') then
  begin
    if (pWhere <> '') then
      pWhere := pWhere +' and '+ inpWhere
    else
      pWhere := inpWhere;
  end;
  if vtrue then
  begin
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
    //Tamanho grid
    if (Length(pC3) > 4) then
      vWidth  := 560
    else if (Length(pC2) > 4) then
      vWidth  := 480
    else
      vWidth  := 300;

    //Width := vWidth;
    dbgLista.Width := vWidth;
  end;
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
    Height := 200;//130;
//    vgrid.Visible := True;
    dbgLista.Visible := True;
    tmpGrid.Enabled  := False; //da erro
  end
  else begin
    Height := 16;
    dbgLista.Visible := False;
    tmpGrid.Enabled  := False;
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
        pTexto := vTexto;
        pSqlParametro(vOpcao+vtexto);
        if (sqlPesquisa.IsEmpty) then
        begin
          if vOpcao = 'P' then
          begin
            if vpCodigo then
            begin
              frPerg('Código inválido!','OK');
              edtPesquisa.Text := '';
              vtexto := '';
              pTexto := '';
              edtPesquisa.SetFocus;
            end;
            Exit;
          end
          else
            pLimpaCampo
        end
        else begin
          if (pTexto <> '') then
            pEditaCampo;
        end;
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
    if Length(edtPesquisa.Text) > 0 then
    begin
      vsqlt := '';
      if vtexto = '&&&&&' then
      begin
        vpkey := 0; 
        vpTecla := False;
        edtPesquisa.Clear;
      end;

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
          if vtexto = '&&&&&' then
            vpTecla := True;
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
var vtc: String;
begin
  edtPesquisa.Color := clWhite;
  vtc := Trim(edtPesquisa.Text);
  if (vtc <> '') then
  begin
    if (Length(vtc) > 0) and (Length(vtc) < 9) then
    begin
      if (StrToIntDef(vtc,0) > 0) then
        vpkey := 13;
    end;
  end;
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
    vpkey := 0;
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
  if dbgLista.Visible then
  begin
    dbgLista.SetFocus;
    Abort;
  end;
end;

procedure TfrmPesquisa.tmpGridTimer(Sender: TObject);
begin

  //A cada 10 segundos - se dbglista Tiver ativo vai fechar
  if dbgLista.Visible then
    pMostraGrid(False);

end;

procedure TfrmPesquisa.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Verifica tecla F7 e para baixo
  if (key = VK_RETURN) then
  begin
    if dbgLista.Visible then
    begin
      vpkey := 0;
      Application.ProcessMessages;
      dbgLista.SetFocus;
      Abort;
    end
    else begin
      vpkey := 13;
      //se tiver algo digitado vai pesquisar
      if (Length(Trim(edtPesquisa.Text)) > 0) and
         (vpCodPrincipal = 0) and
         (Trim(vpDescricao) = '')
      then
        pRetornaDados(edtPesquisa.Text, 'P');
    end;
  end;

  if (key = VK_BACK) then
  begin
    if (Length(trim(edtPesquisa.Text)) > 10) then
      edtPesquisa.Text := '';
  end;

  if ((key = VK_DOWN) and (not sqlPesquisa.IsEmpty)) then
  begin
    if dbgLista.Visible then
    begin
      vpkey := 0;
      Application.ProcessMessages;
      dbgLista.SetFocus;
      Abort;
    end;
  end;

  if (key = vk_F5) then
    Abort;

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

  if (key = #13) then
  begin
    key := #0;
    vpkey := 13;
    if dbgLista.Visible then
    begin
      vpkey := 0;
      Application.ProcessMessages;
      dbgLista.SetFocus;
      Abort;
    end
  end;

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
  if (Msg.wParam = VK_TAB) or (Msg.wParam = VK_RETURN) then
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
  begin
    dbgLista.onDblClick(dbgLista);
    edtPesquisa.SelStart := 2;
    Application.ProcessMessages;
    vpkey := 0;
    vpTecla := False;
  end;
end;

procedure TfrmPesquisa.dbgListaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9', 'A'..'Z', 'a'..'z']) then
  begin
    edtPesquisa.SetFocus;
    edtPesquisa.Text := key;
    edtPesquisa.SelStart := 2;
  end;
{  if Key = #13 then
  begin
    if (not dbgLista.Visible) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;}
end;

procedure TfrmPesquisa.pSqlParametro(vSql:String);
var i: Integer;
begin
  try
    sqlPesquisa.Close;
    pOpcao  := Copy(vsql,1,1);
    pTexto  := Trim(Copy(vsql,2,100));

    //Inserir o filtro
    if (vpTabela = 'ttBanco') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadBanco', '2', 'Codigo >= 0');
    if (vpTabela = 'ttCidade') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', ''' ''', 'CadCidad', '2', 'Codigo > 0');
    if (vpTabela = 'ttClasse') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadClass', '2', 'Codigo >= 0');
    if (vpTabela = 'ttVariedade') then
      pSql('Codigo', 'Codigo', 'Descricao', 'PesoLiq', ''' ''', 'CadVarie', '2', 'Ativo = ''S''');
    if (vpTabela = 'ttCategoria') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadCateg', '2', 'Ativo = ''S''');
    if (vpTabela = 'ttMaquina') then
      pSql('Codigo', 'Codigo', 'Nome', 'Placa', ''' ''', 'CadMaquina', '2', 'Codigo > 0');
    if (vpTabela = 'ttFornecedor') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'Codigo > 0');
    if (vpTabela = 'ttProdutor') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'TipoCod = ''P''');
    if (vpTabela = 'ttProdutorCoop') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'TipoCod = ''P'' and Cooper = ''S''');
    if (vpTabela = 'ttProdutorTerc') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'TipoCod = ''P'' and Cooper = ''T''');
    if (vpTabela = 'ttProdutorPres') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'TipoCod = ''P'' and Cooper = ''P''');
    if (vpTabela = 'ttFuncionario') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadForne', '2', 'TipoCod = ''U''');
    if (vpTabela = 'ttCliente') then
      pSql('Codigo', 'Codigo', 'Descricao', 'Estado', 'CPF', 'CadClien', '2', 'Codigo > 0');
    if (vpTabela = 'ttMotorista') then
      pSql('Codigo', 'Codigo', 'Descricao', 'TREstado', 'TRPlaca', 'CadTrans', '2', 'Codigo > 0');
    if (vpTabela = 'ttTipoBins') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadBins', '2', 'Codigo > 0');
    if (vpTabela = 'ttPlano') then
      pSql('Reduz', 'Reduz', 'Descricao', 'SubGrupo', 'Codigo', 'CadPlano', '2', 'Nivel = 3');
    if (vpTabela = 'ttPlanoSubGrupo') then
      pSql('Reduz', 'Reduz', 'Descricao', 'Codigo', ''' ''', 'CadPlano', '2', 'Nivel = 2');
    if (vpTabela = 'ttPlanoGrupo') then
      pSql('Reduz', 'Reduz', 'Descricao', 'Codigo', ''' ''', 'CadPlano', '2', 'Nivel = 1');
    if (vpTabela = 'ttForneGrupo') then
      pSql('ID', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadForne_Grupo', '2', 'id > 0');
    if (vpTabela = 'ttGrupo') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadGrupo', '2', '(Codigo > 1 )');
    if (vpTabela = 'ttLocal') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadLocal', '2', 'Codigo > 0');
    if (vpTabela = 'ttVendedor') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadForne', '2', 'TipoCod = ''V''');
    if (vpTabela = 'ttSoBanco') then
      pSql('Codigo', 'Codigo', 'Descricao', ''' ''', ''' ''', 'CadBanco', '2', 'Codigo >= 3');

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


