unit Rotina;

interface

uses Windows, Classes, Forms, SysUtils, ShellAPI, Dialogs, DBTables,
     Graphics, StdCtrls, Buttons, Controls, xmldom, XMLIntf, msxmldom, XMLDoc,
     DateUtils, Menu, cxPC, ShlObj, ClipBrd, System.IOUtils;

function frExte(xValor:Real):String;
function frPerg(xTit:PChar; vTp:String = 'SN'):Boolean;
function frPree(xVal:Variant;xTam:Integer;xTex:String;xLado:Integer):String;
function frExec(xarq:PChar):Boolean;
function frImpu(const ATipo:Integer; APrompt, ADefault: string): string;
function frDiaS(xDia:Integer):String;
function frMes(xMes:Integer):String;
function frMesI(xMes:String):String;
function frMesExt(xMes:String):String;
function frMesVal(xVal:String):String;
function frCPFC(vTex:String):String;
function frAlte:Boolean;
function frExcl:Boolean;
function frSalv:Boolean;
function frAtivo:Boolean;
function frVerD(vDaty:String):Boolean;
function frJuCp(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
function frJuro(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
function frDeci(vReal:Real;vDec:Integer):Real;
function frENum(vNum:String):Boolean;
function frInvV(zVal:Double; zDec:Integer = 2):String;
function frInvS(zVal:String):String;
function frInvD(zDat:TDateTime):String;
function frInvH(zTp,zHor:String):String;
function frRede(zLetra,zPath:Pchar):String;
function frTStr(zVal:String):String;
function frAcen(zVal:String):String;
function frMaiu(zVal:String):String;
function frOBDC(vArq,vAlias:String):Boolean;
function frTira(zVal,zTir:String):String;
function  frLiberacao(zTipo,zSeq,zDados:String):String;
function  frUF(vUF:String):Boolean;
function  frVersao:String;
function  frSubs(vTexto,vDe,vPara:String):String;
function  frPegaSenhaData(vStr:String):String;
function  frDiasD(zDataIni, zDataFim:TDate):Integer;
function  frCrip(zTipo,zDados:String):String;
function  frMicro(Drive:String):String;
function  frWhereD(zCampo:String;zDatI,zDatF:TDateTime):String;
function  frehDevolucao(pCFOP:String):Boolean;
function  frSoNumero(fField : String): String;
function  frIntToStr(zVal:Integer):String;
function  frStrToInt(zVal:String):Integer;
function  frNumToStr(zVal:String):String;
function  frMapaRetLocal(zNumero,zEndereco,zBairro,zCidade,zEstado:String):String;
function  frMapaRetLocalExt(zNumero,zEndereco,zBairro,zCidade,zEstado:String):String;
function  frAcenWeb(zVal:String):String;
function  frStrZero(zVal:String; vQtde:Integer):String;
function  frTStringList(S: String; Delimiter: Char): TStringList;
function  frPrimeiroDia(zdt: Tdate):TDate;
function  frUltimoDia(zdt: TDate):TDate;
procedure frCreateODBCDriver(Const
           cDSNName,cExclusive,cDescription,cDataBase,cDefaultPath,cConfigSql,cDriver: string);
//procedure frForm(FormClass: TFormClass; var Reference; vTop: Integer = 0);
procedure frForm(FormClass: TFormClass; var Reference; ImageInd: Integer = 0; vShowModal: Integer = 0);
function frCopyFileToClipboard(pFilePath: string):Boolean;
function frExtrairArquivoNome(vArquivo: String): String;
function frObterPasta(vTp, vDefault:String; vPasta: String = ''): String;
function frValidaAnoData(zData:TDate):Boolean;
function pObterDataArquivo(vpArquivo: String): String;

implementation

function SQLConfigDataSource(hwndParent:THandle ; fRequest:Cardinal ;
                            lpszDriver:PChar ;lpszAttributes:PChar ):boolean;stdcall;
    external 'odbccp32.dll' name 'SQLConfigDataSource';

function SQLGetInstalledDrivers(lpszBuf:PChar;cbBufMax:Word;cbBufOut:Pointer):Boolean;
   stdcall;external 'odbccp32.dll' name 'SQLGetInstalledDrivers';

function frPerg(xTit:PChar; vTp:String = 'SN'):Boolean;
begin
  if vtp = 'OK' then
  begin
    Application.MessageBox(xTit,'Mensagem',MB_OK+MB_ICONINFORMATION);
    Result:=False;
  end
  else begin
    if Application.MessageBox(xTit,'Pergunta',MB_YESNO+MB_ICONQUESTION)=ID_YES then Result:=True
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

function frExec(xarq:PChar):Boolean;
begin
  winexec(PAnsiChar(xarq),sw_Show);
  result := True;
end;

function frImpu(const ATipo:Integer; APrompt, ADefault: string): string;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
     var I: Integer; Buffer: array[0..51] of Char;
  begin
    for I:=0 to 25 do Buffer[I]:=Chr(I + Ord('A'));
    for I:=0 to 25 do Buffer[I + 26]:=Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X:=Result.X div 52;
  end;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Form:=TForm.Create(Application);
  with Form do
    try
      Canvas.Font:=Font;
      Color:=$00EDEDE7;
      DialogUnits:=GetAveCharSize(Canvas);
      BorderStyle:=bsDialog;
      Caption:='Pergunta.';
      ClientWidth:=MulDiv(180, DialogUnits.X, 4);
      ClientHeight:=MulDiv(63, DialogUnits.Y, 8);
      Position:=poMainformcenter;
      Prompt:=TLabel.Create(Form);
      with Prompt do begin
        Parent:=Form;
        AutoSize:=True;
        Transparent:=True;
        Font.Color:=clNavy;
        Font.Size:=10;
        Font.Style:=[fsBold];
        Left:=MulDiv(8, DialogUnits.X, 4);
        Top:=MulDiv(8, DialogUnits.Y, 8);
        Caption:=APrompt;
      end;
      Edit:=TEdit.Create(Form);
      with Edit do begin
        Parent:=Form;
        Left:=Prompt.Left;
        Top:=MulDiv(19, DialogUnits.Y, 8);
        Width:=MulDiv(164, DialogUnits.X, 4);
        MaxLength:=20;
        if ATipo=1 then Passwordchar:='*'
        else Passwordchar:=#0;
        Font.Color:=clBlack;
        Font.Size:=10;
        Font.Style:=[fsBold];
        Text:=ADefault;
        SelectAll;
      end;
      ButtonTop:=MulDiv(41, DialogUnits.Y, 8);
      ButtonWidth:=MulDiv(50, DialogUnits.X, 4);
      ButtonHeight:=MulDiv(14, DialogUnits.Y, 8);
      with TBitbtn.Create(Form) do begin
        Parent:=Form;
        Kind:=bkYes;
        Caption:='Ok';
        ModalResult:=mrOk;
        Default:=True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,ButtonHeight);
      end;
      with TBitbtn.Create(Form) do begin
        Parent:=Form;
        Kind:=bkCancel;
        Caption:='Cancelar';
        ModalResult:=mrCancel;
        Cancel:=True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop, ButtonWidth,ButtonHeight);
      end;
      if ShowModal=mrOk then Result:=Edit.Text
      else Result:='0';
    finally
      Form.Free;
  end;
