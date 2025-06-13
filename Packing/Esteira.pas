unit Esteira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Midaslib, Mask, DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, jpeg, DBTables,
  Buttons, DB, DBClient, Provider, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, QRPrntr, Spin, RzPanel, DelphiZXingQRCode,
  ppDesignLayer, ppParameter;

type
  TFEsteira = class(TForm)
    THora: TTimer;
    pnlForm: TPanel;
    PTela: TPanel;
    GBDados: TGroupBox;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    TDBDesc: TEdit;
    GroupBox5: TGroupBox;
    LData: TLabel;
    ppRelatorio: TppReport;
    ppDados: TppBDEPipeline;
    dsRelat: TDataSource;
    lblTitulo: TLabel;
    PImprimir: TPanel;
    PDados: TPanel;
    Panel8: TPanel;
    Label7: TLabel;
    Memo1: TMemo;
    Panel11: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    lblmsg: TLabel;
    pnlValor: TPanel;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    titVersao: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Panel9: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    Edit5: TEdit;
    Panel7: TPanel;
    Label4: TLabel;
    Edit2: TEdit;
    pnl2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Edit3: TEdit;
    Panel5: TPanel;
    Label5: TLabel;
    Edit4: TEdit;
    tmLeitor: TTimer;
    sbpRelatorio: TSpeedButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    cdsCateg: TClientDataSet;
    cdsCategITEM: TIntegerField;
    dsBotao: TDataSource;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    SpeedButton92: TSpeedButton;
    SpeedButton91: TSpeedButton;
    SBP5: TSpeedButton;
    gbCodigo: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    lblNome: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edLinha4: TEdit;
    edLinha3: TEdit;
    edLinha2: TEdit;
    edPeso: TEdit;
    edLote: TEdit;
    edCodigo: TEdit;
    edLinha10: TEdit;
    edLinha1: TMaskEdit;
    edLinha11: TMaskEdit;
    Panel12: TPanel;
    Label8: TLabel;
    Edit6: TEdit;
    Panel13: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    ImgQrCode: TImage;
    sb20: TSpeedButton;
    sb10: TSpeedButton;
    sb7: TSpeedButton;
    cdsCategCAT03: TStringField;
    cdsCategCAT01: TStringField;
    cdsCategCAT02: TStringField;
    cdsCategCAT10: TStringField;
    cdsCategCAT11: TStringField;
    cdsCategCAT12: TStringField;
    cdsCategCAT20: TStringField;
    cdsCategCAT21: TStringField;
    cdsCategCAT22: TStringField;
    cdsCategCAT31: TStringField;
    cdsCategCAT32: TStringField;
    cdsCategCOL00: TIntegerField;
    cdsCategCOL01: TIntegerField;
    cdsCategCOL02: TIntegerField;
    cdsCategCOL10: TIntegerField;
    cdsCategCOL11: TIntegerField;
    cdsCategCOL12: TIntegerField;
    cdsCategCOL21: TIntegerField;
    cdsCategCOL22: TIntegerField;
    cdsCategCOL20: TIntegerField;
    cdsCategCOL30: TIntegerField;
    cdsCategCOL31: TIntegerField;
    cdsCategCOL32: TIntegerField;
    cdsCategCAT30: TStringField;
    cdsCategCAT40: TStringField;
    cdsCategCAT41: TStringField;
    cdsCategCAT42: TStringField;
    cdsCategCOL40: TIntegerField;
    cdsCategCOL41: TIntegerField;
    cdsCategCOL42: TIntegerField;
    TMudou: TTimer;
    lblEsteira: TLabel;
    cdsCategCAT04: TStringField;
    cdsCategCAT05: TStringField;
    cdsCategCAT13: TStringField;
    cdsCategCAT14: TStringField;
    cdsCategCAT23: TStringField;
    cdsCategCAT24: TStringField;
    cdsCategCAT33: TStringField;
    cdsCategCAT34: TStringField;
    cdsCategCOL03: TIntegerField;
    cdsCategCOL04: TIntegerField;
    cdsCategCOL13: TIntegerField;
    cdsCategCOL14: TIntegerField;
    cdsCategCOL23: TIntegerField;
    cdsCategCOL24: TIntegerField;
    cdsCategCOL33: TIntegerField;
    cdsCategCOL34: TIntegerField;
    SpeedButton1: TSpeedButton;
    cdsCategCAT43: TStringField;
    cdsCategCAT44: TStringField;
    cdsCategCOL43: TIntegerField;
    cdsCategCOL44: TIntegerField;
    cdsCategCAT06: TStringField;
    cdsCategCAT07: TStringField;
    cdsCategCAT16: TStringField;
    cdsCategCAT17: TStringField;
    cdsCategCAT26: TStringField;
    cdsCategCAT27: TStringField;
    cdsCategCAT36: TStringField;
    cdsCategCAT37: TStringField;
    cdsCategCAT46: TStringField;
    cdsCategCAT47: TStringField;
    cdsCategCAT15: TStringField;
    cdsCategCAT25: TStringField;
    cdsCategCAT35: TStringField;
    cdsCategCAT45: TStringField;
    cdsCategCOL05: TIntegerField;
    cdsCategCOL06: TIntegerField;
    cdsCategCOL07: TIntegerField;
    cdsCategCOL15: TIntegerField;
    cdsCategCOL16: TIntegerField;
    cdsCategCOL17: TIntegerField;
    cdsCategCOL25: TIntegerField;
    cdsCategCOL26: TIntegerField;
    cdsCategCOL27: TIntegerField;
    cdsCategCOL35: TIntegerField;
    cdsCategCOL36: TIntegerField;
    cdsCategCOL37: TIntegerField;
    cdsCategCOL45: TIntegerField;
    cdsCategCOL46: TIntegerField;
    cdsCategCOL47: TIntegerField;
    SpeedButton93: TSpeedButton;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    procedure THoraTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TDBDescKeyPress(Sender: TObject; var Key: Char);
    procedure SBP5Click(Sender: TObject);
    procedure sb7Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure SpeedButton92Click(Sender: TObject);
    procedure SpeedButton91Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tmLeitorTimer(Sender: TObject);
    procedure edQtdeEnter(Sender: TObject);
    procedure sbpRelatorioClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TMudouTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton93Click(Sender: TObject);
  private

    vImprimirDireto, vRotinaEmbalador: Boolean;
    QRCodeBitmap: TBitmap;
    vEmpresaDoc, vEmpresaEnd, vProdutor, vProdutorDoc, vProdutorEnd: String;
    procedure pRotinaCategoria;

  public
    procedure fLoteLeitura;
    procedure fLoteArquivo;
    procedure fLoteAbreDados;
    procedure fLoteSalvaDados(vtpInserir:Boolean; vde, vtxt4:String; vcod,vemb:Integer; vqtde,vmarca: Integer);
    procedure pImprimeEtiquetaTampa(vvLanc:Integer);
    procedure pInserirComboBox;
    procedure pImprimeEtiq(vImprimir, vEstoque, vConfigura:Boolean);
    procedure qrCodeExecute;
    procedure pExecutar;
    procedure pInserirEstoque(vqtde: Integer);
    procedure pInserirEmbalador(vqtde: Integer);
  end;
  procedure fPreview(Sender: TObject);

var
  FEsteira: TFEsteira;
  xTotal: Double;
  xpalImp,xpaletnr,xpalqtd,xcodreg,xLanc,xApp,xComando:Integer;
  xpalemp,xpalsim,ximpunica,ximpetiq,ximplocal,ximpEstoq,ximpLote:String;
  xsim,ximp,xdirini,xDirSi,xDirDB:String;
  vrelarquivo,xvlan,xvlot,xvcod,xvdes,xvcodanterior,xvlotant,xvlcl:String;
  xcodant: array[1..20] of String;
  xcpfcnpj, xanomes: String;
  vc:array  [0..40] of string;
  xmarca: Integer;

implementation

