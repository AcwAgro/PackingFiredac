unit zScript;

interface

uses Forms, SysUtils, ShellAPI, Rotina, Data, zRegistro, Login;

procedure pRodaScript;
function  pCriarArquivo(vii:Integer; vdirect,vtxt:String):Integer;
function  pScript:Integer;

implementation

procedure pRodaScript;
var vnum, vult: Integer;
    vfil: TextFile;
    xDirect, varq, vlin, vtex: String;
begin
  xDirect := ExtractFilePath(Application.ExeName);
  Try
    //Criar aqrquivo script
    vult := pScript;

    //Leitura
    for vnum := 1 to vult do
    begin
      varq := xDirect + 'Script' + frPree(vnum,3,'0',0) + '.txt';
      if FileExists(varq) then
      begin
        FLogin.lblScript.Caption := 'Executando: Script' + frPree(vnum,3,'0',0) + '.txt';
        Application.ProcessMessages;
        vtex := '';
        //Abre o script
        AssignFile(vfil, varq);
        Reset(vfil);
        while not Eof(vfil) do
        begin
          Readln(vfil, vlin);
          vtex := vtex + vlin;
          //Roda o script
          if Trim(vtex) <> '' then
          begin
            if Pos('!', vtex) > 0 then
            begin
              fSql(1,1,[PChar(Copy(vtex,1,Pos('!', vtex)-1))],1);
              vtex := '';
            end;
          end;
        end;
        CloseFile(vfil);
        //Roda o script
        if Trim(vtex) <> '' then
          fSql(1,1,[ PChar(vtex) ],1);
        //Exclui o script
        DeleteFile(varq);
      end;
    end;
  except
    frPerg(pChar('Erro rodando script.'+frPree(vnum,3,'0',0)),'OK');
  end;
end;

function pCriarArquivo(vii:Integer; vdirect,vtxt:String):Integer;
var vconf:String; vArq:TextFile;
begin
  try
    if (vii > 0) then
    begin
      vconf := vDirect + 'Script' + frPree(vii,3,'0',0) + '.txt';
      FLogin.lblScript.Caption := 'Criando: Script' + frPree(vii,3,'0',0) + '.txt';

      DeleteFile(vconf);
      Sleep(500);
      AssignFile(varq,vconf);
      Rewrite(varq);
      Writeln(varq, vtxt);
      CloseFile(varq);
      Application.ProcessMessages;
      Sleep(500);
    end;
  except
  end;
  fParametroSalvaVlr('SCRIPT', IntToStr(vii));
  result := vii+1;
end;

function pScript:Integer;
var vscr, vzgen, vid: Integer;
    vDirect: String;
