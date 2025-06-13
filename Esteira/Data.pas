unit Data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Menus, Provider, DBClient, DBTables, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    DSEsteira: TDataSource;
    DSCadProdu: TDataSource;
    dsCadCateg: TDataSource;
    dsEtiqueta: TDataSource;
    DSZAcesso: TDataSource;
    dsParam: TDataSource;
    FDTransaction1: TFDTransaction;
    qrSql5: TFDQuery;
    qrSql1: TFDQuery;
    qrSql2: TFDQuery;
    qrSql3: TFDQuery;
    qrSql4: TFDQuery;
    TParam: TFDQuery;
    cdsBDModulo: TFDQuery;
    ZAcesso: TFDQuery;
    TEmpresa: TFDQuery;
    BDConexao: TFDConnection;
    ZAcessoCODIGO: TIntegerField;
    ZAcessoDESCRICAO: TStringField;
    ZAcessoSENHA: TStringField;
    ZAcessoPROG1: TStringField;
    ZAcessoPROG2: TStringField;
    ZAcessoPROG3: TStringField;
    ZAcessoPROG4: TStringField;
    ZAcessoPROG5: TStringField;
    ZAcessoPROG6: TStringField;
    ZAcessoPROG7: TStringField;
    ZAcessoPROG8: TStringField;
    ZAcessoPROG9: TStringField;
    ZAcessoPROG10: TStringField;
    ZAcessoPROG11: TStringField;
    ZAcessoPROG12: TStringField;
    ZAcessoPROG13: TStringField;
    ZAcessoPROG14: TStringField;
    ZAcessoPROG15: TStringField;
    ZAcessoATIVO: TStringField;
    ZAcessoREGLOG: TStringField;
    ZAcessoREG_ID: TIntegerField;
    cdsBDModuloDESCRICAO: TStringField;
    cdsBDModuloTIPO: TStringField;
    cdsBDModuloGRUPO: TIntegerField;
    cdsBDModuloTAG: TIntegerField;
    cdsBDModuloEDITAR: TStringField;
    cdsBDModuloEXCLUIR: TStringField;
    cdsBDModuloVISUALIZAR: TStringField;
    cdsBDModuloREGLOG: TStringField;
    cdsBDModuloREG_ID: TIntegerField;
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
    TCadProdu: TFDQuery;
    TCadCateg: TFDQuery;
    TEtiqueta: TFDQuery;
    TClassif: TFDQuery;
    TClassifMer: TFDQuery;
    cdsDados: TFDQuery;
    TEtiquetaCODIGO: TIntegerField;
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
    TEtiquetaLINHA10: TStringField;
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
    TEtiquetaEMPRESAEND: TStringField;
    TEtiquetaPRODUTORDES: TStringField;
    TEtiquetaPRODUTORDOC: TStringField;
    TEtiquetaEMPRESADOC: TStringField;
    TEtiquetaPRODUTOREND: TStringField;
    TEtiquetaREGLOG: TStringField;
    TEtiquetaREG_ID: TIntegerField;
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
    cdsDadosLINHA10: TStringField;
    cdsDadosLINHA11: TStringField;
    cdsDadosLINHA12: TStringField;
    cdsDadosLINHA13: TStringField;
    cdsDadosID_LANC: TIntegerField;
    cdsDadosID_LOTE: TIntegerField;
    cdsDadosWEBLOCALPRO: TStringField;
    cdsDadosWEBLOCALEMP: TStringField;
    cdsDadosWEBLOCALCLI: TStringField;
    cdsDadosWEBQRCODEL1: TStringField;
    cdsDadosWEBQRCODEL2: TStringField;
    cdsDadosWEBQRCODEL3: TStringField;
    cdsDadosWEBQRCODEL4: TStringField;
    cdsDadosEMPRESAEND: TStringField;
    cdsDadosPRODUTORDES: TStringField;
    cdsDadosPRODUTORDOC: TStringField;
    cdsDadosEMPRESADOC: TStringField;
    cdsDadosPRODUTOREND: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    TEsteiraRel: TFDQuery;
    TEsteiraRelLANCIT: TIntegerField;
    TEsteiraRelLOTE: TIntegerField;
    TEsteiraRelVARIECOD: TIntegerField;
    TEsteiraRelESTEIRA: TIntegerField;
    TEsteiraRelLANC: TIntegerField;
    TEsteiraRelBARRA: TStringField;
    TEsteiraRelNUMERO: TIntegerField;
    TEsteiraRelCODIGO: TIntegerField;
    TEsteiraRelQTDE: TFMTBCDField;
    TEsteiraRelVARIEDES: TStringField;
    TEsteiraRelDESCRICAO: TStringField;
    TEsteiraRelQTDEANT: TFMTBCDField;
    TEsteiraRelQTDEATU: TFMTBCDField;
    TEsteiraRelEMBALCOD: TIntegerField;
    TEsteiraRelDATALANC: TDateField;
    TEsteiraRelHORALANC: TStringField;
    TEsteiraRelLOTELANC: TIntegerField;
    TEsteiraRelTEXTO1: TStringField;
    TEsteiraRelTEXTO2: TStringField;
    TEsteiraRelTEXTO3: TStringField;
    TEsteiraRelTEXTO4: TStringField;
    TEsteiraRelTEXTO5: TStringField;
    TEsteiraRelTEXTO6: TStringField;
    TEsteiraRelTEXTO7: TStringField;
    TEsteiraRelTEXTO8: TStringField;
    TEsteiraRelTEXTO9: TStringField;
    TEsteiraRelNUMERO1: TIntegerField;
    TEsteiraRelNUMERO2: TIntegerField;
    TEsteiraRelNUMERO3: TIntegerField;
    TEsteiraRelVALOR1: TFMTBCDField;
    TEsteiraRelVALOR2: TFMTBCDField;
    TEsteiraRelVALOR3: TFMTBCDField;
    TEsteiraRelCALIBREDES: TStringField;
    TEsteiraRelPALET: TIntegerField;
    TEsteiraRelTAM: TStringField;
    TEsteiraRelCAT: TStringField;
    TEsteiraRelCLAS: TStringField;
    TExiste: TFDTable;
    qrSqlCommit: TFDQuery;
    qrSqlBus: TFDQuery;
    qrSqlTra: TFDQuery;
    TEsteira: TFDQuery;
    procedure BDConexaoRecover(ASender, AInitiator: TObject;
      AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
    procedure TEsteiraRelCalcFields(DataSet: TDataSet);
    procedure TEsteiraCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Private declarations }
    procedure pCriarTabelaEsteira(vCodigo, vLanc: String);
  end;
  function fSql(vSeq:Integer; vSql:Array of String;vLinha:Integer):Boolean;
  function frGenerator(vTabela,vCampo:String;vInc:Integer;vField:String=''):Integer;
  function frGeneratorFB(vGenerator:String):Integer;
  function fBus(vSessao:Integer;vSql:Array of String;vLinha:Integer):Variant;
  function  fTra(vSessao:Integer;vSql:Array of String;vLinha:Integer):Boolean;
  procedure FPes(vSessao:Integer;vpqTable,vpqWhere:String;vpqTitulo,vpqField:Array of String;vpqColuna,vpqProg:Integer; vpgMarcar:String = 'N');
  procedure FPQForneCooper;
  procedure FPQProduto(vVar:String = '');
  procedure FPQVariedade;
  procedure FPQBins;
  procedure fAbreEsteira;