end;

function frExte(xValor:Real):String;
var
   NomeMoeda,NomeMoedas : String;
   Texto : String;
   nu,nd,nc :array[1..9] of String;
   ndb  :array[0..9] of String;
   Inteiro : String;
   ValorConv : String[3];
   Unidade,Dezena,Centena,DezenaComp : String;
   i : Word;
   Milhao,Mil,Cem,Decimal : Integer;
   sValor : String;
   lEntrou : Boolean;
begin
   NomeMoeda  := 'Real'; NomeMoedas := 'Reais';
   Texto := '';
   ndb[0] := 'Dez ';
   nu[1] := 'Um ';     nd[1] := 'Dez ';       ndb[1] := 'Onze ';      nc[1] := 'Cento ';
   nu[2] := 'Dois ';   nd[2] := 'Vinte ';     ndb[2] := 'Doze ';      nc[2] := 'Duzentos ';
   nu[3] := 'Três ';   nd[3] := 'Trinta ';    ndb[3] := 'Treze ';     nc[3] := 'Trezentos ';
   nu[4] := 'Quatro '; nd[4] := 'Quarenta ';  ndb[4] := 'Quatorze ';  nc[4] := 'Quatrocentos ';
   nu[5] := 'Cinco ';  nd[5] := 'Cinquenta '; ndb[5] := 'Quinze ';    nc[5] := 'Quinhentos ';
   nu[6] := 'Seis ';   nd[6] := 'Sessenta ';  ndb[6] := 'Dezesseis '; nc[6] := 'Seiscentos ';
   nu[7] := 'Sete ';   nd[7] := 'Setenta ';   ndb[7] := 'Dezessete '; nc[7] := 'Setecentos ';
   nu[8] := 'Oito ';   nd[8] := 'Oitenta ';   ndb[8] := 'Dezoito ';   nc[8] := 'Oitocentos ';
   nu[9] := 'Nove ';   nd[9] := 'Noventa ';   ndb[9] := 'Dezenove ';  nc[9] := 'Novecentos ';
   sValor := Format('%30.2n',[xValor]);
   if Copy(sValor,Length(sValor)-3,3) = '.00' then
      Inteiro := frPree(FloatToStr(Trunc(xValor)),15,'0',0)+'000'
   else
      Inteiro := frPree(FloatToStr(Trunc(xValor)),15,'0',0)+
              '0'+(Copy(sValor,Length(sValor)-1,2));
   Milhao  := StrToInt(copy(Inteiro,7,3));
   Mil     := StrToInt(copy(Inteiro,10,3));
   Cem     := StrToInt(copy(Inteiro,13,3));
   Decimal := StrToInt(copy(Inteiro,16,3));
   lEntrou := False;
   For i := 1 to 6 do
   begin
      ValorConv := copy(Inteiro,(i*3)-2,3);
      if ValorConv <> '000' then begin
         Unidade    := copy(ValorConv,3,1);
         Dezena     := copy(ValorConv,2,1);
         Centena    := copy(ValorConv,1,1);
         DezenaComp := copy(ValorConv,2,2);
         if Centena <> '0' then
            if ValorConv = '100' then  Texto := Texto + 'Cem '
            else Texto := Texto + nc[StrToInt(Centena)];
         if (DezenaComp >= '10') and (DezenaComp <= '19') then
            if Centena = '0' then  Texto := Texto + ndb[StrToInt(DezenaComp)-10]
            else Texto := Texto + 'e '+ndb[StrToInt(DezenaComp)-10];
         if Dezena >= '2' then
            if Centena = '0' then  Texto := Texto + nd[StrToInt(Dezena)]
            else  Texto := Texto + 'e '+nd[StrToInt(Dezena)];
         if (Unidade <> '0') and
            ((DezenaComp < '10') or (DezenaComp > '19'))  then
            if (Centena <> '0') or (Dezena <> '0') then  Texto := Texto + 'e '+nu[StrToInt(Unidade)]
            else Texto := Texto + nu[StrToInt(Unidade)];
      end;
      if (ValorConv <> '000') or (lEntrou) then
      begin
         lEntrou := True;
         Case i of
            1 : begin
                  if ValorConv = '001' then Texto := Texto + 'trilhão'
                  else Texto := Texto + 'trilhões';
                  if Milhao+Mil+Cem+Decimal=0 then Texto := Texto + ' de '
                  else begin
                    if Milhao+Mil = 0 then Texto := Texto + ' e '
                    else Texto := Texto + ', ';
                  end;
                end;
            2 : begin
                  if ValorConv = '001' then Texto := Texto + 'bilhão'
                  else Texto := Texto + 'bilhões';
                  if Milhao+Mil+Cem+Decimal=0 then Texto := Texto + ' de '
                  else begin
                     if Milhao+Mil = 0 then Texto := Texto + ' e '
                     else Texto := Texto + ', ';
                  end;
                end;
            3 : begin
                  if ValorConv = '001' then  Texto := Texto + 'milhão'
                  else Texto := Texto + 'milhões';
                  if Mil+Cem+Decimal=0 then  Texto := Texto + ' de '
                  else  begin
                     if Mil = 0 then  Texto := Texto + ' e '
                     else Texto := Texto + ', ';
                  end;
                end;
            4 : begin
                  Texto := Texto + 'mil';
                  if ((Cem <> 0) and (copy(IntToStr(Cem),2,3)='00')) or
                     ((Cem > 0) and (Cem < 100)) then  Texto := Texto + ' e '
                  else if Cem> 0 then  Texto := Texto + ', '
                  else Texto := Texto + ' ';
                end;
            5 : begin
                  if Cem = 1 then Texto := Texto + NomeMoeda
                  else Texto := Texto + NomeMoedas;
                  if Decimal>0 then  Texto := Texto + ' e '
                  else  Texto := Texto + ' ';
                end;
            6 : begin
                  if Decimal > 0 then  begin
                     if Decimal = 1 then  Texto := Texto + 'Centavo'
                     else  Texto := Texto + 'Centavos';
                  end;
                end;
         end;
      end;
   end;
   frExte := Texto;
