unit Data;

interface

uses
  Windows, SysUtils, Classes, Forms, Dialogs, Db, Controls,
  ACBrBase, ACBrSocket, ACBrCEP, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, ACBrMail, DBTables, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider;

type
  TDM = class(TDataModule)
    Session1: TSession;
    JaeAdmin: TDatabase;
    ACBrCEP1: TACBrCEP;
    ACBrMail: TACBrMail;
    DSEsteira: TDataSource;
    dsTAcesso: TDataSource;
    dsParam: TDataSource;
    FDTransaction1: TFDTransaction;
    qrSql5: TFDQuery;
    qrSql1: TFDQuery;
    qrSql2: TFDQuery;
    qrSql3: TFDQuery;
    qrSql4: TFDQuery;
    TParam: TFDQuery;
    TModulo: TFDQuery;
    TAcesso: TFDQuery;
    TEmpresa: TFDQuery;
    BDConexao: TFDConnection;
    TClassif: TFDQuery;
    TClassifMer: TFDQuery;
    TExiste: TFDTable;
    qrSqlCommit: TFDQuery;
    qrSqlBus: TFDQuery;
    qrSqlTra: TFDQuery;
    TEsteira: TFDQuery;
    TImpres: TFDQuery;
    dsImpress: TDataSource;
    dsEmpresa: TDataSource;
    TEmpresaCODIGO: TIntegerField;
    TEmpresaDESCRICAO: TStringField;
    TEmpresaENDERECO: TStringField;
    TEmpresaCIDADECOD: TIntegerField;
    TEmpresaCIDADEDES: TStringField;
    TEmpresaBAIRRO: TStringField;
    TEmpresaESTADO: TStringField;
    TEmpresaCEP: TStringField;
    TEmpresaCPF: TStringField;
    TEmpresaDOC: TStringField;
    TEmpresaFONE: TStringField;
    TEmpresaSENHA: TStringField;
    TEmpresaEMAIL: TStringField;
    TEmpresaENDGERAL: TStringField;
    TEmpresaFOLDER: TStringField;
    TEmpresaSENHADES: TStringField;
    TEmpresaANO: TStringField;
    TEmpresaMES: TStringField;
    TEmpresaLANC: TIntegerField;
    TEmpresaPROTECAO: TStringField;
    TEmpresaLANCIT: TIntegerField;
    TEmpresaBANINS: TStringField;
    TEmpresaBANAGE: TStringField;
    TEmpresaBANCTA: TStringField;
    TEmpresaBANDES: TStringField;
    TEmpresaBANCVE: TStringField;
    TEmpresaBANCTR: TStringField;
    TEmpresaSIMPLES: TStringField;
    TEmpresaNSU: TIntegerField;
    TEmpresaCNAE: TStringField;
    TEmpresaCONTADOR: TStringField;
    TEmpresaCONTADORCRC: TStringField;
    TEmpresaCODCIDIBGE: TIntegerField;
    TEmpresaNUMERO: TIntegerField;
    TEmpresaTPREGIME: TStringField;
    TEmpresaTRIBUTO1: TBCDField;
    TEmpresaTRIBUTO2: TBCDField;
    TEmpresaTRIBUTO3: TBCDField;
    TEmpresaICMS_CREDITO: TStringField;
    TEmpresaICMS_CREDPER: TBCDField;
    TEmpresaSERVICOPER: TBCDField;
    TEmpresaIM: TStringField;
    TEmpresaWEBLOCAL: TStringField;
    TEmpresaREGLOG: TStringField;
    TEmpresaREG_ID: TIntegerField;
    TCadNota: TFDQuery;
    TConfig: TFDQuery;
    TConfigREGISTRO: TIntegerField;
    TConfigCER_CAMINHO: TStringField;
    TConfigCER_SENHA: TStringField;
    TConfigCER_NUMSERIE: TStringField;
    TConfigGER_DANFE: TStringField;
    TConfigGER_FORMAEMISSAO: TStringField;
    TConfigGER_LOGOMARCA: TStringField;
    TConfigGER_SALVAR: TStringField;
    TConfigGER_PATHSALVAR: TStringField;
    TConfigWEB_UF: TStringField;
    TConfigWEB_AMBIENTE: TStringField;
    TConfigWEB_VISUALIZAR: TStringField;
    TConfigPRX_HOST: TStringField;
    TConfigPRX_PORTA: TStringField;
    TConfigPROX_USER: TStringField;
    TConfigPROX_PASS: TStringField;
    TConfigEML_HOST: TStringField;
    TConfigEML_PORT: TStringField;
    TConfigEML_USER: TStringField;
    TConfigEML_PASS: TStringField;
    TConfigEML_ASSUNTO: TStringField;
    TConfigEML_SSL: TStringField;
    TConfigCER_VALIDADE: TSQLTimeStampField;
    TConfigCER_SSLLIB: TIntegerField;
    TConfigCER_CRYPTLIB: TIntegerField;
    TConfigCER_HTTPLIB: TIntegerField;
    TConfigCER_XMLSIGNLIB: TIntegerField;
    TConfigWEB_SSLTYPE: TIntegerField;
    TConfigGER_VERSAO: TIntegerField;
    TConfigGER_PATSCHEMAS: TStringField;
    TConfigMGM_SUP: TIntegerField;
    TConfigMGM_INF: TIntegerField;
    TConfigMGM_ESQ: TIntegerField;
    TConfigMGM_DIR: TIntegerField;
    TConfigEML_TLS: TStringField;
    TConfigSMTP_HOST: TStringField;
    TConfigSMTP_PORTA: TStringField;
    TConfigSMTP_USER: TStringField;
    TConfigSMTP_PASS: TStringField;
    TConfigSMTP_USERNAME: TStringField;
    TConfigREGLOG: TStringField;
    TConfigREG_ID: TIntegerField;

    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);

  private
    { Private declarations }

  public
    vCepCODIGO, vCepENDERECO, vCepBAIRRO, vCepESTADO, vCepCIDADE: String;

  end;

  // Integracao
function frGenerator(vTabela, vCampo: String; vInc: Integer;
  vField: String = ''): Integer;
function frGeneratorObter(vTabela, vCampo: String; vField: String = 'VALOR'): String;
function frGeneratorFB(vGenerator:String):Integer;

function fAcesso(vEmp: String):Boolean;
function fAcessoBDE(vEmp: String):Boolean;

procedure fSql(vSessao, vModo: Integer; vSql: Array of String; vLinha: Integer);
function fBus(vSessao: Integer; vSql: Array of String; vLinha: Integer)
  : Variant;
function fTra(vSessao: Integer; vSql: Array of String; vLinha: Integer)
  : Boolean;
procedure FPes(vSessao: Integer; vpqTable, vpqWhere: String;
  vpqTitulo, vpqField: Array of String; vpqColuna, vpqProg: Integer;
  vpgMarcar: String = 'N');
function fVerificaAcesso: Boolean;
procedure fParametroInserirVlr(vParametro, vValor, vID: String);
function fParametroEditaVlr(vParametro: String): String;
procedure fParametroSalvaVlr(vParametro, vValor: String);

procedure fIntContas(iArq, iLan, iCon, iCod, iDes, iDat, iVal, iVen,
  iPar: String);
procedure fIntPago(iArq, iLan, iCon, iCod, iDes, iDat, iVal, iVen,
  iPar: String);
procedure fIntCaixa(iVed, iCom, iLan, iDat, iFor, iBco, iBde, iVen, iVal, iVre,
  iFav, iCco, iCde, iPro, iDoc, iBai, iDpg, iFac, iRed, iValbx: String);
