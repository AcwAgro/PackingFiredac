unit frmPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Mask, jpeg, Menus, Grids, DBGrids, Buttons,
  Db, DBTables, DBClient, Provider, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmPrecoProduto = class(TForm)
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosCATEGCOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosCATEGDES: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosVENDA1: TBCDField;
    cdsDadosVENDA2: TBCDField;
    cdsDadosCODVELHO: TIntegerField;
    cdsDadosCALIBRE: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosQTDECX: TBCDField;
    cdsDadosQTDEBA: TBCDField;
    cdsDadosETIQUETA: TStringField;
    cdsDadosOUTROS: TStringField;
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    RzPanel2: TRzPanel;
    sbEditar: TSpeedButton;
    sbImprimir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlDados: TFDQuery;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosCATEGCOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosCATEGDES: TStringField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosCOMPRA: TBCDField;
    sqlDadosVENDA1: TBCDField;
    sqlDadosVENDA2: TBCDField;
    sqlDadosCODVELHO: TIntegerField;
    sqlDadosCALIBRE: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosQTDECX: TBCDField;
    sqlDadosQTDEBA: TBCDField;
    sqlDadosETIQUETA: TStringField;
    sqlDadosOUTROS: TStringField;
    sqlDadosNCM: TStringField;
    sqlDadosCALIBREDES: TStringField;
    sqlDadosICMS_ORI: TStringField;
    sqlDadosICMS_SIT: TStringField;
    sqlDadosICMS_PER: TBCDField;
    sqlDadosIPI_SIT: TStringField;
    sqlDadosIPI_PER: TBCDField;
    sqlDadosPIS_SIT: TStringField;
    sqlDadosPIS_PER: TBCDField;
    sqlDadosCOFINS_SIT: TStringField;
    sqlDadosCOFINS_PER: TBCDField;
    sqlDadosIPI_CENQ: TStringField;
    sqlDadosCUSTOFG: TStringField;
    sqlDadosCUSTOOPE: TBCDField;
    sqlDadosCUSTOEMB: TBCDField;
    sqlDadosCUSTOLUC: TBCDField;
    sqlDadosCEST: TStringField;
    sqlDadosIMPRIMEETIQ: TStringField;
    sqlDadosATIVO: TStringField;
    sqlDadosMOSTRAEST: TStringField;
    sqlDadosCODIGOID: TIntegerField;
    sqlDadosMARCA: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
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
    procedure DBGrid1Exit(Sender: TObject);
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

procedure TFfrmPrecoProduto.SpeedButton1Click(Sender: TObject);
begin
  FPQProduto;
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
  FMenu.ACBrEnterTab1.EnterAsTab := False;
  cdsDados.Edit;
end;

procedure TFfrmPrecoProduto.DBGrid1Exit(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := True;
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
