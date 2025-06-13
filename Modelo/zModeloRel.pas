unit zModeloRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,
  Provider, DBClient, DBTables, Menus, RzTabs, Mask, DBCtrls, RzDBNav,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppEndUsr, RzPanel, ppModule, raCodMod, ppPrnabl, ppCtrls,
  ppVar, ppParameter, ppDesignLayer, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFModeloRel = class(TForm)
    cdsDados: TClientDataSet;
    dspDados: TDataSetProvider;
    dsDados: TDataSource;
    ppDesigner1: TppDesigner;
    ppDados: TppBDEPipeline;
    ppRelatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosTELA: TStringField;
    cdsDadosNOME: TStringField;
    dsRelat: TDataSource;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    Imprimir1: TMenuItem;
    ImprimirTodos1: TMenuItem;
    cdsDadosREGISTRO: TIntegerField;
    dsEmpresa: TDataSource;
    rzpUtilitario: TRzPanel;
    RzPanel2: TRzPanel;
    dbDados: TDBGrid;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    sbImprimir: TSpeedButton;
    sbMostrar: TSpeedButton;
    rzpMenu: TRzPanel;
    sbEditar: TSpeedButton;
    sbIncluir: TSpeedButton;
    sbExcluir: TSpeedButton;
    RzPanel22: TRzPanel;
    PStatusHistorico: TPanel;
    dsDetalhe: TDataSource;
    ppDetalhe: TppBDEPipeline;
    ppEmpresa: TppBDEPipeline;
    sbEmail: TSpeedButton;
    MainMenu1: TMainMenu;
    Funes1: TMenuItem;
    Novo1: TMenuItem;
    Editar2: TMenuItem;
    Excluir2: TMenuItem;
    ppSubDetalhe: TppBDEPipeline;
    dsSubDetalhe: TDataSource;
    raCodeModule1: TraCodeModule;
    RzPanel1: TRzPanel;
    sqlDados: TFDQuery;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosTELA: TStringField;
    sqlDadosNOME: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sbIncluirClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    varEmail: String;
    procedure pAbreDesigner;
    procedure pImprimirPdf(vPDF: String);
  end;

var
  FModeloRel: TFModeloRel;
  vBotaoRel: Integer;

implementation

{$R *.dfm}
uses Menu, Rotina, Data, Pesq, Mapi, ShellAPI, Email,
     smtpsend, ssl_openssl, mimemess, mimepart, 
     zEmail; // units para enviar email

procedure TFModeloRel.FormCreate(Sender: TObject);
begin
  cdsDados.Close;
  sqlDados.ParamByName('ptela').AsString := xRelTela;
  cdsDados.Open;

  if not dm.TEmpresa.Active then dm.TEmpresa.Open;

  if Pos('Relatório', Caption) = 0 then
    Caption := 'Relatório '+Caption;
    
end;

procedure TFModeloRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsDados.Close;
end;

procedure TFModeloRel.sbEditarClick(Sender: TObject);
begin
  pAbreDesigner;
end;

procedure TFModeloRel.sbIncluirClick(Sender: TObject);
var vnome: String; vNumero: Integer;
begin
  vnome := Trim(frImpu(2,'Digite o nome: ',''));
  if (vnome = '') or (vnome= '0') then
    Exit;
  try
    vNumero := fBus(1,['Select Max(Numero) From zRelatorio Where Tela = '+QuotedStr(UpperCase(xRelTela))],1);
    vNumero := vNumero + 1;
    cdsDados.Append;
    cdsDadosRegistro.AsInteger := frGenerator('ZRELATORIO','REGISTRO',1);
    cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_ZRELATORIO_ID');
    cdsDadosNumero.AsInteger := vNumero;
    cdsDadosTela.AsString    := UpperCase(xRelTela);
    cdsDadosNome.AsString    := UpperCase(Copy(vNome,1,20));
    cdsDados.Post;
    cdsDados.ApplyUpdates(0);
    pAbreDesigner;
  except
    ShowMessage('Erro salvando dados!');
  end;
end;

