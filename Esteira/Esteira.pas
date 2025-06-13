unit Esteira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Midaslib, Mask, DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, jpeg, DBTables,
  Buttons, DB, DBClient, Provider, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, QRPrntr, Spin, RzPanel,
  IniFiles, DelphiZXingQRCode, ppDesignLayer, ppParameter, System.ImageList,
  Vcl.ImgList, RzGroupBar;

type
  TFEsteira = class(TForm)
    TIniciar: TTimer;
    pnlForm: TPanel;
    PTela: TPanel;
    GBDados: TGroupBox;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    TDBDesc: TEdit;
    GroupBox5: TGroupBox;
    LData: TLabel;
    ppRelatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDados: TppBDEPipeline;
    dsRelat: TDataSource;
    lblTitulo: TLabel;
    PImprimir: TPanel;
    PDados: TPanel;
    Panel8: TPanel;
    Label7: TLabel;
    Memo1: TMemo;
    pnlRegistros: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    sb7: TSpeedButton;
    edQtde: TSpinEdit;
    Label2: TLabel;
    Label8: TLabel;
    edLinha4: TEdit;
    edLinha3: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edLinha2: TEdit;
    Label11: TLabel;
    edPeso: TEdit;
    edLote: TEdit;
    Label12: TLabel;
    Label19: TLabel;
    edCodigo: TEdit;
    Label14: TLabel;
    edContador: TSpinEdit;
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    lblmsg: TLabel;
    pnlValor: TPanel;
    lblNome: TLabel;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    titVersao: TPanel;
    sb20: TSpeedButton;
    sb10: TSpeedButton;
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
    SBP2: TSpeedButton;
    Label13: TLabel;
    Label15: TLabel;
    ImgQrCode: TImage;
    Label16: TLabel;
    edLinha1: TMaskEdit;
    edLinha11: TMaskEdit;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    TMudou: TTimer;
    gbEmpresa: TGroupBox;
    cbEmpresa: TComboBox;
    tmpImprimeBloco: TTimer;
    dsEmpresa: TDataSource;
    ppEmpresa: TppBDEPipeline;
    edLinha10: TEdit;
    edEmpresa: TEdit;
    Panel3: TPanel;
    Label17: TLabel;
    Edit6: TEdit;
    tmpFecharSistema: TTimer;
    SpeedButton1: TSpeedButton;
    RzPnlMenu: TPanel;
    grpBarPrinc: TRzGroupBar;
    rzgClassif: TRzGroup;
    rzgAvulsa: TRzGroup;
    rzgProduc: TRzGroup;
    ImageList1: TImageList;
    lblLoteStatus: TLabel;
    procedure TIniciarTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TDBDescKeyPress(Sender: TObject; var Key: Char);
    procedure sb7Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure cbCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure edCodigoExit(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Excluir1Click(Sender: TObject);
    procedure tmLeitorTimer(Sender: TObject);
    procedure SBP2Click(Sender: TObject);
    procedure edQtdeEnter(Sender: TObject);
    procedure TMudouTimer(Sender: TObject);
    procedure SBPEtiquetaClick(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure tmpImprimeBlocoTimer(Sender: TObject);
    procedure edEmpresaExit(Sender: TObject);
    procedure tmpFecharSistemaTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rzgSistemaItems0Click(Sender: TObject);
    procedure rzgSistemaItems1Click(Sender: TObject);
    procedure rzgSistemaItems2Click(Sender: TObject);
    procedure RzGroup11Items3Click(Sender: TObject);
    procedure rzgSistemaItems3Click(Sender: TObject);
    procedure RzGroup11Items5Click(Sender: TObject);
    procedure RzGroup11Items6Click(Sender: TObject);
    procedure RzGroup6Items0Click(Sender: TObject);
    procedure RzGroup6Items1Click(Sender: TObject);
    procedure RzGroup6Items2Click(Sender: TObject);
    procedure RzGroup11Items0Click(Sender: TObject);
    procedure RzGroup11Items1Click(Sender: TObject);
    procedure RzGroup11Items2Click(Sender: TObject);
    procedure RzGroup11Items4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    vImprimirDireto: Boolean;
    QRCodeBitmap: TBitmap;
    procedure pLerConexao;
    procedure pLiberarMenu;

  public

    procedure fLoteLeitura;
    procedure fLoteArquivo;
    procedure fLoteAbreDados;
    procedure fLoteSalvaDados(vde:String; vcod:Integer; vqtde: Integer);
    procedure pImprimeEtiquetaTampa(vvLanc:Integer);
    procedure pInserirComboBox;
    procedure pImprimeEtiq(vImprimir, vEstoque, vConfigura:Boolean);
    procedure qrCodeExecute(qrLan, qrCod: String);
    procedure pInserirEstoque(vqtde: Integer);
    procedure pImprimeEtiquetaBloco(viebQtde: Integer);
    procedure pImprimeBloco(vibLan, vibTable: String; vibCodigo, viebQtde: Integer);
    procedure pTotaliza;
    procedure pAbreConexao(vConexao: String);

  end;

  procedure fPreview(Sender: TObject);

var
  FEsteira: TFEsteira;
  xTotal: Double;
  xpalImp,xpaletnr,xpalqtd,xcodreg,xLanc,xApp,xComando:Integer;
  xpalemp,xpalsim,ximpunica,ximpetiq,ximplocal,ximpEstoq,ximpLote:String;
  xsim,ximp,xesteira,xdirini,xDirSi,xDirDB:String;
  vrelarquivo,xvlan,xvlot,xvcod,xvdes,xvcodanterior,xvlotant,xvlcl:String;
  xcodant: array[1..30] of String;
  xcpfcnpj, xanomes: String;
  xBDConexao, xBASE1, xBASE2, xBDAlias: String;
  xBDLocal, xBDPorta, xBDPasta, xBDBase, xBDPath: String;
  xVarie, xdebarra, xFechado: String;
  xBlocoTempo, xBlocoQtde: Integer;
  xAutomatico: Boolean;

implementation

uses Data, Rotina, rlImprimir, zModeloRel, frmRomanAbre,
     frmImpEtiquetaFundo, frmImpEtiquetaBloco, frmCategoria, Palet,
  frmRomanFecha, frmImpEtiqBins, frmImpEtiqBinsSaida, frmImpEtiqueta,
  frmRomaneioTara, frmRomaneioEmpres, frmRomaneioEntra, Login, PaletAvulso;

{$R *.DFM}

procedure TFEsteira.FormCreate(Sender: TObject);
var vi: Integer;
begin

  QRCodeBitmap := TBitmap.Create;

  for vi := 1 to 30 do
    xcodant[vi] := '';

  xcodreg := 0;
  xcomando:= 0;
  xvcodanterior := '';
  xSenha := '5nh53<7pd66]6aa66]' + frCrip('C', FormatDateTime('ddmm', now));
  xEmp    := 1;
  xAcesso := 1;

  titVersao.Caption := 'Versão:'+frVersao;

  pLerConexao;

end;


procedure TFEsteira.FormShow(Sender: TObject);
begin

  pAbreConexao(xBDConexao);

  vImprimirDireto := False;
  xAutomatico := False;

//  TIniciar.Enabled:=True;

  //Aqui deve abrir o login
  frForm(TFLogin, FLogin);

end;

procedure fPreview(Sender: TObject);
begin
  try
    if FImprimir=Nil then Application.CreateForm(TFImprimir, FImprimir);
       FImprimir.qrImprimir.QRPrinter:=TQRPrinter(Sender);
       FImprimir.WindowState:=wsMaximized;
       FImprimir.Show;
  except
    ShowMessage('Erro no Visualizador de Impressão!');
  end;
end;

procedure TFEsteira.TIniciarTimer(Sender: TObject);
var vArq:TextFile;
    xAno, xExiste:String;
begin
  if xcomando=0 then
  begin
     Edit1.Text:=''; Edit2.Text:=''; Edit3.Text:='';
     Edit4.Text:=''; Edit5.Text:=''; Edit6.Text:='';
     Memo1.Text:='';
     PDados.Visible:=False;
     GBDados.Visible:=False;
     PImprimir.Visible:=False;
     TIniciar.Enabled:=False;
     TIniciar.Interval:=10;
     xcomando:=10;
     xAno:=Copy(DateToStr(Date),7,4);
     TDBDesc.Text:='';
//     Application.ProcessMessages;

     //Se for antes das 21:00 deve ligar programa de autofechamento
     tmpFecharSistema.Enabled := False;
     if (Time < StrToTime('21:00:00')) then
     begin
       if (Time > StrToTime('17:00:00')) then
       begin
         tmpFecharSistema.Interval :=  (1000 * 60) * 60; //1 hora
         titVersao.Font.Style := [fsUnderline];
         tmpFecharSistema.Enabled := True;
       end;
     end;

     //Banco de dados
     xdirsi:=ExtractFilePath(Application.ExeName);
     //xdirdb:=xdirsi+'DADOS\BDFRUTIS'+xDBConexao+'.MDB';
     xdirdb:=xdirsi+'Dados\Conexao.ini';
     if not FileExists(xdirdb) then begin
       ShowMessage('Sistema Paralizado ou Fora da Rede!'+#13+xdirdb);
       Halt;
     end;

     //FIREDAC
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
          Close;
          Halt;
        end;
     end;

     xdirini:=ExtractFilePath(Application.ExeName);
     ximpunica := 'S';
     ximpetiq  := 'N';
     ximplocal := 'N';
     ximpestoq := 'N';
     ximplote  := 'N';

     //Criar pasta rastrear
     if not DirectoryExists(xdirini+'rastrear'+xBDConexao) then
     begin
       CreateDir(xdirini+'rastrear'+xBDConexao);
       Sleep(500);
       if not DirectoryExists(xdirini+'rastrear'+xBDConexao) then
         CreateDir(xdirini+'rastrear'+xBDConexao);
     end;

     //Primeiro verifica local - porque é configuração por micro - caso contrario pega geral
     if fileexists('C:\ACWebFruits\Packing\Leitorbarra.ini') then
     begin
       AssignFile(varq,'C:\ACWebFruits\Packing\Leitorbarra.ini');
       Reset(varq);

       //Impressão, Tempo, qtde
       Readln(varq,ximpetiq);
       ximpetiq    := ximpetiq + '                    ';
       xBlocoTempo := StrToIntDef(Trim(Copy(ximpetiq,16,3)),0);
       xBlocoQtde  := StrToIntDef(Trim(Copy(ximpetiq,21,3)),0);
       ximpetiq    := Trim(Copy(ximpetiq,11,3));

       //Tipo de impressão direta, verifica codigo
       Readln(varq,ximpunica);
       ximpunica := Trim(Copy(ximpunica,11,3));

       //Impressão -> Opção mostra tudo
       //Imprimir = S
       //Uma vez  = S
       //Local    = S    E    L

       Readln(varq,ximplocal);
       ximplocal := ximplocal + '                    ';
       ximpestoq := Trim(Copy(ximplocal,16,3)); //Faz estoque
       ximplote  := Trim(Copy(ximplocal,21,3)); //Mostra menu
       ximplocal := Trim(Copy(ximplocal,11,3)); //Imprimir manual

       CloseFile(varq);
     end
     else begin
       if fileexists(xdirini+'Dados\Leitorbarra.ini') then
       begin
         AssignFile(varq,xdirini+'Dados\Leitorbarra.ini');
         Reset(varq);

         //Impressão, Tempo, qtde
         Readln(varq,ximpetiq);
         ximpetiq    := ximpetiq + '                    ';
         xBlocoTempo := StrToIntDef(Trim(Copy(ximpetiq,16,3)),0);
         xBlocoQtde  := StrToIntDef(Trim(Copy(ximpetiq,21,3)),0);
         ximpetiq    := Trim(Copy(ximpetiq,11,3));

         //Tipo de impressão direta, verifica codigo
         Readln(varq,ximpunica);
         ximpunica := Trim(Copy(ximpunica,11,3));

         //Impressão -> Opção mostra tudo
         //Imprimir = S
         //Uma vez  = S
         //Local    = S    E    L

         Readln(varq,ximplocal);
         ximplocal := ximplocal + '                    ';
         ximpestoq := Trim(Copy(ximplocal,16,3)); //Faz estoque
         ximplote  := Trim(Copy(ximplocal,21,3)); //Mostra menu
         ximplocal := Trim(Copy(ximplocal,11,3)); //Imprimir manual

         CloseFile(varq);
       end;
     end;
//{     if (pos('EsteiraFixo', Application.ExeName) > 0 ) then
       PImprimir.Visible := ximplocal = 'S';
//     else
//       PImprimir.Visible := False;}

     sb7.Visible  := ximpestoq = 'E';
     sb20.Visible := ximpestoq = 'E';
     RzPnlMenu.Visible := ximplote  = 'L'; //Mostra menu

     //Geral - continuação
     ximp:='00'; xsim:='nao';
     xesteira := '1';//copy(xesteira,1,2);
     pnlForm.Top  := (Height - pnlForm.Height) div 2;
     pnlForm.Left := (Width - pnlForm.Width) div 2;

     //Aqui deve abrir o login
//     frForm(TFLogin, FLogin);

     fLoteArquivo;
     fLoteLeitura;

     //Impressão em bloco
     // -> Usar o temporizador
     //SBPEtiquetaBloco.Visible := (ximpetiq = 'B');
     RzgAvulsa.Items[5].Visible := (ximpetiq = 'B');
     if (ximpetiq = 'B') then
     begin

       tmpImprimeBloco.Interval := (60000 * xBlocoTempo);

       if (xBlocoTempo = 0) then
         tmpImprimeBloco.Enabled := False
       else begin
         if not tmpImprimeBloco.Enabled then
           tmpImprimeBloco.Enabled := True;
       end;

     end;

     vrelarquivo := xDirSi + UpperCase('Listagem'+xBDConexao+'\FfrmImpEtiqueta_0001.rtm');
     if (ximpetiq <> 'S') then
     begin
       if not FileExists(vrelarquivo) then
         ximpetiq := 'N';
     end;
     PDados.Visible:=True;
     GBDados.Visible:=True;
     GBDados.Enabled:=True;

     pInserirComboBox;

     if dm.TEsteira.Active then
       dm.TEsteira.Last;

     pLiberarMenu;

     TDBDesc.SetFocus;
     if (pImprimir.Visible) then
       tmLeitor.Enabled := False
     else
       tmLeitor.Enabled := True;
  end;
end;

procedure TFEsteira.tmLeitorTimer(Sender: TObject);
begin
  if not pImprimir.Visible then
  begin
    try
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
  pInserirEstoque(0);
  Application.ProcessMessages;

end;

procedure TFEsteira.fLoteArquivo;
var vArq:TextFile;
    xdata, xdatav: String;
begin
  try

    //Precisa abrir para ver se não mudou
    xvlotant := xvlot;
    AssignFile(varq,xdirini+'DADOS\Config'+xBDConexao+'.INI');
    Reset(varq);
    Readln(varq,xvlot);
    Readln(varq,xvcod);
    Readln(varq,xvdes);
    Readln(varq,xvlan);
    Readln(varq,xvlcl);
    Readln(varq,xdata);
    Readln(varq,xdatav);
    CloseFile(varq);
    xvlot := Trim(Copy(xvlot,11,20));
    xvcod := Trim(Copy(xvcod,11,20));
    xvdes := Copy(xvdes,11,50);
    xvlan := Trim(Copy(xvlan,11,20));
    xvlcl := Trim(Copy(xvlcl,11,20));
    lblTitulo.Caption := 'Registro:'+xvlan+' - Variedade: '+ xvcod +' - '+ xvdes;

    edLote.Text   := xvlcl;

    if (trim(edLinha10.Text) = '') then
      edLinha10.Text:= xvlcl;

    xVarie := IntToStr(StrToIntDef(fPreencher(xvCod, 3, '0', 0),0));

    if ((xdata <> '') and (Trim(Copy(edLinha1.Text,1,1))= '')) then
      edLinha1.Text := Trim(Copy(xdata,11,20));
    if ((xdatav <> '') and (Trim(Copy(edLinha11.Text,1,1))= ''))then
      edLinha11.Text := Trim(Copy(xdatav,11,20));

    try
      if (StrToDate(edLinha1.Text) < Date) then
        edLinha1.Text := DateToStr(Date);
    except

    end;

  except
  end;
end;

procedure TFEsteira.edCodigoExit(Sender: TObject);
var vde:String;
begin
  try
    vde:=Trim(edCodigo.Text);
    if Copy(vde,1,3)='999' then
    begin
      TIniciar.Enabled:=False;
      dm.TEsteira.Cancel;
      dm.BDConexao.Connected:=False;
      Halt;
    end;

    if (length(vde) < 5) then
      exit;

    //Precisa saber o tamanho da variedade 2 ou 3 digitos
    if (copy(vde,1, Length(xvarie)) <> xvarie) then
    begin

      //Inseri variedade + categoria + calibre
      if (length(vde) < 7) then
        vde := xvarie+copy(vde,1,5);

      edCodigo.Text := vde;

    end;

    fLoteArquivo;

    //Verifica se já está aberto
    if not dm.TCadProdu.Active then
      fLoteAbreDados
    else begin
      if not dm.TCadProdu.Locate('codigo', vde, []) then
        fLoteAbreDados;
    end;

    if not fENumero(vde) then
    begin

      if pImprimir.Visible then
      begin

        FPQProduto(xvarie);

        edCodigo.Text := xpqResul;
        edCodigo.SetFocus

      end;

    end;

    if dm.TCadProdu.Locate('codigo', vde, []) then
    begin

      if (dm.TCadProdu.FieldByName('PesoLiq').asFloat > 0.999) then
        edPeso.Text   := dm.TCadProdu.FieldByName('PesoLiq').asString+' kg'
      else
        edPeso.Text   := FormatFloat('0', dm.TCadProdu.FieldByName('PesoLiq').asFloat * 1000)+' gr';

      lblNome.Caption := dm.TCadProdu.FieldByName('Descricao').asString;

      //Mostra a classe da categoria
      if dm.TCadCateg.Locate('Codigo', dm.TCadProdu.FieldByName('CategCod').asInteger, []) then
        if (trim(dm.TCadCateg.FieldByName('CodClass').asString) <> '') then
          edLinha10.Text := dm.TCadCateg.FieldByName('CodClass').asString;

    end
    else begin
//      ShowMessage('Código não encontrado ou inválido!');

      if pImprimir.Visible then
      begin
        fPqProduto(xvarie);

        edCodigo.Text := xpqResul;
        edCodigo.SetFocus
      end;

    end;
  except
  end;
end;

procedure TFEsteira.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_F7) then
  begin

    fPqProduto(xvarie);
    edCodigo.Text := xpqResul;
    edCodigo.SetFocus

  end;
end;

procedure TFEsteira.edEmpresaExit(Sender: TObject);
begin

  if Copy(cbEmpresa.Text,1,2) = '01' then
    xBDConexao := ''
  else
    xBDConexao := Copy(cbEmpresa.Text,1,2);

  xcodreg := 0;
  xcomando:= 0;
  xvcodanterior := '';
  xTotal := 0;

  TIniciar.Enabled:=True;

  Sleep(2000);

end;

procedure TFEsteira.edQtdeEnter(Sender: TObject);
begin
  ImgQrCode.Visible := False;
end;

procedure TFEsteira.Excluir1Click(Sender: TObject);
begin
  if not PImprimir.Visible then Exit;
  if not rzgClassif.Items[1].Enabled then Exit;

  if frPerg(PChar('Deseja excluir do estoque?'+#13#10+'Item: '+dm.TEsteira.FieldByName('Lanc').asString)) then
  begin

    dm.TEsteira.Delete;
    dm.TEsteira.ApplyUpdates(-1);

    pTotaliza;

  end;
end;

procedure TFEsteira.fLoteAbreDados;
begin
  try
    dm.TEmpresa.Close;
    dm.TEmpresa.Open;
    dm.TEmpresa.First;

    xcpfcnpj := frSoNumero(dm.TEmpresa.FieldByName('cpf').asString);
    if trim(xcpfcnpj) = '' then
      xcpfcnpj := 'registro';

    //lblEmpresa.Caption := Trim(dm.TEmpresa.FieldByName('descricao').asString);
    //lblEmpresa.Caption := lblEmpresa.Caption + ' ('+Trim(dm.TEmpresa.FieldByName('cpf').asString)+')';

    if xBDConexao = '02' then
      cbEmpresa.Color := $00B0B0FF
    else if xBDConexao = '03' then
      cbEmpresa.Color := $00DDFFFF
    else if xBDConexao = '04' then
      cbEmpresa.Color := $00DDDDDD
    else begin

      if (Trim(XBASE1) <> '') and (Trim(XBASE2) = '') then
      begin

        cbEmpresa.Items.Clear;
        cbEmpresa.Items.Add('01-'+Trim(dm.TEmpresa.FieldByName('descricao').asString));
        cbEmpresa.Text := '01-'+Trim(dm.TEmpresa.FieldByName('descricao').asString);
        xBDConexao := '';
        gbEmpresa.Enabled := False;

      end;
      cbEmpresa.Color := $008FE8C9;

    end;

    //Abre produto por variedade
    dm.TCadProdu.Close;
    dm.TCadProdu.Sql.Clear;
    dm.TCadProdu.Sql.Add('select * from cadprodu ');
    dm.TCadProdu.Sql.Add(' where ativo = ''S''');
    dm.TCadProdu.Sql.Add('   and variecod = 0'+xvarie);
    dm.TCadProdu.Sql.Add(' order by codigo');
    dm.TCadProdu.Open;
    pnlRegistros.Hint := 'Produtos qtde. '+IntToStr(dm.TCadProdu.RecordCount);

    dm.TCadCateg.Close;
    dm.TCadCateg.Open;

    if (ximpetiq <> 'N') then
    begin
      dm.TEtiqueta.Close;
      dm.TEtiqueta.Open;
//  /não limpar antes de salvar os dados
//      while not dm.TEtiqueta.eof do dm.TEtiqueta.delete;
    end;
  except

    lblTitulo.Caption := 'Registro:'+xvlan+' - Variedade: '+ xvarie;
    ShowMessage('Não conseguiu abrir produtos!');

  end;
end;

procedure TFEsteira.fLoteLeitura;
var vlotant, vFilterExist: String;
begin
  if Trim(vlotant)<>Trim(xvlot) then
    xcomando:=0;

  pnlValor.Caption := 'Quantidade total: '+FloatToStrF(xTotal,ffNumber,5,0);

  //xTableName := 'ESTEIRAV'+ xvarie +'L'+fPreencher(xvLan, 4, '0', 0);

  //Verifica se não mudou esteira - lote - variedade
  xEsteiraTabela := 'ESTEIRAC'+frPree(xvCod,3,'0',0);
  vFilterExist := 'Esteira = 0'+xEsteira
                + ' and Lote = 0'+xvLot
                + ' and VarieCod= 0'+xvCod;
  if (dm.TExiste.TableName <> xEsteiraTabela) or
     (dm.TExiste.Filter    <> vFilterExist)   then
  begin
    try
      fLoteAbreDados;
      if dm.TExiste.Exists then
      begin
        fAbreEsteira;
        dm.TEsteira.Last;
      end
      else begin

        xcodreg := 0;
        xcomando:= 0;
        xvcodanterior := '';
        xTotal := 0;

        TIniciar.Enabled:=True;
        Sleep(2000);

        //Tenta outra vez - para abrir a conexao
        //pVerificaTabela;
        //fLoteAbreDados;

        //Se não tiver a tabela vai tentar criar -> para não dar erro
        dm.pCriarTabelaEsteira(xvcod,'0000');

        dm.TExiste.TableName := xEsteiraTabela;
        if dm.TExiste.Exists then
        begin
          fAbreEsteira;
          dm.TEsteira.Last;
          if TDBDesc.Focused then
            TDBDesc.SetFocus;
        end
        else begin

          dm.TExiste.TableName := 'ESTEIRAC001';
          xEsteiraTabela := dm.TExiste.TableName;

          if dm.TExiste.Exists then
            fAbreEsteira;

          if TDBDesc.Focused then
            TDBDesc.SetFocus;

        end;

      end;
    except
      ShowMessage('Lote não encontrado, deve abrir um lote válido!'+#13+dm.TExiste.TableName);

      xcodreg := 0;
      xcomando:= 0;
      xvcodanterior := '';
      xTotal := 0;

      TIniciar.Enabled:=True;
      Sleep(2000);

      dm.TExiste.Close;
      dm.TExiste.TableName := xEsteiraTabela;
      if dm.TExiste.Exists then
      begin

        fAbreEsteira;
        dm.TEsteira.Last;
        if TDBDesc.Focused then
          TDBDesc.SetFocus;

      end
      else begin
        dm.TExiste.TableName := 'ESTEIRAC001';
        xEsteiraTabela := dm.TExiste.TableName;
        if dm.TExiste.Exists then
          fAbreEsteira;
        if TDBDesc.Focused then
          TDBDesc.SetFocus;
      end;
    end;
  end
  else begin
    if not dm.TEsteira.Active then
      fAbreEsteira;
  end;

  if dm.TExiste.Exists then
  begin

    pTotaliza;

    xanomes := '';

    fSql(1,['Select Data, Fecha From Roman where Lanc = 0'+xvLan],1);
    if (Trim(dm.qrSql1.Fields[0].asString) <> '') then
      xanomes := Copy(DateToStr(dm.qrSql1.Fields[0].Value),7,4);
    if (Trim(xanomes) = '') then
      xanomes := Copy(DateToStr(Date),7,4);
    xFechado := dm.qrSql1.Fields[1].asString;

    lblLoteStatus.Visible := (xFechado = 'S');

  end;
end;

procedure TFEsteira.fLoteSalvaDados(vde:String; vcod:Integer; vqtde: Integer);
var vFilterExist: String;
begin
  try

    if (ximpetiq = 'B') then
    begin
      edCodigo.Text := dm.TCadProdu.FieldByName('Codigo').asString;
      lblNome.Caption := dm.TCadProdu.FieldByName('Descricao').asString;

      if (dm.TCadProdu.FieldByName('PesoLiq').asFloat > 0.999) then
        edPeso.Text   := dm.TCadProdu.FieldByName('PesoLiq').asString+' kg'
      else
        edPeso.Text   := FormatFloat('0', dm.TCadProdu.FieldByName('PesoLiq').asFloat * 1000)+' gr';

      //Mostra a classe da categoria
      if dm.TCadCateg.Locate('Codigo', dm.TCadProdu.FieldByName('CategCod').asInteger, []) then
        if (trim(dm.TCadCateg.FieldByName('CodClass').asString) <> '') then
          edLinha10.Text := dm.TCadCateg.FieldByName('CodClass').asString;

      //Vem da tela
      if (Trim(Copy(edLinha1.Text,1,2)) = '') then
        edLinha1.Text   := DateToStr(Date);

    end;

    if not dm.TEsteira.Active then
      fAbreEsteira;

    //Verifica se não mudou esteira - lote - variedade
    vFilterExist := 'Esteira = 0'+xEsteira
                  + ' and Lote = 0'+xvLot
                  + ' and VarieCod= 0'+xvCod;

    if Trim(vFilterExist) <> Trim(dm.TExiste.Filter) then
    begin
      dm.TExiste.Close;
      fLoteLeitura;
    end;

    with dm.TEsteira do
    begin
       xlanc:=xlanc+1;

       Append;
       //FieldByName('Lancit').Value    := 0;
       FieldByName('Lanc').Value      := xlanc;
       FieldByName('Esteira').Value   := StrToIntdef(xEsteira,1);
       FieldByName('Lote').Value      := StrToIntdef(xvlot,0);
       FieldByName('VarieCod').Value  := StrToIntdef(xvarie,0);
       FieldByName('VarieDes').Value  := xvdes;
       FieldByName('Qtde').asFloat    := vqtde;
       FieldByName('Barra').asString  := Trim(vde);
       FieldByName('Numero').asInteger:= StrToIntDef(vde,0);
       FieldByName('Codigo').asInteger:= vcod;
       FieldByName('Descricao').Text  := dm.TCadProdu.FieldByName('Descricao').Text;

       if ((xBlocoTempo > 0) and (xAutomatico)) then
         FieldByName('QtdeAnt').asFloat := 0
       else
         FieldByName('QtdeAnt').asFloat := 1;

       FieldByName('QtdeAtu').asFloat := 0;
       FieldByName('Texto1').Text  := edLinha1.Text;
       FieldByName('Texto2').Text  := edLinha11.Text;
       FieldByName('Texto3').Text  := edLinha10.Text;
       FieldByName('Texto4').Text  := FormatDateTime('hh:mm:ss', Now);
       Edit6.Text := ' '+FieldByName('Texto4').Text;
       FieldByName('Texto5').Text  := xdebarra;
       xdebarra := '';

       //Nova tabela
       if (Pos('ESTEIRAC', xEsteiraTabela) > 0) then
       begin
         FieldByName('DATALANC').Value     := Date;
         FieldByName('HORALANC').AsString  := TimeToStr(Now);
         FieldByName('LOTELANC').AsInteger := StrToIntDef(xvlan,0);
       end;

       Post;
       ApplyUpdates(-1);

       //Variedade 2 ou 3
       Edit2.Text := Copy(vde,1,2) +'.'+ Copy(vde, 3,3);
       vcod:=dm.TCadProdu.FieldByName('Calibre').asInteger;

            if vcod=305 then vde:='GG'
       else if vcod=325 then vde:='G'
       else if vcod=355 then vde:='M'
       else if vcod=385 then vde:='P'
       else if vcod=395 then vde:='PP'
       else vde := dm.TCadProdu.FieldByName('Calibre').Text;

       Edit1.Text := ' '+fPreencher(xvlot,4,'0',0)+' - Lote Class.:'+xvlcl+'  -  Reg.:'+fPreencher(xvlan,6,'0',0);
       Edit2.Text := ' '+xvarie+'.'+Edit2.Text;
       Edit3.Text := ' '+dm.TCadProdu.FieldByName('CategDes').Text;
       Edit4.Text := ' '+vde;
       Edit5.Text := ' '+FloatToStrF(dm.TCadProdu.FieldByName('PesoLiq').asFloat,ffNumber,10,0)+' kg';
       Memo1.Text := ' '+dm.TCadProdu.FieldByName('Descricao').Text;

       xTotal := xTotal + vqtde;

       lblmsg.Font.Color := clNavy;
       lblmsg.Caption := 'OK, código inserido...'+Edit2.Text;

    end;

    if vImprimirDireto then
    begin

      //Impressão individual
      if (ximpetiq = 'S') then
        pImprimeEtiquetaTampa(xlanc);

    end;

    vImprimirDireto := False;

  except
    on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
  end;

end;

procedure TFEsteira.TDBDescKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key := #0;

    vImprimirDireto := True;
    xAutomatico     := True;
    pInserirEstoque(1);

  end;
end;

procedure TFEsteira.pInserirEstoque(vqtde: Integer);
var vde, vcodbar:String;
    vcod, vi:Integer;
    vtrue: Boolean;
begin
  try
    try
      lblmsg.Caption := '';
      vde  := Trim(TDBDesc.Text);
      xdebarra := vde;

      if Copy(vde,1,3)='999' then
      begin
        TIniciar.Enabled:=False;
        dm.TEsteira.Cancel;
        dm.BDConexao.Connected:=False;
        Halt;
      end;

      TDBDesc.Text:='';
      TDBDesc.SetFocus;

      if (xFechado = 'S') then
      begin
        lblmsg.Caption := 'Lote está FECHADO, precisa reabrir para continuar!';
        lblLoteStatus.Visible := True;
        Exit;
      end
      else
        lblLoteStatus.Visible := False;

      //Se codigo menor que 13 deve colocar zero na frente - devido ser categoria - extra
      if (length(trim(vde)) = 12) then
        vde := '0'+vde;

      vtrue := False;
      vde := fPreencher(vde,13,'0',1);
      if (StrToIntDef(Copy(vde,1,7),0) <> 0) then
        vtrue := True;

      vcodbar := vde;

      //Se nao for leitura unica
      //N-so uma, S-por hora, D-Conta 20 vezes
      if ximpunica <> 'S' then
      begin
        if xcodreg >= 30 then xcodreg := 1;

        if ximpunica = 'N' then
          vcodbar := vde + FormatDateTime('HH:MM', now);

        for vi := 1 to 30 do
        begin

          if xcodant[vi] = vcodbar then
          begin
            vtrue := False;
            break;
          end;

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

        if FileExists(xdirini+'DADOS\MUDOU.INI') then
        begin
          fLoteArquivo;
          fLoteLeitura;
          DeleteFile(xdirini+'DADOS\MUDOU.INI');
        end;

        //Aqui le etiqueta categoria+calibre
        vde := Copy(fPreencher(vde,13,'0',1),1,5);

        //Criar codigo com a variedade 2 ou 3 digitos
        vcod := StrToIntdef(xvarie+fPreencher(vde,5,'0',0),0);

        //Procura produto
        if dm.TCadProdu.Locate('Codigo', vcod, []) then
          fLoteSalvaDados(vde, vcod, vqtde)

        else begin
          //Se nao encontrar Reabre tabelas
          fLoteAbreDados;
          if dm.TCadProdu.Locate('Codigo', vcod, []) then
            fLoteSalvaDados(vde, vcod, vqtde)

          else begin
            //Se não encontrar Reabre configuração e tabelas
            fLoteArquivo;
            fLoteLeitura;
            if dm.TCadProdu.Locate('Codigo', vcod, []) then
              fLoteSalvaDados(vde, vcod, vqtde)

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
  finally
    TDBDesc.Text:='';
    TDBDesc.SetFocus;
  end;

end;

procedure TFEsteira.pImprimeEtiquetaTampa(vvLanc:Integer);
var vqrcode: String;
begin
  if (ximpetiq <> 'N') then
  begin

    if not dm.TEtiqueta.Active then dm.TEtiqueta.Open;

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

      //Mostra a classe da categoria
      if dm.TCadCateg.Locate('Codigo', dm.TCadProdu.FieldByName('CategCod').asInteger, []) then
        if (trim(dm.TCadCateg.FieldByName('CodClass').asString) <> '') then
          dm.TEtiquetaLinha10.Text := dm.TCadCateg.FieldByName('CodClass').asString;

    end;
    dm.TEtiquetaBarra.Text := Copy(dm.TEtiquetaCodigo.Text,3,5) + fPreencher(vvlanc,7,'0',0);
    edCodigo.Text := dm.TEtiquetaCodigo.Text;

      //qrCode - SITE
//https://www.acwebsystem.com.br/sistemas/rastrear/11741540000142/202001/lt000000001pr001010080.html
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
      dm.TEtiquetaWEBQRCODEL4.Text := xdirini+'rastrear'+xBDConexao+'\qrcodetmp.bmp';

    dm.TEtiqueta.Post;

    qrCodeExecute(xvLan, dm.TEtiquetaCodigo.Text);

    if not dm.TEtiqueta.IsEmpty then
    begin
      dsRelat.DataSet := dm.TEtiqueta;
      ppRelatorio.Template.FileName := vrelarquivo;
      ppRelatorio.Template.LoadFromFile;
//      ppRelatorio.DeviceType:='Screen';
      ppRelatorio.ShowPrintDialog := False;
      ppRelatorio.DeviceType:='Printer';
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

procedure TFEsteira.SBP2Click(Sender: TObject);
var vcod:String;
begin
  FPQForneCooper;
  vcod := xpqResul;
  if fTra(1,['Select Descricao,Cpf From CadForne Where Codigo=0'+Trim(vcod)],1) then
  begin
    edLinha3.Text:=dm.qrSqlTra.Fields[0].Text;
    edLinha4.Text:=dm.qrSqlTra.Fields[1].Text;
  end;
  edLinha3.SetFocus;
end;

procedure TFEsteira.SBPEtiquetaClick(Sender: TObject);
begin

//  PImprimir.Visible := not PImprimir.Visible;

//  tmLeitor.Enabled := not PImprimir.Visible;

end;

procedure TFEsteira.SpeedButton1Click(Sender: TObject);
begin
  fPqProduto(xvarie);
  edCodigo.Text := xpqResul;
  edCodigo.SetFocus
end;

procedure TFEsteira.pInserirComboBox;
var vccat, vctam:String;
begin
  if not PImprimir.Visible then Exit;

  if not dm.cdsDados.Active then
    dm.cdsDados.Open;

    vccat := fPreencher(Copy(dm.cdsDadosCodigo.Text, length(xvarie)+1,2),2,'0',0);
    vctam := fPreencher(Copy(dm.cdsDadosCodigo.Text, length(xvarie)+3,3),3,'0',0);

    if (Trim(dm.cdsDadosLinha1.Text) <> '') then
    begin
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
      edContador.Value  := dm.cdsDadosContador.Value;
    end;
    edQtde.Value  := 0;//dm.cdsDadosQtde.Value;

    if (trim(edLinha1.Text) = '') then
      edLinha1.Text := DateToStr(Date);

    if not dm.TCadCateg.Active then
      dm.TCadCateg.Open;

end;

procedure TFEsteira.sb7Click(Sender: TObject);
var vcod: Integer;
begin
  if (edQtde.Value < 1) then exit;

  if (xFechado = 'S') then
  begin
    lblLoteStatus.Visible := True;
    ShowMessage('Lote está FECHADO, precisa reabrir para continuar!');
    Exit;
  end
  else
    lblLoteStatus.Visible := False;

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

  xAutomatico := False;

  if TComponent(Sender).Tag = 1 then
    pImprimeEtiq(True, True, False)
  else if TComponent(Sender).Tag = 10 then
    pImprimeEtiq(True, False, False)
  else if TComponent(Sender).Tag = 20 then
    pImprimeEtiq(False, True, False);

end;

procedure TFEsteira.cbCategoriaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key  := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFEsteira.cbEmpresaExit(Sender: TObject);
begin

  Application.ProcessMessages;

  edEmpresa.OnExit(edEmpresa);

end;

procedure TFEsteira.Configurar1Click(Sender: TObject);
begin
  if not rzgClassif.Items[1].Enabled then Exit;

  pImprimeEtiq(True, False, True);
end;

procedure TFEsteira.pImprimeEtiq(vImprimir, vEstoque, VConfigura: Boolean);
var vinicio, vqtde, vcontador: Integer;
    vqrcode, vVarDes, vCatDes, vCalDes, vLi5Des: String;

   procedure pInserir;
   begin
      dm.cdsDados.Append;
      dm.cdsDadosCodigo.Text  := Trim(edCodigo.Text);
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
      dm.cdsDadosVariedade.Text := vVarDes;
      dm.cdsDadosCategoria.Text := vCatDes;
      dm.cdsDadosCalibre.Text   := vCalDes;
      dm.cdsDadosLinha5.Text    := vLi5Des;

      //dm.cdsDadosBarra.Text := Copy(dm.cdsDadosCodigo.Text,3,5)+fPreencher(vinicio,7,'0',0);
      dm.cdsDadosBarra.Text := Copy(dm.cdsDadosCodigo.Text, length(xvarie)+1,5) + fPreencher(vinicio,7,'0',0);

      dm.cdsDadosID_Lote.Text := xvlot;
      dm.cdsDadosID_Lanc.Text := xvLan;

      //qrCode - SITE
//https://www.acwebsystem.com.br/sistemas/rastrear/11741540000142/202001/lt000000001pr001010080.html
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
      dm.cdsDadosWEBQRCODEL4.Text := xdirini+'rastrear'+xBDConexao+'\qrcodetmp.bmp';


      dm.cdsDados.Post;
      dm.cdsDados.ApplyUpdates(0);

   end;
begin
  vcontador := edContador.Value + edQtde.Value;
  if vcontador > 10000 then vinicio := 100
  else vinicio := edContador.Value;

  if vImprimir then
  begin
    //força excluir lançamentos
    dm.cdsDados.Close;
    fSql(3,['Delete From Etiqueta'],1);
    dm.cdsDados.Open;
    dm.cdsDados.DisableControls;

    dm.cdsDados.First;
    while not dm.cdsDados.Eof do dm.cdsDados.Delete;

    //qrCode
    qrCodeExecute(xvLan, edCodigo.Text);

    if fSql(1,['Select VarieDes, CategDes, Calibre, CalibreDes, VarieCod From CadProdu Where Codigo=0'+Trim(edCodigo.Text)],1) then
    begin
      vVarDes := dm.qrSql1.Fields[0].Text;
      vCatDes := dm.qrSql1.Fields[1].Text;
      vCalDes := dm.qrSql1.Fields[2].Text;
      vLi5Des := dm.qrSql1.Fields[3].Text;

      if fBus(1,['Select valor From zGenerator Where Tabela = ''PRECOMEDIO'' and Campo = ''DUPLICA'''],1) = 1 then
      begin
          if fSql(2,['select distinct vv.codigo, vv.descricao',
                     '  from cadvarie cv',
                     ' inner join cadvarie vv on vv.codigo = cv.codigoid',
                     ' where cv.codigo = 0'+Trim(dm.qrSql1.Fields[4].Text)],4) then
            vVarDes := dm.qrSql2.Fields[1].Text;
      end;
    end;

    for vqtde := 1 to edQtde.Value do //(edQtde.Value -1) do
    begin

      vinicio := vinicio + 1;
      pInserir;

    end;
    dm.cdsDados.EnableControls;
  end;
  //Deve somar no estoque
  if vEstoque then
  begin

    //TDBDesc.Text := dm.cdsDadosBarra.Text;
    TDBDesc.Text := Copy(Trim(edCodigo.Text), length(xvarie)+1,5) + fPreencher(vinicio,7,'0',0);

    if (Length(TDBDesc.Text) < 13) then
      TDBDesc.Text := TDBDesc.Text + '0';

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
        Sleep(1000);
      end
      else
        FModeloRel.ShowModal;
    end;

    dm.cdsDados.Filtered := False;
  end;

  //Apaga tudo
  try
    try
      dm.cdsDados.Close;
      //força excluir lançamentos
      fSql(3,['Delete From Etiqueta'],1);
      dm.cdsDados.Open;
      dm.cdsDados.First;
      while not dm.cdsDados.Eof do dm.cdsDados.Delete;

      //Salva último
      pInserir;

      //if pInsertDataSet('ID_LANC', 'ETIQUETA', dm.cdsDados) then
        edQtde.Value := 0;

    except
      dm.cdsDados.Close;
      dm.cdsDados.Open;
    end
  finally
    edContador.Value := vinicio + 1;
    edQtde.Value := 0;
    edCodigo.SetFocus;
  end;



end;

procedure TFEsteira.qrCodeExecute(qrLan, qrCod: String);
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
    vqrcode := vqrcode + 'R'+qrLan;
    // - Codigo produto
//    vqrcode := vqrcode + 'pr'+fPreencher(edCodigo.Text,9,'0',0)+'.html';
    vqrcode := vqrcode + 'P'+qrCod+'.html';

    QRCode.Data         := vqrcode;
    QRCode.Encoding     := TQRCodeEncoding(5);//cmbEncoding.ItemIndex);
    QRCode.QuietZone    := 0;//StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Width  := QRCode.Rows;
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
    DeleteFile(xdirini+'rastrear'+xBDConexao+'\qrcodetmp.bmp');
//    qrcodebitmap.SaveToFile(xdirini+'rastrear\qrcodetmp.bmp');
    scale := 2;
    ImgQrCode.Width  := scale * 33;
    ImgQrCode.Height := scale * 33;

    ImgQrCode.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
    ImgQrCode.Picture.SaveToFile(xdirini+'rastrear'+xBDConexao+'\qrcodetmp.bmp');

    QRCode.Free;
    ImgQrCode.Visible := True;
//    stream.Free;

  end;

end;

procedure TFEsteira.RzGroup11Items0Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmImpEtiqBins, FfrmImpEtiqBins);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup11Items1Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmImpEtiqBinsSaida, FfrmImpEtiqBinsSaida);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup11Items2Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmImpEtiqueta, FfrmImpEtiqueta);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup11Items3Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmImpEtiquetaFundo, FfrmImpEtiquetaFundo);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup11Items4Click(Sender: TObject);
var lvar, lcat, lcal: String;
begin

  if FPaletAvulso = nil then
    Application.CreateForm(TFPaletAvulso, FPaletAvulso);

  with FPaletAvulso do
  begin

    if (dm.TEsteira.FieldByName('Codigo').AsInteger > 0) then
    begin
      lvar := Copy(dm.TEsteira.FieldByName('Codigo').Text, 1, 2);
      lcat := Copy(dm.TEsteira.FieldByName('Codigo').Text, 3, 2);
      lcal := Copy(dm.TEsteira.FieldByName('Codigo').Text, 5, 3);
    end
    else begin
      lvar := Copy(edCodigo.Text, 1, 2);
      lcat := Copy(edCodigo.Text, 3, 2);
      lcal := Copy(edCodigo.Text, 5, 3);
    end;

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

    SE2.Value := frGenerator('PALET','NUMERO',0) + 1;
    SE3.Value := frGenerator('PALET','QTDE',0);
    SE1.Value := dm.TEsteira.FieldByName('Qtde').AsInteger;
    SE4.Value := StrToInt(xvlot);
    edOrigem.Text := xpalemp;

  end;

  FPaletAvulso.ShowModal;

end;

procedure TFEsteira.RzGroup11Items5Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmImpEtiquetaBloco, FfrmImpEtiquetaBloco);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup11Items6Click(Sender: TObject);
begin
  xRelTela := UpperCase('FfrmEstResumo');

  DM.TEsteiraRel.Filtered := False;
  DM.TEsteiraRel.Close;
  DM.TEsteiraRel.Sql.Clear;
  DM.TEsteiraRel.Sql.Add('SELECT * FROM '+ xEsteiraTabela);
  DM.TEsteiraRel.Open;
  DM.TEsteiraRel.Filter := 'LOTELANC = 0'+Trim(xvlan);
  DM.TEsteiraRel.Filtered := True;

  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := DM.TEsteiraRel;

  if  TRzGroupItem(Sender).Tag=  1098 then
    FModeloRel.ShowModal
  else
    FModeloRel.sbMostrar.OnClick(FModeloRel.sbMostrar);

  DM.TEsteiraRel.Close;
  DM.TEsteiraRel.Filtered := False;

