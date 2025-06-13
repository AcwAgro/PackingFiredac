unit FrmCadDados;

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
  TFfrmCadDados = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    memDados: TMemo;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosOBS1: TStringField;
    sqlDadosOBS2: TStringField;
    sqlDadosOBS3: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosOBS1: TStringField;
    cdsDadosOBS2: TStringField;
    cdsDadosOBS3: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    dbgrImporta: TDBRadioGroup;
    sqlDadosFGIMPOSTO: TStringField;
    sqlDadosFGTRANS: TStringField;
    sqlDadosFGTRANSPL: TStringField;
    cdsDadosFGIMPOSTO: TStringField;
    cdsDadosFGTRANS: TStringField;
    cdsDadosFGTRANSPL: TStringField;
    GroupBox14: TGroupBox;
    DBEdit13: TDBEdit;
    sqlDadosREGLOG: TMemoField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TMemoField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadDados: TFfrmCadDados;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadDados.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
end;

procedure TFfrmCadDados.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadDados.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    memDados.Text := cdsDadosObs1.Text + cdsDadosObs2.Text + cdsDadosObs3.Text;
end;

procedure TFfrmCadDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadDados);
end;

procedure TFfrmCadDados.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADDADOS','CODIGO',1);
          cdsDadosDescricao.AsString := 'Dados NFe';
          cdsDadosFGImposto.AsString := 'N';
          cdsDadosFGTrans.AsString   := 'N';
          cdsDadosFGTranspl.AsString := 'N';
          memDados.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          memDados.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            memDados.Text := Trim(memDados.Text);
            cdsDadosObs1.Text := Copy(memDados.Text,1,120);
            cdsDadosObs2.Text := Copy(memDados.Text,121,120);
            cdsDadosObs3.Text := Copy(memDados.Text,241,120);

            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
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

procedure TFfrmCadDados.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    memDados.Text := cdsDadosObs1.Text + cdsDadosObs2.Text + cdsDadosObs3.Text;
end;

procedure TFfrmCadDados.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else memDados.SetFocus;
end;

end.