procedure TFModeloRel.sbMostrarClick(Sender: TObject);
var varquivo, vpdf: String;
begin
  //Verifica se existe diretorio
  vpdf := xDirSi + 'Listagem' +xBDConexao+ '\PDF\';
  if not DirectoryExists(vpdf) then
  begin
    CreateDir(vpdf);
    Sleep(1000);
    if not DirectoryExists(vpdf) then
    begin
      ForceDirectories(vpdf);
    end;
  end;
  vpdf := xDirSi + 'Listagem' +xBDConexao+ '\PDF\' + UpperCase(Caption) + '_' + frPree(cdsDadosNumero.asInteger,4,'0',0) + '_' + FormatDateTime('ddmm', Date) + '.pdf';

  //Relatorio
  varquivo := xDirSi + 'Listagem' +xBDConexao+ '\' + UpperCase(xRelTela) + '_' + frPree(cdsDadosNumero.asInteger,4,'0',0) + '.rtm';
  if FileExists(varquivo) then
  begin

    ppRelatorio.Template.FileName := varquivo;
    ppRelatorio.Template.LoadFromFile;

   if Tcomponent(Sender).Tag = 17 then
     ppRelatorio.DeviceType:='Screen'

   else if Tcomponent(Sender).Tag = 18 then
     ppRelatorio.DeviceType:='Printer'

   else begin
     ppRelatorio.TextFileName := vpdf;
     ppRelatorio.DeviceType:='PDF';
     ppRelatorio.AllowPrintToFile  := true;
     ppRelatorio.ShowPrintDialog   := false;
   end;

   ppRelatorio.Print;

   //PDF
   if Tcomponent(Sender).Tag = 20 then
     pImprimirPdf(vpdf);

  end;

end;

procedure TFModeloRel.sbExcluirClick(Sender: TObject);
var varquivo: String;
begin
  varquivo := xDirSi + 'Listagem' +xBDConexao+ '\' + UpperCase(xRelTela) + '_' + frPree(cdsDadosNumero.asInteger,4,'0',0) + '.rtm';
  if not cdsDados.IsEmpty then
  begin
    if frExcl then
    begin
      if frPerg('Tem certeza?') then
      begin
        cdsDados.Delete;
        cdsDados.ApplyUpdates(0);
        if FileExists(varquivo) then
          DeleteFile(varquivo);
      end;
    end;
  end;
end;

procedure TFModeloRel.pAbreDesigner;
var varquivo: String;
begin
  varquivo := xDirSi + 'Listagem' +xBDConexao+ '\' + UpperCase(xRelTela) + '_' + frPree(cdsDadosNumero.asInteger,4,'0',0) + '.rtm';
  ppDesigner1.AllowSaveToFile := False;
  ppDesigner1.Report.Template.FileName := varquivo;
  if FileExists(varquivo) then
    ppDesigner1.Report.Template.LoadFromFile;
  ppDesigner1.ShowModal;
  if frPerg('Deseja salvar as alterações?') then
    ppDesigner1.Report.Template.SaveToFile;
end;

procedure TFModeloRel.pImprimirPdf(vPDF: String);
var vemail, sXML, spdf: string;
    vseq, vtam: Integer;
    Email: TEmail;
    mmAssunto, mmTexto, varqold, varqnew, vcod: String;
    cc: TStrings;
    Outlook: OleVariant;
    vMailItem: variant;
    vtrue: Boolean;
begin
  if FileExists(vpdf) then
  begin

    try
      if not Assigned(frmEmail) then
        frmEmail := TfrmEmail.create(self);

      frmEmail.edm1.Text := varEmail;
      frmEmail.edm2.Text := '';

      frmEmail.edAssunto.Text := Caption;
      frmEmail.edTexto.Text   := frmEmail.edAssunto.Text + ', arquivo PDF salvo em anexo';

      frmEmail.ShowModal;
    finally
       vemail := frmEmail.vRetEmail;
       mmAssunto := frmEmail.edAssunto.Text;
       mmTexto   := frmEmail.edTexto.Text;
      FreeAndNil(frmEmail)
    end;
    if vemail = 'Close' then
      Exit;

    vemail := LowerCase(vemail);
    if Pos('@', vemail) = 0 then
    begin
      Application.MessageBox('Email inválido!','Aviso',mb_ok+MB_ICONINFORMATION);
      exit;
    end;

    //corpo da email
    vseq := 0;
    Screen.Cursor := crHourGlass;

    //Enviar o email
    Screen.Cursor := crDefault;
    try
      mmTexto := mmTexto +''+#13#10;
      mmTexto := mmTexto +''+#13#10;
      mmTexto := mmTexto +'Emitida por: ' + Trim(dm.TEmpresa.FieldByName('Descricao').asString);
      mmTexto := mmTexto +' no dia: ' + DateToStr(Date)+#13#10;
      mmTexto := mmTexto +''+#13#10;
      mmTexto := mmTexto +'Qualquer dúvida e/ou divergência, favor entrar em contato com a empresa acima.';
      if EnviaMail(110,
                   vemail,
                   mmAssunto,
                   mmTexto,
                   '',
                   vpdf
                   ) then
        Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION)
      else begin
         application.messagebox('Houve falha no envio deste email...','Atenção',mb_ok+MB_ICONERROR)
      end;
    except
      Application.MessageBox(PChar('Erro ao enviar Email da NF. '),'Aviso',mb_ok+MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      VarClear(Outlook);
    end;
  end;

end;

end.
