unit Rotina;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ExtCtrls, StdCtrls, Buttons, ComCtrls, Menus, ComObj, ActiveX, DBTables,
     xmldom, XMLIntf, msxmldom, XMLDoc;

function fPergunta(xPer,xTit:PChar):Boolean;
function fPreencher(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
function fExecutar(xarq:PAnsiChar):Boolean;
function fInput(xTit,xPer,xTex:String):String;
function fDiadaSemana(xDia:Integer):String;
function fMes(xMes:Integer):String;
function fMesInteiro(xMes:String):String;
function fCPFCGC(vTex:String):String;
function fExcluir:Boolean;
function fSalvar:Boolean;
function fVerificaData(vDaty:String):Boolean;
function fJurosCp(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
function fJuros(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
function fTransfx(vReal:Real;vDec:Integer):Real;
function fENumero(vNum:String):Boolean;
function InvValor(zVal:Double; zDec: Integer = 2):String;
function InvQtde(zVal:Double):String;
function InvData(zDat:TDateTime):String;
function DecValor(zVal:Double; zDec: Integer = 2):Real;
function frOBDC(vArq,vAlias:String):Boolean;
function frENum(vNum:String):Boolean;
function frPerg(xTit:PChar; vTp:String = 'SN'):Boolean;
function frPree(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
function frInvS(zVal:String):String;
function frWhereD(zCampo:String;zDatI,zDatF:TDateTime):String;
procedure frForm(FormClass: TFormClass; var Reference; vTop: Integer = 0);
function  frVersao:String;
function  frAcenWeb(zVal:String):String;
function  frMapaRetLocal(zNumero,zEndereco,zBairro,zCidade,zEstado:String):String;
function  frMapaRetLocalExt(zNumero,zEndereco,zBairro,zCidade,zEstado:String):String;
function  frSoNumero(vStr: String): String;
function  frAcen(zVal:String):String;
function  frSubs(vTexto,vDe,vPara:String):String;
function  frCrip(zTipo,zDados:String):String;

implementation

function SQLConfigDataSource(hwndParent:THandle ; fRequest:Cardinal ;
                            lpszDriver:PChar ;lpszAttributes:PChar ):boolean;stdcall;
    external 'odbccp32.dll' name 'SQLConfigDataSource';
function SQLGetInstalledDrivers(lpszBuf:PChar;cbBufMax:Word;cbBufOut:Pointer):Boolean;
stdcall;external 'odbccp32.dll' name 'SQLGetInstalledDrivers';


//MsgBox
function fPergunta(xPer,xTit:PChar):Boolean;
begin
  if Application.MessageBox(xPer,xTit,MB_YESNO + MB_ICONQUESTION) = ID_YES then Result := True
  else Result := False;
end;
//tipo strzero, preenchimento direita ou esquerda
function fPreencher(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
var  vc:Integer; vdd:String;
begin  //0-esq  1-dir  2-meio
  vdd:=Trim(Copy(xVal,1,xTam));
  if xLado = 2 then begin
     xTam:=(xTam-Length(vdd)) div 2;
     xLado := 0; xval:='.';
  end;
  for vc:=Length(xVal) to xTam-1 do begin
     if xLado = 0 then vdd:=xTex + vdd //Esquerdo
     else vdd:=vdd + xTex //Direito
  end;
  Result:=vdd;
end;
//executa sistema fora do delphi
function fExecutar(xarq:PansiChar):Boolean;
begin
  winexec(pAnsiChar(xarq),sw_hide);
  result := True;
end;
//Entrada de Dados
function fInput(xTit,xPer,xTex:String):String;
begin
 result := InputBox(xPer, xTit, xTex);
end;
//Verifica dia da semana
function fDiadaSemana(xDia:Integer):String;
begin
  case xDia of
    1:Result:= 'Domingo';
    2:Result:= 'Segunda-Feira';
    3:Result:= 'Terça-Feira';
    4:Result:= 'Quarta-Feira';
    5:Result:= 'Quinta-Feira';
    6:Result:= 'Sexta-Feira';
    7:Result:= 'Sábado';
  end;
end;
//Verifica Mes
function fMes(xMes:Integer):String;
begin
  case xMes of
    1: Result:= 'Janeiro';
    2: Result:= 'Fevereiro';
    3: Result:= 'Março';
    4: Result:= 'Abril';
    5: Result:= 'Maio';
    6: Result:= 'Junho';
    7: Result:= 'Julho';
    8: Result:= 'Agosto';
    9: Result:= 'Setembro';
   10: Result:= 'Outubro';
   11: Result:= 'Novembro';
   12: Result:= 'Dezembro';
  end;
end;
//Verifica Mes inteiro
function fMesInteiro(xMes:String):String;
var vdia,vmes,vano:String;
begin
  vdia:=Copy(xMes,1,2);
  vano:=Copy(xMes,7,4);
  vmes:=fMes(StrToInt(Copy(xMes,4,2)));
  result:=vdia+' de '+vmes+' de  '+vano;
end;

function fJurosCp(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
var vDD,vDia:Integer;xVal:Real;
begin
  if xCar>xDia then  Result:= xValor
  else begin
    xDia := xDia-xCar;
    xVal := xValor; vdd:=1;
    for vDia:=1 to xDia+1 do begin
      if vdia = (30*vdd) then begin
         xValor := xValor+(xValor*xTaxa*(vdia/vdd)/3000);
         vdd:=vdd+1;
       end;
    end;
    if (xDia-(30*(vdd-1))) <> 0 then
      xValor := xValor+(xValor*xTaxa*(xDia-(30*(vdd-1)))/3000);
    Result := xValor-xVal;
  end;
end;

function fJuros(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
begin
  if xCar>xDia then  Result:= xValor
  else begin xDia := xDia-xCar;
    xValor := xValor*xTaxa*xDia/3000;
    Result := xValor;
  end;
end;

function fCPFCGC(vTex:String):String;
begin
  vtex:=Trim(vtex);
  if Length(vTex) = 11 then //CPF
    vtex := Copy(vTex,1,3)+'.'+Copy(vTex,4,3)+'.'+
            Copy(vTex,7,3)+'-'+Copy(vTex,10,2)
  else if Length(vTex) = 14 then begin// CGC
    if Copy(vTex,4,1)<>'.' then
       vtex := Copy(vTex,1,2)+'.'+Copy(vTex,3,3)+'.'+
               Copy(vTex,6,3)+'/'+Copy(vTex,9,4)+'-'+Copy(vTex,13,2);
  end;
  result := vtex;
end;

function fExcluir:Boolean;
begin
  Result:= fPergunta('Deseja Excluir Dados ?','Excluindo Registro...');
end;

function fSalvar:Boolean;
begin
  Result:= fPergunta('Deseja Salvar Dados ?','Salvando Registro...');
end;

function fVerificaData(vDaty:String):Boolean;
var vdia,vmes:Integer;vResult:Boolean;
begin
  vdia:=StrToInt(Copy(vDaty,1,2));
  vmes:=StrToInt(Copy(vDaty,4,2));
  vResult:=True;
  Case vMes of
     1,3,5,7,8,10,12:begin if vdia>31 then begin
                       ShowMessage('Dia Inválido!');
                       vResult:=False;
                     end; end;
     4,6,9,11:begin if vdia>30 then begin
                       ShowMessage('Dia Inválido!');
                       vResult:=False;
              end; end;
     2:begin if vdia>29 then begin
                ShowMessage('Dia Inválido!');
                vResult:=False;
       end; end;
  end;
  result:=vresult;
end;

//Transforma em valor fixo na casa decimal
function fTransfx(vReal:Real;vDec:Integer):Real;
var vr1:String;
begin
  vr1:=FloatToStrF(vReal,ffFixed,14,vDec);
  Result:=StrToFloat(vr1);
end;

function fENumero(vNum:String):Boolean;
var vcc:Integer; vstr:String;
begin
  for vcc:=1 to Length(Trim(vNum)) do begin
     vstr:=Copy(Trim(vNum),vcc,1);
     if vstr='0' then vstr:='0'
     else if vstr='1' then vstr:='1'
     else if vstr='2' then vstr:='2'
     else if vstr='3' then vstr:='3'
     else if vstr='4' then vstr:='4'
     else if vstr='5' then vstr:='5'
     else if vstr='6' then vstr:='6'
     else if vstr='7' then vstr:='7'
     else if vstr='8' then vstr:='8'
     else if vstr='9' then vstr:='9'
     else begin Result:=False; exit; end;
  end;
  Result:=True;
end;

function InvValor(zVal:Double; zDec: Integer = 2):String;
var zvalA:String; zcon:Integer;
begin
  zvala:=FloatToStrF(zval,ffFixed,14,zdec);
  for zcon:=1 to Length(zvala) do begin
     if Copy(zvala,zcon,1)='.' then
        zvala:=Copy(zvala,1,zcon-1)+Copy(zvala,zcon+1,2);
     if Copy(zvala,zcon,1)=',' then
        zvala:=Copy(zvala,1,zcon-1)+'.'+Copy(zvala,zcon+1,2);
  end;
  Result:=zvala
end;

function InvQtde(zVal:Double):String;
var zvalA:String; zcon:Integer;
begin
  zvala:=FloatToStrF(zval,ffFixed,6,3);
  for zcon:=1 to Length(zvala) do begin
     if Copy(zvala,zcon,1)='.' then
        zvala:=Copy(zvala,1,zcon-1)+Copy(zvala,zcon+1,2);
     if Copy(zvala,zcon,1)=',' then
        zvala:=Copy(zvala,1,zcon-1)+'.'+Copy(zvala,zcon+1,3);
  end;
  Result:=zvala
end;

function InvData(zDat:TDateTime):String;
var zvala:String;
begin
  zvala:=DateToStr(zdat);
  zvala:='('+QuotedStr(zvala)+')';
  zvala:=frSubs(zvala, '/', '.');
  //ZVala:='CDate('+QuotedStr(zvala)+')';
  Result:=zvala
end;

function DecValor(zVal:Double; zDec: Integer = 2):Real;
var zvalA:String;
begin
  zvala:=FloatToStrF(zval,ffFixed,12,zdec);
  Result:=StrToFloat(zvala);
end;

function frOBDC(vArq,vAlias:String):Boolean;
begin
  if SQLConfigDataSource(THandle(nil),4,
                         PChar('Firebird/InterBase(r) driver'),
                         PChar('DSN='+vAlias+#0+
                               'Description='+vAlias+#0+
                               'DataDirectory='+ExtractFilePath(vArq)+#0+
                               'DBQ='+vArq+#0))
  then
    Result:=True
  else
    Result:=False;
end;

function frENum(vNum:String):Boolean;
var vcc:Integer; vstr:String;
begin
  for vcc:=1 to Length(Trim(vNum)) do begin
     vstr:=Copy(Trim(vNum),vcc,1);
     if vstr='0' then vstr:='0'
     else if vstr='1' then vstr:='1'
     else if vstr='2' then vstr:='2'
     else if vstr='3' then vstr:='3'
     else if vstr='4' then vstr:='4'
     else if vstr='5' then vstr:='5'
     else if vstr='6' then vstr:='6'
     else if vstr='7' then vstr:='7'
     else if vstr='8' then vstr:='8'
     else if vstr='9' then vstr:='9'
     else if vstr=',' then vstr:=','
     else if vstr='.' then vstr:='.'
     else begin Result:=False; exit; end;
  end;
  Result:=True;
end;

function frPerg(xTit:PChar; vTp:String = 'SN'):Boolean;
begin
  if vtp = 'OK' then
  begin
    Application.MessageBox(xTit,'Pergunta.',MB_OK+MB_ICONINFORMATION);
    Result:=False;
  end
  else begin
    if Application.MessageBox(xTit,'Pergunta.',MB_YESNO+MB_ICONQUESTION)=ID_YES then Result:=True
    else Result:=False;
  end;
end;

function frPree(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
var  vc:Integer; vdd:String;
begin
  xval:=Trim(xval);
  if xLado=2 then begin xTam:=(xTam-Length(xVal)) div 2; xLado := 0; end;
  vdd:=Trim(copy(xVal,1,xTam));
  for vc:=Length(xVal) to xTam-1 do begin
     if xLado = 0 then vdd:=xTex + vdd else vdd:=vdd + xTex
  end;
  Result:=vdd;
end;

function frInvS(zVal:String):String;
var zvalA:String; zcon:Integer;
begin
  zvala:='';
  for zcon:=1 to Length(zval) do begin
     if Copy(zval,zcon,1)=',' then zvala:=zvala+'.'
     else zvala:=zvala+Copy(zval,zcon,1);
  end;
  Result:=zvala
end;

function frWhereD(zCampo:String;zDatI,zDatF:TDateTime):String;
var zvala:String;
begin
  zvala:=' ('+zCampo+' >= ('+QuotedStr(DateToStr(zDatI))+') and '+zCampo+' < ('+QuotedStr(DateToStr(zDatF+1))+')) ';
  zvala:=frSubs(zvala, '/', '.');
  Result:=zvala;
//  Result:= ' ('+zCampo+' >= CDate('+QuotedStr(DateToStr(zDatI))+') and '+zCampo+' < CDate('+QuotedStr(DateToStr(zDatF+1))+')) ';
end;

procedure frForm(FormClass: TFormClass; var Reference; vTop: Integer = 0);
begin
  try
    if TForm(Reference)=nil then
      Application.CreateForm(FormClass,TForm(Reference));

//    if vTop = 0 then TForm(Reference).Top := vTop;

    TForm(Reference).vISIBLE := False;

    TForm(Reference).ShowModal;
  finally
//    Screen.Cursor:=crDefault;
    FreeAndNil(TForm(Reference));
  end;
end;

function frVersao:String;
var vInfoSize,DetSize: DWord;
    pVInfo,pDetail: Pointer;
begin
  // Aloca um bloco de memória do tamanho correto das informações de versão
  vInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)),DetSize);
  if (vInfoSize > 0) then
  begin
// Cria uma variável dinâmica e direciona o ponteiro pVInfo
    GetMem(pVInfo,vInfoSize);
    try
      GetFileVersionInfo(PChar(ParamStr(0)),0,vInfoSize,pVInfo);
      VerQueryValue(pVInfo,'\',pDetail,DetSize);
      Result := format('%d.%d.%d.%d',[HiWord(TVSFixedFileInfo(pDetail^).dwFileVersionMS),
                                      LoWord(TVSFixedFileInfo(pDetail^).dwFileVersionMS),
                                      HiWord(TVSFixedFileInfo(pDetail^).dwFileVersionLS),
                                      LoWord(TVSFixedFileInfo(pDetail^).dwFileVersionLS)]);
    finally
      FreeMem(pVInfo);
    end;
  end;
end;

function frSoNumero(vStr: String): String;
var
  I : Byte;
begin
   Result := '';
   for I := 1 To Length(vStr) do
       if vStr [I] In ['0'..'9'] Then
            Result := Result + vStr [I];
end;

function frMapaRetLocal(zNumero,zEndereco,zBairro,zCidade,zEstado:String):String;
var
  vMapaSite, vMapaChave, vDados, vLat, vLng: string;
  xml: IXMLDocument;
  vretorno: IXMLNode;
begin
  vMapaSite  := 'https://maps.googleapis.com/maps/api/geocode/xml?address=';
//  vMapaChave := '&key='+'AIzaSyCxFySzYCdLFMuAYV6isHsEgDIDiw-nxqs';
  vMapaChave := '&key=AIzaSyBXT5DWBL5MjxLMZP6c27EV2JR5OJXIYRU';
  vDados := '';

  try

    if Trim(zNumero) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zNumero), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zEndereco) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zEndereco), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zBairro) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zBairro), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zCidade) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zCidade), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zEstado) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zEstado), ' ', '+', [rfReplaceAll])+ ',+';
    end;

    vDados := vDados + 'BRASIL';

    vDados := frAcen(vDados);
    vDados := vMapaSite+vDados+vMapaChave;

    xml          := TXMLDocument.Create(nil);
    xml.FileName := vDados;
    xml.Active   := True;
    vretorno     := xml.DocumentElement.ChildNodes.FindNode('result').ChildNodes.FindNode('geometry').ChildNodes.FindNode('location').ChildNodes.FindNode('lat');
    vlat         := vretorno.Text;
    vretorno     := xml.DocumentElement.ChildNodes.FindNode('result').ChildNodes.FindNode('geometry').ChildNodes.FindNode('location').ChildNodes.FindNode('lng');
    vlng         := vretorno.Text;
    result := vlat+','+vlng;
  except
    result := 'Erro: não encontrado endereço válido!'+#13#10+vDados;
  end;