end;

function frDiaS(xDia:Integer):String;
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
function frMes(xMes:Integer):String;
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

function frMesI(xMes:String):String;
var vdia,vmes,vano:String;
begin
  vdia:=Copy(xMes,1,2);
  vano:=Copy(xMes,7,4);
  vmes:=frMes(StrToInt(Copy(xMes,4,2)));
  result:=vdia+' de '+vmes+' de  '+vano;
end;

function frMesExt(xMes:String):String;
var vdia,vmes,vano:String;
begin
  vdia:=frMesVal(Copy(xMes,1,2));
  vano:=frMesVal(Copy(xMes,7,4));
  vmes:=frMes(StrToInt(Copy(xMes,4,2)));
  result:=vdia+' de '+vmes+' de  '+vano;
end;

function frMesVal(xVal:String):String;
var
   NomeMoeda,NomeMoedas : String;
   Texto : String;
   nu,nd,nc :array[1..9] of String;
   ndb  :array[0..9] of String;
   Inteiro : String;
   ValorConv : String[3];
   Unidade,Dezena,Centena,DezenaComp : String;
   i : Word;
   Milhao,Mil,Cem,Decimal : Integer;
   sValor : String;
   lEntrou : Boolean;
   xValor:Real;
begin
   NomeMoeda  := ''; NomeMoedas := ''; Texto := '';
   ndb[0] := 'Dez ';
   nu[1] := 'Um ';     nd[1] := 'Dez ';       ndb[1] := 'Onze ';      nc[1] := 'Cento ';
   nu[2] := 'Dois ';   nd[2] := 'Vinte ';     ndb[2] := 'Doze ';      nc[2] := 'Duzentos ';
   nu[3] := 'Três ';   nd[3] := 'Trinta ';    ndb[3] := 'Treze ';     nc[3] := 'Trezentos ';
   nu[4] := 'Quatro '; nd[4] := 'Quarenta ';  ndb[4] := 'Quatorze ';  nc[4] := 'Quatrocentos ';
   nu[5] := 'Cinco ';  nd[5] := 'Cinquenta '; ndb[5] := 'Quinze ';    nc[5] := 'Quinhentos ';
   nu[6] := 'Seis ';   nd[6] := 'Sessenta ';  ndb[6] := 'Dezesseis '; nc[6] := 'Seiscentos ';
   nu[7] := 'Sete ';   nd[7] := 'Setenta ';   ndb[7] := 'Dezessete '; nc[7] := 'Setecentos ';
   nu[8] := 'Oito ';   nd[8] := 'Oitenta ';   ndb[8] := 'Dezoito ';   nc[8] := 'Oitocentos ';
   nu[9] := 'Nove ';   nd[9] := 'Noventa ';   ndb[9] := 'Dezenove ';  nc[9] := 'Novecentos ';
   xvalor:=StrToFloat(xVal);
   sValor := Format('%30.2n',[xValor]);
   if Copy(sValor,Length(sValor)-3,3) = '.00' then
      Inteiro := frPree(FloatToStr(Trunc(xValor)),15,'0',0)+'000'
   else
      Inteiro := frPree(FloatToStr(Trunc(xValor)),15,'0',0)+
              '0'+(Copy(sValor,Length(sValor)-1,2));
   Milhao  := StrToInt(copy(Inteiro,7,3));
   Mil     := StrToInt(copy(Inteiro,10,3));
   Cem     := StrToInt(copy(Inteiro,13,3));
   Decimal := StrToInt(copy(Inteiro,16,3));
   lEntrou := False;
   For i := 1 to 6 do
   begin
      ValorConv := copy(Inteiro,(i*3)-2,3);
      if ValorConv <> '000' then begin
         Unidade    := copy(ValorConv,3,1);
         Dezena     := copy(ValorConv,2,1);
         Centena    := copy(ValorConv,1,1);
         DezenaComp := copy(ValorConv,2,2);
         if Centena <> '0' then
            if ValorConv = '100' then  Texto := Texto + 'Cem '
            else Texto := Texto + nc[StrToInt(Centena)];
         if (DezenaComp >= '10') and (DezenaComp <= '19') then
            if Centena = '0' then  Texto := Texto + ndb[StrToInt(DezenaComp)-10]
            else Texto := Texto + 'e '+ndb[StrToInt(DezenaComp)-10];
         if Dezena >= '2' then
            if Centena = '0' then  Texto := Texto + nd[StrToInt(Dezena)]
            else  Texto := Texto + 'e '+nd[StrToInt(Dezena)];
         if (Unidade <> '0') and
            ((DezenaComp < '10') or (DezenaComp > '19'))  then
            if (Centena <> '0') or (Dezena <> '0') then  Texto := Texto + 'e '+nu[StrToInt(Unidade)]
            else Texto := Texto + nu[StrToInt(Unidade)];
      end;
      if (ValorConv <> '000') or (lEntrou) then
      begin
         lEntrou := True;
         Case i of
            1 : begin
                  if ValorConv = '001' then Texto := Texto + 'trilhão'
                  else Texto := Texto + 'trilhões';
                  if Milhao+Mil+Cem+Decimal=0 then Texto := Texto + ' de '
                  else begin
                    if Milhao+Mil = 0 then Texto := Texto + ' e '
                    else Texto := Texto + ', ';
                  end;
                end;
            2 : begin
                  if ValorConv = '001' then Texto := Texto + 'bilhão'
                  else Texto := Texto + 'bilhões';
                  if Milhao+Mil+Cem+Decimal=0 then Texto := Texto + ' de '
                  else begin
                     if Milhao+Mil = 0 then Texto := Texto + ' e '
                     else Texto := Texto + ', ';
                  end;
                end;
            3 : begin
                  if ValorConv = '001' then  Texto := Texto + 'milhão'
                  else Texto := Texto + 'milhões';
                  if Mil+Cem+Decimal=0 then  Texto := Texto + ' de '
                  else  begin
                     if Mil = 0 then  Texto := Texto + ' e '
                     else Texto := Texto + ', ';
                  end;
                end;
            4 : begin
                  Texto := Texto + 'mil';
                  if ((Cem <> 0) and (copy(IntToStr(Cem),2,3)='00')) or
                     ((Cem > 0) and (Cem < 100)) then  Texto := Texto + ' e '
                  else if Cem> 0 then  Texto := Texto + ', '
                  else Texto := Texto + ' ';
                end;
            5 : begin
                  if Cem = 1 then Texto := Texto + NomeMoeda
                  else Texto := Texto + NomeMoedas;
                  if Decimal>0 then  Texto := Texto + ' e '
                  else  Texto := Texto + ' ';
                end;
            6 : begin
                  if Decimal > 0 then  begin
                     if Decimal = 1 then  Texto:=Texto
                     else Texto:=Texto;
                  end;
                end;
         end;
      end;
   end;
   frMesVal := Texto;
