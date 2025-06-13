unit frmPrecoInsumos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Mask, jpeg, Menus, Grids, DBGrids, Buttons,
  Db, DBTables, DBClient, Provider, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmPrecoInsumos = class(TForm)
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
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
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    sbEditar: TSpeedButton;
    sbImprimir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlDados: TFDQuery;
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
    sqlDadosINFADCIONAL: TStringField;
    sqlDadosAGRUPADOR: TStringField;
    sqlDadosICMS_ORI: TStringField;
    sqlDadosICMS_SIT: TStringField;
    sqlDadosEHSERVICO: TStringField;
    sqlDadosLISTASERVICO: TStringField;
    sqlDadosICMS_PER: TBCDField;
    sqlDadosIPI_SIT: TStringField;
    sqlDadosIPI_PER: TBCDField;
    sqlDadosPIS_SIT: TStringField;
    sqlDadosPIS_PER: TBCDField;
    sqlDadosCOFINS_SIT: TStringField;
    sqlDadosCOFINS_PER: TBCDField;
    sqlDadosIPI_CENQ: TStringField;
    sqlDadosQTDE_DIV: TBCDField;
    sqlDadosCEST: TStringField;
    sqlDadosATIVO: TStringField;
    sqlDadosMOSTRAEST: TStringField;
    sqlDadosFORNECOD: TStringField;
    sqlDadosMARCA: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excluir1Click(Sender: TObject);
    procedure cdsDadosBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmPrecoInsumos: TFfrmPrecoInsumos;

implementation

uses Data, Rotina, Menu, Pesq;
{$R *.DFM}

procedure TFfrmPrecoInsumos.sbEditarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := False;
  sbEditar.Enabled := False;
  sbSalvar.Enabled := True;
  cdsDados.Edit;
  DBGrid1.SetFocus;
end;

procedure TFfrmPrecoInsumos.sbImprimirClick(Sender: TObject);
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

procedure TFfrmPrecoInsumos.sbSalvarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := True;
  sbEditar.Enabled := True;
  sbSalvar.Enabled := False;
  cdsDados.DisableControls;
  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;
    cdsDados.Post;
    cdsDados.Next;
  end;
  cdsDados.ApplyUpdates(0);
  cdsDados.EnableControls;
  cdsDados.Close;
  cdsDados.Open;
end;

procedure TFfrmPrecoInsumos.SpeedButton1Click(Sender: TObject);
begin
  FPQMercaInsumos;
  if xpqResul<>'0'then
  begin
    cdsDados.Locate('Codigo',StrToInt(xpqResul),[]);
    DBGrid1.SetFocus;
  end;
end;

procedure TFfrmPrecoInsumos.cdsDadosBeforeInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
  Abort;
end;

procedure TFfrmPrecoInsumos.DBGrid1Enter(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := False;
  cdsDados.Edit;
end;

procedure TFfrmPrecoInsumos.DBGrid1Exit(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFfrmPrecoInsumos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFfrmPrecoInsumos.Excluir1Click(Sender: TObject);
begin
  cdsDados.Cancel;
end;

procedure TFfrmPrecoInsumos.FormActivate(Sender: TObject);
begin
  if not cdsDados.Active then cdsDados.Open;
end;

procedure TFfrmPrecoInsumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmPrecoInsumos);
end;

end.