uses Data, Rotina, Palet, rlImprimir, zModeloRel, frmRomanFecha, frmRomanAbre,
     frmEstoqueAvulso, frmCadMarca, frmMarca;

{$R *.DFM}

procedure TFEsteira.FormCreate(Sender: TObject);
var vi: Integer;
    vtemp: String;
    vArq:TextFile;
begin

//  gbCodigo.Visible := False;
  vRotinaEmbalador := True;

  QRCodeBitmap := TBitmap.Create;

  for vi := 1 to 20 do
    xcodant[vi] := '';

  xcodreg := 0;
  xcomando:= 0;
  xvcodanterior := '';

  titVersao.Caption := 'Versão:'+frVersao;
  Application.ProcessMessages;
  Sleep(100);

  THora.Enabled:=True;
  vImprimirDireto := False;
  Application.ProcessMessages;
  Sleep(100);

  vtemp := frGetTemporaryDir;
  xesteira := '1';
  if fileexists(vtemp+'ESTEIRANR.INI') then
  begin
    AssignFile(varq, vtemp+'ESTEIRANR.INI');
    Reset(varq);
    Readln(varq, vtemp);
    CloseFile(varq);
    xesteira := Copy(vtemp,10,3);
  end;

  xesteira := trim(xesteira);

  if (trim(xesteira) = '') then
    xesteira := '1';

  //Alimenta variavel para ver qual esteira deva abrir = padrão 1 -> ''
  if (trim(xesteira) = '1') then
    xEsteiraArq := ''
  else
    xEsteiraArq := xesteira;

  lblEsteira.Caption := 'Esteira 0'+xesteira;

end;


procedure fPreview(Sender: TObject);
begin
  try
    if FImprimir=Nil then
      Application.CreateForm(TFImprimir, FImprimir);

    FImprimir.qrImprimir.QRPrinter:=TQRPrinter(Sender);
    FImprimir.WindowState:=wsMaximized;
    FImprimir.Show;
  except
    ShowMessage('Erro no Visualizador de Impressão!');
  end;
end;

procedure TFEsteira.THoraTimer(Sender: TObject);
var vArq: TextFile;
    xAno, xExiste: String;
    ArqIni: TStringList;
    vArquivo, vtxt, vDBAliasF, vDBAliasE: String;
    i: Integer;
