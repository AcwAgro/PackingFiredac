unit FrmCadGenerator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadGenerator = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit6: TDBEdit;
    gbRestrito: TGroupBox;
    DBEdit7: TDBEdit;
    dbDadosDBTableView1Indice: TcxGridDBColumn;
    dbDadosDBTableView1Tabela: TcxGridDBColumn;
    dbDadosDBTableView1Campo: TcxGridDBColumn;
    dbDadosDBTableView1Valor: TcxGridDBColumn;
    dbDadosDBTableView1TEXTO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1RESTRITO: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    sqlDadosINDICE: TIntegerField;
    sqlDadosTABELA: TStringField;
    sqlDadosCAMPO: TStringField;
    sqlDadosVALOR: TIntegerField;
    sqlDadosOBS: TStringField;
    sqlDadosTEXTO: TStringField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosRESTRITO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosINDICE: TIntegerField;
    cdsDadosTABELA: TStringField;
    cdsDadosCAMPO: TStringField;
    cdsDadosVALOR: TIntegerField;
    cdsDadosOBS: TStringField;
    cdsDadosTEXTO: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosRESTRITO: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadGenerator: TFfrmCadGenerator;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadGenerator.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  cdsDados.Close;

  if xAcess <> xJaeInter[1] then
  begin
    sqlDados.SQL.Text := 'select * from zgenerator where restrito = ''N'' ';
    gbRestrito.Visible := False;
    //sbIncluir.Enabled := False;
    //sbEditar.Enabled  := False;
    //sbExcluir.Enabled := False;
  end
  else
    sqlDados.SQL.Text := 'select * from zgenerator ';

  cdsDados.Open;
end;

procedure TFfrmCadGenerator.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadGenerator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadGenerator);
end;

procedure TFfrmCadGenerator.sbIncluirClick(Sender: TObject);
begin

  if Copy(uppercase(xAcess),1,5) <> 'ACWEB' then
    if TComponent(Sender).Tag in [12,13,14,15] then exit;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosIndice.AsInteger := frGenerator('ZGENERATOR','INDICE',11) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_ZGENERATOR_ID');
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
         end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosIndice.AsInteger := frGenerator('ZGENERATOR','INDICE',11);

            cdsDados.Post;
            cdsDados.ApplyUpdates(0);
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Cancel;
           except
           end;
           pLiberar('Geral');
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;

end.
