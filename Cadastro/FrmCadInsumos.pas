unit FrmCadInsumos;

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
  TFfrmCadInsumos = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit6: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosBARRA: TStringField;
    sqlDadosGRUPOCOD: TIntegerField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosCOMPRA: TBCDField;
    sqlDadosVENDA1: TBCDField;
    sqlDadosQTDEENT: TBCDField;
    sqlDadosQTDESAI: TBCDField;
    sqlDadosQTDESAL: TBCDField;
    sqlDadosGRUPODES: TStringField;
    sqlDadosPERVEN: TBCDField;
    sqlDadosVENCTO: TSQLTimeStampField;
    sqlDadosDESC1: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosGRUPOCOD: TIntegerField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosCOMPRA: TBCDField;
    cdsDadosVENDA1: TBCDField;
    cdsDadosQTDEENT: TBCDField;
    cdsDadosQTDESAI: TBCDField;
    cdsDadosQTDESAL: TBCDField;
    cdsDadosGRUPODES: TStringField;
    cdsDadosPERVEN: TBCDField;
    cdsDadosVENCTO: TSQLTimeStampField;
    cdsDadosDESC1: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    GroupBox16: TGroupBox;
    DBEdit12: TDBEdit;
    sqlDadosQTDE_DIV: TBCDField;
    cdsDadosQTDE_DIV: TBCDField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadInsumos: TFfrmCadInsumos;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadInsumos.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadInsumos.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadInsumos.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadmerca where grupocod = 3 and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadmerca where grupocod = 3 and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadInsumos.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadInsumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadInsumos);
end;

procedure TFfrmCadInsumos.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADMERCA_ID');
          cdsDadosCodigo.AsInteger := frGenerator('CADMERCA','CODIGO', 0,'INSUMOS') + 1;
          cdsDadosqtde_div.AsFloat := 1;
          cdsDadosATIVO.AsString  := 'S';
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            if vTag = 12 then
            begin
              cdsDadosCodigo.AsInteger := frGenerator('CADMERCA','CODIGO', 1,'INSUMOS');
              if cdsDadosCodigo.AsInteger < 3000 then cdsDadosCodigo.AsInteger := 3000;
            end;

            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosGrupoCod.asInteger := 3;

            if cdsDadosqtde_div.AsFloat = 0 then
              cdsDadosqtde_div.AsFloat := 1;

            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
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