begin
  if xcomando=0 then
  begin
     Edit1.Text:=''; Edit2.Text:=''; Edit3.Text:='';
     Edit4.Text:=''; Edit5.Text:='';
     Memo1.Text:='';
     PDados.Visible:=False;
     GBDados.Visible:=False;
     PImprimir.Visible:=False;
     THora.Enabled:=False;
     THora.Interval:=10;
     xcomando:=10;
     xAno:=Copy(DateToStr(Date),7,4);
     TDBDesc.Text:='';
     Application.ProcessMessages;

     //Banco de dados
     try
       //procura ou mapea rede
       Sleep(100);
       xdirsi:=ExtractFilePath(Application.ExeName);
       Application.ProcessMessages;
       if fileexists(xdirsi+'fdb.ini') then
       begin
         AssignFile(varq,xdirsi+'fdb.ini');
         Reset(varq);
         Readln(varq,xdirsi);
         CloseFile(varq);
       end;
       if trim(xdirsi) = '' then
         xdirsi:=ExtractFilePath(Application.ExeName);

       vArquivo := xdirsi+'dados\Conexao.ini';
       if fileexists(vArquivo) then
       begin

         ArqIni := TStringList.Create;
         ArqIni.LoadFromFile(vArquivo);
         for i := 1 to ArqIni.Count - 1 do
         begin

           if (Trim(ArqIni[i]) <> '') then
           begin

             vtxt     := ArqIni[i];
             vDBAliasF := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));
             vDBAliasF := 'ACWF'+vDBAliasF;
             vDBAliasE := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));
             vDBAliasE := 'ACWE'+vDBAliasE;
           end;
         end;

       end
       else begin
         vDBAliasF := 'ACWebProducao';
         vDBAliasE := 'ACWebEsteira';
       end;

       xdirdb:=xdirsi+'DADOS\BDFRUTIS.MDB';
       if not FileExists(xdirdb) then begin
         ShowMessage('Sistema Paralizado ou Fora da Rede!'+#13+xdirdb);
         Halt;
       end;
       dm.Session1.Active := False;
       dm.JaeAdminProd.Connected:=False;
       dm.JaeAdminProd.AliasName:=vDBAliasF;
       dm.JaeAdminProd.Params.Clear;
       dm.JaeAdminProd.Params.Add('PASSWORD=acwebdobrasil');
       dm.JaeAdminProd.Params.Add('ODBC DSN='+vDBAliasF);
       dm.JaeAdminProd.Connected:=True;
     except
       dm.JaeAdminProd.Connected:=False;
       if frOBDC(xdirdb,vDBAliasF) then
         dm.JaeAdminProd.Connected:=True
       else Halt;
     end;
     //Esteira
     Sleep(300);
     if FileExists(xdirsi+'DADOS\BDEsteira.mdb') then
     begin
       try
         dm.Session2.Active := False;
         dm.JaeEsteira.Connected:=False;
         dm.JaeEsteira.AliasName:=vDBAliasE;
         dm.JaeEsteira.Params.Clear;
         dm.JaeEsteira.Params.Add('ODBC DSN='+vDBAliasE);
         dm.JaeEsteira.Connected:=True;
       except
         dm.JaeEsteira.Connected:=False;
         if frOBDC(xdirsi+'DADOS\BDEsteira.mdb',vDBAliasE) then
           dm.JaeEsteira.Connected:=True
         else Halt;
       end;
     end;
     xdirini:=ExtractFilePath(Application.ExeName);
     ximpunica := 'S';
     ximpetiq  := 'N';
     ximplocal := 'N';
     ximpestoq := 'N';
     ximplote  := 'N';

     //Criar pasta rastrear
     if not DirectoryExists(xdirini+'rastrear') then
     begin
       CreateDir(xdirini+'rastrear');
       Sleep(200);
       if not DirectoryExists(xdirini+'rastrear') then
         CreateDir(xdirini+'rastrear');
     end;

     if fileexists(xdirini+'Dados\Leitorbarra.ini') then
     begin
       AssignFile(varq,xdirini+'Dados\Leitorbarra.ini');
       Reset(varq);
       Readln(varq,ximpetiq);
       ximpetiq  := Trim(Copy(ximpetiq,11,3));
       Readln(varq,ximpunica);
       ximpunica := Trim(Copy(ximpunica,11,3));
       Readln(varq,ximplocal);
       ximpestoq := Trim(Copy(ximplocal,16,3));
       ximplote  := Trim(Copy(ximplocal,21,3));
       ximplocal := Trim(Copy(ximplocal,11,3));
       CloseFile(varq);
     end;
//     if (pos('PACKING', UpperCase(Application.ExeName)) > 0 ) then
//       PImprimir.Visible := ximplocal = 'S'
       PImprimir.Visible := True;
//     else
//       PImprimir.Visible := False;

     sb7.Visible  := ximpestoq = 'E';
     sb20.Visible := ximpestoq = 'E';
//*     RzPnlLote.Visible := ximplote  = 'L';

     //Opção mostra tudo
     //Imprimir = S
     //Uma vez  = S
     //Local    = S    E    L

     //abre comando esteira
     xpalsim := 'N';
     xpaletnr:= 0;
     xpalqtd := 0;
     xpalemp := '';
     xpalimp := 0;
     if fileexists(xdirini+'Dados\Palet.ini') then
     begin
       //Cria tabela -> EsteiraPalet
       dm.TExiste.Close;
       dm.TExiste.TableName := 'ESTEIRAPALET';
       if dm.TExiste.Exists then
       begin
         //Verificar se tem o qrCode
         try
           fProc(1,['Select Lote, WEBQRCODEL1 From ESTEIRAPALET'],1);
           xExiste := dm.qrProc1.FieldByName('WEBQRCODEL1').asString;
         except
           fProc(2,['alter table ESTEIRAPALET add WEBQRCODEL1 varchar(120)'],1);
           fProc(2,['alter table ESTEIRAPALET add WEBQRCODEL2 varchar(120)'],1);
           fProc(2,['alter table ESTEIRAPALET add WEBQRCODEL3 varchar(120)'],1);
           fProc(2,['alter table ESTEIRAPALET add WEBQRCODEL4 varchar(120)'],1);
         end;
       end
       else
         fProc(1,['Create Table ESTEIRAPALET'+
                  ' ( LOTE      INTEGER,'+
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
                  '   WEBQRCODEL1 VARCHAR(120),'+
                  '   WEBQRCODEL2 VARCHAR(120),'+
                  '   WEBQRCODEL3 VARCHAR(120),'+
                  '   WEBQRCODEL4 VARCHAR(120)'+
                  ')'], 1);

       dm.TExiste.Close;
       //Abertura
       AssignFile(varq,xdirini+'Dados\Palet.ini');
       Reset(varq);
       Readln(varq,xpalsim);
       xpaletnr:=StrToInt('0'+xpalsim);
       Readln(varq,xpalsim);
       xpalqtd:=StrToInt('0'+xpalsim);
       Readln(varq,xpalsim);
       xpalimp:=StrToInt('0'+xpalsim);

       Readln(varq,xpalsim);
       Readln(varq,xpalemp);
       CloseFile(varq);
     end;
     SBP5.Visible := xpalsim = 'S';

     //Geral - continuação
     ximp:='00'; xsim:='nao';

     if FileExists(xdirini+'DADOS\MUDOU' +xEsteiraArq+ '.INI') then
     begin
       xMudouLote := True;
       DeleteFile(xdirini+'DADOS\MUDOU' +xEsteiraArq+ '.INI');
     end
     else begin
       fLoteArquivo;
       fLoteLeitura;
       xMudouLote := False;
     end;

     pnlForm.Top  := (Height - pnlForm.Height) div 2;
     pnlForm.Left := (Width - pnlForm.Width) div 2;

     if ximpetiq = 'S' then
     begin
       vrelarquivo := xDirSi + UpperCase('Listagem\FfrmImpEtiqueta_0001.rtm');
       if not FileExists(vrelarquivo) then
         ximpetiq := 'N';
     end;
     PDados.Visible:=True;
     GBDados.Visible:=True;
     GBDados.Enabled:=True;

     pInserirComboBox;

     dm.TEsteira.Last;
     //dm.cdsEsteira.Last;

     TDBDesc.SetFocus;
     tmLeitor.Enabled := ((not pImprimir.Visible) or (vRotinaEmbalador));

  end;
end;

procedure TFEsteira.tmLeitorTimer(Sender: TObject);
begin
  if (not pImprimir.Visible) or (vRotinaEmbalador) then
  begin
    try
      cdsCateg.First;
      TDBDesc.SetFocus;
    except
    end;
  end;
end;

procedure TFEsteira.TMudouTimer(Sender: TObject);
begin

  TMudou.Enabled := False;
  TDBDesc.Text := '990'+frSoNumero(TimeToStr(Now));
  Application.ProcessMessages;
  pInserirEmbalador(1);
  Application.ProcessMessages;

end;

procedure TFEsteira.fLoteArquivo;
var vArq:TextFile;
begin
  try
    xvlotant := xvlot;
    AssignFile(varq,xdirini+'DADOS\Config' +xEsteiraArq+ '.INI');
    Reset(varq);
    Readln(varq,xvlot);
    Readln(varq,xvcod);
    Readln(varq,xvdes);
    Readln(varq,xvlan);
    Readln(varq,xvlcl);
    CloseFile(varq);
    xvlot := Trim(Copy(xvlot,11,20));
    xvcod := Trim(Copy(xvcod,11,20));
    xvdes := Copy(xvdes,11,50);
    xvlan := Trim(Copy(xvlan,11,20));
    xvlcl := Trim(Copy(xvlcl,11,20));
    lblTitulo.Caption := 'Registro:'+xvlan+' - Variedade: '+ xvcod +' - '+ xvdes;

    //Se não tiver a tabela vai tentar criar -> para não dar erro
    dm.pCriarTabelaEsteira(xvcod, xvlan);

    //fProc(1,['Select Max(Lanc), Sum(Qtde) From ESTEIRAV'+fPreencher(xvCod, 2, '0', 0)+'L'+fPreencher(xvLan, 4, '0', 0)],1);
    fProc(1,['Select Max(Lanc), Sum(Qtde) From '+xEsteiraTabela+' where Lote = 0'+xvLot],1);
    xlanc  := dm.qrProc1.Fields[0].asInteger;
    xtotal := dm.qrProc1.Fields[1].asFloat;

    fSql(1,['Select Data From Roman where Lanc = 0'+xvLan],1);
    xanomes := Copy(DateToStr(dm.qrSql1.Fields[0].Value),7,4);

  except
  end;
end;

procedure TFEsteira.edQtdeEnter(Sender: TObject);
begin
  ImgQrCode.Visible := False;
end;

procedure TFEsteira.Excluir1Click(Sender: TObject);
begin
  if not PImprimir.Visible then Exit;
  tmLeitor.Enabled := False;

//  if frPerg(PChar('Deseja excluir do estoque?'+#13#10+'Item: '+dm.cdsEsteira.FieldByName('Lanc').asString)) then
  if frPerg(PChar('Deseja excluir do estoque?'+#13#10+'Item: '+dm.TEsteira.FieldByName('Lanc').asString)) then
  begin
    dm.TEsteira.Delete;
    //dm.cdsEsteira.Delete;
    //fProc(1,['Select Sum(Qtde) From ESTEIRAV'+fPreencher(xvCod, 2, '0', 0)+'L'+fPreencher(xvLan, 4, '0', 0)],1);
    fProc(1,['Select Sum(Qtde) From '+xEsteiraTabela+' where Lote = 0'+xvLot],1);
    xtotal := dm.qrProc1.Fields[0].asFloat;
    pnlValor.Caption := 'Quantidade total: '+FloatToStrF(xTotal,ffNumber,5,0);
  end;
  tmLeitor.Enabled := True;
end;

procedure TFEsteira.fLoteAbreDados;
begin
  try
    dm.TEmpresa.Close;
    dm.TEmpresa.Open;
    xcpfcnpj := frSoNumero(dm.TEmpresa.FieldByName('cpf').asString);
    if trim(xcpfcnpj) = '' then
      xcpfcnpj := 'registro';

    dm.TCadProdu.Close;
    dm.TCadProdu.Open;
    dm.TCadEmbal.Close;
    dm.TCadEmbal.Open;
    dm.TCadCateg.Close;
    dm.TCadCateg.Open;

//    if vRotinaEmbalador then
      pRotinaCategoria;

    //BuscaDados do Empresa/produtor
    vEmpresaDoc  := Trim(dm.TEmpresa.FieldByName('DESCRICAO').asString)
                    +' ('+ Trim(dm.TEmpresa.FieldByName('CPF').asString)+')';
    vEmpresaEnd  := Trim(dm.TEmpresa.FieldByName('ENDERECO').asString)
                    +' '+ Trim(dm.TEmpresa.FieldByName('CIDADEDES').asString)
                    +'/'+ Trim(dm.TEmpresa.FieldByName('ESTADO').asString)
                    +' '+ Trim(dm.TEmpresa.FieldByName('CEP').asString)
                    +' BR';
    fSql(1,['select produtorcod from roman where lanc = '+fPreencher(xvLan, 4, '0', 0)],1);
    if (dm.qrSql1.Fields[0].asInteger > 0) then
    begin
      fSql(2,['select descricao, cpf, endereco, cidadedes, estado, cep, bairro from cadforne where codigo = '+fPreencher(dm.qrSql1.Fields[0].asInteger, 4, '0', 0)],1);
      vProdutor    := Trim(dm.qrSql2.FieldByName('DESCRICAO').asString);
      vProdutorDoc := Trim(dm.qrSql2.FieldByName('DESCRICAO').asString)
                      +' ('+ Trim(dm.qrSql2.FieldByName('CPF').asString)+')';
      vProdutorEnd := Trim(dm.qrSql2.FieldByName('ENDERECO').asString)
                      +' '+ Trim(dm.qrSql2.FieldByName('BAIRRO').asString)
                      +' '+ Trim(dm.qrSql2.FieldByName('CIDADEDES').asString)
                      +'/'+ Trim(dm.qrSql2.FieldByName('ESTADO').asString)
                      +' '+ Trim(dm.qrSql2.FieldByName('CEP').asString)
                      +' BR';
    end
    else begin
      vProdutor    := '';
      vProdutorDoc := '';
      vProdutorEnd := '';
    end;


    if (ximpetiq = 'S') then
    begin
      dm.TEtiqueta.Close;
      dm.TEtiqueta.Open;
    end;
  except
    lblTitulo.Caption := 'Registro:'+xvlan+' - Variedade: '+ xvcod;
    ShowMessage('Não conseguiu abrir produtos!');
  end;
end;

procedure TFEsteira.fLoteLeitura;
var vlotant:String;
begin
  if Trim(vlotant)<>Trim(xvlot) then
    xcomando:=0;

  pnlValor.Caption := 'Quantidade total: '+FloatToStrF(xTotal,ffNumber,5,0);

  //Preciso da TEsteira pra saber se existe a variedade
  if dm.TEsteira.TableName <> xEsteiraTabela then
  begin
    try
      fLoteAbreDados;

      dm.TEsteira.Close;
      dm.TEsteira.TableName := xEsteiraTabela;

      if dm.TEsteira.Exists then
      begin
        dm.TEsteira.Open;

        {dm.sqlEsteira.Close;
        dm.cdsEsteira.Close;
        dm.sqlEsteira.SQL.Clear;
        dm.sqlEsteira.SQL.Add('select * from '+xEsteiraTabela);
        dm.sqlEsteira.SQL.Add(' where Esteira = 0'+xEsteira
                            + '   and Lote    = 0'+xvLot
                            + '   and VarieCod= 0'+xvCod);
        dm.sqlEsteira.SQL.Add(' order by lanc');
        dm.cdsEsteira.Open;}

      end
      else begin
        ShowMessage('Lote não encontrado, deve abrir um lote válido!'+#13+dm.TEsteira.TableName);

        //Se não tiver a tabela vai tentar criar -> para não dar erro
        dm.pCriarTabelaEsteira('000','0000');

        dm.TEsteira.TableName := 'ESTEIRAC000';
        if dm.TEsteira.Exists then
          dm.TEsteira.Open;
        if TDBDesc.Focused then
          TDBDesc.SetFocus;
      end;
    except
      ShowMessage('Lote não encontrado, deve abrir um lote válido!'+#13+dm.TEsteira.TableName);

      //Se não tiver a tabela vai tentar criar -> para não dar erro
      dm.pCriarTabelaEsteira('000','0000');

      dm.TEsteira.TableName := 'ESTEIRAC000';
      if dm.TEsteira.Exists then
        dm.TEsteira.Open;
      if TDBDesc.Focused then
        TDBDesc.SetFocus;
    end;
  end
  else begin
    if not dm.TEsteira.Active then
      dm.TEsteira.Open;

    {if not dm.cdsEsteira.Active then
      dm.cdsEsteira.Open;}

    if not dm.TCadEmbal.Active then
      fLoteAbreDados;

  end;

end;

procedure TFEsteira.fLoteSalvaDados(vtpInserir:Boolean; vde, vtxt4:String; vcod,vemb:Integer; vqtde,vmarca: Integer);
var vFilterExist: String;
begin
  try

    if not dm.TEsteira.Active then
      dm.TEsteira.Open;

    //Verifica se não mudou esteira - lote - variedade
    vFilterExist := 'Esteira = 0'+xEsteira
                  + ' and Lote = 0'+xvLot
                  + ' and VarieCod= 0'+xvCod;

    if Trim(vFilterExist) <> Trim(dm.TEsteira.Filter) then
    begin
      dm.TEsteira.Close;
      fLoteLeitura;
    end;

    //Filtrar produto só de uma variedade
    vFilterExist := 'VarieCod= 0'+xvCod;
    if (Trim(vFilterExist) <> Trim(dm.TCadProdu.Filter)) or (not dm.TCadProdu.Filtered) then
    begin
      dm.TCadProdu.Filtered := False;
      dm.TCadProdu.Filter := vFilterExist;
      dm.TCadProdu.Filtered := True;
    end;

    //with dm.cdsEsteira do
    with dm.TEsteira do
    begin
       if vtpInserir then
       begin
         xlanc:=xlanc+1;
         Append;
         FieldByName('Lanc').Value      := xlanc;
         FieldByName('Esteira').Value   := StrToInt(xEsteira);
         FieldByName('Lote').Value      := StrToInt(xvlot);
         FieldByName('VarieCod').Value  := StrToInt(xvcod);
         FieldByName('VarieDes').Value  := xvdes;
         FieldByName('Qtde').asFloat    := vqtde;
         FieldByName('EmbalCod').asInteger:= vemb;
         FieldByName('Texto4').asString := vtxt4;
         if vcod <> 0 then
         begin
           FieldByName('Barra').asString  := Copy(Trim(vde), 3, 10);
           FieldByName('Numero').asInteger:= StrToInt(vde);
           FieldByName('Codigo').asInteger:= vcod;
           FieldByName('Descricao').Text  := dm.TCadProdu.FieldByName('Descricao').Text;
         end;
         //Nova tabela
         if (Pos('ESTEIRAC', xEsteiraTabela) > 0) then
         begin
           FieldByName('DATALANC').Value     := Date;
           FieldByName('HORALANC').AsString  := TimeToStr(Now);
           FieldByName('LOTELANC').AsInteger := StrToIntDef(xvlan,0);
           FieldByName('NUMERO1').AsInteger  := vMARCA;
         end;
         Post;
         //ApplyUpdates(0);

         Edit1.Text := ' '+fPreencher(xvlot,4,'0',0)+' - Class.:'+xvlcl+' - Reg.:'+fPreencher(xvlan,6,'0',0);
         Edit6.Text := fPreencher(IntToStr(vemb), 4, ' ',0);
         xTotal := xTotal + vqtde;

       end
       else begin
         Edit;
         if vcod <> 0 then
         begin
           FieldByName('Barra').asString  := Copy(Trim(vde), 3, 10);
           FieldByName('Numero').asInteger:= StrToInt(vde);
           FieldByName('Codigo').asInteger:= vcod;
           FieldByName('Descricao').Text  := dm.TCadProdu.FieldByName('Descricao').Text;
           FieldByName('Calibredes').Text := dm.TCadProdu.FieldByName('CalibreDes').Text;
           FieldByName('NUMERO1').AsInteger  := vMARCA;
         end;
         Post;
         //ApplyUpdates(0);
       end;

       //Informações na Tela e grid
       Edit2.Text := Copy(vde,3,2)+'.'+Copy(vde,5,3);
       if vcod <> 0 then
       begin
         vcod:=dm.TCadProdu.FieldByName('Calibre').asInteger;
              if vcod=305 then vde:='GG'
         else if vcod=325 then vde:='G'
         else if vcod=355 then vde:='M'
         else if vcod=385 then vde:='P'
         else if vcod=395 then vde:='PP'
         else vde := dm.TCadProdu.FieldByName('Calibre').Text;

         Edit2.Text := ' '+xvcod+'.'+Edit2.Text;
         Edit3.Text := ' '+dm.TCadProdu.FieldByName('CategDes').Text;
         Edit4.Text := ' '+vde;
         Edit5.Text := ' '+FloatToStrF(dm.TCadProdu.FieldByName('PesoLiq').asFloat,ffNumber,10,2)+' kg';
         Memo1.Text := ' '+dm.TCadProdu.FieldByName('Descricao').Text;
       end;

       lblmsg.Font.Color := clNavy;
       lblmsg.Caption := 'OK, código inserido...'+Edit2.Text;

    end;

    //Verifica se esse produto é para imprimir etiqueta.
{    if not vtpInserir then
    begin
      if vImprimirDireto then
      begin
        if (fBus(1,['Select ImprimeEtiq from cadprodu where codigo = 0'+dm.TCadProdu.FieldByName('Codigo').Text],1) = 'S') then
          pImprimeEtiquetaTampa(xlanc);
      end;

      vImprimirDireto := False;
    end;
}
//    dm.TEsteira.Last;

  except
  end;

end;

procedure TFEsteira.TDBDescKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key := #0;
    pExecutar;
  end;
end;

procedure TFEsteira.pInserirEstoque(vqtde: Integer);
var vde, vcodbar, vtxt: String;
    vcod, vi: Integer;
    vtrue: Boolean;
begin
  try
    lblmsg.Caption := '';
    vde := Trim(TDBDesc.Text);
    if Copy(vde,1,8)='19802002' then
      Button1.Visible := True;

    if Copy(vde,1,3)='999' then
    begin
      THora.Enabled:=False;
      dm.TEsteira.Cancel;
      //dm.cdsEsteira.Cancel;
      dm.JaeEsteira.Connected:=False;
      Halt;
    end;

    TDBDesc.Text:='';
    TDBDesc.SetFocus;

//    if Length(vde)<7 then vde:=vde+'0';
    vde := fPreencher(vde,13,'0',1);
    vcodbar := vde;

    vtrue := True;

    //Se nao for leitura unica
    //N-so uma, S-por hora, D-Conta 10 vezes
    if ximpunica <> 'S' then
    begin
      if xcodreg > 20 then xcodreg := 1;

      if ximpunica = 'N' then
        vcodbar := vde + FormatDateTime('HH:MM', now)
      else
        vcodbar := vde;
      for vi := 1 to 20 do
      begin
        if xcodant[vi] = vcodbar then
          vtrue := False;
      end;
    end
    else begin
      xcodreg := 0;
      if xcodant[1] = vcodbar then
        vtrue := False;
    end;
    //fim

    if vtrue then
    begin
      xcodreg := xcodreg + 1;
      xcodant[xcodreg] := vcodbar;

      //if FileExists(xdirini+'DADOS\MUDOU' +xEsteiraArq+ '.INI') then
      if xMudouLote then
      begin
        xMudouLote := False;
        fLoteArquivo;
        fLoteLeitura;
        DeleteFile(xdirini+'DADOS\MUDOU' +xEsteiraArq+ '.INI');
      end;

      vtxt := fPreencher(vde,13,'0',1);
      vde := Copy(fPreencher(vde,13,'0',1),1,5);
      vcod := StrToInt(xvcod+fPreencher(StrToInt(vde),5,'0',0));

      if dm.TCadProdu.Locate('Codigo', vcod, []) then
        fLoteSalvaDados(True, vde, vtxt, vcod, 0, vqtde, 0)
      else begin
        //Se nao encontrar Reabre tabelas
        fLoteAbreDados;
        if dm.TCadProdu.Locate('Codigo', vcod, []) then
          fLoteSalvaDados(True, vde, vtxt, vcod, 0, vqtde, 0)
        else begin
          //Se não encontrar Reabre configuração e tabelas
          fLoteArquivo;
          fLoteLeitura;
          if dm.TCadProdu.Locate('Codigo', vcod, []) then
            fLoteSalvaDados(True, vde, vtxt, vcod, 0, vqtde, 0)
          else begin
            lblmsg.Font.Color := clRed;
            lblmsg.Caption := 'Último código não encontrado, verificar cadastro: '+IntToStr(vcod);
          end;
        end;
      end;

      pnlValor.Caption := 'Quantidade total: '+FloatToStrF(xTotal,ffNumber,5,0);
      LData.Caption  := DateTimeToStr(Now);
      xApp:=0;
    end;
  except
    TDBDesc.Text:='';
    TDBDesc.SetFocus;
  end;
end;

procedure TFEsteira.pImprimeEtiquetaTampa(vvLanc:Integer);
VAR vqrcode: String;
begin
  if (ximpetiq = 'S') then
  begin

    if not dm.TEtiqueta.Active then dm.TEtiqueta.Open;

    //if dm.cdsEsteira.FieldByName('Lanc').asInteger <> vvLanc then
    if dm.TEsteira.FieldByName('Lanc').asInteger <> vvLanc then
      dm.TEsteira.Locate('Lanc', vvlanc, []);

    dm.TEtiqueta.Append;
    dm.TEtiquetaQtde.Value     := 1;
    dm.TEtiquetaContador.Value := vvlanc;
    dm.TEtiquetaCodigo.Text    := dm.TEsteira.FieldByName('Codigo').asString;
    dm.TEtiquetaDescricao.Text := dm.TEsteira.FieldByName('Descricao').Text;
    dm.TEtiquetaLote.Text      := dm.TEsteira.FieldByName('Lote').asString;
    if dm.TCadProdu.Locate('Codigo', dm.TEsteira.FieldByName('Codigo').asInteger, []) then
    begin
      dm.TEtiquetaVariedade.Text := dm.TCadProdu.FieldByName('VarieDes').asString;
      dm.TEtiquetaCategoria.Text := dm.TCadProdu.FieldByName('CategDes').asString;
      dm.TEtiquetaCalibre.Text   := dm.TCadProdu.FieldByName('Calibre').asString;
      dm.TEtiquetaPeso.Text      := dm.TCadProdu.FieldByName('PesoLiq').asString;
      dm.TEtiquetaLinha5.Text    := dm.TCadProdu.FieldByName('CalibreDes').asString;

      if dm.TCadCateg.Locate('Codigo', dm.TCadProdu.FieldByName('CategCod').asInteger, []) then
        if (trim(dm.TCadCateg.FieldByName('CodClass').asString) <> '') then
          dm.TEtiquetaLinha10.Text := dm.TCadCateg.FieldByName('CodClass').asString;

    end;
    dm.TEtiquetaBarra.Text := Copy(dm.TEtiquetaCodigo.Text,3,5) + fPreencher(vvlanc,7,'0',0);
    edCodigo.Text := dm.TEtiquetaCodigo.Text;

      //qrCode - SITE
//http://www.acwebsystem.com.br/sistemas/rastrear/11741540000142/202001/lt000000001pr001010080.html
//      vqrcode := 'https://www.acwebsystem.com.br/sistemas/rastrear/';

      dm.TEtiquetaID_Lote.Text := xvlot;
      dm.TEtiquetaID_Lanc.Text := xvLan;
      vqrcode := 'https://www.acwebsystem.com.br/';

      // - Ano + Mes
      vqrcode := vqrcode + xanomes + '/';

      // - empresa
      vqrcode := vqrcode + xcpfcnpj + '/';
      // - Lote
//      vqrcode := vqrcode + 'lt'+fPreencher(xvLan,9,'0',0);
      vqrcode := vqrcode + 'R'+xvLan;
      // - Codigo produto
//      vqrcode := vqrcode + 'pr'+fPreencher(edCodigo.Text,9,'0',0)+'.html';
      vqrcode := vqrcode + 'P'+dm.TEtiquetaCodigo.Text +'.html';

      dm.TEtiquetaWEBQRCODEL1.Text := vqrcode;
      dm.TEtiquetaWEBQRCODEL2.Text := 'R'+xvLan + 'P'+dm.TEtiquetaCodigo.Text;
      dm.TEtiquetaWEBQRCODEL4.Text := xdirini+'rastrear\qrcodetmp.bmp';

      dm.TEtiquetaEMPRESADOC.Text  := vEmpresaDoc;
      dm.TEtiquetaEMPRESAEND.Text  := vEmpresaEnd;
      dm.TEtiquetaPRODUTORDES.Text := vProdutor;
      dm.TEtiquetaPRODUTORDOC.Text := vProdutorDoc;
      dm.TEtiquetaPRODUTOREND.Text := vProdutorEnd;

    dm.TEtiqueta.Post;

    qrCodeExecute;

    if not dm.TEtiqueta.IsEmpty then
    begin
      dsRelat.DataSet := dm.TEtiqueta;
      ppRelatorio.Template.FileName := vrelarquivo;
      ppRelatorio.Template.LoadFromFile;
      ppRelatorio.ShowPrintDialog := False;
      ppRelatorio.DeviceType:='Printer';
//      ppRelatorio.DeviceType:='Screen';
      ppRelatorio.Print;
    end;

    dm.TEtiqueta.First;
    while not dm.TEtiqueta.eof do dm.TEtiqueta.delete;

    //força exclusão
    fSql(3,['Delete From Etiqueta'],1);

  end;
  try
    TDBDesc.SetFocus;
    TDBDesc.SetFocus;
  except
    TDBDesc.SetFocus;
  end;
end;

procedure TFEsteira.SBP5Click(Sender: TObject);
var lvar, lcat, lcal: String;
begin
  tmLeitor.Enabled := False;

  lvar := xvcod;
  lcat := Copy(edCodigo.Text, 3, 2);
  lcal := Copy(edCodigo.Text, 5, 3);

  if FPalet=nil then Application.CreateForm(TFPalet, FPalet);
  with FPalet do
  begin
    //Salva Variedade
    fSql(1,['select variecod, variedes, count(*)'+
            '  from roman '+
            ' group by variecod, variedes'],1);
    CB0.Items.Clear;
    while not dm.qrSql1.Eof do begin
       CB0.Items.Add(fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text));
       if (lvar = dm.qrSql1.Fields[0].AsString) then
         CB0.Text:=fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text);
       dm.qrSql1.Next;
    end;

    //Salva Categorias
    fSql(1,['select categcod, categdes, count(*)'+
            '  from cadprodu '+
            ' group by categcod, categdes'],1);
    CB1.Items.Clear;
    while not dm.qrSql1.Eof do begin
       CB1.Items.Add(fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text));
       if (lcat = dm.qrSql1.Fields[0].AsString) then
         CB1.Text:=fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text);

       dm.qrSql1.Next;
    end;

    //Salva calibre
    fSql(1,['Select Calibre, Count(*) From CadProdu Group By Calibre'],1);
    CB2.Items.Clear;
    while not dm.qrSql1.Eof do begin
       CB2.Items.Add(fPreencher(dm.qrSql1.Fields[0].AsInteger,3,'0',0));
       if (lcal = fPreencher(dm.qrSql1.Fields[0].AsInteger,3,'0',0)) then
         CB2.Text:=fPreencher(dm.qrSql1.Fields[0].AsInteger,3,'0',0);

       dm.qrSql1.Next;
    end;

    //Geral
    SE2.Value := xPaletNr + 1;
    SE3.Value := xPalqtd;
    SE1.Value := xPalqtd;
    SE4.Value := StrToInt(xvlot);
    edOrigem.Text := xpalemp;
    vvarie :=0;
    vcodigo:=0;
//    pRetornaDados;
    ShowModal;
  end;
  tmLeitor.Enabled := True;
end;


procedure TFEsteira.SpeedButton1Click(Sender: TObject);
begin
  tmLeitor.Enabled := False;
  frForm(TFfrmEstoqueAvulso, FfrmEstoqueAvulso, 30);
end;

procedure TFEsteira.SpeedButton91Click(Sender: TObject);
begin
  tmLeitor.Enabled := False;
  frForm(TFfrmRomanFecha, FfrmRomanFecha, 30);
end;

procedure TFEsteira.SpeedButton92Click(Sender: TObject);
begin
  tmLeitor.Enabled := False;
  frForm(TFfrmRomanAbre, FfrmRomanAbre, 30);
end;

procedure TFEsteira.SpeedButton93Click(Sender: TObject);
begin

  tmLeitor.Enabled := False;
  frForm(TFfrmCadMarca, FfrmCadMarca, 40);

end;

procedure TFEsteira.pInserirComboBox;
var vccat, vctam:String;
//    vi, vf, vli, vlf: Integer;
begin
  if not PImprimir.Visible then Exit;

  if not dm.cdsDados.Active then
    dm.cdsDados.Open;

//  if (dm.cdsDados.RecordCount > 0) then
//  begin

    vccat := fPreencher(Copy(dm.cdsDadosCodigo.Text,3,2),3,'0',0);
    vctam := fPreencher(Copy(dm.cdsDadosCodigo.Text,5,3),3,'0',0);

    edCodigo.Text := dm.cdsDadosCodigo.Text;
    edPeso.Text   := dm.cdsDadosPeso.Text;
    if Trim(xvlcl) <> '' then
      edLote.Text   := xvlcl
    else
      edLote.Text   := dm.cdsDadosLote.Text;

    edLinha1.Text := dm.cdsDadosLinha1.Text;
    edLinha2.Text := dm.cdsDadosLinha2.Text;
    edLinha3.Text := dm.cdsDadosLinha3.Text;
    edLinha4.Text := dm.cdsDadosLinha4.Text;
    edLinha10.Text := dm.cdsDadosLinha10.Text;
    edLinha11.Text := dm.cdsDadosLinha11.Text;
    edQtde.Value  := 0;//dm.cdsDadosQtde.Value;
    edContador.Value  := dm.cdsDadosContador.Value;

    if (trim(edLinha1.Text) = '') then
      edLinha1.Text := DateToStr(Date);

//  end;

  if not dm.TCadCateg.Active then dm.TCadCateg.Open;

end;

procedure TFEsteira.sb7Click(Sender: TObject);
var vcod: Integer;
begin
  if (edQtde.Value < 1) then exit;

  vCod := StrToIntDef(edCodigo.Text,0);
  if not dm.TCadProdu.Locate('Codigo', vcod, []) then
  begin
    //Se nao encontrar Reabre tabelas
    fLoteAbreDados;

    if not dm.TCadProdu.Locate('Codigo', vcod, []) then
    begin
      ShowMessage('Código não encontrado ou inválido!');
      Exit;
    end;
  end;

  if TComponent(Sender).Tag = 1 then
    pImprimeEtiq(True, True, False)
  else if TComponent(Sender).Tag = 10 then
    pImprimeEtiq(True, False, False)
  else if TComponent(Sender).Tag = 20 then
    pImprimeEtiq(False, True, False);
end;

procedure TFEsteira.Button1Click(Sender: TObject);
var vi,vf: Integer;
begin
  vf := edQtde.Value;
  vi := 1;
  fSql(1,['Select codigo from cadprodu order by codigo'],1);
  dm.qrSql1.First;
  while not  dm.qrSql1.eof do
  begin
    vi := vi + 1;
    tdbdesc.Text := Copy(dm.qrSql1.Fields[0].AsString,3,5)+'000000';
    pInserirEstoque(1);
    Sleep(200);
    if (vi > vf) then
      dm.qrSql1.Last;
    button1.Caption := inttostr(vi);
    application.ProcessMessages;
    dm.qrSql1.Next;
  end;
  dm.qrSql1.Close;
  showmessage('ok');
end;


procedure TFEsteira.Configurar1Click(Sender: TObject);
begin
  tmLeitor.Enabled := False;
  pImprimeEtiq(True, False, True);
  tmLeitor.Enabled := True;
end;

procedure TFEsteira.pExecutar;
begin

  vImprimirDireto := True;

//showmessage('teste');
//  if vRotinaEmbalador then
    pInserirEmbalador(1);
//  else
//    pInserirEstoque(1);

end;

procedure TFEsteira.pImprimeEtiq(vImprimir, vEstoque, VConfigura: Boolean);
var vinicio, vqtde, vcontador: Integer;
    vqrcode: String;

   procedure pInserir;
   begin
      dm.cdsDados.Append;
      dm.cdsDadosCodigo.Text  := edCodigo.Text;
      dm.cdsDadosDescricao.Text := lblNome.Caption;
      dm.cdsDadosPeso.Text    := edPeso.Text;
      dm.cdsDadosLote.Text    := edLote.Text;
      dm.cdsDadosLinha1.Text  := edLinha1.Text;
      dm.cdsDadosLinha2.Text  := edLinha2.Text;
      dm.cdsDadosLinha3.Text  := edLinha3.Text;
      dm.cdsDadosLinha4.Text  := edLinha4.Text;
      dm.cdsDadosLinha10.Text := edLinha10.Text;
      dm.cdsDadosLinha11.Text := edLinha11.Text;
      dm.cdsDadosQtde.Value   := edQtde.Value;
      dm.cdsDadosContador.Value := vinicio;
      if fSql(1,['Select VarieDes, CategDes, Calibre, CalibreDes From CadProdu Where Codigo=0'+Trim(edCodigo.Text)],1) then
      begin
        dm.cdsDadosVariedade.Text := dm.qrSql1.Fields[0].Text;
        dm.cdsDadosCategoria.Text := dm.qrSql1.Fields[1].Text;
        dm.cdsDadosCalibre.Text   := dm.qrSql1.Fields[2].Text;
        dm.cdsDadosLinha5.Text    := dm.qrSql1.Fields[3].Text;
      end;
      dm.cdsDadosBarra.Text := Copy(dm.cdsDadosCodigo.Text,3,5)+fPreencher(vinicio,7,'0',0);
      dm.cdsDadosID_Lote.Text := xvlot;
      dm.cdsDadosID_Lanc.Text := xvLan;

      //qrCode - SITE
//http://www.acwebsystem.com.br/sistemas/rastrear/11741540000142/202001/lt000000001pr001010080.html
//      vqrcode := 'https://www.acwebsystem.com.br/sistemas/rastrear/';
      vqrcode := 'https://www.acwebsystem.com.br/';

      // - Ano + Mes
      vqrcode := vqrcode + xanomes + '/';

      // - empresa
      vqrcode := vqrcode + xcpfcnpj + '/';
      // - Lote
//      vqrcode := vqrcode + 'lt'+fPreencher(xvLan,9,'0',0);
      vqrcode := vqrcode + 'R'+xvLan;
      // - Codigo produto
//      vqrcode := vqrcode + 'pr'+fPreencher(edCodigo.Text,9,'0',0)+'.html';
      vqrcode := vqrcode + 'P'+edCodigo.Text+'.html';

      dm.cdsDadosWEBQRCODEL1.Text := vqrcode;
      dm.cdsDadosWEBQRCODEL2.Text := 'R'+xvLan + 'P'+edCodigo.Text;
      dm.cdsDadosWEBQRCODEL4.Text := xdirini+'rastrear\qrcodetmp.bmp';

      dm.cdsDados.Post;
   end;
begin
  vcontador := edContador.Value + edQtde.Value;
  if vcontador > 10000 then vinicio := 100
  else vinicio := edContador.Value;

  //força excluir lançamentos
  dm.cdsDados.Close;
  fSql(3,['Delete From Etiqueta'],1);
  dm.cdsDados.Open;

  dm.cdsDados.First;
  while not dm.cdsDados.Eof do dm.cdsDados.Delete;

  //qrCode
  qrCodeExecute;

  for vqtde := 1 to edQtde.Value do //(edQtde.Value -1) do
  begin
    vinicio := vinicio + 1;
    pInserir;
  end;
  //Deve somar no estoque
  if vEstoque then
  begin
    TDBDesc.Text := dm.cdsDadosBarra.Text;
    //edCodigo.SetFocus;
    pInserirEstoque(edQtde.Value);
  end;

  if not dm.cdsDados.IsEmpty then
  begin
    //Se imprime e faz estoque - imprimir etiqueta
    if vImprimir then
    begin
      xRelTela := UpperCase('FfrmImpEtiqueta');
      Application.CreateForm(TFModeloRel, FModeloRel);
      FModeloRel.dsRelat.DataSet := dm.cdsDados;
      if not vConfigura then
      begin
        if FModeloRel.cdsDados.RecordCount <= 1 then
        begin
//          FModeloRel.ppRelatorio.ShowPrintDialog := True;
          FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir);
        end
        else begin
          FModeloRel.rzpMenu.Visible := False;
          FModeloRel.ShowModal;
        end;
        Sleep(300);
      end
      else
        FModeloRel.ShowModal;
    end;

    dm.cdsDados.Filtered := False;
  end;

  //Apaga tudo
  dm.cdsDados.Close;

  //força excluir lançamentos
  fSql(3,['Delete From Etiqueta'],1);

  dm.cdsDados.Open;
  dm.cdsDados.First;
  while not dm.cdsDados.Eof do dm.cdsDados.Delete;

  //Salva último
  pInserir;

  edContador.Value := vinicio + 1;
  edQtde.Value := 0;
  if gbCodigo.Visible then
    edCodigo.SetFocus;