function frRetornaCidade(vCidade, vUF: String): Integer;
function fVerficaDataValida(vOpcao: Integer; vData: TDate;
  vDias: Integer = 10): Boolean;
function fValidaPodeExcluir(vTabela, vCampo, vWhere, vMsg: String): Boolean;
function ffLancNSU: Integer;
function pVerificaConexaoFTP: Boolean;
//function pInsertDataSet(vID, vTabela: String; DS: TClientDataSet; MaxSql: Integer = 50): Boolean;
//function pDeleteDataSet(vCount: Integer; vTabela, vCampo, vValor: Array of String): Boolean;
//function pInsertDataSetVarios(vCampoDel, vID, vTabela: String; DS: TClientDataSet; MaxSql: Integer = 50): Boolean;

procedure FPQEstado;
procedure FPQCidade;
procedure FPQCarreto;
procedure FPQFornecedor;
procedure FPQForneCooper;
procedure FPQCliente;
procedure FPQClienCooper;
procedure FPQPlano;
procedure FPQPlanoGrupo;
procedure FPQBanco;
procedure FPQHistorico;
procedure FPQNatureza;
procedure FPQFrete;
procedure FPQAdicionais;
procedure FPQEmpresa;
procedure FPQVariedade;
procedure FPQCategoria;
procedure FPQProduto(vzVarie: String = '');
procedure FPQGrupo;
procedure FPQMercadoria;
procedure FPQNotaFiscal;
procedure FPQCxBanco;
procedure FPQCxBancoBaixa;
procedure FPQRecibo;
procedure FPQFiProdu;
procedure FPQDuplicata;
procedure FPQFiPaga;
procedure fPqFiTran;
procedure fPqnfCompra;
procedure fPqClasse;
procedure fPqRoman;
procedure fPqEntRE;
procedure fPqEntRB;
procedure fPqEntRT;
procedure fPqBins;
procedure fPqVarie;
procedure fPqDefeito;
procedure fPqPrevisao;
procedure FPQAmostra;
procedure FPQDefei;
procedure FPQCxfrete;
procedure FPQAjuste;
procedure FPQAjusCompra;
procedure FPQRRProduto;
procedure FPQRRPomar;
procedure fPqRRSaida;
procedure fPqMaquina;
procedure fPqManutencao;
procedure FPQMercaEmbalagem;
procedure FPQMercaInsumos;
procedure fpqFechaAmos;
procedure FPQPalet;
procedure fPqVenda;
procedure fPqInsumo;
procedure FPQSOFornecedor;
procedure FPQSOProdutor;
procedure FPQCSOSN;
procedure FPQForneGrupo;
procedure FPQLocal;
procedure FPQEmbalador;
procedure FPQMarca;
procedure FPQRomanAno(vrAno: String);

var
  DM: TDM;
  xJaeInter: Array [0 .. 6] of String;
  xpqResul, xpqWhere, xRelMarca: String; // Valor de retorno
  xpqPesq, xpqColuna, xpqProg: Integer; // Variavel para pesquisa
  xFiltro1, xPlano: String; // Banco de Dados
  xTabIndex, xEmp, xAce, xAcesso: Integer;
  xImpressao, xSeria, xMicro, xDirSi, xDirDB: String; // Sistems
  xAno, xAnoAnt, xAnor, xSenha, xEmpre, xAcess: String; // Geral
  xSenha1, xSenha2, xSenha3, xSenha4, xSenha5: String; // Senhas
  xpqTitulo, xpqTyp: Array [0 .. 20] of String;
  xRelQtdeA, xRelQtdeB, xRelQtdeC: Integer;
  xVarieCustoLanc, xCategCustoLanc: Integer;
  xFechaTipo: String; //Tipo de fechamento
  xREG_ID: Integer;
  xBDConexao, xBDBase1, xBDAlias, xBDLocal, xBDPorta, xBDPasta, xBDBase, xBDPath: String;

implementation

uses Menu, Pesq, Rotina;

{$R *.DFM}

function frGenerator(vTabela, vCampo: String; vInc: Integer;
  vField: String = ''): Integer;
var
  vgen, vprox, vexis: Integer;
  vWhere: String;
begin
  vTabela := uppercase(vTabela);
  vCampo := uppercase(vCampo);
  if vField = '' then
    vField := vCampo;
  vField := uppercase(vField);

  // Busca tabela generator
  if ((vInc >= 10) and (vInc <> 99)) then
  begin
    vprox := fBus(1, ['Select Max(' + vField + ') From ' + vTabela], 1);
    vprox := vprox + 1;
  end
  else
  begin
    // 1º procura campo e tabela
    vexis := fBus(1, ['Select Count(*) From zGenerator Where Tabela = ' +
      QuotedStr(vTabela) + ' and Campo = ' + QuotedStr(vField)], 1);
    // 2º Se não existe tem que cadastrar
    if vexis = 0 then
    begin
      vgen := fBus(1, ['Select Max(indice) From zGenerator '], 1);
      vgen := vgen + 1;
      fSql(1, 5, [' Insert into zGenerator (Indice, Tabela, Campo, Valor) ' +
        ' Values (' + inttostr(vgen) + ', ' + QuotedStr(vTabela) + ', ' +
        QuotedStr(vField) + ', 0)'], 1);
    end;
    // 3º Traz valor
    vprox := fBus(1, ['Select Valor From zGenerator Where Tabela = ' +
      QuotedStr(vTabela) + ' and Campo = ' + QuotedStr(vField)], 1);

    if (vInc > 0) and (vInc <> 99) then
    begin
      // 4º - Varifica se não existe na tabela referente
      if (vTabela <> 'GERAL') and (vTabela <> 'ROMAN') then
      begin
        try
          vexis := fBus(1, ['Select Count(*) From ' + vTabela + ' Where ' +
            vCampo + ' = ' + inttostr(vprox + 1)], 1);
          if (vexis > 0) then
          begin
            // Excessões
            vWhere := '';
            if vField = 'PRODUTOR' then
              vWhere := ' where Codigo < 1000'
            else if vField = 'FORNECEDOR' then
              vWhere := ' where Codigo >= 1000'
            else if vField = 'INSUMOS' then
              vWhere := ' where GrupoCod = 3'
            else if vField = 'MERCADORIA' then
              vWhere := ' where GrupoCod = 2';
            // else if (vtabela = 'ROMAN') and (vCampo = 'LOTE') then vwhere := ' where VarieCod = '+vField;
            vprox := fBus(1, ['Select Max(' + vCampo + ') From ' + vTabela +
              vWhere], 1);
          end;
        except
        end;
      end;

      // 5º salva valor
      vprox := vprox + 1;
      fSql(1, 5, [' Update zGenerator set Valor = ' + inttostr(vprox) +
        ' Where Tabela = ' + QuotedStr(vTabela) + ' and Campo = ' +
        QuotedStr(vField)], 1);
    end;
    if (vInc = 99) then
    begin
      // 5º salva valor
      vprox := vprox + 1;
      fSql(1, 5, [' Update zGenerator set Valor = ' + inttostr(vprox) +
        ' Where Tabela = ' + QuotedStr(vTabela) + ' and Campo = ' +
        QuotedStr(vField)], 1);
    end;
  end;
  // 6º repassa valor
  Result := vprox
end;