end;

function frMapaRetLocalExt(zNumero,zEndereco,zBairro, zCidade,zEstado:String):String;
var
  vDados: string;
begin
  vDados := '';

  try
    if Trim(zNumero) <> EmptyStr then
    begin
      vDados := vDados + stringReplace(Trim(zNumero), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zEndereco) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zEndereco), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zBairro) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zBairro), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zCidade) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zCidade), ' ', '+', [rfReplaceAll])+ ',+';
    end;
    if Trim(zEstado) <> EmptyStr then
    begin
      vDados := vDados + StringReplace(Trim(zEstado), ' ', '+', [rfReplaceAll])+ ',+';
    end;

    vDados := vDados + 'BRASIL';

    vDados := frAcen(vDados);
    result := vDados
  except
    result := '';
  end;

end;

function frAcenWeb(zVal:String):String;
var zvala:String; zcon:Integer;
begin
  zvala:='';
  for zcon:=1 to Length(zval) do
  begin
          if Copy(zval,zcon,1)='Á' then zvala:=zvala+'&Aacute'
     else if Copy(zval,zcon,1)='É' then zvala:=zvala+'&Eacute'
     else if Copy(zval,zcon,1)='Í' then zvala:=zvala+'&Iacute'
     else if Copy(zval,zcon,1)='Ó' then zvala:=zvala+'&Oacute'
     else if Copy(zval,zcon,1)='Ú' then zvala:=zvala+'&Uacute'
     else if Copy(zval,zcon,1)='á' then zvala:=zvala+'&aacute'
     else if Copy(zval,zcon,1)='é' then zvala:=zvala+'&eacute'
     else if Copy(zval,zcon,1)='í' then zvala:=zvala+'&iacute'
     else if Copy(zval,zcon,1)='ó' then zvala:=zvala+'&oacute'
     else if Copy(zval,zcon,1)='ú' then zvala:=zvala+'&uacute'
     else if Copy(zval,zcon,1)='Â' then zvala:=zvala+'&Acirc'
     else if Copy(zval,zcon,1)='Ê' then zvala:=zvala+'&Ecirc'
     else if Copy(zval,zcon,1)='Ô' then zvala:=zvala+'&Ocirc'
     else if Copy(zval,zcon,1)='â' then zvala:=zvala+'&acirc'
     else if Copy(zval,zcon,1)='ê' then zvala:=zvala+'&ecirc'
     else if Copy(zval,zcon,1)='ô' then zvala:=zvala+'&ocirc'
     else if Copy(zval,zcon,1)='À' then zvala:=zvala+'&Agrave'
     else if Copy(zval,zcon,1)='à' then zvala:=zvala+'&agrave'
     else if Copy(zval,zcon,1)='Ü' then zvala:=zvala+'&Uuml'
     else if Copy(zval,zcon,1)='ü' then zvala:=zvala+'&uuml'
     else if Copy(zval,zcon,1)='Ç' then zvala:=zvala+'&Ccedil'
     else if Copy(zval,zcon,1)='ç' then zvala:=zvala+'&ccedil'
     else if Copy(zval,zcon,1)='Ã' then zvala:=zvala+'&Atilde'
     else if Copy(zval,zcon,1)='Õ' then zvala:=zvala+'&Otilde'
     else if Copy(zval,zcon,1)='ã' then zvala:=zvala+'&atilde'
     else if Copy(zval,zcon,1)='õ' then zvala:=zvala+'&otilde'
     else zvala:=zvala+Copy(zval,zcon,1);
  end;

  Result := zvala;
  