end;

procedure TFEsteira.qrCodeExecute;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
//  stream: TStream;
  vqrcode: String;
  Scale: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
//  stream   := TMemoryStream.Create;
  try

//    vqrcode := 'https://www.acwebsystem.com.br/sistemas/rastrear/';
    vqrcode := 'https://www.acwebsystem.com.br/';

    // - Ano + Mes
    vqrcode := vqrcode + xanomes + '/';

    // - empresa
    vqrcode := vqrcode + xcpfcnpj + '/';
    // - Lote
//    vqrcode := vqrcode + 'lt'+fPreencher(xvLan,9,'0',0);
    vqrcode := vqrcode + 'R'+xvLan;
    // - Codigo produto
//    vqrcode := vqrcode + 'pr'+fPreencher(edCodigo.Text,9,'0',0)+'.html';
    vqrcode := vqrcode + 'P'+edCodigo.Text+'.html';

    QRCode.Data := vqrcode;
    QRCode.Encoding := TQRCodeEncoding(5);//cmbEncoding.ItemIndex);
    QRCode.QuietZone := 0;//StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Width := QRCode.Rows;
    QRCodeBitmap.Height := QRCode.Columns;
//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally

//    QRCodeBitmap.SaveToStream(stream);
    DeleteFile(xdirini+'rastrear\qrcodetmp.bmp');