function frGeneratorObter(vTabela, vCampo: String; vField: String = 'VALOR'): String;
begin
  vTabela := uppercase(vTabela);
  vCampo := uppercase(vCampo);
  if vField <> 'VALOR' then
    vField := 'OBS';

  try
    Result := fBus(1, ['Select ' +vField
                     + ' From zGenerator'
                     + ' Where Tabela = ' + QuotedStr(vTabela)
                     + ' and Campo = ' + QuotedStr(vCampo)], 1);
  except
     Result := '';
  end;
end;

function frGeneratorFB(vGenerator:String):Integer;
begin

  try
    Result := fBus(1, ['Select gen_id('+vGenerator+', 1) from rdb$database'], 1);
  except
    Result := 0;
  end;


end;

procedure fSql(vSessao, vModo: Integer; vSql: Array of String; vLinha: Integer);
var
  vlin: Integer;
  vqr: TFDQuery;
begin
  Case vModo of
    1: vqr := DM.qrSql1;
    2: vqr := DM.qrSql2;
    3: vqr := DM.qrSql3;
    4: vqr := DM.qrSql4;
  else
    vqr := DM.qrSql5;
  end;
//  dm.JaeAdmin.StartTransaction;
  vqr.Close;
  vqr.Sql.Clear;
//  if vSessao = 5 then
//  begin
//    vqr.SessionName := 'Sesao2';
//    vqr.DatabaseName := 'JaeEsteira';
//  end
//  else
//  begin
//    vqr.SessionName := 'Sesao1';
//    vqr.DatabaseName := 'JaeAdmin';
//  end;
  for vlin := 0 to vLinha - 1 do
    vqr.Sql.Add(vSql[vlin]);
  // showmessage(vqr.sql.text);
  if (uppercase(Copy(vqr.Sql.Strings[0], 1, 6)) = 'SELECT') then
    vqr.Open
  else
    vqr.ExecSql;
//  dm.JaeAdmin.Commit;
end;

function fBus(vSessao: Integer; vSql: Array of String; vLinha: Integer)
  : Variant;
var
  vlin: Integer;
  vqrBus: TFDQuery;
begin
  vqrBus := DM.qrSqlBus;
  vqrBus.Close;
  vqrBus.Sql.Clear;
//  vqrBus.SessionName := 'Sesao1';
//  vqrBus.DatabaseName := 'JaeAdmin';
  for vlin := 0 to vLinha - 1 do
    vqrBus.Sql.Add(vSql[vlin]);
  vqrBus.Open;
  if vqrBus.Fields[0].DataType = ftString then
    Result := vqrBus.Fields[0].asString
  else if vqrBus.Fields[0].DataType = ftFloat then
    Result := vqrBus.Fields[0].asString
  else if vqrBus.Fields[0].DataType = ftMemo then
    Result := vqrBus.Fields[0].asString
  else
    Result := vqrBus.Fields[0].asInteger;
end;

function fTra(vSessao: Integer; vSql: Array of String; vLinha: Integer)
  : Boolean;
var
  vlin: Integer;
  vqrTra: TFDQuery;
begin
  vqrTra := DM.qrSqlTra;
  vqrTra.Close;
  vqrTra.Sql.Clear;
//  vqrTra.SessionName := 'Sesao1';
//  vqrTra.DatabaseName := 'JaeAdmin';
  for vlin := 0 to vLinha - 1 do
    vqrTra.Sql.Add(vSql[vlin]);
  vqrTra.Open;
  if vqrTra.RecordCount > 0 then
    Result := True
  else
  begin
    if (Trim(vqrTra.Fields[0].asString) <> '') then
      Result := True
    else
      Result := False;
  end;
end;

function fAcesso(vEmp: String):Boolean;
begin
  // Banco de dados
   Result := True;
   xSenha := '5nh53<7pd66]6aa66]' + frCrip('C', FormatDateTime('ddmm', now));
   try
     dm.BDConexao.Connected:=False;
     dm.BDConexao.Params.Values['SERVER']   := xBDLocal;
     dm.BDConexao.Params.Values['PORT']     := xBDPorta;
     dm.BDConexao.Params.Values['DATABASE'] := xBDPath
                                             + xBDPasta
                                             + xBDBase;
     dm.BDConexao.Connected:=True;
   except
      on E:Exception do
      begin
        frPerg(PChar('Falha ao conectar servidor!'
                   + sLineBreak
                   + 'Avise suporte (41) 9.9255-7216'
                   + sLineBreak + sLineBreak
                   + 'ODBC DSN=Acweb'+xBDAlias
                   + sLineBreak
                   + E.Message), 'OK');
        dm.BDConexao.Connected:=False;
        Halt;
      end;
   end;
end;

function fAcessoBDE(vEmp: String):Boolean;
begin
  // Banco de dados
  try
    Result := True;

    DM.Session1.Active := False;
    DM.JaeAdmin.Connected := False;
    DM.JaeAdmin.AliasName := 'Acweb' + xBDAlias;
    DM.JaeAdmin.Params.Clear;
    DM.JaeAdmin.Params.Add('ODBC DSN=Acweb'+xBDAlias);
    DM.JaeAdmin.Connected:=True;

   except
      on E:Exception do
      begin
        frPerg(PChar('Falha ao conectar servidor!'
                   + sLineBreak
                   + 'Avise suporte (41) 9.9255-7216'
                   + sLineBreak + sLineBreak
                   + 'ODBC DSN=Acweb'+xBDAlias
                   + sLineBreak
                   + E.Message), 'OK');
        DM.JaeAdmin.Connected:=False;
        Result := False;
      end;
  end;
end;

function ffLancNSU: Integer;
var
  vlan: Integer;
begin
  vlan := fBus(1, ['Select Max(NSU) From Empresa'], 1) + 1;
  fSql(1, 1, ['Update Empresa Set NSU=0' + inttostr(vlan)], 1);
  Result := vlan;
end;

procedure FPes(vSessao: Integer; vpqTable, vpqWhere: String;
  vpqTitulo, vpqField: Array of String; vpqColuna, vpqProg: Integer;
  vpgMarcar: String = 'N');
var
  vCol: Integer;
begin
  if FPesq = nil then
    Application.CreateForm(TFPesq, FPesq);
  With FPesq do
  begin
    xpqResul := '0';
    xRelMarca := '';
    xpqColuna := vpqColuna;
    xpqProg := vpqProg;
    xpqWhere := vpqWhere;
    for vCol := 0 to vpqColuna - 1 do
      xpqTitulo[vCol] := vpqTitulo[vCol];
    with qrPesq do
    begin
      Close;

      lblMarcar.Visible := False;
      if vpgMarcar = 'S' then
      begin
        lblMarcar.Visible := True;
        lblMarcar.Caption := 'ESPAÇO - Seleciona.';
      end;

      Sql.Strings[0] := 'Select ';
      for vCol := 0 to vpqColuna - 1 do
        Sql.Strings[0] := Sql.Strings[0] + vpqField[vCol] + ',';
      Sql.Strings[0] := Copy(Sql.Strings[0], 1, Length(Sql.Strings[0]) - 1);

      if vpgMarcar = 'S' then
        Sql.Strings[0] := Sql.Strings[0] + ',' + QuotedStr('N') + ' as vMarca';

      Sql.Strings[1] := 'From ' + vpqTable;
      if Trim(xpqWhere) = '' then
        Sql.Strings[2] := 'Where ' + xFiltro1
      else
        Sql.Strings[2] := Trim(xpqWhere) + ' and ' + xFiltro1;
      Sql.Strings[3] := 'Order by ' + vpqField[0];
      Open;
      for vCol := 0 to vpqColuna - 1 do
        DBGrid1.Columns[vCol].Title.Caption := xpqTitulo[vCol];
    end;
    ShowModal;
  end;
