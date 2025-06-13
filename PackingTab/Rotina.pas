unit Rotina;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ExtCtrls, StdCtrls, Buttons, ComCtrls, Menus, ComObj, ActiveX, DBTables;

function fPergunta(xPer,xTit:PChar):Boolean;
function fPreencher(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
function fExecutar(xarq:PChar):Boolean;
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
function InvValor(zVal:Double):String;
function InvQtde(zVal:Double):String;
function InvData(zDat:TDateTime):String;
function DecValor(zVal:Double):Real;
function frOBDC(vArq,vAlias:String):Boolean;
function frENum(vNum:String):Boolean;
function frPerg(xTit:PChar; vTp:String = 'SN'):Boolean;
function frPree(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
function frInvS(zVal:String):String;
function frWhereD(zCampo:String;zDatI,zDatF:TDateTime):String;
procedure frForm(FormClass: TFormClass; var Reference; vTop: Integer = 0);
function frVersao:String;
function frSoNumero(vStr: String): String;
function frGetTemporaryDir: String;

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
function fExecutar(xarq:PChar):Boolean;
begin
  winexec(PAnsiChar(xarq),sw_hide);
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

function InvValor(zVal:Double):String;
var zvalA:String; zcon:Integer;
begin
  zvala:=FloatToStrF(zval,ffNumber,9,2);
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
  zvala:=FloatToStrF(zval,ffNumber,6,3);
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
  zvala:='CDate("'+zvala+'")';
  Result:=zvala
end;

function DecValor(zVal:Double):Real;
var zvalA:String;
begin
  zvala:=FloatToStrF(zval,ffNumber,12,2);
  Result:=StrToFloat(zvala);
end;

function frOBDC(vArq,vAlias:String):Boolean;
begin
  if SQLConfigDataSource(THandle(nil),4,
                         PChar('Microsoft Access Driver (*.mdb)'),
                         PChar('DSN='+vAlias+#0+
                               'Description='+vAlias+#0+
                               'DataDirectory='+ExtractFilePath(vArq)+#0+
                               'DBQ='+vArq+#0)) then Result:=True
  else Result:=False;
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
begin
  Result:= ' ('+zCampo+' >= CDate('+QuotedStr(DateToStr(zDatI))+') and '+zCampo+' < CDate('+QuotedStr(DateToStr(zDatF+1))+')) ';
end;

procedure frForm(FormClass: TFormClass; var Reference; vTop: Integer = 0);
begin
  try
    if TForm(Reference)=nil then
      Application.CreateForm(FormClass,TForm(Reference));

    if vTop = 0 then TForm(Reference).Top := vTop;

    TForm(Reference).Show;

  finally
//    Screen.Cursor:=crDefault;
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

// Exibir o caminho da pasta temporária do Windows.
function frGetTemporaryDir: String;
var
  pNetpath: ARRAY[ 0..MAX_path - 1 ] of Char;
  nlength: Cardinal;
begin
  nlength := MAX_path;
  FillChar( pNetpath, SizeOF( pNetpath ), #0 );
  GetTemppath( nlength, pNetpath );
  Result := StrPas( pNetpath );
end;


end.