end;

function frAcen(zVal:String):String;
var zvala:String; zcon:Integer;
begin
  zvala:='';
  zval:=UpperCase(Trim(zval));
  for zcon:=1 to Length(zval) do begin
     if Copy(zval,zcon,1)='Ã' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='ã' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='Á' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='á' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='À' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='à' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='Ä' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='ä' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='Â' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='â' then zvala:=zvala+'A'
     else if Copy(zval,zcon,1)='É' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='é' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='È' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='è' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='Ë' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='ë' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='Ê' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='ê' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='Ê' then zvala:=zvala+'E'
     else if Copy(zval,zcon,1)='Í' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='í' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='Ì' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='ì' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='Ï' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='ï' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='Î' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='î' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='Õ' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='õ' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='Ó' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='ó' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='Ò' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='ò' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='Ö' then zvala:=zvala+'I'
     else if Copy(zval,zcon,1)='ö' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='Ô' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='ô' then zvala:=zvala+'O'
     else if Copy(zval,zcon,1)='Ú' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='ú' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='Ù' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='ù' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='Ü' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='ü' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='Û' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='û' then zvala:=zvala+'U'
     else if Copy(zval,zcon,1)='Ç' then zvala:=zvala+'C'
     else if Copy(zval,zcon,1)='ç' then zvala:=zvala+'C'
     else if Copy(zval,zcon,1)='Ñ' then zvala:=zvala+'N'
     else if Copy(zval,zcon,1)='ñ' then zvala:=zvala+'N'
     else if Copy(zval,zcon,1)='º' then zvala:=zvala+'o'
     else if Copy(zval,zcon,1)='ª' then zvala:=zvala+'a'
     else zvala:=zvala+Copy(zval,zcon,1);
  end;
  Result:=Trim(zvala);