end;

function fVerificaAcesso: Boolean;
const
  csenha: String = '0ma66+0mw77=5hf8';
  dsenha: String = '5nh53<7pd6';
var
  vsen, vdec, vtec: String;
  vdtini, vdtfim: TDate;
begin
  Result := True;
  vsen := fParametroEditaVlr('Bloqueado');
  vdec := frCrip('D', csenha);
  vtec := frCrip('D', dsenha);
  try
    // Se tiver bloqueado vai abrir o registro para validar
    if (vsen = 'SIM') then
      xAcesso := 77777 // -> Bloqueado
    else
    begin
      // Verifica se a data ta vencida
      vsen := FormatDateTime('dd/mm/yyyy', now);
      // Verifica se é 30 dias
      if Trim(fParametroEditaVlr('Válidade sistema')) = '' then
      begin
        vdec := FormatDateTime('dd/mm/yyyy', incmonth(now, 1));
        vdec := Copy(vdec, 1, 2) + Copy(vdec, 4, 2) + Copy(vsen, 7, 4);
        vdec := frCrip('C', 'ac' + vdec + 'web');
        fParametroSalvaVlr('Válidade sistema', vdec);
        vdec := FormatDateTime('dd/mm/yyyy', incmonth(now, 1));
        fParametroSalvaVlr('Bloqueado', 'NAO');
      end
      else
        vdec := frPegaSenhaData(fParametroEditaVlr('Válidade sistema'));

      vdtini := StrToDate(vsen);
      vdtfim := StrToDate(vdec);
      if (vdtini > vdtfim) then
      begin
        // Inspirou a data bloquear sistema
        fParametroSalvaVlr('Bloqueado', 'SIM');
        xAcesso := 77777;
      end
      else
        // Se Falta 5 dias avisa ao sair que esta expiriando
        xExpirou := frDiasD(vdtini, vdtfim);
    end;
  except
  end;

  if xAcesso = 77777 then
  begin
    FMenu.lblMsgBloqueado.Caption :=
      'Funções bloqueada - acesse menu SISTEMA -> Licença.';
    FMenu.lblMsgBloqueado.Visible := True;
  end
  else
  begin

    vdec := fParametroEditaVlr('AvisoDia');
    if (Length(Trim(vdec)) > 6) then
    begin
      // Se estiver dentro da data mostra mensagem
      if (StrToDate(vdec) >= Date) then
      begin
        FMenu.lblMsgBloqueado.Caption := fParametroEditaVlr('AvisoMsg');
        FMenu.lblMsgBloqueado.Visible := True;
      end;
    end;
  end;

end;

procedure fParametroInserirVlr(vParametro, vValor, vID: String);
begin
  try
    fSql(1, 3, ['Insert Into xParametro ', '(Codigo,Parametro,Valor)',
      ' Values', '(' + vID + ',' + QuotedStr(vParametro) + ',' +
      QuotedStr(vValor) + ')'], 4);
  except
  end;
end;

function fParametroEditaVlr(vParametro: String): String;
begin
  try
    Result := fBus(1, ['Select Valor From xParametro Where Parametro = ' +
      QuotedStr(vParametro)], 1);
  except
    Result := '';
  end;
end;

procedure fParametroSalvaVlr(vParametro, vValor: String);
begin
  try
    fSql(1, 1, ['Update xParametro Set Valor = ' + QuotedStr(vValor) +
      ' Where Parametro = ' + QuotedStr(vParametro)], 1);
  except
  end;
end;

// Salvando Integra
// contas a pagar ou a receber
procedure fIntContas(iArq, iLan, iCon, iCod, iDes, iDat, iVal, iVen,
  iPar: String);
begin
  fSql(1, 3, ['Insert Into ' + iArq,
    '(Lanc,Controle,Codigo,Descricao,Data,Pago,Valor,Vencto,Parc,Geral,Forma,Duplic,EmpreCod,AcesoCod)',
    'Values', '(' + iLan + ',' + QuotedStr(iCon) + ',' + iCod + ',' +
    QuotedStr(iDes) + ',' + iDat + ',' + QuotedStr('N') + ',' + iVal + ',' +
    iVen + ',' + iPar + ',' + QuotedStr(frPree(iLan, 10, '0', 1) + iPar) + ',' +
    QuotedStr('S') + ',0,' + inttostr(xEmp) + ',' + inttostr(xAce) + ')'], 4);
end;

procedure fIntPago(iArq, iLan, iCon, iCod, iDes, iDat, iVal, iVen,
  iPar: String);
begin
  fSql(1, 3, ['Insert Into ' + iArq,
    '(Lanc,Controle,Codigo,Descricao,Data,Pago,Valor,Vencto,ValorPago,DataPago,Parc,Geral,Forma,Duplic,EmpreCod,AcesoCod)',
    'Values', '(' + iLan + ',' + QuotedStr(iCon) + ',' + iCod + ',' +
    QuotedStr(iDes) + ',' + iDat + ',' + QuotedStr('S') + ',0,' + iVen + ',' +
    iVal + ',' + iVen + ',' + iPar + ',' + QuotedStr(frPree(iLan, 10, '0',
    1) + iPar) + ',' + QuotedStr('S') + ',0,' + inttostr(xEmp) + ',' +
    inttostr(xAce) + ')'], 4);
end;

// Caixa
procedure fIntCaixa(iVed, iCom, iLan, iDat, iFor, iBco, iBde, iVen, iVal, iVre,
  iFav, iCco, iCde, iPro, iDoc, iBai, iDpg, iFac, iRed, iValbx: String);
begin
  fSql(1, 3, ['Insert Into CxBanco',
    '(LancVen,LancCom,Lanc,Data,Formar,BancoCod,BancoDes,Vencto,Valor,ValorReal,Favorecido,'
    + 'Conta,ContaDes,Prove,BancoDoc,Baixa,DTPago,FavorCod,Reduz,EmpreCod,AcesoCod,ValorPago)',
    'Values', '(' + iVed + ',' + iCom + ',' + iLan + ',' + iDat + ',' +
    QuotedStr(iFor) + ',' + iBco + ',' + QuotedStr(iBde) + ',' + iVen + ',' +
    iVal + ',' + iVre + ',' + QuotedStr(iFav) + ',' + QuotedStr(iCco) + ',' +
    QuotedStr(iCde) + ',' + QuotedStr(iPro) + ',' + QuotedStr(iDoc) + ',' +
    QuotedStr(iBai) + ',' + iDpg + ',' + iFac + ',' + iRed + ',' +
    inttostr(xEmp) + ',' + inttostr(xAce) + ',' + iValbx + ')'], 4);
end;

procedure TDM.ACBrCEP1BuscaEfetuada(Sender: TObject);
begin
  // Retorna informações do CEP
  vCepENDERECO := uppercase(ACBrCEP1.Enderecos[0].Logradouro);
  vCepBAIRRO := uppercase(ACBrCEP1.Enderecos[0].Bairro);
  vCepESTADO := uppercase(ACBrCEP1.Enderecos[0].UF);
  vCepCIDADE := uppercase(ACBrCEP1.Enderecos[0].Municipio);
  vCepCODIGO := frIntToStr(frRetornaCidade(vCepCIDADE, vCepESTADO));
end;