end;

procedure TFEsteira.RzGroup6Items0Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmRomaneioEntra, FfrmRomaneioEntra);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup6Items1Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmRomaneioEmpres, FfrmRomaneioEmpres );
  TDBDesc.SetFocus;
end;

procedure TFEsteira.RzGroup6Items2Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmRomaneioTara, FfrmRomaneioTara);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.rzgSistemaItems0Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmRomanAbre, FfrmRomanAbre);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.rzgSistemaItems1Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmRomanFecha, FfrmRomanFecha);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.rzgSistemaItems2Click(Sender: TObject);
begin
  xTagTela := TRzGroupItem(Sender).Tag;
  frForm(TFfrmCategoria, FfrmCategoria);
  TDBDesc.SetFocus;
end;

procedure TFEsteira.rzgSistemaItems3Click(Sender: TObject);
var lvar, lcat, lcal: String;
begin

  tmLeitor.Enabled := False;

  if FPalet=nil then Application.CreateForm(TFPalet, FPalet);
  FPalet.ShowModal;

  tmLeitor.Enabled := True;

end;

procedure TFEsteira.pLerConexao;
var ArqIniNew: TIniFile;
    vArquivo, vtxt : String;
begin

  xBDConexao := '';
  xBDAlias   := '';
  xBDLocal   := '24.152.37.101';
  xBDPorta   := '3060';
  xBDPasta   := 'teste\';
  xBDBase    := 'BDFrutis.FDB';
  xBDPath    := 'c:\acwagro\basedados\';

  vArquivo := xdirsi+'DADOS\Conexao.ini';

  //Se o arquivo não existe - deve criar o padrão
  if not FileExists(vArquivo) then
  begin
    try
      ArqIniNew := TIniFile.Create(vArquivo);
      //2 DIGITOS + '-' + 10 DIGITOS + '-' + 50 DIGITOS
      ArqIniNew.WriteString('Conexao', 'Base1', '01-MODELOSFRT-MODELO');
      ArqIniNew.WriteString('Conexao', 'Pasta', 'teste');
    finally
      ArqIniNew.Free;
      Sleep(400);
    end;
   end;

  //Cria o arquivo e pega a conexao
  if FileExists(vArquivo) then
  begin

    try

      ArqIniNew := TIniFile.Create(vArquivo);

      //Conexão padrão
      vtxt       := ArqIniNew.ReadString('Conexao', 'Base1', '');
      xBDConexao := '';//Trim(Copy(vtxt, 1, 2));
      xBDAlias   := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));

