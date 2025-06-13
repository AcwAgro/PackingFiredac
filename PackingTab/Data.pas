unit Data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Menus, Provider, DBClient, DBTables;

type
  TDM = class(TDataModule)
    qrProc1: TQuery;
    JaeEsteira: TDatabase;
    Session2: TSession;
    TEsteira: TTable;
    DSEsteira: TDataSource;
    DSCadProdu: TDataSource;
    Session1: TSession;
    JaeAdminProd: TDatabase;
    TEmpresa: TTable;
    TCadCateg: TTable;
    dsCadCateg: TDataSource;
    TEtiqueta: TTable;
    dsEtiqueta: TDataSource;
    TEtiquetaCODIGO: TStringField;
    TEtiquetaDESCRICAO: TStringField;
    TEtiquetaPESO: TStringField;
    TEtiquetaLOTE: TStringField;
    TEtiquetaLINHA1: TStringField;
    TEtiquetaLINHA2: TStringField;
    TEtiquetaLINHA3: TStringField;
    TEtiquetaLINHA4: TStringField;
    TEtiquetaLINHA5: TStringField;
    TEtiquetaQTDE: TIntegerField;
    TEtiquetaCONTADOR: TIntegerField;
    TEtiquetaVARIEDADE: TStringField;
    TEtiquetaCATEGORIA: TStringField;
    TEtiquetaCALIBRE: TStringField;
    TEtiquetaBARRA: TStringField;
    qrSql1: TQuery;
    qrSql2: TQuery;
    qrSql3: TQuery;
    qrProc2: TQuery;
    qrProc3: TQuery;
    TExiste: TTable;
    dsDados: TDataSource;
    qrSqlBus: TQuery;
    qrSqlTra: TQuery;
    TEsteiraLOTE: TIntegerField;
    TEsteiraVARIECOD: TIntegerField;
    TEsteiraESTEIRA: TIntegerField;
    TEsteiraLANC: TIntegerField;
    TEsteiraBARRA: TStringField;
    TEsteiraNUMERO: TIntegerField;
    TEsteiraCODIGO: TIntegerField;
    TEsteiraQTDE: TFloatField;
    TEsteiraVARIEDES: TStringField;
    TEsteiraDESCRICAO: TStringField;
    TEsteiraQTDEANT: TFloatField;
    TEsteiraQTDEATU: TFloatField;
    TEsteiraTAM: TStringField;
    TEsteiraCAT: TStringField;
    TCadProdu: TTable;
    cdsDados: TTable;
    cdsDadosCODIGO: TStringField;
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
    TEtiquetaLINHA10: TStringField;
    cdsDadosLINHA10: TStringField;
    cdsDadosLINHA11: TStringField;
    cdsDadosLINHA12: TStringField;
    cdsDadosLINHA13: TStringField;
    cdsDadosID_LANC: TIntegerField;
    cdsDadosID_LOTE: TIntegerField;
    TEtiquetaLINHA11: TStringField;
    TEtiquetaLINHA12: TStringField;
    TEtiquetaLINHA13: TStringField;
    TEtiquetaID_LANC: TIntegerField;
    TEtiquetaID_LOTE: TIntegerField;
    TEtiquetaWEBLOCALPRO: TStringField;
    TEtiquetaWEBLOCALEMP: TStringField;
    TEtiquetaWEBLOCALCLI: TStringField;
    TEtiquetaWEBQRCODEL1: TStringField;
    TEtiquetaWEBQRCODEL2: TStringField;
    TEtiquetaWEBQRCODEL3: TStringField;
    TEtiquetaWEBQRCODEL4: TStringField;
    cdsDadosWEBQRCODEL1: TStringField;
    cdsDadosWEBQRCODEL4: TStringField;
    cdsDadosWEBQRCODEL2: TStringField;
    TEsteiraEMBALCOD: TIntegerField;
    TEsteiraCALIBREDES: TStringField;
    TEtiquetaEMPRESADOC: TStringField;
    TEtiquetaEMPRESAEND: TStringField;
    TEtiquetaPRODUTORDES: TStringField;
    TEtiquetaPRODUTORDOC: TStringField;
    TEtiquetaPRODUTOREND: TStringField;
    qrSql5: TQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure TEsteiraAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Private declarations }
  end;
  function fProc(vSeq:Integer; vSql:Array of String;vLinha:Integer):Boolean;
  function fSql(vSeq:Integer; vSql:Array of String;vLinha:Integer):Boolean;
  function frGenerator(vTabela,vCampo:String;vInc:Integer;vField:String=''):Integer;
  function fBus(vSessao:Integer;vSql:Array of String;vLinha:Integer):Variant;
  function  fTra(vSessao:Integer;vSql:Array of String;vLinha:Integer):Boolean;
  procedure FPes(vSessao:Integer;vpqTable,vpqWhere:String;vpqTitulo,vpqField:Array of String;vpqColuna,vpqProg:Integer; vpgMarcar:String = 'N');
  procedure FPQForneCooper;
  procedure FPQProduto(vVar:String);

  
