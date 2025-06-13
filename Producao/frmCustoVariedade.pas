Unit frmCustoVariedade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables, Grids,
  DBGrids, DBClient, Provider, RzPanel;

type
  TFfrmCustoVariedade = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Exclui1: TMenuItem;
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    sbEditar: TSpeedButton;
    RzPanel2: TRzPanel;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosPESOLIQ: TFloatField;
    sqlDadosVAL1: TFloatField;
    sqlDadosVAL2: TFloatField;
    sqlDadosVAL3: TFloatField;
    sqlDadosGRUPOCOD: TIntegerField;
    sqlDadosGRUPODES: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosPESOLIQ: TFloatField;
    cdsDadosVAL1: TFloatField;
    cdsDadosVAL2: TFloatField;
    cdsDadosVAL3: TFloatField;
    cdsDadosGRUPOCOD: TIntegerField;
    cdsDadosGRUPODES: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exclui1Click(Sender: TObject);
    procedure cdsDadosBeforeInsert(DataSet: TDataSet);
    procedure sbEditarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FfrmCustoVariedade: TFfrmCustoVariedade;

implementation

uses Rotina, Data, Pesq, Menu;

{$R *.DFM}

procedure TFfrmCustoVariedade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmCustoVariedade);
end;

procedure TFfrmCustoVariedade.FormCreate(Sender: TObject);
begin
  cdsDados.Open;
end;

procedure TFfrmCustoVariedade.sbEditarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := False;
  sbEditar.Enabled := False;
  sbSalvar.Enabled := True;
  cdsDados.Edit;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := 2;
end;

procedure TFfrmCustoVariedade.sbSalvarClick(Sender: TObject);
begin
  DBGrid1.ReadOnly := True;
  sbEditar.Enabled := True;
  sbSalvar.Enabled := False;
  if cdsDados.State = dsEdit then
    cdsDados.Post;
  cdsDados.ApplyUpdates(0);
end;

procedure TFfrmCustoVariedade.DBGrid1Enter(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := False;

end;

procedure TFfrmCustoVariedade.DBGrid1Exit(Sender: TObject);
begin
  FMenu.ACBrEnterTab1.EnterAsTab := True;

end;

procedure TFfrmCustoVariedade.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
    if DBGrid1.SelectedIndex >= DBGrid1.Columns.Count-1 then
    begin
      DBGrid1.SelectedIndex:=2;
      cdsDados.Next;
    end
    else DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1;
  end;
end;

procedure TFfrmCustoVariedade.Exclui1Click(Sender: TObject);
begin
  cdsDados.Cancel;
end;

procedure TFfrmCustoVariedade.cdsDadosBeforeInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
end;

end.