//      FLogin.cbEmpresa.Properties.Items.Clear;
      vtxt := '01-'+Trim(Copy(vtxt, 15, 30));
//      FLogin.cbEmpresa.Properties.Items.Add(vtxt);
//      FLogin.cbEmpresa.Text := vtxt;
      xBASE1 := vtxt;

      //Caso tenha segunda empresa
      vtxt := ArqIniNew.ReadString('Conexao02', 'Base1', '');
      if vtxt <> '' then
      begin
        vtxt := '02-'+Trim(Copy(vtxt, 15, 30));
//        FLogin.cbEmpresa.Properties.Items.Add(vtxt);
        xBASE2 := vtxt;
      end;

    finally

      ArqIniNew.Free;

    end
  end;

{
  //Cria o arquivo e pega a conexao
  if FileExists(vArquivo) then
  begin

    try

      ArqIniNew := TIniFile.Create(vArquivo);
      vtxt       := ArqIniNew.ReadString('Conexao', 'Base1', '');
      xBDConexao := Trim(Copy(vtxt, 1, 2));
      xBDAlias   := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));
      xBASE1     := xBDConexao +'-'+ xBDAlias;

      vtxt       := ArqIniNew.ReadString('Conexao', 'Local', '');
      if (vtxt <> '') then
        xBDLocal   := vtxt;
      vtxt       := ArqIniNew.ReadString('Conexao', 'Porta', '');
      if (vtxt <> '') then
        xBDPorta   := vtxt;
      vtxt       := ArqIniNew.ReadString('Conexao', 'Pasta', '');
      if (vtxt <> '') then
        xBDPasta   := vtxt;
      vtxt       := ArqIniNew.ReadString('Conexao', 'Base', '');
      if (vtxt <> '') then
        xBDBase    := vtxt;
      vtxt       := ArqIniNew.ReadString('Conexao', 'Path', '');
      if (vtxt <> '') then
        xBDPath    := vtxt;

      if (Trim(xBDConexao) = '01') then
        xBDConexao := '';

    finally

      ArqIniNew.Free;

    end
  end;
}