var
  DM: TDM;
  xRelTela,xpqResul,xpqWhere,xRelMarca: String;
  xpPesquisa: Boolean;
  xpqColuna: Integer;
  xpqTitulo,xpqTyp:Array[0..20] of String;
  xpqPesq,xpqProg:Integer; //Variavel para pesquisa
  xEsteiraTabela, xSenha, xAno: String;
  xREG_ID, xEmp, xAcesso: Integer;
  xTagTela: Integer;

implementation

uses Pesq, Rotina, Esteira;

{$R *.DFM}

function fSql(vSeq:Integer; vSql:Array of String;vLinha:Integer):Boolean;
var vlin:Integer; vtt:TFDQuery;
begin
  if vseq = 1 then vtt:=dm.qrSql1;
  if vseq = 2 then vtt:=dm.qrSql2;
  if vseq = 3 then vtt:=dm.qrSql3;
  if vseq = 4 then vtt:=dm.qrSql4;
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
      fSql(3,[' Insert into zGenerator (Indice, Tabela, Campo, Valor) '+
                ' Values ('+inttostr(vgen)+', '+QuotedStr(vTabela)+', '+QuotedStr(vField)+', 0)'],1);
    end;
    //3º Traz valor
    vprox := fBus(1,['Select Valor From zGenerator Where Tabela = '+QuotedStr(vTabela) + ' and Campo = '+QuotedStr(vField)],1);

    if (vinc > 0) then
    begin
      //4º - Varifica se não existe na tabela referente
      if (vTabela <> 'GERAL') and (vtabela <> 'ROMAN') then
      begin
        vexis := fBus(1,['Select Count(*) From '+ vTabela + ' Where '+vCampo + ' = '+IntToStr(vprox + 1) ],1);
        if (vexis > 0) then
        begin
          //Excessões
          vwhere := '';
          if vfield = 'PRODUTOR' then vwhere := ' where Codigo < 1000'
          else if vfield = 'FORNECEDOR' then vwhere := ' where Codigo >= 1000'
          else if vfield = 'INSUMOS' then vwhere := ' where GrupoCod = 3'
          else if vfield = 'MERCADORIA' then vwhere := ' where GrupoCod = 2';
          //else if (vtabela = 'ROMAN') and (vCampo = 'LOTE') then vwhere := ' where VarieCod = '+vField;
          vprox := fBus(1,['Select Max('+ vCampo +') From '+ vTabela + vwhere],1);
        end;
      end;

      //5º salva valor
      vprox := vprox + 1;
      fSql(3,[' Update zGenerator set Valor = '+IntToStr(vprox)+
                ' Where Tabela = '+QuotedStr(vTabela) + ' and Campo = '+QuotedStr(vField)],1);
    end;
  end;
  //6º repassa valor
  Result := vprox