//    qrcodebitmap.SaveToFile(xdirini+'rastrear\qrcodetmp.bmp');
    scale := 2;
    ImgQrCode.Width  := scale * 33;
    ImgQrCode.Height := scale * 33;

    ImgQrCode.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
    ImgQrCode.Picture.SaveToFile(xdirini+'rastrear\qrcodetmp.bmp');

    QRCode.Free;
    ImgQrCode.Visible := True;
//    stream.Free;

  end;

end;

procedure TFEsteira.sbpRelatorioClick(Sender: TObject);
begin


  xRelTela := UpperCase('FfrmEstResumo');
  DM.TEsteiraRel.Filtered := False;
  DM.TEsteiraRel.Close;
  DM.TEsteiraRel.TableName := DM.TEsteira.TableName;
  DM.TEsteiraRel.Open;
  DM.TEsteiraRel.Filter := 'LOTELANC = 0'+Trim(xvlan);
  DM.TEsteiraRel.Filtered := True;

  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := DM.TEsteiraRel;

  FModeloRel.sbMostrar.OnClick(FModeloRel.sbMostrar);

  DM.TEsteiraRel.Close;
  DM.TEsteiraRel.Filtered := False;

end;

procedure TFEsteira.MenuItem1Click(Sender: TObject);
begin

  tmLeitor.Enabled := False;
  xRelTela := UpperCase('FfrmEstResumo');
  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := DM.TEsteira;
  FModeloRel.ShowModal;
  tmLeitor.Enabled := True;