function frRetornaCidade(vCidade, vUF: String): Integer;
var
  ibge, id, vi: Integer;
  iDes, iuf, vstr, varquivo: string;
  vlist: TstringList;

  function fgUF_Codigo(const UF: string): Integer;
  const
    (* *) UFS =
      '.AC.AL.AP.AM.BA.CE.DF.ES.GO.MA.MT.MS.MG.PA.PB.PR.PE.PI.RJ.RN.RS.RO.RR.SC.SP.SE.TO.';
    CODIGOS = '.12.27.16.13.29.23.53.32.52.21.51.50.31.15.25.41.26.22.33.24.43.11.14.42.35.28.17.';
  begin
    try
      Result := StrToInt(Copy(CODIGOS, pos('.' + UF + '.', UFS) + 1, 2));
    except
      Result := 0;
    end;
  end;

begin
  iDes := Trim(uppercase(vCidade));
  if iDes = '' then
    iDes := '[]';
  iuf := Trim(uppercase(vUF));
  if iuf = '' then
    iuf := '[]';

  // procura pelo estado e nome cidade NO CADASTRO
  id := frStrToInt(fBus(1, ['Select codigo From cadcidad Where estado = ' +
    QuotedStr(iuf) + ' and descricao = ' + QuotedStr(iDes)], 1));

  // se não encontrar deve inserir
  if (id = 0) and (iDes <> '[]') and (iuf <> '[]') then
  begin
    // procura pelo estado e nome no arquivo - para cadastrar
    iDes := Trim(uppercase(frAcen(vCidade)));
    varquivo := xDirSi + 'MunIBGE\MunIBGE-UF' + inttostr(fgUF_Codigo(iuf)
      ) + '.txt';
    if FileExists(varquivo) then
    begin
      vlist := TstringList.Create;
      vlist.LoadFromFile(varquivo);
      vi := 0;
      ibge := 0;
      while (vi < vlist.count) and (ibge = 0) do
      begin
        vstr := Trim(uppercase(frAcen(vlist[vi])));
        if pos(iDes, vstr) > 0 then
          ibge := StrToInt(Trim(Copy(vstr, 1, 7)));
        inc(vi);
      end;
      vlist.free;
    end;

    if ibge > 0 then
    begin
      id := frGenerator('CADCIDAD', 'CODIGO', 1);
      iDes := Trim(uppercase(vCidade));
      fSql(1, 3, ['Insert Into CadCidad',
        '(Codigo,Numero,PaisCod,Descricao,Estado,PaisNome,EmpreCod,AcesoCod)',
        'Values', '(' + frIntToStr(id) + ',' + frIntToStr(ibge) + ',1058' + ','
        + QuotedStr(iDes) + ',' + QuotedStr(iuf) + ',' + QuotedStr('BRASIL') +
        ',' + frIntToStr(xEmp) + ',' + frIntToStr(xAce) + ')'], 4);
    end;
  end;
  Result := id;
end;

// Pesquisar Cotabilidade
procedure FPQPlano;
begin
  FPes(3, 'CadPlano', 'Where nivel = 3', ['Reduz', 'Código', 'Descrição',
    'Nivel'], ['Reduz', 'Codigo', 'Descricao', 'Nivel'], 4, 521);
end;

procedure FPQPlanoGrupo;
begin
  FPes(3, 'CadPlano', 'Where nivel < 3', ['Reduz', 'Código', 'Descrição',
    'Nivel'], ['Reduz', 'Codigo', 'Descricao', 'Nivel'], 4, 521);
end;

procedure FPQHistorico;
begin
  FPes(3, 'CadHisto', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 522);
end;

procedure FPQNatureza;
begin
  FPes(3, 'CadNatur', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 526);
end;

procedure FPQFrete;
begin
  FPes(3, 'CadFrete', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 527);
end;

procedure FPQAdicionais;
begin
  FPes(3, 'CadDados', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 525);
end;

procedure FPQEstado;
begin
  FPes(1, 'CadEstad', '', ['U.F.', 'Descrição', 'Código'],
    ['UF', 'Nome', 'Codigo'], 3, 125);
end;

procedure FPQCidade;
begin
  FPes(1, 'CadCidad', '', ['Código', 'Descrição', 'Cep', 'UF'],
    ['Codigo', 'Descricao', 'Cep', 'Estado'], 4, 124);
end;

procedure FPQCarreto;
begin
  FPes(1, 'CadTrans', '', ['Código', 'PLaca', 'Descrição', 'Cidade', 'UF'],
    ['Codigo', 'TRPlaca', 'Descricao', 'CidadeDes', 'Estado'], 5, 123);
end;

procedure FPQFornecedor;
begin
  FPes(1, 'CadForne', '', ['Código', 'Descrição', 'Cidade', 'UF', 'CNPJ/CPF'],
    ['Codigo', 'Descricao', 'CidadeDes', 'Estado', 'Cpf'], 5, 121, 'S');
end;

procedure FPQForneCooper;
begin
  FPes(1, 'CadForne', 'Where TipoCod <> ' + QuotedStr('F'),
    ['Código', 'Descrição', 'Cidade', 'UF', 'CNPJ/CPF'],
    ['Codigo', 'Descricao', 'CidadeDes', 'Estado', 'Cpf'], 5, 121, 'S');
end;

procedure FPQCliente;
begin
  FPes(1, 'CadClien', '', ['Código', 'Descrição', 'Cidade', 'UF', 'CNPJ/CPF'],
    ['Codigo', 'Descricao', 'CidadeDes', 'Estado', 'Cpf'], 5, 120, 'S');
end;

procedure FPQClienCooper;
begin
  FPes(1, 'CadClien', 'Where Cooper <> ' + QuotedStr('S'),
    ['Código', 'Descrição', 'Cidade', 'UF', 'CNPJ/CPF'],
    ['Codigo', 'Descricao', 'CidadeDes', 'Estado', 'Cpf'], 5, 120, 'S');
end;

