unit zModeloRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,
  Provider, DBClient, DBTables, Menus, RzTabs, Mask, DBCtrls, RzDBNav,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppEndUsr, RzPanel, ppBarCode2D, ppPrnabl, ppCtrls,
  ppParameter, ppDesignLayer, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFModeloRel = class(TForm)
    dsDados: TDataSource;
    ppDesigner1: TppDesigner;
    ppDados: TppBDEPipeline;
    ppRelatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dsRelat: TDataSource;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    Imprimir1: TMenuItem;
    ImprimirTodos1: TMenuItem;
    dsEmpresa: TDataSource;
    rzpUtilitario: TRzPanel;
    ImgOrdemAsc: TImage;
    ImgOrdemDesc: TImage;
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
    MainMenu1: TMainMenu;
    Funes1: TMenuItem;
    Novo1: TMenuItem;
    Editar2: TMenuItem;
    Excluir2: TMenuItem;
    pp2DBarCode1: Tpp2DBarCode;
    ppDB2DBarCode1: TppDB2DBarCode;
    cdsDados: TFDTable;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosTELA: TStringField;
    cdsDadosNOME: TStringField;
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
    procedure pAbreDesigner;
  end;

var
  FModeloRel: TFModeloRel;
  vBotaoRel: Integer;

implementation

{$R *.dfm}
uses Data, Rotina, Esteira;

procedure TFModeloRel.FormCreate(Sender: TObject);
begin
  cdsDados.Close;
//  sqlDados.ParamByName('ptela').AsString := xRelTela;
  cdsDados.Filter := 'TELA = '+QuotedStr(xRelTela);
  cdsDados.Filtered := True;
  cdsDados.Open;

  if not dm.TEmpresa.Active then dm.TEmpresa.Open;
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
  vnome := Trim(fInput('Digite o nome: ','Modelo',''));
  if (vnome = '') or (vnome= '0') then
    Exit;
  try
    if fSql(1,['Select Max(Numero) From zRelatorio Where Tela = '+QuotedStr(UpperCase(xRelTela))],1) then
      vNumero := dm.qrSql1.Fields[0].asInteger
    else
      vNumero := 0;
    vNumero := vNumero + 1;
    cdsDados.Append;
    cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ZRELATORIO_ID');
    cdsDadosRegistro.AsInteger := vNumero;
    cdsDadosNumero.AsInteger := vNumero;
    cdsDadosTela.AsString    := UpperCase(xRelTela);
    cdsDadosNome.AsString    := UpperCase(Copy(vNome,1,20));
    cdsDados.Post;
    //cdsDados.ApplyUpdates(0);
    pAbreDesigner;
  except
    ShowMessage('Erro salvando dados!');
  end;
end;

procedure TFModeloRel.sbMostrarClick(Sender: TObject);
var varquivo: String;
begin
  varquivo := xDirSi + 'Listagem'+xBDConexao+'\' + UpperCase(xRelTela) + '_' + fPreencher(cdsDadosNumero.asInteger,4,'0',0) + '.rtm';
  if FileExists(varquivo) then
  begin
    ppRelatorio.Template.FileName := varquivo;
    ppRelatorio.Template.LoadFromFile;
    if Tcomponent(Sender).Tag = 17 then
      ppRelatorio.DeviceType:='Screen'
    else
      ppRelatorio.DeviceType:='Printer';
    ppRelatorio.Print;
    Close;
  end;
end;

procedure TFModeloRel.sbExcluirClick(Sender: TObject);
var varquivo: String;
begin
  varquivo := xDirSi + 'Listagem'+xBDConexao+'\' + UpperCase(xRelTela) + '_' + fPreencher(cdsDadosNumero.asInteger,4,'0',0) + '.rtm';
  if not cdsDados.IsEmpty then
  begin
    if fExcluir then
    begin
      if fPergunta('Tem certeza?','Modelo') then
      begin
        cdsDados.Delete;
//        cdsDados.ApplyUpdates(0);
        if FileExists(varquivo) then
          DeleteFile(varquivo);
      end;
    end;
  end;
end;

procedure TFModeloRel.pAbreDesigner;
var varquivo: String;
begin
  varquivo := xDirSi + 'Listagem'+xBDConexao+'\' + UpperCase(xRelTela) + '_' + fPreencher(cdsDadosNumero.asInteger,4,'0',0) + '.rtm';
  ppDesigner1.AllowSaveToFile := False;
  ppDesigner1.Report.Template.FileName := varquivo;
  if FileExists(varquivo) then
    ppDesigner1.Report.Template.LoadFromFile;
  ppDesigner1.ShowModal;
  if fPergunta('Deseja salvar as alterações?','Modelo') then
    ppDesigner1.Report.Template.SaveToFile;
end;

end.