end;

procedure TFEsteira.pInserirEmbalador(vqtde: Integer);
var vde, vcodbar, vtxt:String;
    vcod, vi:Integer;
    vtrue: Boolean;
begin
  try
    lblmsg.Caption := '';
    vde := Trim(TDBDesc.Text);

    if Copy(vde,1,3)='999' then
    begin
      THora.Enabled:=False;
      dm.TEsteira.Cancel;
      //dm.cdsEsteira.Cancel;
      dm.JaeEsteira.Connected:=False;
      Halt;
    end;

    TDBDesc.Text:='';
    TDBDesc.SetFocus;

    vde := fPreencher(vde,13,'0',1); //Preencher direita
    vcodbar := vde;

    vtrue := True;

    //Se nao for leitura unica
    //N-so uma, S-por hora, D-Conta 20 vezes
    if ximpunica <> 'S' then
    begin
      if xcodreg > 10 then xcodreg := 1;

      if ximpunica = 'N' then
        vcodbar := vde + FormatDateTime('HH:MM', now)
      else
        vcodbar := vde;
      for vi := 1 to 10 do
      begin
        if xcodant[vi] = vcodbar then
          vtrue := False;
      end;
    end
    else begin
      xcodreg := 0;
      if xcodant[1] = vcodbar then
        vtrue := False;
    end;
    //fim

    if vtrue then
    begin
      xcodreg := xcodreg + 1;
      xcodant[xcodreg] := vcodbar;

      //Se mudou lote vai abrir 1 vez e pronto
      //if FileExists(xdirini+'DADOS\MUDOU' +xEsteiraArq+ '.INI') then
      if xMudouLote then
      begin
        xMudouLote := False;
        fLoteArquivo;
        fLoteLeitura;
        DeleteFile(xdirini+'DADOS\MUDOU' +xEsteiraArq+ '.INI');
      end;

      vtxt := fPreencher(vde,13,'0',1);
      vde  := Trim(Copy(vde, 1, 3)); //Os primeiros 3 digitos - Embalador
      vcod := StrToIntDef(vde,0);

      if dm.TCadEmbal.Locate('BarraCod', vcod, []) then
        fLoteSalvaDados(True, vde, vtxt, 0, vcod, vqtde, 0)
      else begin
        //Se nao encontrar Reabre tabelas
        fLoteAbreDados;
        if dm.TCadEmbal.Locate('BarraCod', vcod, []) then
          fLoteSalvaDados(True, vde, vtxt, 0, vcod, vqtde, 0)
        else begin
          //Se não encontrar Reabre configuração e tabelas
          fLoteArquivo;
          fLoteLeitura;
          if dm.TCadEmbal.Locate('BarraCod', vcod, []) then
            fLoteSalvaDados(True, vde, vtxt, 0, vcod, vqtde, 0)
          else begin
            lblmsg.Font.Color := clRed;
            lblmsg.Caption := 'Último código não encontrado, verificar cadastro: '+IntToStr(vcod);
          end;
        end;
      end;

      pnlValor.Caption := 'Quantidade total: '+FloatToStrF(xTotal,ffNumber,5,0);
      LData.Caption  := DateTimeToStr(Now);
      xApp:=0;
    end;
  except
    TDBDesc.Text:='';
    TDBDesc.SetFocus;
  end;