end;

function frJuCp(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
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

function frJuro(xTaxa:Double;xDia,xCar:Integer;xValor:Real):Real;
begin
  if xCar>xDia then  Result:= xValor
  else begin xDia := xDia-xCar;
    xValor := xValor*xTaxa*xDia/3000;
    Result := xValor;
  end;
end;

function frCPFC(vTex:String):String;
begin
  vtex:=frSoNumero(Trim(vtex));
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

function frAlte:Boolean;
begin
  Result:= frPerg('Deseja Alterar Dados ?');
end;

function frExcl:Boolean;
begin
  Result:= frPerg('Deseja Excluir registro ?');
end;

function frAtivo:Boolean;
begin
  Result:= frPerg('Deseja Inativar ?');
end;

function frSalv:Boolean;
begin
  Result:= frPerg('Deseja Salvar Dados ?');
end;

function frVerD(vDaty:String):Boolean;
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

function frDeci(vReal:Real;vDec:Integer):Real;
var vr1:String;
begin
  vr1:=FloatToStrF(vReal,ffFixed,14,vDec);
  Result:=StrToFloat(vr1);
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

function frInvV(zVal:Double; zDec:Integer = 2):String;
var zvalA:String; zcon:Integer;
begin
  zvala:=FloatToStrF(zval,ffFixed,14,zDec);
  for zcon:=1 to Length(zvala) do begin
     if Copy(zvala,zcon,1)=',' then
        zvala:=Copy(zvala,1,zcon-1)+'.'+Copy(zvala,zcon+1,zDec);
  end;
  Result:=zvala
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

function frInvD(zDat:TDateTime):String;
var zvala:String;
begin
  zvala:=DateToStr(zdat);
  zvala:='     ('+QuotedStr(zvala)+')';
  zvala:=frSubs(zvala, '/', '.');
  //ala:='CDate('+QuotedStr(zvala)+')';
  Result:=zvala
end;

function frInvH(zTp,zHor:String):String;
var zvala:String;
begin
  if (uppercase(zTp) = 'F') then
    zvala:=QuotedStr(Copy(zHor,1,5)+':99')
  else
    zvala:=QuotedStr(Copy(zHor,1,5)+':00');
  Result:=zvala
end;

function frRede(zLetra,zPath:Pchar):String;
var NRW: TNetResource;
begin
  with NRW do begin
    dwType := RESOURCETYPE_ANY;
    lpLocalName := zLetra;
    lpRemoteName := zPath;
    lpProvider := '';
  end;
  WNetAddConnection2(NRW, ' ', ' ', CONNECT_UPDATE_PROFILE);
  Case GetLastError() of
       5: Result:='Acesso Negado!';
      66: Result:='Tipo de dispositivo local ou recurso inválido.';
      67: Result:='Caminho não encontrado ou inválido.';
      85: Result:='85';//'Este mapeamento já existe.';
      86: Result:='Senha não encontrada ou inválida.';
    1200: Result:='Letra atribuída a unidade já é reservada ou inválida.';
    1202: Result:='85';//Um mapeamento com esta letra já existe.';
    1203: Result:='Rede ou caminho não encontrado ou inválido.';
    1204: Result:='Provedor não encontrado ou inválido.';
    1205: Result:='Não foi possível abrir o perfil.';
    1206: Result:='Perfil do usuário não encontrado ou inválido.';
    1208: Result:='Ocorreu um Erro específico na rede.';
     170: Result:='Rede congestionada.';
    2138: Result:='Rede não encontrada ou fora do ar.';
  else
     Result:='0';
  end;
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

function frTStr(zVal:String):String;
var zvala:String; zcon:Integer;
begin
  zvala:='';
  for zcon:=1 to Length(zval) do begin
     if (Copy(zval,zcon,1)='0') or
        (Copy(zval,zcon,1)='1') or
        (Copy(zval,zcon,1)='2') or
        (Copy(zval,zcon,1)='3') or
        (Copy(zval,zcon,1)='4') or
        (Copy(zval,zcon,1)='5') or
        (Copy(zval,zcon,1)='6') or
        (Copy(zval,zcon,1)='7') or
        (Copy(zval,zcon,1)='8') or
        (Copy(zval,zcon,1)='9') then
        zvala:=zvala+Copy(zval,zcon,1);
  end;
  Result:=zvala
end;

function frMaiu(zVal:String):String;
var zvala:String; zcon:Integer;
begin
  zvala:='';
  zval:=LowerCase(Trim(zval));
  for zcon:=1 to Length(zval) do begin
     if Copy(zval,zcon,1)='ã' then zvala:=zvala+'Ã'
     else if Copy(zval,zcon,1)='á' then zvala:=zvala+'Á'
     else if Copy(zval,zcon,1)='à' then zvala:=zvala+'À'
     else if Copy(zval,zcon,1)='ä' then zvala:=zvala+'Ä'
     else if Copy(zval,zcon,1)='â' then zvala:=zvala+'Â'
     else if Copy(zval,zcon,1)='é' then zvala:=zvala+'É'
     else if Copy(zval,zcon,1)='è' then zvala:=zvala+'È'
     else if Copy(zval,zcon,1)='ë' then zvala:=zvala+'Ë'
     else if Copy(zval,zcon,1)='ê' then zvala:=zvala+'Ê'
     else if Copy(zval,zcon,1)='í' then zvala:=zvala+'Í'
     else if Copy(zval,zcon,1)='ì' then zvala:=zvala+'Ì'
     else if Copy(zval,zcon,1)='ï' then zvala:=zvala+'Ï'
     else if Copy(zval,zcon,1)='î' then zvala:=zvala+'Î'
     else if Copy(zval,zcon,1)='õ' then zvala:=zvala+'Õ'
     else if Copy(zval,zcon,1)='ó' then zvala:=zvala+'Ó'
     else if Copy(zval,zcon,1)='ò' then zvala:=zvala+'Ò'
     else if Copy(zval,zcon,1)='ö' then zvala:=zvala+'Ö'
     else if Copy(zval,zcon,1)='ô' then zvala:=zvala+'Ô'
     else if Copy(zval,zcon,1)='ú' then zvala:=zvala+'Ú'
     else if Copy(zval,zcon,1)='ù' then zvala:=zvala+'Ù'
     else if Copy(zval,zcon,1)='ü' then zvala:=zvala+'Ü'
     else if Copy(zval,zcon,1)='û' then zvala:=zvala+'Û'
     else if Copy(zval,zcon,1)='ç' then zvala:=zvala+'Ç'
     else if Copy(zval,zcon,1)='ñ' then zvala:=zvala+'Ñ'
     else zvala:=zvala+Copy(zval,zcon,1);
  end;
  Result:=UpperCase(Trim(zvala));
end;

function frOBDC(vArq,vAlias:String):Boolean;
begin

//                           PChar('Microsoft Access Driver (*.mdb)'),

  try
    if SQLConfigDataSource(THandle(nil),4,
                           PChar('Driver do Microsoft Access (*.mdb)'),
                           PChar('DSN='+vAlias+#0+
                                 'Description='+vAlias+#0+
                                 'DataDirectory='+ExtractFilePath(vArq)+#0+
                                 'DBQ='+vArq+#0))
    then
      Result:=True
    else
      Result:=False;
  except
      on E:Exception do
      begin

        Result := False;
        MessageDlg('Erro ODBC: ' + E.Message, mtError, [mbOk], 0);
        //raise Exception.Create('Erro ao enviar Email: ' + E.Message);

      end;

  end;

end;

function frTira(zVal,zTir:String):String;
var zvalA:String; zcon:Integer;
begin
  zvala:='';
  for zcon:=1 to Length(zval) do begin
     if Copy(zval,zcon,1)<>zTir then zvala:=zvala+Copy(zval,zcon,1);
  end;
  Result:=zvala
end;


procedure frForm(FormClass: TFormClass; var Reference; ImageInd: Integer = 0; vShowModal: Integer = 0);
var aForm: TForm;
    tabSheet: TcxTabSheet;
    i: Integer;
begin

  try

    FMenu.rzpgMenu.Enabled := False;

    if (vShowModal = 0) then
    begin
      if (TForm(Reference) = nil) then
      begin

        if not FMenu.PageFormMenu.Visible then
          FMenu.PageFormMenu.Visible := True;

        tabSheet := TcxTabSheet.Create(FMenu.PageFormMenu);
        tabSheet.PageControl := FMenu.PageFormMenu;

        Application.CreateForm(FormClass, TForm(Reference));
        aForm := TForm(Reference);
        aForm.Parent  := tabSheet;
        aForm.Top     := 0;
        aForm.Left    := 0;
        aForm.Align   := alClient;
        aForm.Visible := true;
        aForm.BorderStyle := bsNone;
        aForm.WindowState := wsMaximized;
        tabSheet.Caption  := aForm.Caption;
        FMenu.PageFormMenu.ActivePage := tabSheet;
        tabSheet.ImageIndex := ImageInd;

        aForm.Show;

      end
      else begin

        TForm(Reference).Show;

        for i:= 0 to FMenu.PageFormMenu.PageCount - 1 do
        begin
          if FMenu.PageFormMenu.Pages[i].Caption = TForm(Reference).Caption then
            FMenu.PageFormMenu.ActivePageIndex := FMenu.PageFormMenu.Pages[i].TabIndex;
        end;

      end;

    end
    else begin

      //Showmodal
      if (TForm(Reference) = nil) then
        Application.CreateForm(FormClass, TForm(Reference));

      TForm(Reference).ShowModal;

    end;

  finally

    Screen.Cursor:=crDefault;
    FMenu.rzpgMenu.Enabled := True;

  end;

end;

function frLiberacao(zTipo,zSeq,zDados:String):String;
const vCript: array [1..10] of String = ('0','1','2','3','4','5','6','7','8','9');
      vDecrA: array [1..10] of String = ('5','7','9','1','3','2','0','8','6','4');
      vDecrB: array [1..10] of String = ('4','6','8','0','2','1','9','7','5','3');
      vDecrC: array [1..10] of String = ('8','6','4','2','0','1','3','5','7','9');
      vDecrD: array [1..10] of String = ('9','0','8','1','7','2','6','3','5','4');
      vDecrE: array [1..10] of String = ('1','8','2','7','3','6','4','5','9','0');
var vstr : String;
    i,j,z : Integer;
Begin
  vstr := '';
  z := StrToInt(zSeq);
  if z > 5  then z:= 1;
  //Criptografa
  if ztipo='C' then
  begin
    for j := 1 to Length(zdados) do
    begin
      for i := 1 to 10 do
      begin
        if vcript[i] = zdados[j] then
        begin
          case z of
            2: vstr := vstr + vdecrb[i];
            3: vstr := vstr + vdecrc[i];
            4: vstr := vstr + vdecrd[i];
            5: vstr := vstr + vdecre[i];
          else
            vstr := vstr + vdecra[i]; //1
          end;
        end;
      end;
    end;
  end
  //Decriptografa
  else begin
    j := 0;
    while j < Length(zdados) do
    begin
      j := j + 1;
      for i := 1 to 10 do
      begin
        if ((z = 1) and (vdecra[i] = zdados[j])) then
          vstr := vstr + vcript[i];
        if ((z = 2) and (vdecrb[i] = zdados[j])) then
          vstr := vstr + vcript[i];
        if ((z = 3) and (vdecrc[i] = zdados[j])) then
          vstr := vstr + vcript[i];
        if ((z = 4) and (vdecrd[i] = zdados[j])) then
          vstr := vstr + vcript[i];
        if ((z = 5) and (vdecre[i] = zdados[j])) then
          vstr := vstr + vcript[i];
      end;
    end;
    vstr := vstr;
  end;
  Result := vstr;
end;

function frUF(vUF:String):Boolean;
const vestado = 'AC/AL/AM/AP/BA/CE/DF/ES/GO/MA/MG/MS/MT/PA/PB/PE/PI/PR/RJ/RN/RO/RR/RS/SC/SE/SP/TO/EX/';
var vstr: String;
begin
  vstr := vuf+'/';
  if (pos(vstr, vestado) > 0) then
    result := true
  else
    result := false;
end;

function frVersao:String;
var
  vInfoSize, DetSize: DWord;
  pVInfo, pDetail: Pointer;
begin
  // Aloca um bloco de memória do tamanho correto das informações de versão
  vInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), DetSize);
  if (vInfoSize > 0) then
  begin
    // Cria uma variável dinâmica e direciona o ponteiro pVInfo
    GetMem(pVInfo, vInfoSize);
    try
      GetFileVersionInfo(PChar(ParamStr(0)), 0, vInfoSize, pVInfo);
      VerQueryValue(pVInfo, '\', pDetail, DetSize);
      Result := format('%d.%d.%d.%d',
        [HiWord(TVSFixedFileInfo(pDetail^).dwFileVersionMS),
        LoWord(TVSFixedFileInfo(pDetail^).dwFileVersionMS),
        HiWord(TVSFixedFileInfo(pDetail^).dwFileVersionLS),
        LoWord(TVSFixedFileInfo(pDetail^).dwFileVersionLS)]);
    finally
      FreeMem(pVInfo);
    end;
  end;
end;

function frSubs(vTexto,vDe,vPara:String):String;
begin
  result := StringReplace(vTexto,vDe,vPara,[rfReplaceAll, rfIgnoreCase]);
end;

function frPegaSenhaData(vStr:String):String;
var vtes:String;
begin
  vtes := frCrip('D',vStr);
  vtes := Copy(frCrip('D',vStr),3,8);
  result := Copy(vtes,1,2)+'/'+Copy(vtes,3,2)+'/'+Copy(vtes,5,4);
end;

function frDiasD(zDataIni, zDataFim:TDate):Integer;
var vi: Integer;
begin
  vi := 0;
  while (zDataFim >= zDataIni) do
  begin
    vi := vi +1;
    zDataIni := zDataIni + 1;
  end;
  result := vi;
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

function frMicro(Drive:String):String;
var Serial,DirLen,Flags: DWord; DLabel : Array[0..11] of Char;
begin
  GetVolumeInformation(PChar(Drive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
  Result := IntToHex(Serial,8);
end;

function frWhereD(zCampo:String;zDatI,zDatF:TDateTime):String;
var zvala:String;
begin
//Result:= ' ('+zCampo+' >= CDate('+QuotedStr(DateToStr(zDatI))+') and '+zCampo+' < CDate('+QuotedStr(DateToStr(zDatF+1))+')) ';
  zvala:=' ('+zCampo+' >= ('+QuotedStr(DateToStr(zDatI))+') and '+zCampo+' < ('+QuotedStr(DateToStr(zDatF+1))+')) ';
  zvala:=frSubs(zvala, '/', '.');
  Result:=zvala;
end;

function frehDevolucao(pCFOP:String):Boolean;
const vdev: array [1..95] of String = ('1201','1202','1203','1204','1208','1209','1213','1214','1410','1411','1503','1504',
                                      '1505','1506','1553','1660','1661','1662','1918','1919',
                                      '2201','2202','2203','2204','2208','2209','2213','2214','2410','2411','2503','2504',
                                      '2505','2506','2553','2660','2661','2662','2918','2919',
                                      '3201','3202','3211','3503','3553',
                                      '5201','5202','5208','5209','5210','5213','5214','5215','5410','5411','5412','5413',
                                      '5503','5553','5555','5556','5660','5661','5662','5918','5919','5921',
                                      '6201','6202','6208','6209','6210','6213','6214','6215','6410','6411','6412','6413',
                                      '6503','6553','6555','6556','6660','6661','6662','6918','6919','6921',
                                      '7201','7202','7210','7211','7553','7556');
var vcf:String;
    vi: Integer;
begin
  result := false;
  vcf := frTira(pCFOP,',');
  for vi := 1 to 95 do
  begin
    if vcf = vdev[vi] then
      result := true;
  end;
end;

function frSoNumero(fField : String): String;
var
  I : Byte;
begin
   Result := '';
   for I := 1 To Length(fField) do
       if fField [I] In ['0'..'9'] Then
            Result := Result + fField [I];
end;

function  frIntToStr(zVal:Integer):String;
begin
  if zval < 1 then
    zval := 0;
  result := IntTostr(zval);
end;

function  frStrToInt(zVal:String):Integer;
begin
  result := StrToIntDef(zval,0);
end;

function  frNumToStr(zVal:String):String;
begin
  result := IntToStr(StrToIntDef(zval,0));
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

function frStrZero(zVal:String; vQtde:Integer):String;
begin

 result := frPree(zVal, vqtde, '0', 0);

end;

function frTStringList(S: String; Delimiter: Char): TStringList;
var
  //I : Integer;
  t : string;

  function PosDelimiter: Integer;
  begin

    Result := Pos(Delimiter, s);

  end;

begin

  Result := TStringList.Create;

  t := Trim(s);

  while s <> '' do
  begin

    if PosDelimiter = 0 then
    begin

      Result.Add(S);
      s := '';

    end
    else
    begin

      t := Trim(Copy(s, 1, PosDelimiter - 1));
      Result.Add(T);
      Delete(s,1,PosDelimiter);
      s := Trim(s);

    end;

  end;

end;

function frPrimeiroDia(zdt: Tdate):TDate;
begin

  result := StartofTheMonth(zdt);

end;

function frUltimoDia(zdt: TDate):TDate;
begin

  result := EndofTheMonth(zdt);

end;

procedure frCreateODBCDriver(Const
          cDSNName,cExclusive,cDescription,cDataBase,cDefaultPath,cConfigSql,cDriver: string);
type

  TSQLConfigDataSource = function( hwndParent: HWND; fRequest: WORD; lpszDriver: LPCSTR;
                                   lpszAttributes: LPCSTR ): BOOL; stdcall;

const

  ODBC_ADD_DSN = 1; // Adiciona uma fonte de dados (data source)

  ODBC_CONFIG_DSN = 2; // Configura a fonte de dados (data source)

  ODBC_REMOVE_DSN = 3; // Remove a fonte de dados (data source)

  ODBC_ADD_SYS_DSN = 4; // Adiciona um DSN no sistema

  ODBC_CONFIG_SYS_DSN = 5; // Configura o DSN do sistema

  ODBC_REMOVE_SYS_DSN = 6; // Remove o DSN do sistema

var

  pFn: TSQLConfigDataSource;

  hLib: LongWord;

  strDriver: string;

  strHome: string;

  strAttr: string;

  strFile: string;

  fResult: BOOL;

  ModName: array[0..MAX_PATH] of Char;

  srInfo : TSearchRec;

begin

  Windows.GetModuleFileName( HInstance, ModName, SizeOf(ModName) );

  strHome := ModName;

  while ( strHome[length(strHome)] <> '\' ) do

  Delete( strHome, length(strHome), 1 );

  strFile := strHome + cDatabase; // Teste com access (Axes = Access)

  hLib := LoadLibrary( pChar(cDefaultPath) ); // carregando para o diretório padrão

  if( hLib <> 0 ) then

  begin

    @pFn := GetProcAddress( hLib, pChar(cConfigSql) );

    if( @pFn <> nil ) then

    begin

      strDriver := cDriver;

      strAttr := Format( 'DSN=%s'+#0+

        'DBQ=%s'+#0+

        'Exclusive=%s'+#0+

        'Description=%s'+#0+#0,

        [cDSNName,strFile,cExclusive,cDescription] );

      fResult := pFn( 0, ODBC_ADD_SYS_DSN, @strDriver[1], @strAttr[1] );

      if( fResult = false ) then

        ShowMessage( 'Falha ao tentar criar o DSN (Data source).' );

{      if( FindFirst( strFile, 0, srInfo ) <> 0 ) then

      begin

        strDriver := cDriver;

        strAttr := Format( 'DSN=%s'+#0+

          'DBQ=%s'+#0+

          'Exclusive=%s'+#0+

          'Description= %s'+#0+#0+

          'CREATE_DB="%s"'#0+#0,

          [cDSNName,strFile,cExclusive,cDescription,strFile]);

        fResult := pFn( 0, ODBC_ADD_SYS_DSN, @strDriver[1], @strAttr[1] );

        if( fResult = false ) then

          ShowMessage( 'Falha ao tentar criar o banco de dados' );

      end;

      FindClose( srInfo );
}
    end;

    FreeLibrary( hLib );

    if fResult then

      ShowMessage( 'Banco de dados criado.' );

  end

  else

  begin

    ShowMessage( 'o sistema não pode carregar a biblioteca ODBCCP32.DLL' );

  end;

end;

function frCopyFileToClipboard(pFilePath: string):Boolean;
var
  D: PDropFiles;
  H: THandle;
  L, S, P: Integer;
begin

  result := False;

  if (Trim(pFilePath) = '') then
    exit;

  Assert(not(pFilePath.Trim.IsEmpty), 'Arquivo não pode ser vazio!');
  L := pFilePath.Length;
  S := SizeOf(Char);
  P := SizeOf(TDropFiles);
  H := GlobalAlloc($2000 or 2 or $40, P + ((L + 2) * S));
  Assert(H > 0, 'Não foi possível alocar memória requisitada.');
  try
    D := GlobalLock(H);
    Assert(Assigned(D), 'Não foi possível acessar a memória alocada.');
    try
      D^.pFiles := P;
      D^.fWide := True;
      Move(pFilePath[1], (PByte(D) + P)^, (L * S));
    finally
      GlobalUnlock(H);
      result := true;
    end;
    Clipboard.SetAsHandle(CF_HDROP, H);
  except
    GlobalFree(H);
  end;
end;

function frExtrairArquivoNome(vArquivo: String): String;
begin

  try

    Result := TPath.GetFileName(vArquivo);

  except
    on E: Exception do
      raise Exception.Create('Rotina.ExtrairArquivoNome -> ' + E.Message);
  end;

end;

function frObterPasta(vTp, vDefault:String; vPasta: String = ''): String;
begin
  //vTp = 0 - Obter
  //      1 - CRIA e Obter
  try
    Result := '';
    if (UpperCase(vDefault) = 'TEMP') then
      Result := TPath.GetTempPath
    else if (UpperCase(vDefault) = 'DOCUMENTO') then
      Result := TPath.GetDocumentsPath
    else if (UpperCase(vDefault) = 'DOWNLOAD') then
      Result := TPath.GetDownloadsPath
    else
      Result := 'LOCALREDE';

    if Result <> '' then
    begin
      if (Trim(vPasta) <> '') then
      begin
        if (Trim(Result) <> 'LOCALREDE') then
          Result := Result + '\' + vPasta
        else
          Result := vPasta;
      end;

      if (UpperCase(vTp) = '0') then
      begin
        if not DirectoryExists(Result) then
          Result := '';
      end;
      if (UpperCase(vTp) = '1') then
      begin
        if not DirectoryExists(Result) then
          ForceDirectories(Result);
      end;
    end;
  except
    on E: Exception do
      raise Exception.Create('Rotina.FrObterPasta -> ' + E.Message);
  end;

end;

function frValidaAnoData(zData:TDate):Boolean;
begin
  result := True;
   if (FormatDateTime('yyyy', zData) <> FormatDateTime('yyyy', Date))  then
     if not frPerg('Manter data?'+#13+'Ano informado difere do atual!', 'SN') then
       result := False;
end;

function pObterDataArquivo(vpArquivo: String): String;
var FHandle: Integer;
begin
  FHandle := FileOpen(vpArquivo,0);
  try
    Result := DateToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;

end.