begin
  //Diretorio
  vDirect := ExtractFilePath(Application.ExeName);
  //Busca sequencia
  vscr := StrToIntDef(fParametroEditaVlr('SCRIPT'),0);
  if vscr = 0 then
    fParametroInserirVlr('SCRIPT','1','930');

  vzgen:= frGenerator('ZGENERATOR','INDICE',11) + 1;

  try
    inc(vscr);

    //Scripts
    if (vscr = 1) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add OBS varchar(50)! ');

    if (vscr = 2) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrb add OBS varchar(50)! ');

    if (vscr = 3) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table roman add OBS varchar(50)! ');

    if (vscr = 4) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnatur alter DESCRICAO varchar(50)! ');

    if (vscr = 5) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add FINNFE varchar(1)! ');

    if (vscr = 6) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set FINNFE = ''N''! ');

    if (vscr = 7) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add CFOPDESC varchar(50)! ');

    if (vscr = 8) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update CXBANCO set valorreal = valor where (formar = ''E'') and (data > (''01/01/2018''))! ');

    if (vscr = 9) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update CXBANCO set valorreal = valor * -1  where (formar = ''S'') and (data > (''01/01/2018''))! ');

    if (vscr = 10) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 1;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('FINANCEIRO')
                                +','+QuotedStr('INTEGRA')+',0)! ');
    end;

    if (vscr = 11) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table fibaipag add FUNRURALVLR double precision! ');

    if (vscr = 12) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table fibaipag add FUNRURALPER double precision! ');

    if (vscr = 13) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add FUNRURALPER double precision! ');

    if (vscr = 14) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnatur alter DESCRICAO varchar(120)! ');

    if (vscr = 15) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota alter DESCRICAO varchar(50)! ');

    if (vscr = 16) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add GRUPOCOD integer! ');

    if (vscr = 17) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadforne set GRUPOCOD = 1! ');

    if (vscr = 18) then
      vscr:= pCriarArquivo(vscr, vDirect, 'create table CADFORNE_GRUPO (ID INTEGER PRIMARY KEY, CODIGO INTEGER, DESCRICAO VARCHAR(50), EMPRECOD INTEGER, ACESOCOD INTEGER)!');

    if (vscr = 19) then
      vscr:= pCriarArquivo(vscr, vDirect, 'insert into CADFORNE_GRUPO (ID, CODIGO, DESCRICAO, EMPRECOD, ACESOCOD) VALUES (1,1,''PRODUTOR'', 1, 1)!');

    if (vscr = 20) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add RVLRMEDIO double precision! ');

    if (vscr = 21) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add DUPLICACOD integer! ');

    if (vscr = 22) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadvarie set DUPLICACOD = CODIGO! ');

    if (vscr = 23) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 2;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('PRECOMEDIO')
                                +','+QuotedStr('DUPLICA')+',0)! ');
    end;
    if (vscr = 24) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 3;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('PRECOMEDIO')
                                +','+QuotedStr('BXDESCONTO')+',0)! ');
    end;
    if (vscr = 25) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add CER_SSLLIB integer! ');
    if (vscr = 26) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add CER_CRYPTLIB integer! ');
    if (vscr = 27) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add CER_HTTPLIB integer! ');
    if (vscr = 28) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add CER_XMLSIGNLIB integer! ');
    if (vscr = 29) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add WEB_SSLTYPE integer! ');
    if (vscr = 30) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add GER_VERSAO integer! ');
    if (vscr = 31) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add GER_PATSCHEMAS varchar(100)! ');
    if (vscr = 32) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add JURO_POS date! ');
    if (vscr = 33) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add JURO_CAR integer! ');
    if (vscr = 34) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add JURO_PER double precision! ');
    if (vscr = 35) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add JURO_VLR double precision! ');
    if (vscr = 36) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add JURO_TOTAL double precision! ');
    if (vscr = 37) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendref add NOTA integer! ');
    if (vscr = 38) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add ICMS_PER double precision! ');
    if (vscr = 39) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add IPI_SIT varchar(3)! ');
    if (vscr = 40) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add IPI_PER double precision! ');
    if (vscr = 41) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add PIS_SIT varchar(3)! ');
    if (vscr = 42) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add PIS_PER double precision! ');
    if (vscr = 43) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add COFINS_SIT varchar(3)! ');
    if (vscr = 44) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add COFINS_PER double precision! ');
    if (vscr = 45) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add ICMS_PER double precision! ');
    if (vscr = 46) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add IPI_SIT varchar(3)! ');
    if (vscr = 47) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add IPI_PER double precision! ');
    if (vscr = 48) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add PIS_SIT varchar(3)! ');
    if (vscr = 49) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add PIS_PER double precision! ');
    if (vscr = 50) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add COFINS_SIT varchar(3)! ');
    if (vscr = 51) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add COFINS_PER double precision! ');
    if (vscr = 52) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add PIS_SIT varchar(3)! ');
    if (vscr = 53) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add PIS_PER double precision! ');
    if (vscr = 54) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add PIS_BASE double precision! ');
    if (vscr = 55) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add PIS_VLR double precision! ');
    if (vscr = 56) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add COFINS_SIT varchar(3)! ');
    if (vscr = 57) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add COFINS_PER double precision! ');
    if (vscr = 58) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add COFINS_BASE double precision! ');
    if (vscr = 59) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add COFINS_VLR double precision! ');
    if (vscr = 60) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add PIS_VLR double precision! ');
    if (vscr = 61) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add COFINS_VLR double precision! ');
    if (vscr = 62) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add IPI_CENQ varchar(3)! ');
    if (vscr = 63) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add IPI_CENQ varchar(3)! ');
    if (vscr = 64) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add IPI_CENQ varchar(3)! ');
    if (vscr = 65) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add LOTE_CFO varchar(20)! ');
    if (vscr = 66) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table previs add LOTE_CFO varchar(20)! ');
    if (vscr = 67) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table previsco add LOTE_PRO varchar(20)! ');
    if (vscr = 68) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add LOTE_PRO varchar(20)! ');
    if (vscr = 69) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table empresa add IM varchar(20)! ');
    if (vscr = 70) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add QTDE_DIV double precision! ');
    if (vscr = 71) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfcompco add QTDE_DIV double precision! ');
    if (vscr = 72) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfcompco add QTDE_REAL double precision! ');
    if (vscr = 73) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadmerca set QTDE_DIV = 1! ');
    if (vscr = 74) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfcompco set QTDE_DIV = 1! ');
    if (vscr = 75) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfcompco set QTDE_REAL = QTDE! ');
    if (vscr = 76) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE CADENDERECO('
                                        + 'LANCIT INTEGER PRIMARY KEY,'
                                        + 'LANC INTEGER,'
                                        + 'TIPO VARCHAR(1),'
                                        + 'CPF VARCHAR(20),'
                                        + 'DOC VARCHAR(20),'
                                        + 'DESCRICAO VARCHAR(50),'
                                        + 'ENDERECO VARCHAR(50),'
                                        + 'COMPLEM VARCHAR(30),'
                                        + 'NUMERO VARCHAR(10),'
                                        + 'BAIRRO VARCHAR(30),'
                                        + 'CEP VARCHAR(9),'
                                        + 'CIDADEDES VARCHAR(30),'
                                        + 'ESTADO VARCHAR(2),'
                                        + 'FONE VARCHAR(14),'
                                        + 'EMAIL VARCHAR(50),'
                                        + 'CIDADECOD INTEGER,'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');

    if (vscr = 77) then
    begin
      //vaux:= fBus(1,['Select Max(indice) From zGenerator '],1) + 1;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('NFE')
                                +','+QuotedStr('EMAIL')+',0)! ');
    end;
    if (vscr = 78) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add EMAILENV integer! ');
    if (vscr = 79) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfvenda set EMAILENV = 1! ');
    if (vscr = 80) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE CADLOCAL('
                                        + 'CODIGO INTEGER PRIMARY KEY,'
                                        + 'DESCRICAO VARCHAR(30),'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');
    if (vscr = 81) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add REL_VENDA VARCHAR(1)! ');
    if (vscr = 82) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set REL_VENDA = ''S'' where codigo = 1! ');
    if (vscr = 83) then
    begin
      //vaux:= fBus(1,['Select Max(indice) From zGenerator '],1) + 3;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('CADLOCAL')
                                +','+QuotedStr('CODIGO')+',1)! ');
    end;
    if (vscr = 84) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into cadlocal (CODIGO, DESCRICAO, EMPRECOD, ACESOCOD) '
                                +' values (1,'+Quotedstr('PACKING')+',1,1)! ');
    if (vscr = 85) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table roman add LOCALCOD INTEGER! ');
    if (vscr = 86) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add LOCALCOD INTEGER! ');
    if (vscr = 87) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update roman set LOCALCOD = 1! ');
    if (vscr = 88) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update entre set LOCALCOD = 1! ');
    if (vscr = 89) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadclien add FG_DESC_PRECO VARCHAR(1)! ');
    if (vscr = 90) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadclien set FG_DESC_PRECO = ''S''! ');
    if (vscr = 91) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table classif add LOCALCOD INTEGER! ');
    if (vscr = 92) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update classif cl inner join roman ro on ro.lanc = cl.integra set cl.localcod =  ro.localcod! ');
    if (vscr = 93) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add JURO_DIA INTEGER! ');
    if (vscr = 94) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add NFCNOT integer! ');
    if (vscr = 95) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add NFCINT varchar(120)! ');
    if (vscr = 96) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add NFCVLR double precision! ');
    if (vscr = 97) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cxbanco set JURO_DIA = 0, NFCNOT = DUPLINOT! ');
    if (vscr = 98) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cxbanco set NFCVLR = VALOR WHERE DUPLINOT > 0! ');
    if (vscr = 99) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add LINHA10 varchar(20)! ');
    if (vscr = 100) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add LINHA11 varchar(20)! ');
    if (vscr = 101) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add LINHA12 varchar(20)! ');
    if (vscr = 102) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add LINHA13 varchar(20)! ');
    if (vscr = 103) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table caddados add FGIMPOSTO varchar(1)! ');
    if (vscr = 104) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table caddados add FGTRANS varchar(1)! ');
    if (vscr = 105) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table caddados add FGTRANSPL varchar(1)! ');
    if (vscr = 106) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update caddados set FGIMPOSTO = ''S''! ');
    if (vscr = 107) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update caddados set FGTRANS = ''N''! ');
    if (vscr = 108) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update caddados set FGTRANSPL = ''N''! ');
    if (vscr = 109) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update caddados set DESCRICAO = ''Dados NFe''! ');
    if (vscr = 110) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add FGRELFINAN varchar(1)! ');
    if (vscr = 111) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add FGFECHAMENTO varchar(1)! ');
    if (vscr = 112) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadplano set FGRELFINAN = ''S''! ');
    if (vscr = 113) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadplano set FGFECHAMENTO = ''N''! ');
    if (vscr = 114) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadplano set FGFECHAMENTO = ''S'' where SINALDES = ''S''! ');
    if (vscr = 115) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add TIPOCOD varchar(1)! ');
    if (vscr = 116) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add COMISSAOCOD integer! ');
    if (vscr = 117) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add COMISSAOVLR double precision! ');
    if (vscr = 118) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadforne set TIPOCOD = ''P'' where COOPER = ''S''! ');
    if (vscr = 119) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE ZCONTROLE('
                                        + 'ID INTEGER PRIMARY KEY,'
                                        + 'DESCRICAO VARCHAR(20),'
                                        + 'TELACOD INTEGER,'
                                        + 'TELADES VARCHAR(20),'
                                        + 'DATA DATE,'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');
    if (vscr = 120) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add SIGLANOR varchar(2)! ');
    if (vscr = 121) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add SIGLAOUT varchar(2)! ');
    if (vscr = 122) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add COMISSAOCOD INTEGER! ');
    if (vscr = 123) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add COMISSAOVLR double precision! ');
    if (vscr = 124) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add COMISSAOVALOR double precision! ');
    if (vscr = 125) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add COMISSAO VARCHAR(1)! ');
    if (vscr = 126) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadforne set TIPOCOD = ''F'' where COOPER <> ''S''! ');
    if (vscr = 127) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add NCM varchar(20)! ');
    if (vscr = 128) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add DADOSADIC varchar(100)! ');
    if (vscr = 129) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add IEPRODUTOR varchar(20)! ');
    if (vscr = 130) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add FGIMPOSTO varchar(1)! ');
    if (vscr = 131) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add FGTRANS varchar(1)! ');
    if (vscr = 132) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add FGTRANSPL varchar(1)! ');
    if (vscr = 133) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set FGIMPOSTO = ''S''! ');
    if (vscr = 134) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set FGTRANS = ''N''! ');
    if (vscr = 135) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set FGTRANSPL = ''N''! ');
    if (vscr = 136) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add FGREFER varchar(1)! ');
    if (vscr = 137) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set FGREFER = ''N''! ');
    if (vscr = 138) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add ID_LANC integer! ');
    if (vscr = 139) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add ID_LOTE integer! ');
    if (vscr = 140) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadclien add WEBLOCAL varchar(50)! ');
    if (vscr = 141) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add WEBLOCAL varchar(50)! ');
    if (vscr = 142) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table empresa add WEBLOCAL varchar(50)! ');
    if (vscr = 143) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBLOCALPRO varchar(50)! ');
    if (vscr = 144) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBLOCALEMP varchar(50)! ');
    if (vscr = 145) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBLOCALCLI varchar(50)! ');
    if (vscr = 146) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBQRCODEL1 varchar(120)! ');
    if (vscr = 147) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBQRCODEL2 varchar(120)! ');
    if (vscr = 148) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBQRCODEL3 varchar(120)! ');
    if (vscr = 149) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add WEBQRCODEL4 varchar(120)! ');
    if (vscr = 150) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE ROMANRAS('
                                        + 'LANCIT INTEGER PRIMARY KEY,'
                                        + 'LANC INTEGER,'
                                        + 'NOTA INTEGER,'
                                        + 'LANCNOTA INTEGER,'
                                        + 'CLIENTE VARCHAR(50),'
                                        + 'DATA DATE,'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');
    if (vscr = 151) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table roman add FGENVIAWEB varchar(1)! ');
    if (vscr = 152) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update roman set FGENVIAWEB = ''N''! ');
    if (vscr = 153) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu alter CALIBREDES varchar(15)! ');
    if (vscr = 154) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add SUBGRUPO varchar(60)! ');
    if (vscr = 155) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add CUSTOFG varchar(1)! ');
    if (vscr = 156) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add CUSTOOPE double precision! ');
    if (vscr = 157) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add CUSTOEMB double precision! ');
    if (vscr = 158) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add CUSTOLUC double precision! ');
    if (vscr = 159) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cxbanco cxb inner join cadplano cdp on cdp.reduz = cxb.reduz set cxb.conta = cdp.codigo where (cxb.dtcontab > (''01/05/2020''))! ');
    if (vscr = 160) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add CEST varchar(15)! ');
    if (vscr = 161) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add CEST varchar(15)! ');
    if (vscr = 162) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE CADEMBAL('
                                        + 'CODIGO INTEGER PRIMARY KEY,'
                                        + 'DESCRICAO VARCHAR(30),'
                                        + 'BARRACOD INTEGER,'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');
    if (vscr = 163) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL501 varchar(10)! ');
    if (vscr = 164) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add EMPRESADOC varchar(100)! ');
    if (vscr = 165) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add EMPRESAEND varchar(100)! ');
    if (vscr = 166) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add PRODUTORDES varchar(100)! ');
    if (vscr = 167) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add PRODUTORDOC varchar(100)! ');
    if (vscr = 168) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta add PRODUTOREND varchar(100)! ');
    if (vscr = 169) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table roman add PRODUTORCOD integer)! ');
    if (vscr = 170) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL502 varchar(10)! ');
    if (vscr = 171) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add EMBALQTD double precision! ');
    if (vscr = 172) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add EMBALCOD integer! ');
    if (vscr = 173) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add PESOZERO varchar(1)! ');
    if (vscr = 174) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add IMPRIMEETIQ varchar(1)! ');
    if (vscr = 175) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadprodu set IMPRIMEETIQ = ''S''! ');
    if (vscr = 176) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE ROMANEMBAL('
                                        + 'LANCIT INTEGER PRIMARY KEY,'
                                        + 'LANC   INTEGER,'
                                        + 'EMBALCOD INTEGER,'
                                        + 'EMBALDES VARCHAR(30),'
                                        + 'PRODCOD INTEGER,'
                                        + 'PRODDES VARCHAR(50),'
                                        + 'QTDE INTEGER,'
                                        + 'DATA DATE,'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');

    if (vscr = 177) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 3;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ENTRADA')
                                +','+QuotedStr('PESO_PALET')+',0)! ');
    end;

    if (vscr = 178) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL31 varchar(10)! ');
    if (vscr = 179) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL32 varchar(10)! ');
    if (vscr = 180) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL33 varchar(10)! ');
    if (vscr = 181) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL34 varchar(10)! ');
    if (vscr = 182) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL35 varchar(10)! ');
    if (vscr = 183) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL36 varchar(10)! ');
    if (vscr = 184) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL37 varchar(10)! ');
    if (vscr = 185) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL38 varchar(10)! ');
    if (vscr = 186) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL39 varchar(10)! ');
    if (vscr = 187) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL40 varchar(10)! ');
    if (vscr = 188) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL41 varchar(10)! ');
    if (vscr = 189) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL42 varchar(10)! ');
    if (vscr = 190) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL43 varchar(10)! ');
    if (vscr = 191) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL44 varchar(10)! ');
    if (vscr = 192) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL45 varchar(10)! ');
    if (vscr = 193) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL46 varchar(10)! ');
    if (vscr = 194) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL47 varchar(10)! ');
    if (vscr = 195) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL48 varchar(10)! ');
    if (vscr = 196) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL49 varchar(10)! ');
    if (vscr = 197) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table relestoq add CAL50 varchar(10)! ');
    if (vscr = 198) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add VLRFRETE double precision! ');
    if (vscr = 199) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 4;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ENTRADA')
                                +','+QuotedStr('FRETE')+',0)! ');
    end;
    if (vscr = 200) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxfrete add LANCINT integer! ');

    if (vscr = 201) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (981,'+Quotedstr('ftpSenha')
                                +','+QuotedStr('123456')+')! ');
    if (vscr = 202) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (982,'+Quotedstr('ftpUser')
                                +','+QuotedStr('u986155160.acwagro')+')! ');
    if (vscr = 203) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (983,'+Quotedstr('ftpPorta')
                                +','+QuotedStr('21')+')! ');
    if (vscr = 204) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (983,'+Quotedstr('ftpBackup')
                                +','+QuotedStr('/clientes/backups/')+')! ');
    if (vscr = 205) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (983,'+Quotedstr('ftpAtualiza')
                                +','+QuotedStr('/sistemas/atualiza/')+')! ');
    if (vscr = 206) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (983,'+Quotedstr('ftpHost')
                                +','+QuotedStr('ftp.acwebsystem.com.br')+')! ');

    if (vscr = 207) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfvendco set pesoliq = pesobru where pesoliq = 0 ! ');
    if (vscr = 208) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table fecha_classif add LOTEORIGEM integer ! ');
    if (vscr = 209) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table roman add QTDEMER double precision ! ');
    if (vscr = 210) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table classif add QTDEMER double precision ! ');
    if (vscr = 211) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add PRAZO integer ! ');
    if (vscr = 212) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadforne set prazo = 45 where codigo < 1000 ! ');
    if (vscr = 213) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add SAFRA varchar(10) ! ');
    if (vscr = 214) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add ATIVO char(1) ! ');
    if (vscr = 215) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add MOSTRAEST char(1) ! ');
    if (vscr = 216) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadprodu set ATIVO = ''S'', MOSTRAEST = ''S'' ! ');
    if (vscr = 217) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add ATIVO char(1) ! ');
    if (vscr = 218) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add MOSTRAEST char(1) ! ');
    if (vscr = 219) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadmerca set ATIVO = ''S'', MOSTRAEST = ''S'' ! ');
    if (vscr = 220) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add ATIVO char(1) ! ');
    if (vscr = 221) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadvarie set ATIVO = ''S'' ! ');
    if (vscr = 222) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add CODIGOID integer ! ');
    if (vscr = 223) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadprodu set CODIGOID = CODIGO ! ');
    if (vscr = 224) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add CODIGOID integer ! ');
    if (vscr = 225) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadvarie set CODIGOID = CODIGO ! ');
    if (vscr = 226) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqueta alter CODIGO varchar(8)! ');
    if (vscr = 227) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqpalet alter CODIGO varchar(8)! ');
    if (vscr = 228) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqfundo alter CODIGO varchar(8)! ');
    if (vscr = 229) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadcateg add ATIVO char(1) ! ');
    if (vscr = 230) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadcateg set ATIVO = ''S'' ! ');

    if (vscr = 231) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 2;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ENTRADA')
                                +','+QuotedStr('PESO_BINS')+',0)! ');
    end;

    if (vscr = 232) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 2;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ROMAN')
                                +','+QuotedStr('POR_ANO')+',0)! ');
    end;

    if (vscr = 233) then
    begin
      //vaux:= frGenerator('ZGENERATOR','INDICE',11) + 2;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ROMAN')
                                +','+QuotedStr('RASTREAR')+',1)! ');
    end;

    if (vscr = 234) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadtrans add EMAIL varchar(120)! ');

    if (vscr = 235) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add ICMS_CREDPER double precision ! ');

    if (vscr = 236) then
    begin
      //vzgen:= frGenerator('ZGENERATOR','INDICE',11) + 1;
      vzgen:= vzgen + 1;

      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ESVENDA')
                                +','+QuotedStr('LOTE_PROD')+',0)! ');
    end;
    if (vscr = 237) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table esvendco add LOTEROMAN integer! ');

    if (vscr = 238) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table esvendco add PRODCOD integer! ');

    if (vscr = 239) then
    begin
      //vzgen:= frGenerator('ZGENERATOR','INDICE',11) + 1;
      vzgen:= vzgen + 1;

      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('BACKUP')
                                +','+QuotedStr('DIAS')+',90)! ');
    end;

    if (vscr = 240) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table ESTOQUEVER'+
                ' ( ID      INTEGER,'+
                '   VCOD    INTEGER,'+
                '   VDES    VARCHAR(30),'+
                '   CCOD    INTEGER,'+
                '   CDES    VARCHAR(30),'+
                '   PCOD    INTEGER,'+
                '   PDES    VARCHAR(50),'+
                '   CALD    VARCHAR(15),'+
                '   UNID    VARCHAR(5),'+
                '   TEX1    VARCHAR(15),'+
                '   ENT1    DOUBLE,'+
                '   SAI1    DOUBLE,'+
                '   TEX2    VARCHAR(15),'+
                '   ENT2    DOUBLE,'+
                '   SAI2    DOUBLE,'+
                '   TEX3    VARCHAR(15),'+
                '   ENT3    DOUBLE,'+
                '   SAI3    DOUBLE,'+
                '   TEX4    VARCHAR(15),'+
                '   ENT4    DOUBLE,'+
                '   SAI4    DOUBLE,'+
                '   TEX5    VARCHAR(15),'+
                '   ENT5    DOUBLE,'+
                '   SAI5    DOUBLE,'+
                '   TEX6    VARCHAR(15),'+
                '   ENT6    DOUBLE,'+
                '   SAI6    DOUBLE,'+
                '   TEX7    VARCHAR(15),'+
                '   ENT7    DOUBLE,'+
                '   SAI7    DOUBLE,'+
                '   TEX8    VARCHAR(15),'+
                '   ENT8    DOUBLE,'+
                '   SAI8    DOUBLE,'+
                '   TEX9    VARCHAR(15),'+
                '   ENT9    DOUBLE,'+
                '   SAI9    DOUBLE,'+
                '   QANT    DOUBLE,'+
                '   QCLA    DOUBLE,'+
                '   QNOT    DOUBLE,'+
                '   QPED    DOUBLE,'+
                '   QAJU    DOUBLE,'+
                '   QEST    DOUBLE,'+
                '   QATU    DOUBLE,'+
                '   ACESOCOD INTEGER) !');
    end;

    if (vscr = 241) then
    begin
      //vzgen:= frGenerator('ZGENERATOR','INDICE',11) + 1;
      vzgen:= vzgen + 1;

      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ESTOQUE')
                                +','+QuotedStr('VERTICAL')+',1)! ');
    end;

    if (vscr = 242) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table ESVENDFI'+
                ' ( LANC    INTEGER,'+
                '   PARC    INTEGER,'+
                '   LANCIT  INTEGER PRIMARY KEY,'+
                '   BANCOD  INTEGER,'+
                '   VENCTO  DATE,'+
                '   VALOR   DOUBLE,'+
                '   ACESOCOD INTEGER) !');
    end;
    if (vscr = 243) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add MGM_SUP integer! ');
    if (vscr = 244) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add MGM_INF integer! ');
    if (vscr = 245) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add MGM_ESQ integer! ');
    if (vscr = 246) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add MGM_DIR integer! ');

    if (vscr = 247) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfe_config set MGM_SUP = 5! ');
    if (vscr = 248) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfe_config set MGM_INF = 5! ');
    if (vscr = 249) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfe_config set MGM_ESQ = 5! ');
    if (vscr = 250) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfe_config set MGM_DIR = 5! ');
    if (vscr = 251) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadvarie add DIASVALID integer! ');

    if (vscr = 252) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxbanco add VALORPAGO double precision! ');
    if (vscr = 253) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update CXBANCO set valorpago = valor where baixa = ''S''! ');

    if (vscr = 254) then
    begin
      //vzgen:= frGenerator('ZGENERATOR','INDICE',11) + 1;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('ESVENDA')
                                +','+QuotedStr('DESC_LOTE')+',0)! ');
    end;

    if (vscr = 255) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add FORNECOD varchar(15)! ');

    if (vscr = 256) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco alter DESCRICAO varchar(90)! ');

    if (vscr = 257) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add PRODUTOCOD varchar(20)! ');

    if (vscr = 258) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update nfvendco set PRODUTOCOD = CODIGO! ');

    if (vscr = 259) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS7 varchar(100)! ');

    if (vscr = 260) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS8 varchar(100)! ');

    if (vscr = 261) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS9 varchar(100)! ');

    if (vscr = 262) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS10 varchar(100)! ');

    if (vscr = 263) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS11 varchar(100)! ');

    if (vscr = 264) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS12 varchar(100)! ');

    if (vscr = 265) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add NFE_CCE4 varchar(120)! ');

    if (vscr = 266) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add NFE_CCE5 varchar(120)! ');

    if (vscr = 267) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add NFE_CCE6 varchar(120)! ');

    if (vscr = 268) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add NFE_CCE7 varchar(120)! ');

    if (vscr = 269) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add NFE_CCE8 varchar(120)! ');

    if (vscr = 270) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add EML_TLS varchar(1)! ');

    if (vscr = 271) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add SUBGRUPOREDUZ integer! ');

    if (vscr = 272) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add GRUPOREDUZ integer! ');

    if (vscr = 273) then
    begin
      //vzgen:= frGenerator('ZGENERATOR','INDICE',11) + 1;
      vzgen:= vzgen + 1;

      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('FECHA')
                                +','+QuotedStr('COMISSAO')+',0)! ');
    end;

    if (vscr = 274) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table CADCATEGCUS'+
                ' ( LANC    INTEGER,'+
                '   LANCIT  INTEGER,'+
                '   CODIGO  INTEGER,'+
                '   DATA   DATE,'+
                '   VAL1   DOUBLE,'+
                '   VAL2   DOUBLE,'+
                '   VAL3   DOUBLE,'+
                '   VAL4   DOUBLE,'+
                '   VAL5   DOUBLE,'+
                '   ACESOCOD INTEGER) !');


    end;

    if (vscr = 275) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table CADVARIECUS'+
                ' ( LANC    INTEGER,'+
                '   LANCIT  INTEGER,'+
                '   CODIGO  INTEGER,'+
                '   DATA   DATE,'+
                '   VAL1   DOUBLE,'+
                '   VAL2   DOUBLE,'+
                '   VAL3   DOUBLE,'+
                '   VAL4   DOUBLE,'+
                '   VAL5   DOUBLE,'+
                '   ACESOCOD INTEGER) !');


    end;

    if (vscr = 276) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadclien add NFDESCPARC varchar(1)! ');

    //Alterando o zgenerator
    if (vscr = 277) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zgenerator add OBS varchar(50)! ');

    if (vscr = 278) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zgenerator add TEXTO varchar(20)! ');

    if (vscr = 279) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zgenerator alter TABELA varchar(30)! ');

    if (vscr = 280) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zgenerator alter CAMPO varchar(30)! ');

    if (vscr = 281) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zgenerator add DATA  DATE! ');

    if (vscr = 282) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table CADPALETCAL'+
                ' ( LANC    INTEGER,'+
                '   CALIBRE INTEGER,'+
                '   QTDE    INTEGER,'+
                '   NOME    VARCHAR(20),'+
                '   CLIENCOD INTEGER,'+
                '   ACESOCOD INTEGER) !');
    end;

    if (vscr = 283) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, texto) '
                                +' values ('+inttostr(vzgen)
                                +', (''19/01/2022'')'
                                +','+Quotedstr('PALET')
                                +','+QuotedStr('ROTINA')
                                +','+QuotedStr('USA ESTOQUE POR PALET')
                                +','+QuotedStr('N')
                                +')! ');
    end;

    if (vscr = 284) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zgenerator '
                                         +' set OBS = ''%Comissão (1->Total Produto) (0->Total Líquido)'' '
                                         +' Where TABELA =''FECHA'' and CAMPO=''COMISSAO''! ');
    if (vscr = 285) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zgenerator set TEXTO =''N'' where valor = 0! ');
    if (vscr = 286) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zgenerator set TEXTO =''S'' where valor = 1! ');
    if (vscr = 287) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zgenerator add RESTRITO varchar(1)! ');
    if (vscr = 288) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zgenerator set RESTRITO =''N''! ');
    if (vscr = 289) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zgenerator '
                                         +' set RESTRITO = ''S'' '
                                         +' Where TABELA =''PALET'' and CAMPO=''ROTINA''! ');
    if (vscr = 290) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, tabela, campo, obs, restrito, valor) '
                                +' values ('+inttostr(vzgen)+','+Quotedstr('RELFINAN')
                                +','+QuotedStr('CTA_FINANC')
                                +','+QuotedStr('0-Desc/Vecto, 1-Emissão, 2-Vencto, 3-Baixa.')
                                +','+QuotedStr('N')
                                +',2)! ');
    end;

    if (vscr = 291) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table paletpro add LOTELANC integer! ');
    if (vscr = 292) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table paletpro add LOTE integer! ');

    if (vscr = 293) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table ESTOQUEPAL'+
                ' ( ID      INTEGER PRIMARY KEY,'+
                '   VCOD    INTEGER,'+
                '   VDES    VARCHAR(30),'+
                '   CCOD    INTEGER,'+
                '   CDES    VARCHAR(30),'+
                '   PCOD    INTEGER,'+
                '   PDES    VARCHAR(50),'+
                '   CALD    VARCHAR(15),'+
                '   UNID    VARCHAR(5),'+
                '   QANT    DOUBLE,'+
                '   QABE    DOUBLE,'+
                '   QBAI    DOUBLE,'+
                '   QAJU    DOUBLE,'+
                '   QATU    DOUBLE,'+
                '   ACESOCOD INTEGER) !');
    end;

    if (vscr = 294) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table paletcab add PALQTDE integer! ');
    if (vscr = 295) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table paletcab add PRODCOD integer! ');
    if (vscr = 296) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table esvendco add PALETNUM integer! ');

    if (vscr = 297) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add FGFISCO varchar(1)! ');
    if (vscr = 298) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set FGFISCO = ''N''! ');
    if (vscr = 299) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add OBS13 varchar(120)! ');