end;


procedure TFEsteira.pLiberarMenu;
var vltrue: Boolean;
    vlUser, vlTag: String;
    vi: Integer;

  function pObterLiberacao(volvar:Integer) : Boolean;
  begin
    vltrue := False;
    vltag  := IntToStr(volvar);
    fSql(5,['Select Visualizar From zModulo Where Tipo = ''X'' and Tag = ' +vltag],1);
    if Pos(vlUser, dm.qrSql5.Fields[0].asString) > 0 then
      vltrue := True;
    result := vltrue;
  end;

begin
  vlUser := frPree(xAcesso, 2, '0', 0) + ';';

  for vi := 0 to rzgClassif.Items.Count-1 do
    rzgClassif.Items[vi].Enabled := pObterLiberacao(rzgClassif.Items[vi].Tag);

  for vi := 0 to rzgProduc.Items.Count-1 do
    rzgProduc.Items[vi].Enabled := pObterLiberacao(rzgProduc.Items[vi].Tag);

  for vi := 0 to rzgAvulsa.Items.Count-1 do
    rzgAvulsa.Items[vi].Enabled := pObterLiberacao(rzgAvulsa.Items[vi].Tag);

  rzgClassif.Items[4].Enabled := rzgClassif.Items[1].Enabled;
  rzgAvulsa.Items[6].Enabled  := rzgClassif.Items[1].Enabled;

