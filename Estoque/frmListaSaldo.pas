unit frmListaSaldo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Mask, jpeg, Menus, Grids, DBGrids, Buttons,
  Db, DBTables, DBClient, Provider;

type
  TFListaSaldo = class(TForm)
    PBarra: TPanel;
    DBGrid1: TDBGrid;
    SB1: TSpeedButton;
    TPesq: TTimer;
    SBP4: TSpeedButton;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosBARRA: TStringField;
    sqlDadosGRUPOCOD: TIntegerField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TFloatField;
    sqlDadosPESOBRU: TFloatField;
    sqlDadosCOMPRA: TFloatField;
    sqlDadosVENDA1: TFloatField;
    sqlDadosQTDEENT: TFloatField;
    sqlDadosQTDESAI: TFloatField;
    sqlDadosQTDESAL: TFloatField;
    sqlDadosGRUPODES: TStringField;
    sqlDadosPERVEN: TFloatField;
    sqlDadosVENCTO: TDateTimeField;
    sqlDadosDESC1: TFloatField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosGRUPOCOD: TIntegerField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TFloatField;
    cdsDadosPESOBRU: TFloatField;
    cdsDadosCOMPRA: TFloatField;
    cdsDadosVENDA1: TFloatField;
    cdsDadosQTDEENT: TFloatField;
    cdsDadosQTDESAI: TFloatField;
    cdsDadosQTDESAL: TFloatField;
    cdsDadosGRUPODES: TStringField;
    cdsDadosPERVEN: TFloatField;
    cdsDadosVENCTO: TDateTimeField;
    cdsDadosDESC1: TFloatField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    procedure SB1Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBP4Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure cdsDadosBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListaSaldo: TFListaSaldo;

implementation

uses Data, Rotina, Menu, Pesq;
{$R *.DFM}

procedure TFListaSaldo.SB1Click(Sender: TObject);
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

procedure TFListaSaldo.SBP4Click(Sender: TObject);
begin
  FPQMercaInsumos;
  if xpqResul<>'0'then
  begin
    cdsDados.Locate('Codigo',StrToInt(xpqResul),[]);
    DBGrid1.SetFocus;
  end;
end;

procedure TFListaSaldo.cdsDadosBeforeInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
  Abort;
end;

procedure TFListaSaldo.DBGrid1ColExit(Sender: TObject);
begin
  Case DBGrid1.SelectedIndex of
    4: begin cdsDados.Next;
         if cdsDados.Eof then DBGrid1.SelectedIndex := 3;
       end;
  end;
end;

procedure TFListaSaldo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>4 then DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
     else DBGrid1.SelectedIndex:=3;
  end;
end;

procedure TFListaSaldo.Excluir1Click(Sender: TObject);
begin
  cdsDados.Cancel;
end;

procedure TFListaSaldo.FormActivate(Sender: TObject);
begin
  if not cdsDados.Active then cdsDados.Open;
end;

procedure TFListaSaldo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmListaSaldo);
end;

end.