//-> Referente a boleto
    if (vscr = 300) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table CADBANCO_CC'+
                ' ( ID          INTEGER PRIMARY KEY,'+
                '   CODIGO      INTEGER,'+
                '   ATIVO       VARCHAR(1),'+
                '   BANCONUM    INTEGER,'+
                '   BANCODES    VARCHAR(100),'+
                '   AGENCIANR   VARCHAR(10),'+
                '   AGENCIADV   VARCHAR(2),'+
                '   CONTANR     VARCHAR(10),'+
                '   CONTADV     VARCHAR(2),'+
                '   CONVENIO    VARCHAR(20),'+
                '   CONTRATO    VARCHAR(20),'+
                '   CARTEIRA    VARCHAR(10),'+
                '   INSTRUCAO1  VARCHAR(2),'+
                '   INSTRUCAO2  VARCHAR(2),'+
                '   MENSAGEM    VARCHAR(100),'+
                '   TEXTO1      VARCHAR(100),'+
                '   ARQUIVODES  VARCHAR(20),'+
                '   ARQUIVONUM  INTEGER,'+
                '   NOSSONUMERO INTEGER,'+
                '   LAYOUT      INTEGER,'+
                '   ACEITE      VARCHAR(1),'+
                '   JUROSPER    DOUBLE,'+
                '   MULTAPER    DOUBLE,'+
                '   PROTESTO    INTEGER,'+
                '   PASTAENV    VARCHAR(100),'+
                '   PASTARET    VARCHAR(100),'+
                '   EMPRECOD    INTEGER,'+
                '   ACESOCOD    INTEGER) !');
    end;

    if (vscr = 301) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table BOLETO_LOG'+
                ' ( ID        INTEGER PRIMARY KEY,'+
                '   GERAL     VARCHAR(20),'+
                '   OCORCOD   VARCHAR(10),'+
                '   OCORDES   VARCHAR(100),'+
                '   NATCOD    VARCHAR(10),'+
                '   NATDES    VARCHAR(100),'+
                '   DATALANC  DATE,'+
                '   HORALANC  VARCHAR(5),'+
                '   DATAREC   DATE,'+
                '   HORAREC   VARCHAR(5),'+
                '   STATUS    INTEGER,'+
                '   EMPRECOD  INTEGER,'+
                '   ACESOCOD  INTEGER) !');
    end;

    if (vscr = 302) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table CADBANCO add BANCOCC integer! ');
    if (vscr = 303) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table CADBANCO add BOLETOSN varchar(1)! ');
    if (vscr = 304) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table CADBANCO add BOLETONF varchar(1)! ');

    if (vscr = 305) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table FIBAIREC add BOLSTATUS  INTEGER! ');
    if (vscr = 306) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table FIBAIREC add BOLNOSSONUM varchar(20)! ');
    if (vscr = 307) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table FIBAIREC add BOLBANCOCC INTEGER! ');
    if (vscr = 308) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table FIBAIREC add BOLEMAIL varchar(1)! ');
    if (vscr = 309) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table FIBAIREC add BOLWEB varchar(1)! ');