var
  DM: TDM;
  xRelTela, xpqResul, xpqWhere, xRelMarca, xesteira: String;
  xpPesquisa: Boolean;
  xpqColuna: Integer;
  xpqTitulo, xpqTyp: Array[0..20] of String;
  xpqPesq, xpqProg: Integer; //Variavel para pesquisa


implementation

uses Pesq;

{$R *.DFM}

function fProc(vSeq:Integer; vSql:Array of String;vLinha:Integer):Boolean;
var vlin:Integer; vtt:TQuery;
begin
  if vseq = 1 then vtt:=dm.qrProc1;
  if vseq = 2 then vtt:=dm.qrProc2;
  if vseq = 3 then vtt:=dm.qrProc3;
  with vtt do begin
    Close; Sql.Clear;
    for vLin:=0 to vLinha-1 do Sql.Add(vsql[vLin]);
    if (UpperCase(Copy(Sql.Strings[0],1,6))='SELECT') then begin
       Open;
       if RecordCount=0 then Result:=False else Result:=True;
    end
    else begin ExecSql; Result:=True; end;
  end;
end;

function fSql(vSeq:Integer; vSql:Array of String;vLinha:Integer):Boolean;
var vlin:Integer; vtt:TQuery;
begin
  if vseq = 1 then vtt:=dm.qrSql1;
  if vseq = 2 then vtt:=dm.qrSql2;
  if vseq = 3 then vtt:=dm.qrSql3;
  if vseq = 5 then vtt:=dm.qrSql5;
  with vtt do begin
    Close; Sql.Clear;
    for vLin:=0 to vLinha-1 do Sql.Add(vsql[vLin]);
    if (UpperCase(Copy(Sql.Strings[0],1,6))='SELECT') then begin
       Open;
       if RecordCount=0 then Result:=False else Result:=True;
    end
    else begin ExecSql; Result:=True; end;
  end;
end;

function frGenerator(vTabela,vCampo:String;vInc:Integer;vField:String=''):Integer;
var vgen, vprox, vexis: Integer; vwhere: String;
begin
  vtabela := uppercase(vtabela);
  vcampo  := uppercase(vcampo);
  if vfield = '' then vfield := vcampo;
  vfield  := uppercase(vfield);

  //Busca tabela generator
  if (vInc >= 10)  then
  begin
    vprox := fBus(1,['Select Max('+ vField +') From '+ vTabela],1);
    vprox := vprox + 1;
  end
  else begin
    //1º procura campo e tabela
    vexis := fBus(1,['Select Count(*) From zGenerator Where Tabela = '+QuotedStr(vTabela) + ' and Campo = '+QuotedStr(vField)],1);
    //2º Se não existe tem que cadastrar
    if vexis = 0 then
    begin
      vgen := fBus(1,['Select Max(indice) From zGenerator '],1);
      vgen := vgen + 1;
      fSql(5,[' Insert into zGenerator (Indice, Tabela, Campo, Valor) '+
                ' Values ('+inttostr(vgen)+', '+QuotedStr(vTabela)+', '+QuotedStr(vField)+', 0)'],1);
    end;
    //3º Traz valor
    vprox := fBus(1,['Select Valor From zGenerator Where Tabela = '+QuotedStr(vTabela) + ' and Campo = '+QuotedStr(vField)],1);

    if (vinc > 0) then
    begin
      //4º - Varifica se não existe na tabela referente
      if (vTabela <> 'GERAL') then
      begin
        vexis := fBus(1,['Select Count(*) From '+ vTabela + ' Where '+vCampo + ' = '+IntToStr(vprox + 1) ],1);
        if (vexis > 0) then
        begin
          //Excessões
          vwhere := '';
          if vfield = 'PRODUTOR' then vwhere := ' where Codigo < 1000'
          else if vfield = 'FORNECEDOR' then vwhere := ' where Codigo >= 1000'
          else if vfield = 'INSUMOS' then vwhere := ' where GrupoCod = 3'
          else if vfield = 'MERCADORIA' then vwhere := ' where GrupoCod = 2'
          else if (vtabela = 'ROMAN') and (vCampo = 'LOTE') then vwhere := ' where VarieCod = '+vField;
          vprox := fBus(1,['Select Max('+ vCampo +') From '+ vTabela + vwhere],1);
        end;
      end;

      //5º salva valor
      vprox := vprox + 1;
      fSql(5,[' Update zGenerator set Valor = '+IntToStr(vprox)+
                ' Where Tabela = '+QuotedStr(vTabela) + ' and Campo = '+QuotedStr(vField)],1);
    end;
  end;
  //6º repassa valor
  Result := vprox
