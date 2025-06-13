unit frmImpEtiqPalet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, RzPanel;

type
  TFfrmImpEtiqPalet = class(TForm)
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosCODIGO: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosPESO: TStringField;
    cdsDadosLOTE: TStringField;
    cdsDadosLINHA1: TStringField;
    cdsDadosLINHA2: TStringField;
    cdsDadosLINHA3: TStringField;
    cdsDadosLINHA4: TStringField;
    cdsDadosLINHA5: TStringField;
    cdsDadosQTDE: TIntegerField;
    cdsDadosCONTADOR: TIntegerField;
    sqlDadosCODIGO: TStringField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosPESO: TStringField;
    sqlDadosLOTE: TStringField;
    sqlDadosLINHA1: TStringField;
    sqlDadosLINHA2: TStringField;
    sqlDadosLINHA3: TStringField;
    sqlDadosLINHA4: TStringField;
    sqlDadosLINHA5: TStringField;
    sqlDadosQTDE: TIntegerField;
    sqlDadosCONTADOR: TIntegerField;
    sqlDadosVARIEDADE: TStringField;
    sqlDadosCATEGORIA: TStringField;
    sqlDadosCALIBRE: TStringField;
    cdsDadosVARIEDADE: TStringField;
    cdsDadosCATEGORIA: TStringField;
    cdsDadosCALIBRE: TStringField;
    sqlDadosBARRA: TStringField;
    cdsDadosBARRA: TStringField;
    RzPanel1: TRzPanel;
    rzpUtilitario: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    sb7: TSpeedButton;
    PDados: TPanel;
    Label7: TLabel;
    SBP1: TSpeedButton;
    Label2: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edDesc: TEdit;
    edLote: TEdit;
    edLinha1: TEdit;
    edPeso: TEdit;
    ME1: TMaskEdit;
    edLinha2: TEdit;
    edLinha4: TEdit;
    edLinha3: TEdit;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    procedure SBP1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ME1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sb7Click(Sender: TObject);
  private
  public
    { Public declarations }
    vImpDireto: Boolean;
  end;

var
  FfrmImpEtiqPalet: TFfrmImpEtiqPalet;
  vTag,vKey:Integer;

implementation

uses Menu, Rotina, Data, Pesq, zModeloRel;

{$R *.DFM}

procedure TFfrmImpEtiqPalet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmImpEtiqPalet);
end;

procedure TFfrmImpEtiqPalet.FormCreate(Sender: TObject);
begin
  vImpDireto := True;
  cdsDados.Open;
  me1.Text := cdsDadosCodigo.Text;
  edDesc.Text := cdsDadosDescricao.Text;
  edPeso.Text := cdsDadosPeso.Text;
  edLote.Text := cdsDadosLote.Text;
  edLinha1.Text := cdsDadosLinha1.Text;
  edLinha2.Text := cdsDadosLinha2.Text;
  edLinha3.Text := cdsDadosLinha3.Text;
  edLinha4.Text := cdsDadosLinha4.Text;
  edLinha1.Text := cdsDadosLinha1.Text;
  edQtde.Value  := cdsDadosQtde.Value;
  edContador.Value  := cdsDadosContador.Value;
end;

procedure TFfrmImpEtiqPalet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiqPalet.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmImpEtiqPalet.SBP1Click(Sender: TObject);
begin
  fPqProduto;
  ME1.Text := xpqResul;
  ME1.SetFocus;
end;

procedure TFfrmImpEtiqPalet.ME1Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if fTra(1,['Select Descricao, VarieDes, CategDes, Calibre From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
      EdDesc.Text:=dm.qrSqlTra.Fields[0].Text
    else SBP1.OnClick(Sender);
  end;
end;

procedure TFfrmImpEtiqPalet.sb7Click(Sender: TObject);
var vinicio, vqtde, vqtdeFim, vcontador: Integer;
begin
  vcontador := edContador.Value + edQtde.Value;
  if vcontador > 10000 then vinicio := 10
  else vinicio := edContador.Value;
  if edQtde.Value = 1 then vqtdeFim := 2
  else vqtdeFim := edQtde.Value;

  for vqtde := 1 to (edQtde.Value -1) do
  begin
    vinicio := vinicio + 1;
    cdsDados.Append;
    cdsDadosCodigo.Text := me1.Text;
    cdsDadosDescricao.Text := edDesc.Text;
    cdsDadosPeso.Text := edPeso.Text;
    cdsDadosLote.Text := edLote.Text;
    cdsDadosLinha1.Text := edLinha1.Text;
    cdsDadosLinha2.Text := edLinha2.Text;
    cdsDadosLinha3.Text := edLinha3.Text;
    cdsDadosLinha4.Text := edLinha4.Text;
    cdsDadosLinha1.Text := edLinha1.Text;
    cdsDadosQtde.Value  := edQtde.Value;
    cdsDadosContador.Value := vinicio;
    if fTra(1,['Select VarieDes, CategDes, Calibre From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
    begin
      cdsDadosVariedade.Text := dm.qrSqlTra.Fields[0].Text;
      cdsDadosCategoria.Text := dm.qrSqlTra.Fields[1].Text;
      cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[2].Text;
    end;
    cdsDadosBarra.Text := Copy(cdsDadosCodigo.Text,3,5)+frPree(vinicio,7,'0',0);
    cdsDados.Post;
  end;
//  cdsDados.ApplyUpdates(0);
  if not cdsDados.IsEmpty then
  begin
    xRelTela := UpperCase(Name);
    Application.CreateForm(TFModeloRel, FModeloRel);
    FModeloRel.dsRelat.DataSet := cdsDados;
    if vImpDireto then
    begin
      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir);
      Sleep(1000);
    end
    else
      FModeloRel.ShowModal;

    cdsDados.Filtered := False;
  end;

  //Apaga tudo

  cdsDados.Close;
  cdsDados.Open;
  cdsDados.First;
  while not cdsDados.Eof do cdsDados.Delete;

  cdsDados.Append;
  cdsDadosCodigo.Text := me1.Text;
  cdsDadosDescricao.Text := edDesc.Text;
  cdsDadosPeso.Text := edPeso.Text;
  cdsDadosLote.Text := edLote.Text;
  cdsDadosLinha1.Text := edLinha1.Text;
  cdsDadosLinha2.Text := edLinha2.Text;
  cdsDadosLinha3.Text := edLinha3.Text;
  cdsDadosLinha4.Text := edLinha4.Text;
  cdsDadosLinha1.Text := edLinha1.Text;
  cdsDadosQtde.Value  := edQtde.Value;
  cdsDadosContador.Value := vinicio;
  if fTra(1,['Select VarieDes, CategDes, Calibre From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
  begin
    cdsDadosVariedade.Text := dm.qrSqlTra.Fields[0].Text;
    cdsDadosCategoria.Text := dm.qrSqlTra.Fields[1].Text;
    cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[2].Text;
  end;
  cdsDadosBarra.Text := Copy(cdsDadosCodigo.Text,3,5)+frPree(vinicio,7,'0',0);
  cdsDados.Post;
  cdsDados.ApplyUpdates(0);
  edContador.Value := vinicio + 1;
end;

end.