//Fim boletos

//Cadastros ativos e inativos para não excluir mais

    if (vscr = 310) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadclien add ATIVO char(1) ! ');
    if (vscr = 311) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadclien set ATIVO = ''S'' ! ');
    if (vscr = 312) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add ATIVO char(1) ! ');
    if (vscr = 313) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadforne set ATIVO = ''S'' ! ');
    if (vscr = 314) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadtrans add ATIVO char(1) ! ');
    if (vscr = 315) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadtrans set ATIVO = ''S'' ! ');
    if (vscr = 316) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadbanco add ATIVO char(1) ! ');
    if (vscr = 317) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadbanco set ATIVO = ''S'' ! ');
    if (vscr = 318) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne_grupo add ATIVO char(1) ! ');
    if (vscr = 319) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadforne_grupo set ATIVO = ''S'' ! ');
    if (vscr = 320) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadgrupo add ATIVO char(1) ! ');
    if (vscr = 321) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadgrupo set ATIVO = ''S'' ! ');
    if (vscr = 322) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadlocal add ATIVO char(1) ! ');
    if (vscr = 323) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadlocal set ATIVO = ''S'' ! ');
    if (vscr = 324) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add ATIVO char(1) ! ');
    if (vscr = 325) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set ATIVO = ''S'' ! ');
    if (vscr = 326) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add ATIVO char(1) ! ');
    if (vscr = 327) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadplano set ATIVO = ''S'' ! ');
    if (vscr = 328) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table zacesso add ATIVO char(1) ! ');
    if (vscr = 329) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zacesso set ATIVO = ''S'' ! ');
    if (vscr = 330) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadbins add ATIVO char(1) ! ');
    if (vscr = 331) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadbins set ATIVO = ''S'' ! ');
    if (vscr = 332) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmaquina add ATIVO char(1) ! ');
    if (vscr = 333) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadmaquina set ATIVO = ''S'' ! ');
    if (vscr = 334) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadloteclass add ATIVO char(1) ! ');
    if (vscr = 335) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadloteclass set ATIVO = ''S'' ! ');
    if (vscr = 336) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadcidad add ATIVO char(1) ! ');
    if (vscr = 337) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadcidad set ATIVO = ''S'' ! ');
    if (vscr = 338) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table caddefei add ATIVO char(1) ! ');
    if (vscr = 339) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update caddefei set ATIVO = ''S'' ! ');
    if (vscr = 340) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadembal add ATIVO char(1) ! ');
    if (vscr = 341) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadembal set ATIVO = ''S'' ! ');
    if (vscr = 342) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadbanco_cc add ESPECIE char(10) ! ');
    if (vscr = 343) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadbanco add COBRAN_COD integer ! ');
    if (vscr = 344) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadbanco add COBRAN_DES char(50) ! ');

    if (vscr = 345) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''19/01/2022'')'
                                +','+Quotedstr('MONTA CARGA')
                                +','+QuotedStr('PRODUCAO')
                                +','+QuotedStr('EXPORTA REGISTRO PARA CLASSIFICAÇÃO')
                                +','+QuotedStr('N')
                                +',0'
                                +')! ');
    end;

    if (vscr = 346) then
      vscr := pCriarArquivo(vscr, vdirect, 'alter table caddefei alter DESCRICAO varchar(50)! ');
    if (vscr = 347) then
      vscr:= pCriarArquivo(vscr, vDirect, 'delete from cadncm! ');
    if (vscr = 348) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add NCM varchar(20)! ');
    if (vscr = 349) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add DESCRICAO varchar(250)! ');
    if (vscr = 350) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add CHAVE varchar(10)! ');
    if (vscr = 351) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add VERSAO varchar(10)! ');
    if (vscr = 352) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add FONTE varchar(30)! ');
    if (vscr = 353) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add UF varchar(2)! ');
    if (vscr = 354) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add DTFIM date! ');
    if (vscr = 355) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add IMPORTADO double precision! ');
    if (vscr = 356) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add ESTADUAL double precision! ');
    if (vscr = 357) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadncm add MUNICIPAL double precision! ');
    if (vscr = 358) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add NCM_PERE double precision! ');
    if (vscr = 359) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add NCM_VLRE double precision! ');
    if (vscr = 360) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add NCM_PERM double precision! ');
    if (vscr = 361) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add NCM_VLRM double precision! ');
    if (vscr = 362) then
      vscr:= pCriarArquivo(vscr, vdirect, 'alter table nfvenda add TRIBNCM_PERE double precision! ');
    if (vscr = 363) then
      vscr:= pCriarArquivo(vscr, vdirect, 'alter table nfvenda add TRIBNCM_VLRE double precision! ');
    if (vscr = 364) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table romanmer add LANCMANUAL varchar(1)! ');
    if (vscr = 365) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendref add NFP_MMAA varchar(5)! ');
    if (vscr = 366) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendref add NFP_AAMM varchar(4)! ');
    if (vscr = 367) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendref add NFP_MODELO integer! ');
    if (vscr = 368) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendref add NFP_SERIE integer! ');
    if (vscr = 369) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update romanmer set LANCMANUAL = ''E'' ! ');
    if (vscr = 370) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (984,'+Quotedstr('AvisoMsg')
                                +','+QuotedStr('')+')! ');
    if (vscr = 371) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (985,'+Quotedstr('AvisoDia')
                                +','+QuotedStr('0')+')! ');
    if (vscr = 372) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update zgenerator set RESTRITO = ''N'' ! ');

    if (vscr = 373) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''21/06/2022'')'
                                +','+Quotedstr('INTERNO')
                                +','+QuotedStr('CONEXAOFTP')
                                +','+QuotedStr('ACESSO A CONTA FTP')
                                +','+QuotedStr('S')
                                +','+QuotedStr('N')
                                +',0'
                                +')! ');
    end;

    if (vscr = 374) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''21/06/2022'')'
                                +','+Quotedstr('BACKUP')
                                +','+QuotedStr('ESTEIRA')
                                +','+QuotedStr('ADICIONAR O BANCO ESTEIRA AO BACKUP')
                                +','+QuotedStr('S')
                                +','+QuotedStr('S')
                                +',1'
                                +')! ');
    end;

    if (vscr = 375) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadprodu add MARCA varchar(20)! ');
    if (vscr = 376) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadmerca add MARCA varchar(20)! ');
    if (vscr = 377) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadprodu set MARCA = ''Frutas frescas'' ! ');
    if (vscr = 378) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadmerca set MARCA = ''Diversos'' ! ');

    if (vscr = 379) then
    begin
      vscr:= pCriarArquivo(vscr, vDirect,
                'Create Table CADMARCA'+
                ' ( CODIGO    INTEGER PRIMARY KEY,'+
                '   DESCRICAO VARCHAR(20),'+
                '   ATIVO     VARCHAR(1),'+
                '   LIBERAR   VARCHAR(1),'+
                '   EMPRECOD  INTEGER,'+
                '   ACESOCOD  INTEGER) !');
    end;

    if (vscr = 380) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE ROMANMARCA('
                                        + 'LANCIT INTEGER PRIMARY KEY,'
                                        + 'LANC   INTEGER,'
                                        + 'MARCACOD INTEGER,'
                                        + 'MARCADES VARCHAR(30),'
                                        + 'PRODCOD INTEGER,'
                                        + 'PRODDES VARCHAR(50),'
                                        + 'QTDE INTEGER,'
                                        + 'DATA DATE,'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');

    if (vscr = 381) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add SMTP_HOST varchar(50)! ');
    if (vscr = 382) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add SMTP_PORTA varchar(10)! ');
    if (vscr = 383) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add SMTP_USER varchar(50)! ');
    if (vscr = 384) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add SMTP_PASS varchar(20)! ');
    if (vscr = 385) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfe_config add SMTP_USERNAME varchar(20)! ');
    if (vscr = 386) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''16/08/2022'')'
                                +','+Quotedstr('FECHA')
                                +','+QuotedStr('FUNRURAL')
                                +','+QuotedStr('%FunRural = (1->Total Produto) (0->Total Líquido)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('N')
                                +',0'
                                +')! ');
    end;
    if (vscr = 387) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''04/11/2022'')'
                                +','+Quotedstr('ESTOQUE')
                                +','+QuotedStr('MOSTRA KG')
                                +','+QuotedStr('Estoque/NFe converte para Quilos = (1->Sim) (0->Não)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('N')
                                +',0'
                                +')! ');
    end;
    if (vscr = 388) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add UTRIB varchar(5)! ');
    if (vscr = 389) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add QTRIB double precision! ');
    if (vscr = 390) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add VUNTRIB double precision! ');
    if (vscr = 391) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''04/12/2022'')'
                                +','+Quotedstr('ESTOQUE')
                                +','+QuotedStr('PRODUTO NOTA')
                                +','+QuotedStr('Estoque classificação pela nota fiscal = (1->Sim) (0->Não)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('N')
                                +',0'
                                +')! ');
    end;
    if (vscr = 392) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''04/12/2022'')'
                                +','+Quotedstr('ESTOQUE')
                                +','+QuotedStr('MERCADORIA NOTA')
                                +','+QuotedStr('Estoque classificação pela nota fiscal = (1->Sim) (0->Não)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('N')
                                +',0'
                                +')! ');
    end;
    if (vscr = 393) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''27/12/2022'')'
                                +','+Quotedstr('ESTOQUE PRODUTO')
                                +','+QuotedStr('PRECO MEDIO')
                                +','+QuotedStr('Estoque VENDA = (1->Sim) COMPRA = (0->Não)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +',1'
                                +')! ');
    end;

    if (vscr = 394) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadnota add GERAROMENT varchar(1)! ');

    if (vscr = 395) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update cadnota set GERAROMENT = ''N'' ! ');

    if (vscr = 396) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''09/06/2023'')'
                                +','+Quotedstr('FILTRO')
                                +','+QuotedStr('PERIODO')
                                +','+QuotedStr('Intervalo de datas no filtro')
                                +','+QuotedStr('N')
                                +','+QuotedStr('s')
                                +',30'
                                +')! ');
    end;

    if (vscr = 397) then
      vscr:= pCriarArquivo(vscr, vDirect, 'CREATE TABLE CADCBENEF('
                                        + 'ID INTEGER PRIMARY KEY,'
                                        + 'NCM varchar(20),'
                                        + 'CST varchar(3),'
                                        + 'CBENEF varchar(20),'
                                        + 'EMPRECOD INTEGER,'
                                        + 'ACESOCOD INTEGER) ! ');

    if (vscr = 398) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvendco add CBENEF varchar(20)! ');

    if (vscr = 399) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''04/07/2023'')'
                                +','+Quotedstr('CBENEF')
                                +','+QuotedStr('ID')
                                +','+QuotedStr('Indice')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +',0'
                                +')! ');
    end;

    if (vscr = 400) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add PRD_FUNRURAL double precision! ');

    if (vscr = 401) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''11/10/2024'')'
                                +','+Quotedstr('FECHA')
                                +','+QuotedStr('IMPRIMESACOLAO')
                                +','+QuotedStr('Fechamento imprime Sacolão (1=SIM) (0=NÃO)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +',1'
                                +')! ');
    end;

    if (vscr = 402) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''08/11/2024'')'
                                +','+Quotedstr('FECHA')
                                +','+QuotedStr('MEDIASEMSACOLAO')
                                +','+QuotedStr('Fechamento Média sem Sacolão (1=SIM) (0=NÃO)')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +',1'
                                +')! ');
    end;

    if (vscr = 403) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add FGCUSTOEMB varchar(1)! ');

    if (vscr = 404) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadplano add FGCUSTOOPE varchar(1)! ');

    if (vscr = 405) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda alter DIFDES varchar(50)! ');

    if (vscr = 406) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add XSEL varchar(1)! ');

    if (vscr = 407) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cxfrete add LANCINT integer! ');

    if (vscr = 408) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', ''02/12/2024'')'
                                +','+Quotedstr('GERAL')
                                +','+QuotedStr('PASTA')
                                +','+QuotedStr('DOCUMENTO')
                                +','+QuotedStr('N')
                                +','+QuotedStr('PADRAO')
                                +',1'
                                +')! ');
    end;
    if (vscr = 409) then
    begin
      fSql(1, 1,['Select Max(Lanc) From Classif'],1);
      vid := dm.qrSql1.Fields[0].asInteger +1;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''05/02/2025'')'
                                +','+Quotedstr('CLASSIF')
                                +','+QuotedStr('LANC')
                                +','+QuotedStr('INDICE')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +','+IntToStr(vid)
                                +')! ');
    end;
    if (vscr = 410) then
    begin
      fSql(1, 1,['Select Max(psp) from NFVenda'],1);
      vid := dm.qrSql1.Fields[0].asInteger +1;
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''18.02.2025'')'
                                +','+Quotedstr('ESVENDA')
                                +','+QuotedStr('REGISTRO')
                                +','+QuotedStr('INDICE')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +','+IntToStr(vid)
                                +')! ');
    end;
    if (vscr = 411) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table ESVENDA add NOTA integer! ');
    if (vscr = 412) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table ESVENDA add BAIXADO varchar(1)! ');
    if (vscr = 413) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update ESVENDA set BAIXADO = ''S'' where data < ''01.03.2025''! ');

    if (vscr = 414) then
    begin
      vzgen:= vzgen + 1;
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into zgenerator (indice, data, tabela, campo, obs, restrito, texto, valor) '
                                +' values ('+inttostr(vzgen)
                                +', (''26.02.2025'')'
                                +','+Quotedstr('ESTOQUE VERTICAL')
                                +','+QuotedStr('MOSTRA_COL_KG')
                                +','+QuotedStr('MOSTRAR COLUNA QUILOS = (1->Sim))')
                                +','+QuotedStr('N')
                                +','+QuotedStr('S')
                                +',1'
                                +')! ');
    end;
    if (vscr = 415) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add VOL_QTDE integer! ');
    if (vscr = 416) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add VOL_ESPECIE varchar(50)! ');
    if (vscr = 417) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add VOL_MARCA varchar(50)! ');
    if (vscr = 418) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table nfvenda add VOL_NUMERACAO varchar(50)! ');
    if (vscr = 419) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add Hora varchar(8)! ');
    if (vscr = 420) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrb add Hora varchar(8)! ');
    if (vscr = 421) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrt add Hora varchar(8)! ');
    if (vscr = 422) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table etiqbins add Hora varchar(8)! ');
    if (vscr = 423) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add QTDELIQ double precision! ');
    if (vscr = 424) then
      vscr:= pCriarArquivo(vscr, vDirect, 'update entre set QTDELIQ = coalesce(QTDE,0) - coalesce(BINSQTD,0) where coalesce(QTDE,0) > 0! ');
    if (vscr = 425) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (941,'+Quotedstr('UltimaVenda')
                                +','+QuotedStr('0')+')! ');
    if (vscr = 426) then
      vscr:= pCriarArquivo(vscr, vDirect,
                                 'insert into xParametro (codigo, parametro, valor) '
                                +' values (942,'+Quotedstr('UltimaClass')
                                +','+QuotedStr('0')+')! ');

    if (vscr = 427) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table cadforne add ALG_VLRPRECO double precision! ');
    if (vscr = 428) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entre add ALG_VLRPRECO double precision! ');
    if (vscr = 429) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add ALG_DIAS integer! ');
    if (vscr = 430) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add ALG_VLRPRECO double precision! ');
    if (vscr = 431) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add ALG_VLRDIA double precision! ');
    if (vscr = 432) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add ALG_VLRTOTAL double precision! ');
    if (vscr = 433) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add ALG_DATA date! ');
    if (vscr = 434) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_DATA01 date! ');
    if (vscr = 435) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_QTDEBIN01 integer! ');
    if (vscr = 436) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_QTDETON01 double precision! ');
    if (vscr = 437) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_DATA02 date! ');
    if (vscr = 438) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_QTDEBIN02 integer! ');
    if (vscr = 439) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_QTDETON02 double precision! ');
    if (vscr = 440) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_DATA03 date! ');
    if (vscr = 441) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_QTDEBIN03 integer! ');
    if (vscr = 442) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_QTDETON03 double precision! ');
    if (vscr = 443) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add BXA_DATA date! ');
    if (vscr = 444) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_DIAS01 integer! ');
    if (vscr = 445) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_VALOR01 double precision! ');
    if (vscr = 446) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_DIAS02 integer! ');
    if (vscr = 447) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_VALOR02 double precision! ');
    if (vscr = 448) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_DIAS03 integer! ');
    if (vscr = 449) then
      vscr:= pCriarArquivo(vscr, vDirect, 'alter table entrevar add RET_VALOR03 double precision! ');
  finally
    result := vscr;
  end;

end;

end.
