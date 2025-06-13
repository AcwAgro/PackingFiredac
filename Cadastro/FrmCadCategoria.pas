unit FrmCadCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadCategoria = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    cdsDadosVARIEDES: TStringField;
    sqlDadosCODCLASS: TStringField;
    cdsDadosCODCLASS: TStringField;
    GroupBox4: TGroupBox;
    DBEdit3: TDBEdit;
    frmPesquisa: TfrmPesquisa;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    SpeedButton93: TSpeedButton;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure SpeedButton93Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadCategoria: TFfrmCadCategoria;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, FrmCadClasse;

procedure TFfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited;

  frmPesquisa.pInicia('ttClasse',TForm(Sender),7,147,GroupBox3,True);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;

end;

procedure TFfrmCadCategoria.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadCategoria.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisa.pRetornaDados(cdsDadosVarieCod.AsString);
end;

procedure TFfrmCadCategoria.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadcateg where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadcateg where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadCategoria.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadCategoria);
end;

procedure TFfrmCadCategoria.sbIncluirClick(Sender: TObject);
var vcount: Integer;
begin
  inherited;

{  if (vTag = 12) then
  begin
    vcount := fBus(1,['Select count(*) From CADCATEG Where CODIGO = 0'+cdsDadosCodigo.AsString],1);
    if (vTag = 12) and (vcount > 0) then
    begin
      frPerg('Já existe esse código cadastrado, informar outro!', 'OK');
      dbEdit1.SetFocus;
      Exit;
    end;
  end;
}
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := 0;//frGenerator('CADCATEG','CODIGO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADCATEG_ID');

          cdsDadosATIVO.AsString   := 'S';
          DBEdit1.ReadOnly := False;
          DBEdit1.SetFocus;
        end;
     13: begin
          frmPesquisa.pRetornaDados(cdsDadosVarieCod.AsString);
          DBEdit1.ReadOnly := True;
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
//           cdsDados.Refresh;
         end;
     15: begin
          try
            if vTag = 12 then
              if cdsDadosCodigo.AsInteger = 0 then
                cdsDadosCodigo.AsInteger := frGenerator('CADCATEG','CODIGO',1);

            cdsDadosVarieCod.AsInteger:= frmPesquisa.vpCodPrincipal;
            cdsDadosVarieDes.AsString := frmPesquisa.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
//            cdsDados.Refresh;
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
     91,92: frmPesquisa.pRetornaDados(cdsDadosVarieCod.AsString);

  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadCategoria.SpeedButton93Click(Sender: TObject);
begin
  inherited;
  frForm(TFfrmCadClasse, FfrmCadClasse);

end;

end.