end;

procedure TFEsteira.tmpFecharSistemaTimer(Sender: TObject);
begin

   //Se for antes das 22:00 deve desligar programa de autofechamento
   if (Time > StrToTime('23:00:00')) then
     Close;

end;

procedure TFEsteira.tmpImprimeBlocoTimer(Sender: TObject);
begin

  if (xBlocoTempo = 0) then
  begin

    tmpImprimeBloco.Enabled := False;
    exit;

  end
  else begin

    pImprimeEtiquetaBloco(xBlocoQtde);

  end;

end;

procedure TFEsteira.pImprimeEtiquetaBloco(viebQtde: Integer);
begin

  if (ximpetiq <> 'B') then
    exit;

  tmpImprimeBloco.Enabled := False;

  if (xEsteiraTabela <> '') then
  begin
    try
      fSql(4,['select codigo, sum(qtde) as vqt',
              '  from '+xEsteiraTabela,
              ' where ((qtdeant is null) or (qtdeant = 0))',
              ' group by codigo',
              ' having (sum(qtde) >= '+IntToStr(viebQtde)+')',
              ' order by codigo'],6);
      dm.qrSql4.First;
      while not dm.qrSql4.Eof do
      begin

        if (dm.qrSql4.Fields[1].AsInteger >= viebQtde) then
        begin

          if dm.TCadProdu.Locate('Codigo', dm.qrSql4.Fields[0].asInteger, []) then
          begin

            if (dm.TCadProdu.FieldByName('ImprimeEtiq').asString = 'S') then
              pImprimeBloco(xvLan, xEsteiraTabela, dm.qrSql4.Fields[0].AsInteger, viebQtde);

          end;
        end;

        dm.qrSql4.Next;
      end;
    except

    end;
  end;

  if (xBlocoTempo > 0) then
    tmpImprimeBloco.Enabled := True;

  TDBDesc.SetFocus;

