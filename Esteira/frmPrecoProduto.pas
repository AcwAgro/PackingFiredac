unit frmPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Mask, jpeg, Menus, Grids, DBGrids, Buttons,
  Db, DBTables, DBClient, Provider, RzPanel;

type
  TFfrmPrecoProduto = class(TForm)
    DBGrid1: TDBGrid;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosCATEGCOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosCATEGDES: TStringField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TFloatField;
    sqlDadosPESOBRU: TFloatField;
    sqlDadosCOMPRA: TFloatField;
    sqlDadosVENDA1: TFloatField;
    sqlDadosVENDA2: TFloatField;
    sqlDadosCODVELHO: TIntegerField;
    sqlDadosCALIBRE: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosQTDECX: TFloatField;
    sqlDadosQTDEBA: TFloatField;
    sqlDadosETIQUETA: TStringField;
    sqlDadosOUTROS: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosCATEGCOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosCATEGDES: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TFloatField;
    cdsDadosPESOBRU: TFloatField;
    cdsDadosVENDA1: TFloatField;
    cdsDadosVENDA2: TFloatField;
    cdsDadosCODVELHO: TIntegerField;
    cdsDadosCALIBRE: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosQTDECX: TFloatField;
    cdsDadosQTDEBA: TFloatField;
    cdsDadosETIQUETA: TStringField;
    cdsDadosOUTROS: TStringField;
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    RzPanel2: TRzPanel;
    sbEditar: TSpeedButton;
    sbImprimir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excluir1Click(Sender: TObject);
    procedure cdsDadosBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmPrecoProduto: TFfrmPrecoProduto;

implementation

uses Data, Rotina, Menu, Pesq;
{$R *.DFM}

procedure TFfrmPrecoProduto.sbEditarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := False;
  sbEditar.Enabled := False;
  sbSalvar.Enabled := True;
  cdsDados.Edit;
  DBGrid1.SetFocus;
end;

procedure TFfrmPrecoProduto.sbImprimirClick(Sender: TObject);
begin
{  if qrLista<>Nil then qrLista.Destroy; Application.CreateForm(TqrLista, qrLista);
  with rlListaPreco.qrLista do begin
     qrImage1.Picture:=FMenu.Logo.Picture;
     qrValor.Close;
     qrValor.Sql.Strings[2]:='Where Cl<1 and QtdeSal<>0 and GrupoCod='+ME1.Text;
     qrValor.Open;
     vgru:=qrValor.FieldByName('GrupoCod').AsInteger;
     PrinterSettings.PrinterIndex := fImpr('Imp2');
     Preview;
  end;}
end;

procedure TFfrmPrecoProduto.sbSalvarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := True;
  sbEditar.Enabled := True;
  sbSalvar.Enabled := False;
  if cdsDados.State = dsEdit then
    cdsDados.Post;
  cdsDados.ApplyUpdates(0);
end;

procedure TFfrmPrecoProduto.SpeedButton1Click(Sender: TObject);
begin
  FPQMercaInsumos;
  if xpqResul<>'0'then
  begin
    cdsDados.Locate('Codigo',StrToInt(xpqResul),[]);
    DBGrid1.SetFocus;
  end;
end;

procedure TFfrmPrecoProduto.cdsDadosBeforeInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
  Abort;
end;

procedure TFfrmPrecoProduto.DBGrid1Enter(Sender: TObject);
begin
  cdsDados.Edit;
end;

procedure TFfrmPrecoProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key =#13) then
  begin
    cdsDados.Edit;
    if DBGrid1.SelectedIndex <> 4 then DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else begin
      if not cdsDados.Eof then cdsDados.Next;
      DBGrid1.SelectedIndex:=3;
    end;
  end;
end;

procedure TFfrmPrecoProduto.Excluir1Click(Sender: TObject);
begin
  cdsDados.Cancel;
end;

procedure TFfrmPrecoProduto.FormActivate(Sender: TObject);
begin
  if not cdsDados.Active then cdsDados.Open;
end;

procedure TFfrmPrecoProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmPrecoProduto);
end;

end.