end;

procedure TFEsteira.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  With dbGrid1 do
  begin
    if (gdSelected in State) then
    begin
      Canvas.Font.Style := Canvas.Font.Style +[fsBold];
      Canvas.Brush.Color := $00E3D3C3;
    end;
    DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
  end;
end;

procedure TFEsteira.DBGrid2CellClick(Column: TColumn);
var vcod, x: Integer;
    vcol: String;
begin

  tmLeitor.Enabled := False;

  //if (dm.cdsEsteira.FieldByName('Codigo').asInteger = 0) then
  if (dm.Testeira.FieldByName('Codigo').asInteger = 0) then
  begin
    x := DBGrid2.SelectedIndex;
    vcol := vc[x];
    vcod := cdsCateg.FieldByName('COL'+vcol).AsInteger;

    //Abrir para colocar a marca
    xmarca := 0;
{
    while xmarca = 0 do
    begin

      if FfrmMarca = nil then
        Application.CreateForm(TFfrmMarca, FfrmMarca);
      FfrmMarca.ShowModal;

      if (xmarca > 0) then
      begin
}
        if dm.TCadProdu.Locate('Codigo', vcod, []) then
          fLoteSalvaDados(False, IntToStr(vcod), '', vcod, 0, 1, xmarca)
        else begin
          vcod := cdsCateg.FieldByName('COL'+vcol).AsInteger;
          fLoteSalvaDados(False, IntToStr(vcod), '', vcod, 0, 1, xmarca);
        end;