end;

procedure TFEsteira.pImprimeBloco(vibLan, vibTable: String; vibCodigo, viebQtde: Integer);
var vi: Integer;
    vqrcode: String;
begin

  if (ximpetiq <> 'B') then
    exit;

  if (vibTable <> '') then
  begin

//    if not dm.TEmpresa.Active then
//      dm.TEmpresa.Open;
//    dm.TEmpresa.First;

    //força exclusão
    fSql(3,['Delete From Etiqueta'],1);
    fSql(5,['select Lanc, codigo, descricao, lote, texto1, texto2, texto3',
            '  from '+vibTable,
            ' where ((qtdeant is null) or (qtdeant = 0))',
            '   and codigo = 0'+IntToStr(vibCodigo),
            '   and Lote = 0'+Trim(xvLot),
            ' order by lanc'],6);
    vi := 0;
    dm.qrSql5.First;
    while not dm.qrSql5.Eof do
    begin

      //se viebQtde = 1 -> vai imprimir todos os que não imprimiu
      inc(vi);
      if ((vi <= viebQtde) or (viebQtde = 1)) then
      begin

        try
          if dm.TCadProdu.Locate('Codigo', dm.qrSql5.FieldByName('Codigo').asInteger, []) then
          begin

            //Faz impressão
            dm.TEtiqueta.Append;
            dm.TEtiquetaQtde.Value     := 1;
            dm.TEtiquetaContador.Value := dm.qrSql5.FieldByName('Lanc').asInteger;
            dm.TEtiquetaCodigo.Text    := dm.qrSql5.FieldByName('Codigo').asString;
            dm.TEtiquetaDescricao.Text := dm.qrSql5.FieldByName('Descricao').Text;
            dm.TEtiquetaLote.Text      := dm.qrSql5.FieldByName('Lote').asString;
            dm.TEtiquetaVariedade.Text := dm.TCadProdu.FieldByName('VarieDes').asString;
            dm.TEtiquetaCategoria.Text := dm.TCadProdu.FieldByName('CategDes').asString;
            dm.TEtiquetaCalibre.Text   := dm.TCadProdu.FieldByName('Calibre').asString;