procedure FPQBanco;
begin
  FPes(1, 'CadBanco', '', ['Seq.', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 126);
end;

procedure FPQEmpresa;
begin
  FPes(1, 'Empresa', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 524);
end;

procedure FPQVariedade;
var
  vWhere: String;
begin
  vWhere := 'Where Ativo = ''S''';
  FPes(1, 'CadVarie', vWhere, ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 220);
end;

procedure FPQCategoria;
var
  vWhere: String;
begin
  vWhere := 'Where Ativo = ''S''';
  FPes(1, 'CadCateg', vWhere, ['Código', 'Descrição', 'Categoria'],
    ['Codigo', 'VarieDes', 'Descricao'], 3, 221);
end;

procedure FPQProduto(vzVarie: String = '');
var
  vWhere: String;
begin

  if (vzVarie <> '') then
    vWhere := 'Where Ativo = ''S'' and VarieCod = 0' + vzVarie
  else
    vWhere := 'Where Ativo = ''S''';

  FPes(1, 'CadProdu', vWhere, ['Código', 'Descrição', 'Unidade', 'Preço'],
    ['Codigo', 'Descricao', 'Unidade', 'Venda1'], 4, 222);
end;

procedure FPQGrupo;
begin
  FPes(1, 'CadGrupo', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 223);
end;

procedure FPQMercadoria;
var
  vWhere: String;
begin
  vWhere := 'Where Ativo = ''S''';
  FPes(1, 'CadMerca', vWhere, ['Código', 'Descrição', 'Unidade', 'Preço'],
    ['Codigo', 'Descricao', 'Unidade', 'Venda1'], 4, 224);
end;

procedure FPQNotaFiscal;
begin
  FPes(1, 'NFVenda', '', ['Tipo', 'Número', 'Data', 'Descrição', 'VlrNota',
    'Lanc.'], ['DifCod', 'Nota', 'Data', 'Descricao', 'VlrNota',
    'Lanc'], 6, 224);
end;

procedure FPQCxBanco;
begin
  FPes(1, 'CxBanco', '', ['Lanc.', 'Documento', 'Data', 'Forma', 'Conta',
    'Valor', 'Favorecido/Emitente'], ['Lanc', 'BancoDoc', 'Data', 'Formar',
    'BancoDes', 'Valor', 'Favorecido'], 7, 1);
end;

procedure FPQCxfrete;
begin
  FPes(1, 'CxFrete', '', ['Lanc.', 'Data', 'E/S', 'Valor', 'Motorista'],
    ['Lanc', 'Data', 'Tipo', 'Valor', 'Descricao'], 5, 1);
end;

procedure FPQCxBancoBaixa;
begin
  FPes(1, 'CxBanco', 'Where Baixa=' + QuotedStr('S'),
    ['Lanc.', 'Documento', 'Data', 'Forma', 'Conta', 'Valor',
    'Favorecido/Emitente'], ['Lanc', 'BancoDoc', 'Data', 'Formar', 'BancoDes',
    'Valor', 'Favorecido'], 7, 1);
end;

procedure FPQRecibo;
begin
  FPes(1, 'CxRecibo', '', ['Número', 'Data', 'Terceiro', 'Valor'],
    ['Numero', 'Data', 'Terceiro', 'Valor'], 4, 1);
end;

procedure FPQFiProdu;
begin
  FPes(1, 'FiProdu', '', ['Registro', 'Data', 'Produtor', 'Vlr.Total',
    'Proventos', 'Variedade'], ['Registro', 'Data', 'Descricao', 'Total',
    'TotPro', 'VarieDes'], 6, 1);
end;

procedure FPQDuplicata;
begin
  FPes(1, 'Duplic', '', ['Lanc', 'Data', 'Controle', 'Cliente', 'Valor'],
    ['Lanc', 'DtEmiss', 'Controle', 'ClienDes', 'Valor'], 5, 1);
end;

procedure FPQFiPaga;
begin
  FPes(1, 'FiPaga', '', ['Lanc.', 'Documento', 'Data', 'Fornecedor', 'Valor'],
    ['Lanc', 'Doc', 'Data', 'Descricao', 'Valor'], 5, 1);
end;

procedure fPqFiTran;
begin
  FPes(1, 'FiTran', '', ['Integra', 'Documento', 'Data', 'Valor'],
    ['Registro', 'Doc', 'Data', 'Valor'], 4, 1);
end;

procedure fPqnfCompra;
begin
  FPes(1, 'nfCompr', '', ['Nota Nº', 'Data', 'Fornecedor'],
    ['Nota', 'Data', 'Descricao', 'VlrNota'], 4, 1);
end;

procedure fPqClasse;
begin
  FPes(3, 'CadClass', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 526);
end;

procedure fPqRoman;
begin
  FPes(3, 'Roman', '', ['Lote', 'Data', 'Qtde Bins', 'Lanc.'],
    ['Lote', 'Data', 'QtdeBin', 'Lanc'], 4, 526);
end;

procedure FPQRomanAno(vrAno: String);
begin
  FPes(3, 'Roman', 'Where Safra = ' + QuotedStr(vrAno),
    ['Lote', 'Data', 'Qtde Bins', 'Variedade', 'Lanc.'],
    ['Lote', 'Data', 'VarieDes', 'QtdeBin', 'Lanc'], 5, 526);
end;

procedure fPqEntRT;
begin
  FPes(1, 'EntRT', '', ['Lanc', 'Data', 'Motorista', 'Placa', 'Peso'],
    ['Lanc', 'Data', 'PlacaDes', 'Placa', 'Peso'], 5, 101);
end;

procedure fPqEntRB;
begin
  FPes(1, 'EntRB', '', ['Recibo', 'Data', 'Produtor', 'Placa', 'Peso', 'Lanc'],
    ['Recibo', 'Data', 'ProdDes', 'Placa', 'BinsPes', 'Lanc'], 6, 101);
end;

procedure fPqEntRE;
begin
  FPes(1, 'EntRE', '', ['Recibo', 'Data', 'Produtor', 'Placa', 'Peso', 'Lanc'],
    ['Recibo', 'Data', 'ProdDes', 'Placa', 'Peso', 'Lanc'], 6, 101);
end;

procedure fPqBins;
begin
  FPes(1, 'CadBins', '', ['Código', 'Descrição', 'Peso Médio'],
    ['Codigo', 'Descricao', 'Peso1'], 3, 101);
end;

procedure fPqVarie;
var
  vWhere: String;
begin
  vWhere := 'Where Ativo = ''S''';
  FPes(1, 'CadVarie', vWhere, ['Código', 'Descrição', 'Peso Liq.Médio'],
    ['Codigo', 'Descricao', 'PesoLiq'], 3, 101);
end;

procedure fPqDefeito;
begin
  FPes(3, 'CadDefei', '', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 526);
end;

procedure fPqPrevisao;
begin
  FPes(3, 'Previs', '', ['Lanc', 'Código', 'Produtor'],
    ['Lanc', 'ProdCod', 'ProdDes'], 3, 526);
end;

procedure FPQAmostra;
begin
  FPes(3, 'Amostra', '', ['Lanc', 'Data', 'Recibo', 'Produtor', 'Variedade'],
    ['Lanc', 'Data', 'Recibo', 'ProdDes', 'VarieDes'], 5, 526);
end;

procedure FPQDefei;
begin
  FPes(3, 'Cont', '', ['Lanc', 'Data', 'Recibo', 'Produtor', 'Variedade'],
    ['Lanc', 'Data', 'Registro', 'ForDes', 'VarDes'], 5, 526);
end;

procedure FPQAjuste;
begin
  FPes(3, 'Ajuste', '', ['Numero', 'Data', 'Histórico'],
    ['Numero', 'Data', 'Historico'], 3, 526);
end;

procedure FPQAjusCompra;
begin
  FPes(3, 'Ajuscp', '', ['Numero', 'Data', 'Histórico'],
    ['Numero', 'Data', 'Historico'], 3, 526);
end;

procedure FPQRRProduto;
begin
  FPes(1, 'CadMerca', 'Where GrupoCod=3', ['Código', 'Descrição', 'Unidade',
    'Preço'], ['Codigo', 'Descricao', 'Unidade', 'Venda1'], 4, 224);
end;

procedure FPQRRPomar;
begin
  FPes(1, 'RRPomar', '', ['Código', 'Descrição'],
    ['Numero', 'Descricao'], 2, 223);
end;

procedure fPqRRSaida;
begin
  FPes(1, 'RRSaida', '', ['Número', 'Data', 'Pomar'],
    ['Numero', 'Data', 'PomarDes'], 3, 1);
end;

procedure fPqMaquina;
begin
  FPes(1, 'CadMaquina', '', ['Código', 'Descrição'],
    ['Codigo', 'Nome'], 2, 223);
end;

procedure fPqManutencao;
begin
  FPes(1, 'MMVeiculo', '', ['Número', 'Data', 'Descrição', 'Placa', 'Valor'],
    ['Numero', 'Data', 'Nome', 'Placa', 'Valor'], 5, 223);
end;

procedure FPQMercaEmbalagem;
begin
  FPes(1, 'CadMerca', 'Where Codigo<3000', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 224);
end;

procedure FPQMercaInsumos;
begin
  FPes(1, 'CadMerca', 'Where Codigo>3000', ['Código', 'Descrição', 'Valor'],
    ['Codigo', 'Descricao', 'Venda1'], 3, 224);
end;

procedure fpqFechaAmos;
begin
  FPes(3, 'Fecha', '', ['Lanc', 'Data', 'Produtor', 'Variedade'],
    ['Lanc', 'Data', 'ProdDes', 'VarieDes'], 4, 526);
end;

procedure FPQPalet;
begin
  FPes(3, 'PaletCab', '', ['Palet', 'Baixa', 'Data', 'Qtde', 'Numero'],
    ['Palet', 'Baixa', 'Data', 'Qtde', 'Numero'], 5, 526);
end;

procedure fPqVenda;
begin
  FPes(2, 'EsVenda', '', ['Número', 'Data', 'Cliente', 'Valor'],
    ['Registro', 'Data', 'Descricao', 'Total'], 4, 1);
end;

procedure fPqInsumo;
begin
  FPes(2, 'ARVenda', '', ['Número', 'Data', 'Produtor', 'Valor'],
    ['Registro', 'Data', 'Descricao', 'Total'], 4, 1);
end;

procedure FPQSOFornecedor;
begin
  FPes(1, 'CadForne', 'Where Codigo > 999', ['Código', 'Descrição', 'Cidade',
    'UF', 'CNPJ/CPF'], ['Codigo', 'Descricao', 'CidadeDes', 'Estado',
    'Cpf'], 5, 121);
end;

procedure FPQSOProdutor;
begin
  FPes(1, 'CadForne', 'Where Codigo < 1000', ['Código', 'Descrição', 'Cidade',
    'UF', 'CNPJ/CPF'], ['Codigo', 'Descricao', 'CidadeDes', 'Estado',
    'Cpf'], 5, 121);
end;

procedure FPQForneGrupo;
begin
  FPes(1, 'CadForne_Grupo', 'Where Codigo > 0', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 1);
end;

procedure FPQLocal;
begin
  FPes(1, 'CadLocal', 'Where Codigo > 0', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 1);
end;

procedure FPQEmbalador;
begin
  FPes(1, 'CadEmbal', 'Where BarraCod > 0', ['Código', 'Descrição'],
    ['BarraCod', 'Descricao'], 2, 1);
end;

procedure FPQMarca;
begin
  FPes(1, 'CadMarca', 'Where Codigo > 0', ['Código', 'Descrição'],
    ['Codigo', 'Descricao'], 2, 1);
end;

procedure FPQCSOSN;
begin
  ShowMessage
    ('101 – Tributada pelo Simples Nacional com permissão de crédito'#13 +
    '    - Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido no Simples Nacional e o valor do crédito correspondente.'#13
    + '102 – Tributada pelo Simples Nacional sem permissão de crédito'#13 +
    '    - Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900.'#13
    + '103 – Isenção do ICMS no Simples Nacional para faixa de receita bruta'#13
    + '    - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção concedida para faixa de receita bruta nos termos da Lei Complementar nº 123, de 2006.'#13
    + '201 – Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária'#13
    + '    - Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e com cobrança do ICMS por substituição tributária.'#13
    + '202 – Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária'#13
    + '    - Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900,'
    + 'e com cobrança do ICMS por substituição tributária.'#13 +
    '203 – Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária'#13
    + '    – Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção para faixa de receita bruta nos termos da Lei Complementar nº 123, de 2006, e com cobrança do ICMS por substituição tributária.'#13
    + '300 – Imune'#13 +
    '    - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contempladas com imunidade do ICMS.'#13
    + '400 – Não tributada pelo Simples Nacional'#13 +
    '    - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional não sujeitas à tributação pelo ICMS dentro do Simples Nacional.'#13
    + '500 – ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação'#13
    + '    - Classificam-se neste código as operações sujeitas exclusivamente ao regime de substituição tributária na condição de substituído tributário ou no caso de antecipações.'#13
    + '900 – Outros'#13 +
    '    - Classificam-se neste código as demais operações que não se enquadrem nos códigos 101, 102, 103, 201, 202, 203, 300, 400 e 500.');
end;

function fVerficaDataValida(vOpcao: Integer; vData: TDate;
  vDias: Integer = 10): Boolean;
var
  vtxt: String;
begin
  // se a data atual for maior que a data de lançamento só deve liberar se for por senha
  Result := True;
  if (vOpcao = 13) or (vOpcao = 14) then
  begin
    if (vData < (Date - vDias)) then
    begin
      vtxt := frImpu(1, 'Informe a senha para liberar?', '');
      vtxt := uppercase(vtxt);
      fSql(1, 1, ['Select prog1 From zacesso Where senha =' +
        QuotedStr(vtxt)], 1);
      if DM.qrSql1.Fields[0].asString <> 'S' then
      begin
        frPerg('Sem liberação ou senha inválida!', 'OK');
        Result := False;
      end;
    end;
  end;
end;

function fValidaPodeExcluir(vTabela, vCampo, vWhere, vMsg: String): Boolean;
var
  vret: String;
begin
  Result := False;

  try
    try

      vret := fBus(1, ['select ' + vCampo + '  from ' + vTabela + ' where ' +
        vCampo + ' ' + vWhere], 1);
      if (vret = '') or (vret = '0') then
        Result := True
      else
        frPerg(pchar(vMsg), 'OK');

    except
      frPerg(pchar('Aviso: ' + vMsg), 'OK');
    end;
  finally
    DM.qrSqlBus.Close;
  end;

end;

function pVerificaConexaoFTP: Boolean;
//var
//  LTcpClient: TIdTCPClient;
begin

  // Está dando erro em alguns casos
  Result := True;

  {

    //Tem acesso ao ftp
    Result := False;
    if fBus(1,['Select valor From zGenerator Where Tabela = ''INTERNO'' and Campo = ''CONEXAOFTP'''],1) = '0' then
    exit;

    LTcpClient := TIdTCPClient.Create(nil);
    try
    try
    LTcpClient.Host := fBus(1,['Select valor From xparametro Where parametro = ''ftpHost'''],1);
    LTcpClient.Port := StrToIntDef(fBus(1,['Select valor From xparametro Where parametro = ''ftpPorta'''],1),21);
    LTcpClient.ConnectTimeout := 200;
    LTcpClient.Connect;
    Result := True;
    except
    Result := False;
    end;
    finally
    freeAndNil(LTcpClient);
    end;

    if not Result then
    frPerg(pchar('Aviso: Sem conexão ao FTP.'),'OK');
  }

end;

{
function pInsertDataSet(vID, vTabela: String; DS: TClientDataSet; MaxSql: Integer = 50): Boolean;
var
  vquery: TFDQuery;
  count, i: Integer;
  vtxt: String;
begin

  Result := True;
  ///
  try

    try
      count := 0;
      vquery := dm.qrSqlCommit;
      vquery.Close;
      vquery.Sql.Clear;

      vquery.Sql.Add('EXECUTE BLOCK AS BEGIN');

//      DS.First;
//      while not DS.Eof do
//      begin

        vtxt := 'UPDATE OR INSERT INTO ' + vTabela + ' (';

        // fields
        for i := 0 to DS.Fields.count - 1 do
        begin

          if (DS.Fields[i].FieldKind = fkData) then
          begin
            if (Copy(DS.Fields[i].FieldName, 1, 2) <> 'ZZ') then
            begin

              vtxt := vtxt + DS.Fields[i].FieldName;
              vtxt := vtxt + ', ';

            end;

          end;

        end;

        if Copy(vtxt, Length(vtxt) - 2, 2) <> ') ' then
          vtxt := Copy(vtxt, 1, Length(vtxt) - 2) + ') ';

        // valores
        vtxt := vtxt + ' VALUES ( ';
        for i := 0 to DS.Fields.count - 1 do
        begin
          if (DS.Fields[i].FieldKind = fkData) then
          begin

            if (Copy(DS.Fields[i].FieldName, 1, 2) <> 'ZZ') then
            begin

              if (DS.Fields[i].asString = '') or (DS.Fields[i].IsNull) then
                vtxt := vtxt + 'null'

              else
              begin

                if (DS.Fields[i].DataType in [ftSmallint, ftInteger, ftWord])
                then
                  vtxt := vtxt + DS.Fields[i].asString

                else if (DS.Fields[i].DataType in [ftFloat, ftCurrency, ftBCD,
                  ftFMTBcd]) then
                  vtxt := vtxt + frInvV(DS.Fields[i].asFloat,8)

                else if (DS.Fields[i].DataType in [ftDate, ftDateTime]) then
                  vtxt := vtxt + frInvD(DS.Fields[i].Value)

                else
                  vtxt := vtxt + QuotedStr(trim(DS.Fields[i].asString));

              end;

              vtxt := vtxt + ', ';

            end;

          end;

        end;

        if Copy(vtxt, Length(vtxt) - 2, 2) <> ') ' then
          vtxt := Copy(vtxt, 1, Length(vtxt) - 2) + ') ';

        // Finaliza
        vtxt := vtxt + ' MATCHING (' + vID + ');';

        vquery.Sql.Add(vtxt);

        inc(count);
        // Se chegar a 100(MaxSql) registro ir salvando para não travar limite de strings
        if (count >= MaxSql) then
        begin

          count := 0;
          vquery.Sql.Add('END');
          vquery.ExecSQL;
          // Limpa e começa de novo
          vquery.Sql.Clear;
          vquery.Sql.Add('EXECUTE BLOCK AS BEGIN');

        end;

//        DS.Next;
//      end;
      if (count > 0) then
      begin
        vquery.Sql.Add('END');
        vquery.ExecSQL;
      end;

    except

      on E: Exception do
      begin

        Result := False;
        // raise Exception.Create('TDM.InsertDataSetVarios -> ' + E.Message);
        //dm.InsertAuditoria(vID, 'InsertDSVarios', E.Message);

      end;

    end;

  finally

    vquery.Close;

  end;

end;

function pDeleteDataSet(vCount: Integer; vTabela, vCampo, vValor: Array of String): Boolean;
var
  vquery: TFDQuery;
  i: Integer;
  vtxt: String;
begin

  Result := True;
  try

    try
      vquery := dm.qrSqlCommit;
      vquery.Close;
      vquery.Sql.Clear;

      vquery.Sql.Add('EXECUTE BLOCK AS BEGIN');

      for i := 0 to vCount - 1 do
      begin

        vtxt := 'DELETE FROM ' + vTabela[i] + ' WHERE ' + vCampo[i] + ' = 0' + vValor[i] + ';';
        vquery.Sql.Add(vtxt);

      end;

      vquery.Sql.Add('END');

      vquery.ExecSQL;

    except

      on E: Exception do
      begin

        Result := False;
        raise Exception.Create('TDM.DeleteDataSet -> ' + E.Message);

      end;

    end;

  finally

    vquery.Close;

  end;

end;

function pInsertDataSetVarios(vCampoDel, vID, vTabela: String; DS: TClientDataSet; MaxSql: Integer = 50): Boolean;
var
  vquery: TFDQuery;
  count, i: Integer;
  vtxt: String;
begin

  Result := True;
  ///
  try

    //Primeiro excluir tudo
    if (vCampoDel <> 'FALSE') then
      if (Trim(DS.FieldByName(vCampoDel).asString) <> '') then
        pDeleteDataSet(1,[vTabela], [vCampoDel], [DS.FieldByName(vCampoDel).asString]);

    try
      count := 0;
      vquery := dm.qrSqlCommit;
      vquery.Close;
      vquery.Sql.Clear;

      vquery.Sql.Add('EXECUTE BLOCK AS BEGIN');

      DS.First;
      while not DS.Eof do
      begin

        vtxt := 'UPDATE OR INSERT INTO ' + vTabela + ' (';

        // fields
        for i := 0 to DS.Fields.count - 1 do
        begin

          if (DS.Fields[i].FieldKind = fkData) then
          begin
            if (Copy(DS.Fields[i].FieldName, 1, 2) <> 'ZZ') then
            begin

              vtxt := vtxt + DS.Fields[i].FieldName;
              vtxt := vtxt + ', ';

            end;

          end;

        end;

        if Copy(vtxt, Length(vtxt) - 2, 2) <> ') ' then
          vtxt := Copy(vtxt, 1, Length(vtxt) - 2) + ') ';

        // valores
        vtxt := vtxt + ' VALUES ( ';
        for i := 0 to DS.Fields.count - 1 do
        begin
          if (DS.Fields[i].FieldKind = fkData) then
          begin

            if (Copy(DS.Fields[i].FieldName, 1, 2) <> 'ZZ') then
            begin

              if (DS.Fields[i].asString = '') or (DS.Fields[i].IsNull) then
                vtxt := vtxt + 'null'

              else
              begin

                if (DS.Fields[i].DataType in [ftSmallint, ftInteger, ftWord])
                then
                  vtxt := vtxt + DS.Fields[i].asString

                else if (DS.Fields[i].DataType in [ftFloat, ftCurrency, ftBCD,
                  ftFMTBcd]) then
                  vtxt := vtxt + frInvV(DS.Fields[i].asFloat,8)

                else if (DS.Fields[i].DataType in [ftDate, ftDateTime]) then
                  vtxt := vtxt + frInvD(DS.Fields[i].Value)

                else
                  vtxt := vtxt + QuotedStr(trim(DS.Fields[i].asString));

              end;

              vtxt := vtxt + ', ';

            end;

          end;

        end;

        if Copy(vtxt, Length(vtxt) - 2, 2) <> ') ' then
          vtxt := Copy(vtxt, 1, Length(vtxt) - 2) + ') ';

        // Finaliza
        vtxt := vtxt + ' MATCHING (' + vID + ');';

        vquery.Sql.Add(vtxt);

        inc(count);
        // Se chegar a 100(MaxSql) registro ir salvando para não travar limite de strings
        if (count >= MaxSql) then
        begin

          count := 0;
          vquery.Sql.Add('END');
          vquery.ExecSQL;
          // Limpa e começa de novo
          vquery.Sql.Clear;
          vquery.Sql.Add('EXECUTE BLOCK AS BEGIN');

        end;

        DS.Next;
      end;

      if (count > 0) then
      begin
        vquery.Sql.Add('END');
        vquery.ExecSQL;
      end;

    except

      on E: Exception do
      begin

        Result := False;
        // raise Exception.Create('TDM.InsertDataSetVarios -> ' + E.Message);
        //dm.InsertAuditoria(vID, 'InsertDSVarios', E.Message);

      end;

    end;

  finally

    vquery.Close;

  end;

end;
}
end.
