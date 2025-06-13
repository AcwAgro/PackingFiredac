unit FrmCadPomar;

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
  TFfrmCadPomar = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosFORCOD1: TIntegerField;
    sqlDadosFORDES1: TStringField;
    sqlDadosFORCOD2: TIntegerField;
    sqlDadosFORDES2: TStringField;
    sqlDadosFORCOD3: TIntegerField;
    sqlDadosFORDES3: TStringField;
    sqlDadosFORCOD4: TIntegerField;
    sqlDadosFORDES4: TStringField;
    sqlDadosFORCOD5: TIntegerField;
    sqlDadosFORDES5: TStringField;
    sqlDadosRECCOD: TIntegerField;
    sqlDadosRECDES: TStringField;
    sqlDadosRECCON: TStringField;
    sqlDadosRECPER: TFloatField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosAREA: TStringField;
    sqlDadosLOCAL: TStringField;
    sqlDadosPLANTA: TStringField;
    sqlDadosESPAC: TStringField;
    sqlDadosDESCOD: TIntegerField;
    sqlDadosDESDES: TStringField;
    sqlDadosDESCON: TStringField;
    sqlDadosDESPER: TFloatField;
    sqlDadosDESCOD1: TIntegerField;
    sqlDadosDESDES1: TStringField;
    sqlDadosDESCON1: TStringField;
    sqlDadosDESPER1: TFloatField;
    sqlDadosDESCOD2: TIntegerField;
    sqlDadosDESDES2: TStringField;
    sqlDadosDESCON2: TStringField;
    sqlDadosDESPER2: TFloatField;
    sqlDadosDESCOD3: TIntegerField;
    sqlDadosDESDES3: TStringField;
    sqlDadosDESCON3: TStringField;
    sqlDadosDESPER3: TFloatField;
    sqlDadosDESCOD4: TIntegerField;
    sqlDadosDESDES4: TStringField;
    sqlDadosDESCON4: TStringField;
    sqlDadosDESPER4: TFloatField;
    sqlDadosDESCOD5: TIntegerField;
    sqlDadosDESDES5: TStringField;
    sqlDadosDESCON5: TStringField;
    sqlDadosDESPER5: TFloatField;
    sqlDadosINVCOD: TIntegerField;
    sqlDadosINVDES: TStringField;
    sqlDadosINVCON: TStringField;
    sqlDadosINVPER: TFloatField;
    sqlDadosINVCOD1: TIntegerField;
    sqlDadosINVDES1: TStringField;
    sqlDadosINVCON1: TStringField;
    sqlDadosINVPER1: TFloatField;
    sqlDadosINVCOD2: TIntegerField;
    sqlDadosINVDES2: TStringField;
    sqlDadosINVCON2: TStringField;
    sqlDadosINVPER2: TFloatField;
    sqlDadosINVCOD3: TIntegerField;
    sqlDadosINVDES3: TStringField;
    sqlDadosINVCON3: TStringField;
    sqlDadosINVPER3: TFloatField;
    sqlDadosINVCOD4: TIntegerField;
    sqlDadosINVDES4: TStringField;
    sqlDadosINVCON4: TStringField;
    sqlDadosINVPER4: TFloatField;
    sqlDadosINVCOD5: TIntegerField;
    sqlDadosINVDES5: TStringField;
    sqlDadosINVCON5: TStringField;
    sqlDadosINVPER5: TFloatField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosFORCOD1: TIntegerField;
    cdsDadosFORDES1: TStringField;
    cdsDadosFORCOD2: TIntegerField;
    cdsDadosFORDES2: TStringField;
    cdsDadosFORCOD3: TIntegerField;
    cdsDadosFORDES3: TStringField;
    cdsDadosFORCOD4: TIntegerField;
    cdsDadosFORDES4: TStringField;
    cdsDadosFORCOD5: TIntegerField;
    cdsDadosFORDES5: TStringField;
    cdsDadosRECCOD: TIntegerField;
    cdsDadosRECDES: TStringField;
    cdsDadosRECCON: TStringField;
    cdsDadosRECPER: TFloatField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosAREA: TStringField;
    cdsDadosLOCAL: TStringField;
    cdsDadosPLANTA: TStringField;
    cdsDadosESPAC: TStringField;
    cdsDadosDESCOD: TIntegerField;
    cdsDadosDESDES: TStringField;
    cdsDadosDESCON: TStringField;
    cdsDadosDESPER: TFloatField;
    cdsDadosDESCOD1: TIntegerField;
    cdsDadosDESDES1: TStringField;
    cdsDadosDESCON1: TStringField;
    cdsDadosDESPER1: TFloatField;
    cdsDadosDESCOD2: TIntegerField;
    cdsDadosDESDES2: TStringField;
    cdsDadosDESCON2: TStringField;
    cdsDadosDESPER2: TFloatField;
    cdsDadosDESCOD3: TIntegerField;
    cdsDadosDESDES3: TStringField;
    cdsDadosDESCON3: TStringField;
    cdsDadosDESPER3: TFloatField;
    cdsDadosDESCOD4: TIntegerField;
    cdsDadosDESDES4: TStringField;
    cdsDadosDESCON4: TStringField;
    cdsDadosDESPER4: TFloatField;
    cdsDadosDESCOD5: TIntegerField;
    cdsDadosDESDES5: TStringField;
    cdsDadosDESCON5: TStringField;
    cdsDadosDESPER5: TFloatField;
    cdsDadosINVCOD: TIntegerField;
    cdsDadosINVDES: TStringField;
    cdsDadosINVCON: TStringField;
    cdsDadosINVPER: TFloatField;
    cdsDadosINVCOD1: TIntegerField;
    cdsDadosINVDES1: TStringField;
    cdsDadosINVCON1: TStringField;
    cdsDadosINVPER1: TFloatField;
    cdsDadosINVCOD2: TIntegerField;
    cdsDadosINVDES2: TStringField;
    cdsDadosINVCON2: TStringField;
    cdsDadosINVPER2: TFloatField;
    cdsDadosINVCOD3: TIntegerField;
    cdsDadosINVDES3: TStringField;
    cdsDadosINVCON3: TStringField;
    cdsDadosINVPER3: TFloatField;
    cdsDadosINVCOD4: TIntegerField;
    cdsDadosINVDES4: TStringField;
    cdsDadosINVCON4: TStringField;
    cdsDadosINVPER4: TFloatField;
    cdsDadosINVCOD5: TIntegerField;
    cdsDadosINVDES5: TStringField;
    cdsDadosINVCON5: TStringField;
    cdsDadosINVPER5: TFloatField;
    sqlDadosREGLOG: TMemoField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TMemoField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadPomar: TFfrmCadPomar;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadPomar.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
end;

procedure TFfrmCadPomar.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadPomar.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadPomar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadPomar);
end;

procedure TFfrmCadPomar.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosNumero.AsInteger := frGenerator('RRPOMAR','NUMERO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_RRPOMAR_ID');
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosNumero.AsInteger := frGenerator('RRPOMAR','NUMERO',1);

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

end.