//            dm.TEtiquetaPeso.Text      := dm.TCadProdu.FieldByName('PesoLiq').asString;
            dm.TEtiquetaLinha5.Text    := dm.TCadProdu.FieldByName('CalibreDes').asString;

            if (dm.TCadProdu.FieldByName('PesoLiq').asFloat > 0.999) then
              dm.TEtiquetaPeso.Text   := dm.TCadProdu.FieldByName('PesoLiq').asString+' kg'
            else
              dm.TEtiquetaPeso.Text   := FormatFloat('0', dm.TCadProdu.FieldByName('PesoLiq').asFloat * 1000)+' gr';
            //Mostra a classe da categoria
            if dm.TCadCateg.Locate('Codigo', dm.TCadProdu.FieldByName('CategCod').asInteger, []) then
              if (trim(dm.TCadCateg.FieldByName('CodClass').asString) <> '') then
                dm.TEtiquetaLinha10.Text := dm.TCadCateg.FieldByName('CodClass').asString;

            dm.TEtiquetaBarra.Text := Copy(dm.TEtiquetaCodigo.Text,3,5) + fPreencher(dm.qrSql5.FieldByName('Lanc').asInteger,7,'0',0);

            //Vem da tela
            if (Trim(Copy(edLinha1.Text,1,2)) = '') then
            begin
              dm.TEtiquetaLinha1.Text    := dm.qrSql5.FieldByName('texto1').asString;
              if (Trim(Copy(dm.TEtiquetaLinha1.text,1,2)) = '') then
                dm.TEtiquetaLinha1.Text   := DateToStr(Date)
            end
            else
              dm.TEtiquetaLinha1.Text   := edLinha1.Text;

            if (Trim(dm.TEtiquetaLinha10.Text) = '') then
              dm.TEtiquetaLinha10.Text   := edLinha10.Text;
            if (Trim(dm.TEtiquetaLinha10.Text) = '') then
              dm.TEtiquetaLinha10.Text   := edLote.Text;

              //qrCode - SITE
        //https://www.acwebsystem.com.br/sistemas/rastrear/11741540000142/202001/lt000000001pr001010080.html
        //      vqrcode := 'https://www.acwebsystem.com.br/sistemas/rastrear/';

            dm.TEtiquetaID_Lote.Text := dm.qrSql5.FieldByName('Lote').asString;
            dm.TEtiquetaID_Lanc.Text := vibLan;
            vqrcode := 'https://www.acwebsystem.com.br/';

            // - Ano + Mes
            vqrcode := vqrcode + xanomes + '/';

            // - empresa
            vqrcode := vqrcode + xcpfcnpj + '/';
            // - Lote
      //      vqrcode := vqrcode + 'lt'+fPreencher(xvLan,9,'0',0);
            vqrcode := vqrcode + 'R'+vibLan;
            // - Codigo produto
      //      vqrcode := vqrcode + 'pr'+fPreencher(edCodigo.Text,9,'0',0)+'.html';
            vqrcode := vqrcode + 'P' +IntToStr(vibCodigo)+ '.html';

            dm.TEtiquetaWEBQRCODEL1.Text := vqrcode;
            dm.TEtiquetaWEBQRCODEL2.Text := 'R'+vibLan + 'P'+dm.TEtiquetaCodigo.Text;
            dm.TEtiquetaWEBQRCODEL4.Text := xdirini+'rastrear'+xBDConexao+'\qrcodetmp.bmp';

            dm.TEtiqueta.Post;

            qrCodeExecute(vibLan, dm.TEtiquetaCodigo.Text);

            if not dm.TEtiqueta.IsEmpty then
            begin
              dsRelat.DataSet   := dm.TEtiqueta;
              dsEmpresa.DataSet := dm.TEmpresa;
              ppRelatorio.Template.FileName := vrelarquivo;
              ppRelatorio.Template.LoadFromFile;
              //ppRelatorio.DeviceType:='Screen';
              ppRelatorio.ShowPrintDialog := False;
              ppRelatorio.DeviceType:='Printer';
              ppRelatorio.Print;
            end;

            dm.TEtiqueta.First;
            while not dm.TEtiqueta.eof do dm.TEtiqueta.delete;

            //força exclusão
            fSql(3,['Delete From Etiqueta'],1);

            //Salva para não imprimir novamente
            fSql(3,['update '+vibTable+' set qtdeant = 1 '+
                    ' where lanc = 0'+dm.qrSql5.FieldByName('Lanc').AsString+
                    '   and ((qtdeant is null) or (qtdeant = 0))'+
                    '   and codigo = 0'+IntToStr(vibCodigo)],1);

          end;

        except

        end;

      end
      else begin
        //Passou da quantidade - sair
        Break;
      end;

      dm.qrSql5.Next;

    end;
  end;