end;

function frGeneratorFB(vGenerator:String):Integer;
begin

  try
    Result := fBus(1, ['Select gen_id('+vGenerator+', 1) from rdb$database'], 1);
  except
    Result := 0;
  end;

end;

function fBus(vsessao:Integer;vSql:Array of String;vLinha:Integer):Variant;
var vlin:Integer; vqrBus:TFDQuery;
begin
  vqrBus:=dm.qrSqlBus;
  vqrBus.Close;
  vqrBus.Sql.Clear;
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
var vlin:Integer; vqrTra:TFDQuery;
begin
  vqrTra:=dm.qrSqlTra;
  vqrTra.Close;
  vqrTra.Sql.Clear;
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
  //fPes(1,'CadForne','Where Cooper='+QuotedStr('S'),['Código','Descrição','Cidade','UF','CNPJ/CPF'],['Codigo','Descricao','CidadeDes','Estado','Cpf'],5,121);
  fPes(1,'CadForne','Where Codigo < 1000',['Código','Descrição','Cidade','UF','CNPJ/CPF'],['Codigo','Descricao','CidadeDes','Estado','Cpf'],5,121);
end;

procedure FPQProduto(vVar:String = '');
var vwhere: String;
begin

  if (StrToIntDef(vVar,0) = 0) then
    vwhere := 'Where Ativo = ''S'' '
  else
    vwhere := 'Where Ativo = ''S'' and VarieCod = 0'+vVar;
  fPes(1,'CadProdu',vwhere,['Código','Descrição','Unidade','Preço'],['Codigo','Descricao','Unidade','Venda1'],4,222);

end;

procedure FPQVariedade;
var vwhere: String;
begin
  vwhere := 'Where Ativo = ''S''';
  fPes(1,'CadVarie',vwhere,['Código','Descrição'],['Codigo','Descricao'],2,220);
end;


procedure FPQBins;
begin
  FPes(1, 'CadBins', '', ['Código', 'Descrição', 'Peso Médio'],
    ['Codigo', 'Descricao', 'Peso1'], 3, 101);
end;

procedure TDM.BDConexaoRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
begin
  AAction := faRetry;
end;

procedure fAbreEsteira;
begin
  dm.TEsteira.Close;
  dm.TEsteira.Sql.Clear;
  dm.TEsteira.Sql.Add('Select * From      '+xEsteiraTabela);
  dm.TEsteira.Sql.Add(' Where Esteira  = 0'+xEsteira
                    + '   and Lote     = 0'+xvLot
                    + '   and VarieCod = 0'+xvCod);
  dm.TEsteira.Sql.Add('Order by Lanc');
  dm.TEsteira.Open;

  dm.TExiste.TableName := xEsteiraTabela;
  dm.TExiste.Filter    := 'Esteira = 0'+xEsteira
                        + ' and Lote = 0'+xvLot
                        + ' and VarieCod= 0'+xvCod;

end;

procedure TDM.TEsteiraCalcFields(DataSet: TDataSet);
var vt:String;
begin

  //Classe
  vt := COPY(TEsteira.FieldByName('BARRA').AsString,1,1);
