unit frmCategoria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Mask, jpeg, Menus, Grids, DBGrids, Buttons,
  Db, DBTables, DBClient, Provider, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCategoria = class(TForm)
    DBGrid1: TDBGrid;
    dsDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    RzPanel2: TRzPanel;
    sbEditar: TSpeedButton;
    sbImprimir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    cdsDados: TFDQuery;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosVAL1: TBCDField;
    cdsDadosVAL2: TBCDField;
    cdsDadosVAL3: TBCDField;
    cdsDadosCODCLASS: TStringField;
    cdsDadosATIVO: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excluir1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCategoria: TFfrmCategoria;

implementation

uses Data, Rotina, Pesq, Esteira;
{$R *.DFM}

procedure TFfrmCategoria.sbEditarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := False;
  sbEditar.Enabled := False;
  sbSalvar.Enabled := True;
  cdsDados.Edit;
  DBGrid1.SetFocus;
end;

procedure TFfrmCategoria.sbImprimirClick(Sender: TObject);
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

procedure TFfrmCategoria.sbSalvarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := True;
  sbEditar.Enabled := True;
  sbSalvar.Enabled := False;
  if cdsDados.State = dsEdit then
    cdsDados.Post;
  cdsDados.ApplyUpdates(0);
end;

procedure TFfrmCategoria.SpeedButton1Click(Sender: TObject);
begin
{  FPQMercaInsumos;
  if xpqResul<>'0'then
  begin
    cdsDados.Locate('Codigo',StrToInt(xpqResul),[]);
    DBGrid1.SetFocus;
  end; }
end;

procedure TFfrmCategoria.cdsDadosBeforeInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
  Abort;
end;

procedure TFfrmCategoria.DBGrid1Enter(Sender: TObject);
begin
  cdsDados.Edit;
end;

procedure TFfrmCategoria.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key =#13) then
  begin
    cdsDados.Edit;
    if DBGrid1.SelectedIndex <> 3 then DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else begin
      if not cdsDados.Eof then cdsDados.Next;
      DBGrid1.SelectedIndex:=3;
    end;
  end;
end;

procedure TFfrmCategoria.Excluir1Click(Sender: TObject);
begin
  cdsDados.Cancel;
end;

procedure TFfrmCategoria.FormActivate(Sender: TObject);
begin
  if not cdsDados.Active then cdsDados.Open;
end;

procedure TFfrmCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(FfrmCategoria);
end;

procedure TFfrmCategoria.FormCreate(Sender: TObject);
begin
  if not cdsDados.Active then cdsDados.Open;
end;

end.