{     end;

    end;
}
  end;

  TDBDesc.SetFocus;
  tmLeitor.Enabled := True;

end;

procedure TFEsteira.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (cdsCategITEM.asInteger = 1) then
  begin
    With dbGrid2 do
    begin
      //Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      Canvas.Font.Size  := 12;
      Canvas.Font.Color := clblue;
      Canvas.Brush.Color := clBtnFace; //clSilver;//
      DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
    end;
  end;
end;


procedure TFEsteira.pRotinaCategoria;
var x, y: Integer;
   vf:String;
begin
  cdsCateg.Close;
  cdsCateg.CreateDataSet;

  for x := 1 to 37 do
    dbgrid2.Columns[x].Title.Caption := '';

  for x := 1 to 40 do
  begin

    vc[x] := '';

    cdsCateg.Append;
    cdsCategITEM.AsInteger := x;
    cdsCateg.Post;

  end;
  cdsCateg.First;

  y := 0;
  x := 0;
  dm.TCadProdu.First;
  while not dm.TCadProdu.eof do
  begin
    if ( dm.TCadProdu.FieldByName('VARIECOD').asString = xvcod) then
    begin

      if fPreencher(y,2,'0',0) <> fPreencher(dm.TCadProdu.FieldByName('CATEGCOD').asInteger,2,'0',0) then
      begin
        cdsCateg.First;

        y := dm.TCadProdu.FieldByName('CATEGCOD').asInteger;
        vf := fPreencher(y,2,'0',0);

        cdsCateg.Edit;
        cdsCateg.FieldByName('CAT'+vf).AsString  := fPreencher(Trim(FormatFloat('0.#',dm.TCadProdu.FieldByName('PESOLIQ').asFloat))+'kg', 6, ' ', 0);

        for x := 0 to 37 do
        begin
          if (dbgrid2.Columns[x].FieldName = ('CAT'+vf)) then
          begin
            vc[x] := vf;
            dbgrid2.Columns[x].Title.Caption := Trim(dm.TCadProdu.FieldByName('CATEGDES').asString);
            dbgrid2.Columns[x].Width := 60;
            dbgrid2.Columns[x].Visible := True;
          end;
        end;
        cdsCateg.Next;
      end;

      cdsCateg.Edit;
      cdsCateg.FieldByName('CAT'+vf).AsString  := dm.TCadProdu.FieldByName('CALIBREDES').asString;
      cdsCateg.FieldByName('COL'+vf).AsInteger := dm.TCadProdu.FieldByName('CODIGO').asInteger;
      cdsCateg.Next;

    end;

    dm.TCadProdu.Next;
  end;

  for x := 0 to 37 do
  begin
    if (dbgrid2.Columns[x].Title.Caption = '') then
    begin
      dbgrid2.Columns[x].Width := 0;
      dbgrid2.Columns[x].Visible := False;
    end;
  end;

  cdsCateg.First;

end;

end.