//    TEsteiraCAT.AsString := 'EXTRA'
  if vt = '0' then
    TEsteira.FieldByName('CAT').AsString := 'CAT I'
  else if vt = '1' then
    TEsteira.FieldByName('CAT').AsString := 'CAT I'
  else if vt = '2' then
    TEsteira.FieldByName('CAT').AsString := 'CAT II'
  else if vt = '3' then
    TEsteira.FieldByName('CAT').AsString := 'CAT III'
  else if vt = '4' then
    TEsteira.FieldByName('CAT').AsString := 'SAC'
  else if vt = '5' then
    TEsteira.FieldByName('CAT').AsString := 'IND'
  else if vt = '6' then
    TEsteira.FieldByName('CAT').AsString := 'OUTROS';

  //Calibre
  vt := COPY(TEsteira.FieldByName('BARRA').AsString,3,3);
       if vt='305' then vt:='GG'
  else if vt='325' then vt:='G'
  else if vt='355' then vt:='M'
  else if vt='385' then vt:='P'
  else if vt='395' then vt:='PP';
  TEsteira.FieldByName('TAM').AsString := vt;

end;

procedure TDM.TEsteiraRelCalcFields(DataSet: TDataSet);
var vt:String;
begin

  //Calibre
  vt := COPY(TEsteiraRelBARRA.AsString,3,3);
       if vt='305' then vt:='GG'
  else if vt='325' then vt:='G'
  else if vt='355' then vt:='M'
  else if vt='385' then vt:='P'
  else if vt='395' then vt:='PP';
  TEsteiraRelTAM.AsString := vt;

  //Categoria
  vt := COPY(TEsteiraRelBARRA.AsString,1,2);
  TEsteiraRelClas.AsString := vt;

  //Classe
  vt := COPY(TEsteiraRelBARRA.AsString,1,1);
//    TEsteiraRelCAT.AsString := 'EXTRA'
  if vt = '0' then
    TEsteiraRelCAT.AsString := 'CAT I'
  else if vt = '1' then
    TEsteiraRelCAT.AsString := 'CAT I'
  else if vt = '2' then
    TEsteiraRelCAT.AsString := 'CAT II'
  else if vt = '3' then
    TEsteiraRelCAT.AsString := 'CAT III'
  else if vt = '4' then
    TEsteiraRelCAT.AsString := 'SAC'
  else if vt = '5' then
    TEsteiraRelCAT.AsString := 'IND'
  else if vt = '6' then
    TEsteiraRelCAT.AsString := 'OUTROS';

end;

procedure TDM.pCriarTabelaEsteira(vCodigo, vLanc: String);
begin
  dm.TExiste.Close;

  //Busca a nova configuracao
  xEsteiraTabela := 'ESTEIRAC'+frPree(vCodigo,3,'0',0);
  dm.TExiste.TableName := xEsteiraTabela;
  if dm.TExiste.Exists then
  begin
    fAbreEsteira;
  end
  else begin
    fSql(1,['Create Table '+xEsteiraTabela+
              ' ( LOTE      INTEGER,'+
              '   LANCIT    INTEGER,'+
              '   VARIECOD  INTEGER,'+
              '   ESTEIRA   INTEGER,'+
              '   LANC      INTEGER,'+
              '   BARRA     VARCHAR(13),'+
              '   NUMERO    INTEGER,'+
              '   CODIGO    INTEGER,'+
              '   QTDE      DOUBLE,'+
              '   VARIEDES  VARCHAR(30),'+
              '   DESCRICAO VARCHAR(50),'+
              '   QTDEANT   DOUBLE,'+
              '   QTDEATU   DOUBLE,'+
              '   EMBALCOD   INTEGER,'+
              '   CALIBREDES VARCHAR(10),'+
              '   DATALANC  DATE,'+
              '   HORALANC  VARCHAR(10),'+
              '   LOTELANC  INTEGER,'+
              '   TEXTO1    VARCHAR(10),'+
              '   TEXTO2    VARCHAR(10),'+
              '   TEXTO3    VARCHAR(10),'+
              '   TEXTO4    VARCHAR(20),'+
              '   TEXTO5    VARCHAR(50),'+
              '   TEXTO6    VARCHAR(50),'+
              '   TEXTO7    VARCHAR(40),'+
              '   TEXTO8    VARCHAR(30),'+
              '   TEXTO9    VARCHAR(20),'+
              '   PALET     INTEGER,'+
              '   NUMERO1   INTEGER,'+
              '   NUMERO2   INTEGER,'+
              '   NUMERO3   INTEGER,'+
              '   VALOR1    DOUBLE,'+
              '   VALOR2    DOUBLE,'+
              '   VALOR3    DOUBLE)'], 1);

    dm.qrSql1.Close;
  end;

end;

end.