end;

function fBus(vsessao:Integer;vSql:Array of String;vLinha:Integer):Variant;
var vlin:Integer; vqrBus:TQuery;
begin
  vqrBus:=dm.qrSqlBus;
  vqrBus.Close;
  vqrBus.Sql.Clear;
  vqrBus.SessionName:='Sesao1';
  vqrBus.DatabaseName:='JaeProducao';
  for vLin:=0 to vLinha-1 do vqrBus.Sql.Add(vsql[vLin]);
  vqrBus.Open;
  if vqrBus.Fields[0].DataType=ftString then
     Result:=vqrBus.Fields[0].asString
  else if vqrBus.Fields[0].DataType=ftFloat then
     Result:=vqrBus.Fields[0].asString
  else if vqrBus.Fields[0].DataType=ftMemo then
     Result:=vqrBus.Fields[0].asString
  else Result:=vqrBus.Fields[0].asInteger;
end;

function fTra(vSessao:Integer;vSql:Array of String;vLinha:Integer):Boolean;
var vlin:Integer; vqrTra:TQuery;
begin
  vqrTra:=dm.qrSqlTra;
  vqrTra.Close; vqrTra.Sql.Clear;
  vqrTra.SessionName:='Sesao1';
  vqrTra.DatabaseName:='JaeProducao';
  for vLin:=0 to vLinha-1 do vqrTra.Sql.Add(vsql[vLin]);
  vqrTra.Open;
  if vqrTra.RecordCount>0 then Result:=True
  else begin
    if (Trim(vqrTra.Fields[0].asString)<>'') then Result:=True
    else Result:=False;
  end;
end;

procedure FPes(vSessao:Integer;vpqTable,vpqWhere:String;vpqTitulo,vpqField:Array of String;vpqColuna,vpqProg:Integer; vpgMarcar:String = 'N');
var vCol:Integer;
begin
  if FPesq=nil then Application.CreateForm(TFPesq,FPesq);
  With FPesq do begin
    xpqResul:='0';
    xRelMarca:='';
    xpqColuna:=vpqColuna;
    xpqProg:=vpqProg;
    xpqWhere:=vpqWhere;
    for vCol:=0 to vpqColuna-1 do xpqTitulo[vCol]:=vpqTitulo[vCol];
    with qrPesq do
    begin
      Close;

      lblMarcar.Visible := False;
      if vpgMarcar = 'S' then
      begin
        lblMarcar.Visible := True;
        lblMarcar.Caption := 'ESPAÇO - Seleciona.';
      end;

      Sql.Strings[0]:='Select ';
      for vCol:=0 to vpqColuna-1 do Sql.Strings[0]:=Sql.Strings[0]+vpqField[vCol]+',';
      Sql.Strings[0]:=Copy(Sql.Strings[0],1,Length(Sql.Strings[0])-1);

      if vpgMarcar = 'S' then
        Sql.Strings[0]:= Sql.Strings[0] + ','+QuotedStr('N') + ' as vMarca';

      Sql.Strings[1]:='From '+vpqTable;
      if Trim(xpqWhere)='' then Sql.Strings[2]:=''
      else Sql.Strings[2]:=Trim(xpqWhere);
      Sql.Strings[3]:='Order by '+vpqField[0];
      Open;
      for vCol:=0 to vpqColuna-1 do
         DBGrid1.Columns[vCol].Title.Caption:=xpqTitulo[vCol];
    end;
    ShowModal;
  end;
end;

procedure FPQForneCooper;
begin
  fPes(1,'CadForne','Where Cooper='+QuotedStr('S'),['Código','Descrição','Cidade','UF','CNPJ/CPF'],['Codigo','Descricao','CidadeDes','Estado','Cpf'],5,121);
end;

procedure FPQProduto(vVar:String);
var vwhere: String;
begin
  vwhere := 'Where VarieCod = 0'+vVar;
  fPes(1,'CadProdu',vwhere,['Código','Descrição','Unidade','Preço'],['Codigo','Descricao','Unidade','Venda1'],4,222);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  dm.Session1.Active := False;
  dm.Session2.Active := False;
  dm.JaeAdminProd.Connected:=False;
  dm.JaeEsteira.Connected:=False;
end;

procedure TDM.TEsteiraAfterOpen(DataSet: TDataSet);
begin

  TEsteira.Filtered := False;
  TEsteira.Filter   := 'Esteira = 0'+xEsteira;
  TEsteira.Filtered := True;

end;

end.