end;

procedure TFEsteira.pTotaliza;
begin

  try

    dm.TExiste.TableName := xEsteiraTabela;
    if dm.TExiste.Exists then
    begin
      fSql(1,['Select Max(Lanc), Sum(Qtde) From '+xEsteiraTabela+' where Lote = 0'+xvLot],1);
      xlanc  := dm.qrSql1.Fields[0].asInteger;
      xtotal := dm.qrSql1.Fields[1].asFloat;
      pnlValor.Caption := 'Quantidade total: '+FloatToStrF(xTotal,ffNumber,5,0);
    end;

  except

    pnlValor.Caption := '';

  end;

end;

procedure TFEsteira.pAbreConexao(vConexao: String);
var ArqIniNew: TIniFile;
    vArquivo, vConx, vtxt : String;
begin

  vArquivo := xdirsi+'DADOS\Conexao.ini';

  if vConexao = '01' then vConx := 'Conexao'
  else if vConexao = '02' then vConx := 'Conexao02'
  else vConx := 'Conexao';

  try

    ArqIniNew := TIniFile.Create(vArquivo);
    vtxt       := ArqIniNew.ReadString(vConx, 'Base1', '');
    xBDConexao := Trim(Copy(vtxt, 1, 2));
    xBDAlias   := Trim(Copy(vtxt, (pos('-', vtxt)+1), 10));

    vtxt       := ArqIniNew.ReadString(vConx, 'Local', '');
    if (vtxt <> '') then
      xBDLocal   := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Porta', '');
    if (vtxt <> '') then
      xBDPorta   := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Pasta', '');
    if (vtxt <> '') then
      xBDPasta   := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Base', '');
    if (vtxt <> '') then
      xBDBase    := vtxt;
    vtxt       := ArqIniNew.ReadString(vConx, 'Path', '');
    if (vtxt <> '') then
      xBDPath    := vtxt;

    if (Trim(xBDConexao) = '01') then
      xBDConexao := '';

  finally

    ArqIniNew.Free;

{    if Copy(cbEmpresa.Text,1,2) = '01' then
      xBDConexao := ''
    else
      xBDConexao := Copy(cbEmpresa.Text,1,2);
}
    xcodreg := 0;
    xcomando:= 0;
    xvcodanterior := '';
    xTotal := 0;

    TIniciar.Enabled:=True;

    Sleep(500);

  end;


end;

end.

