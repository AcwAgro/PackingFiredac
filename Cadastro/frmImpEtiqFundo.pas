unit frmImpEtiqFundo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, RzPanel;

type
  TFfrmImpEtiqFundo = class(TForm)
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
    PDados: TPanel;
    Label7: TLabel;
    SBP1: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edDesc: TEdit;
    edLinha1: TEdit;
    ME1: TMaskEdit;
    edLinha2: TEdit;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    edBarra: TEdit;
    sb7: TSpeedButton;
    sb10: TSpeedButton;
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
  FfrmImpEtiqFundo: TFfrmImpEtiqFundo;
  vTag,vKey:Integer;

implementation

uses Menu, Rotina, Data, Pesq, zModeloRel, rlEtiquetaPequena;

{$R *.DFM}

procedure TFfrmImpEtiqFundo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmImpEtiqFundo);
end;

procedure TFfrmImpEtiqFundo.FormCreate(Sender: TObject);
begin
  vImpDireto := True;
  cdsDados.Open;
  me1.Text := cdsDadosCodigo.Text;
  edDesc.Text   := cdsDadosDescricao.Text;
  edBarra.Text  := cdsDadosPeso.Text;
  edLinha1.Text := cdsDadosLinha1.Text;
  edLinha2.Text := cdsDadosLinha2.Text;
  edQtde.Value  := cdsDadosQtde.Value;
  edContador.Value  := cdsDadosContador.Value;
end;

procedure TFfrmImpEtiqFundo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiqFundo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmImpEtiqFundo.SBP1Click(Sender: TObject);
begin
  fPqProduto;
  ME1.Text := xpqResul;
  ME1.SetFocus;
end;

procedure TFfrmImpEtiqFundo.ME1Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if fTra(1,['Select Descricao From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
    begin
      EdDesc.Text:=dm.qrSqlTra.Fields[0].Text;
      if (Length(Trim(ME1.Text)) = 8) then
        edBarra.Text := Copy(ME1.Text,4,5)
      else
        edBarra.Text := Copy(ME1.Text,3,5);
    end
    else SBP1.OnClick(Sender);
  end;
end;

procedure TFfrmImpEtiqFundo.sb7Click(Sender: TObject);
var vinicio, vqtde: Integer;
begin
  cdsDados.Last;
  if cdsDadosContador.AsInteger > 0 then vinicio := cdsDadosContador.AsInteger
  else vinicio := edContador.Value + edQtde.Value;

  if vinicio > 10000 then vinicio := 10;

  //Apaga tudo
  fSql(1,1,['Delete from EtiqFundo'],1);
  cdsDados.Close;
  cdsDados.Open;

  for vqtde := 1 to (edQtde.Value) do
  begin
    vinicio := vinicio + 1;
    cdsDados.Append;
    cdsDadosCodigo.Text := me1.Text;
    cdsDadosDescricao.Text := edDesc.Text;
    cdsDadosPeso.Text   := edBarra.Text;
    cdsDadosLinha1.Text := edLinha1.Text;
    cdsDadosLinha2.Text := edLinha2.Text;
    cdsDadosQtde.Value  := edQtde.Value;
    cdsDadosContador.Value := vinicio;
    if fTra(1,['Select VarieDes, CategDes, Calibre From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
    begin
      cdsDadosVariedade.Text := dm.qrSqlTra.Fields[0].Text;
      cdsDadosCategoria.Text := dm.qrSqlTra.Fields[1].Text;
      cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[2].Text;
    end;

    if (Length(Trim(ME1.Text)) = 8) then
      cdsDadosLinha5.Text := Copy(cdsDadosCodigo.Text,4,5)+frPree(vinicio,7,'0',0)
    else
      cdsDadosLinha5.Text := Copy(cdsDadosCodigo.Text,3,5)+frPree(vinicio,7,'0',0);

    if TComponent(sender).Tag = 200 then
      cdsDadosLinha5.Text := Copy(cdsDadosLinha5.Text,1,12)+'0';

    cdsDadosBarra.Text := Copy(cdsDadosLinha5.Text,1,12);
    cdsDados.Post;
  end;
  if not cdsDados.IsEmpty then
  begin
    cdsDados.ApplyUpdates(0);
    if TComponent(sender).Tag = 200 then
    begin
      if qrEtiquetaPequena<>Nil then qrEtiquetaPequena.Destroy;
      Application.CreateForm(TqrEtiquetaPequena, qrEtiquetaPequena);
      with qrEtiquetaPequena do begin
        qrEtiq.Close;
        qrEtiq.Open;
        PrinterSettings.PrinterIndex := fImprEPL('Imp3');
        if vImpDireto then Print
        else Preview;
      end;
    end
    else begin
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
    end;

    cdsDados.Filtered := False;
  end;
end;

end.