end;

function frSubs(vTexto,vDe,vPara:String):String;
begin
  result := StringReplace(vTexto,vDe,vPara,[rfReplaceAll, rfIgnoreCase]);
end;

function frCrip(zTipo,zDados:String):String;
const vCript: array [1..36] of String = ('a' ,'b' ,'c' ,'d' ,'e' ,'f' ,'g' ,'h' ,'i' ,'j' ,'k' ,'l' ,'m' ,'n' ,'o' ,'p' ,'q' ,'r' ,'s' ,'t' ,'u' ,'v' ,'x' ,'z' ,'w' ,'y' ,'0' ,'1' ,'2' ,'3' ,'4' ,'5' ,'6' ,'7' ,'8' ,'9');
      vDecrA: array [1..36] of String = ('5n','4m','6o','3l','7p','2k','8q','1j','9r','0i','1s','2h','3t','4g','5u','6f','7v','8e','9x','1d','3z','5c','7w','9b','2y','4a','6a','8n','0m','9y','8f','7x','6d','5h','4k','31');
      vDecrB: array [1..36] of String = ('x7','d6','h5','k4','k2','q8','j1','r9','v7','e8','x9','d1','z3','n5','m4','o6','l3','p7','c5','io','s1','h2','t3','b9','y2','a4','a6','w7','m0','y9','f8','13','n8','g4','u5','f6');
      vDecrC: array [1..36] of String = ('6!','h@','2#','j$','7%','x(','3*','m)','3-','c+','1=','t<','2>','a/','4[','f]','0!','f@','9#','z$','4%','l*','5(','s)','3<','y-','6+','g[','6]','m!','8@','q$','a%','5$','u<','7=');
var vstr : String;
    i,j,z : Integer;
Begin
  vstr := '';
  z := 0;
  //Criptografa
  if ztipo='C' then
  begin
    for j := 1 to Length(zdados) do
    begin
      z := z +1;
      if z > 3 then z:= 1;
      for i := 1 to 36 do
      begin
        if vcript[i] = zdados[j] then
        begin
          case z of
            1: vstr := vstr + vdecra[i];
            2: vstr := vstr + vdecrb[i];
            3: vstr := vstr + vdecrc[i];
          end;
        end;
      end;
    end;
  end
  //Decriptografa
  else begin
    j := -1;
    while j < Length(zdados) do
    begin
      j := j + 2;
      for i := 1 to 36 do
      begin
        if vdecra[i] = Copy(zdados, j, 2) then
          vstr := vstr + vcript[i];
        if vdecrb[i] = Copy(zdados, j, 2) then
          vstr := vstr + vcript[i];
        if vdecrc[i] = Copy(zdados, j, 2) then
          vstr := vstr + vcript[i];
      end;
    end;
  end;
  Result := vstr;
end;

end.
